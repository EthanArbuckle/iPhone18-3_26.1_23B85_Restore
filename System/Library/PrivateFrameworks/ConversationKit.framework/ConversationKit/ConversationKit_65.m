void specialized SpamModelable.unknownSenderRecordInfo.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_272();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_18_4();
  }

  v24.value._countAndFlagsBits = v23();
  NameAndPhotoUtilities.unknownSenderRecordInfo(for:)(v24);

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_203();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static ReportSpamManager.logger);
  OUTLINED_FUNCTION_28_0();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_42();
    v29 = OUTLINED_FUNCTION_23();
    a10 = v29;
    *v28 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGSgMd);
    v30 = Optional.debugDescription.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &a10);

    *(v28 + 4) = v32;
    OUTLINED_FUNCTION_13_76(&dword_1BBC58000, v33, v34, "reporting unknownSenderRecordInfo: %s");
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_194_0();
}

void SpamModelable.unknownSenderRecordInfo.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_272();
  a19 = v20;
  a20 = v21;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_18_4();
  }

  v22 = OUTLINED_FUNCTION_45_1();
  v24.value._countAndFlagsBits = v23(v22);
  NameAndPhotoUtilities.unknownSenderRecordInfo(for:)(v24);
  OUTLINED_FUNCTION_72_12();

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_203();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static ReportSpamManager.logger);
  OUTLINED_FUNCTION_28_0();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_42();
    v29 = OUTLINED_FUNCTION_23();
    a10 = v29;
    *v28 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGSgMd);
    v30 = Optional.debugDescription.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &a10);

    *(v28 + 4) = v32;
    OUTLINED_FUNCTION_13_76(&dword_1BBC58000, v33, v34, "reporting unknownSenderRecordInfo: %s");
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_194_0();
}

id CHRecentCall.initiatorHandle.getter()
{
  v1 = [v0 initiator];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CHHandle.tuHandle.getter();

  return v3;
}

BOOL CHRecentCall.isOneToOneUnknownFaceTimeCall.getter()
{
  v2 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v0);
  if (v2 && (specialized Set.count.getter(v2), OUTLINED_FUNCTION_27_3(), v1 == 1))
  {
    v3 = CHRecentCall.unknownHandles.getter();
    v4 = [v0 initiator];
    if (v4)
    {
      v5 = v4;
      v6 = CHHandle.tuHandle.getter();
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_21_58();
    v7 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v8, v3);
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t CHRecentCall.unknownHandles.getter()
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v0);
  if (!v1)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_21:
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.conversationKit);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1BBC58000, v20, v21, "remoteParticipantHandles = nil", v22, 2u);
        OUTLINED_FUNCTION_27();
      }

      return MEMORY[0x1E69E7CC0];
    }

LABEL_45:
    OUTLINED_FUNCTION_2_9();
    goto LABEL_21;
  }

  v2 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E69E7CD0];
    v50 = MEMORY[0x1E69E7CD0];
    __CocoaSet.makeIterator()();
    while (1)
    {
      while (1)
      {
        v4 = __CocoaSet.Iterator.next()();
        if (!v4)
        {

          goto LABEL_41;
        }

        v48 = v4;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle);
        swift_dynamicCast();
        type metadata accessor for ReportSpamManager();
        v5 = CHHandle.tuHandle.getter();
        static ReportSpamManager.getContact(forHandle:)(v5);
        v7 = v6;

        if (!v7)
        {
          break;
        }
      }

      v8 = v49;
      if (v3[3] <= v3[2])
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v3 = v50;
      v9 = NSObject._rawHashValue(seed:)(*(v50 + 40));
      v10 = v50 + 56;
      v11 = -1 << *(v50 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v50 + 56 + 8 * (v12 >> 6))) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v50 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_18:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v3[6] + 8 * v14) = v8;
      ++v3[2];
    }

    v15 = 0;
    v16 = (63 - v11) >> 6;
    while (++v13 != v16 || (v15 & 1) == 0)
    {
      v17 = v13 == v16;
      if (v13 == v16)
      {
        v13 = 0;
      }

      v15 |= v17;
      v18 = *(v10 + 8 * v13);
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v24 = *(v1 + 32);
  v47 = ((1 << v24) + 63) >> 6;
  v25 = (8 * v47);
  if ((v24 & 0x3Fu) <= 0xD)
  {
LABEL_25:
    v44[1] = v44;
    MEMORY[0x1EEE9AC00](v1);
    v45 = v44 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v47, v45);
    v46 = 0;
    v26 = 0;
    v27 = 1 << *(v2 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v2 + 56);
    v30 = (v27 + 63) >> 6;
    while (v29)
    {
      v31 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_35:
      v35 = v31 | (v26 << 6);
      v36 = *(*(v2 + 48) + 8 * v35);
      type metadata accessor for ReportSpamManager();
      v37 = v36;
      v38 = CHHandle.tuHandle.getter();
      static ReportSpamManager.getContact(forHandle:)(v38);
      v40 = v39;

      if (v40)
      {
      }

      else
      {
        *(v45 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        if (__OFADD__(v46++, 1))
        {
          __break(1u);
LABEL_40:
          specialized _NativeSet.extractSubset(using:count:)();
          v3 = v42;
          goto LABEL_41;
        }
      }
    }

    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_44;
      }

      if (v26 >= v30)
      {
        goto LABEL_40;
      }

      ++v32;
      if (*(v2 + 56 + 8 * v26))
      {
        OUTLINED_FUNCTION_7_1();
        v29 = v34 & v33;
        goto LABEL_35;
      }
    }
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_25;
  }

  swift_slowAlloc();
  OUTLINED_FUNCTION_28_0();

  v3 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8CHHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v25, v47, v2, closure #1 in CHRecentCall.unknownHandles.getter, 0);
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_27();
LABEL_41:
  v23 = specialized Sequence.compactMap<A>(_:)(v3);

  return v23;
}

BOOL CHRecentCall.isGroupFaceTimeWithUnknownInitiator.getter()
{
  v2 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v0);
  if (v2 && (specialized Set.count.getter(v2), OUTLINED_FUNCTION_27_3(), v1 >= 2))
  {
    v3 = CHRecentCall.unknownHandles.getter();
    v4 = [v0 initiator];
    if (v4)
    {
      v5 = v4;
      v6 = CHHandle.tuHandle.getter();
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_21_58();
    v7 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v8, v3);
  }

  else
  {
    return 0;
  }

  return v7;
}

void CHRecentCall.isGroupFaceTimeWithSomeUnknownContacts.getter()
{
  OUTLINED_FUNCTION_408();
  v22 = v1;
  v23 = v2;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationKit);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_42();
    v8 = OUTLINED_FUNCTION_23();
    v21[0] = v8;
    *v7 = 136315138;
    if (outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v4))
    {
      OUTLINED_FUNCTION_40_24();
      type metadata accessor for NSObject(v9, v10);
      OUTLINED_FUNCTION_40_24();
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(v11, v12);
      v13 = Set.description.getter();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v21);

    *(v7 + 4) = v16;
    OUTLINED_FUNCTION_2_24(&dword_1BBC58000, v17, v18, "isGroupFaceTimeWithSomeUnknownContacts :%s");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_27();
  }

  v19 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v4);
  if (v19)
  {
    v20 = v19;
    if (specialized Set.count.getter(v19) >= 2)
    {
      specialized Sequence.compactMap<A>(_:)(v20);

      specialized Set.count.getter(v20);
      OUTLINED_FUNCTION_28_0();
    }
  }

  OUTLINED_FUNCTION_415();
}

void CHRecentCall.isGroupFaceTimeWithAllUnknownContacts.getter()
{
  OUTLINED_FUNCTION_408();
  v22 = v1;
  v23 = v2;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationKit);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_42();
    v8 = OUTLINED_FUNCTION_23();
    v21[0] = v8;
    *v7 = 136315138;
    if (outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v4))
    {
      OUTLINED_FUNCTION_40_24();
      type metadata accessor for NSObject(v9, v10);
      OUTLINED_FUNCTION_40_24();
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(v11, v12);
      v13 = Set.description.getter();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v21);

    *(v7 + 4) = v16;
    OUTLINED_FUNCTION_2_24(&dword_1BBC58000, v17, v18, "isGroupFaceTimeWithAllUnknownContacts: %s");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_27();
  }

  v19 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v4);
  if (v19)
  {
    v20 = v19;
    specialized Sequence.compactMap<A>(_:)(v19);

    specialized Set.count.getter(v20);
    OUTLINED_FUNCTION_28_0();
  }

  OUTLINED_FUNCTION_415();
}

BOOL closure #1 in CHRecentCall.unknownHandles.getter()
{
  type metadata accessor for ReportSpamManager();
  v0 = CHHandle.tuHandle.getter();
  static ReportSpamManager.getContact(forHandle:)(v0);
  v2 = v1;

  if (v2)
  {
  }

  return v2 == 0;
}

uint64_t CHRecentCall.formattedTUCallHandle.getter()
{
  v1 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v0);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  specialized Sequence.compactMap<A>(_:)(v1);
  v3 = v2;

  return v3;
}

uint64_t CHRecentCall.faceTimeSpamCallType.getter()
{
  v2 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v0);
  if (v2)
  {
    specialized Set.count.getter(v2);
    OUTLINED_FUNCTION_27_3();
    v3 = v1 == 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = outlined bridged method (pb) of @objc CHRecentCall.serviceProvider.getter(v0);
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v6)
  {

    return 0;
  }

  if (v4 == v7 && v6 == v8)
  {

    if (v3)
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      if (v10)
      {
        return 0xD000000000000013;
      }

      return 0;
    }

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return 0x656D697465636166;
}

uint64_t CHRecentCall.senderHandle.getter()
{
  v1 = CHRecentCall.initiatorHandle.getter();
  if (!v1)
  {
    v3 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v0);
    v1 = v3;
    if (v3)
    {
      specialized Collection.first.getter(v3);
      OUTLINED_FUNCTION_28_0();

      if (v0)
      {
        v1 = CHHandle.tuHandle.getter();
      }

      else
      {
        return 0;
      }
    }
  }

  return v1;
}

void CHRecentCall.spamModel(with:)()
{
  OUTLINED_FUNCTION_408();
  v61 = v3;
  v62 = v4;
  v7 = OUTLINED_FUNCTION_41_26(v5, v6);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = CHRecentCall.formattedTUCallHandle.getter();
  v13 = CHRecentCall.faceTimeSpamCallType.getter();
  v54 = v14;
  v55 = v13;
  [v0 duration];
  v53 = CHRecentCall.senderHandle.getter();
  v15 = [v0 uniqueId];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v17;
  v52 = v16;

  [v0 duration];
  Date.init(timeIntervalSinceNow:)();
  Date.timeIntervalSince1970.getter();
  (*(v9 + 8))(v12, v7);
  v18 = UInt32.stringValue.getter([v2 callStatus]);
  v49 = v19;
  v50 = v18;
  v20 = CHRecentCall.pendingOrHandledNickname.getter();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 firstName];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = CHRecentCall.pendingOrHandledNickname.getter();
  if (v26)
  {
    v27 = v26;
    v28 = [v26 lastName];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = CHRecentCall.pendingOrHandledNickname.getter();
  v40 = v32;
  if (v32)
  {
    v41 = [v32 recordID];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  specialized SpamModelable.unknownSenderRecordInfo.getter(specialized SpamModelable.formattedInitiatorHandle.getter, v33, v34, v35, v36, v37, v38, v39, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  OUTLINED_FUNCTION_8_100();
  v1[7] = v45;
  v1[8] = v44;
  OUTLINED_FUNCTION_24_50(v51);
  v1[12] = v46;
  v1[13] = 0x80000001BC5180E0;
  v47 = v49;
  v1[14] = v50;
  v1[15] = v47;
  v1[16] = 0;
  v1[17] = 0;
  v1[18] = v23;
  v1[19] = v25;
  v1[20] = v29;
  v1[21] = v31;
  v1[22] = v40;
  v1[23] = v43;
  v1[24] = v48;

  OUTLINED_FUNCTION_415();
}

id CHRecentCall.pendingOrHandledNickname.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = specialized SpamModelable.formattedInitiatorHandle.getter();
  v2 = NameAndPhotoUtilities.pendingOrCurrentIMNickname(from:)(v0, v1);

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static ReportSpamManager.logger);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10IMNicknameCSgMd);
    v9 = Optional.debugDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v5, v6, "reporting nickname: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  return v2;
}

void TUCall.isBlocked()()
{
  OUTLINED_FUNCTION_272();
  v2 = v1();
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + 16);
  while (v5 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v6 = *(v2 + 8 * v3++ + 32);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_38_34();
      if (v8)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_309();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v15;
    }
  }

  specialized Array.count.getter(v4);
  OUTLINED_FUNCTION_39_25();
  do
  {
    v10 = v9;
    if (v2 == v9)
    {
      break;
    }

    if (v5)
    {
      v14 = OUTLINED_FUNCTION_309();
      v11 = MEMORY[0x1BFB22010](v14);
    }

    else
    {
      if (v9 >= *(v0 + 16))
      {
        goto LABEL_20;
      }

      v11 = *(v4 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_19;
    }

    v13 = TUHandle.isBlocked()();

    v9 = v10 + 1;
  }

  while (v13);

  OUTLINED_FUNCTION_194_0();
}

void TUCall.unknownHandles.getter()
{
  v1 = [v0 remoteParticipantHandles];
  OUTLINED_FUNCTION_30_20();
  type metadata accessor for NSObject(v2, v3);
  OUTLINED_FUNCTION_30_20();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v4, v5);
  OUTLINED_FUNCTION_309();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = MEMORY[0x1E69E7CC0];
  if ((v6 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v6 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
    v10 = v28;
  }

  else
  {
    v9 = 0;
    OUTLINED_FUNCTION_16_7();
    v7 = v6 + 56;
    OUTLINED_FUNCTION_56();
    v10 = v11 & v12;
  }

  v13 = (v8 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v14 = v9;
    v15 = v9;
    if (!v10)
    {
      break;
    }

LABEL_9:
    OUTLINED_FUNCTION_7_1();
    v18 = v17 & v16;
    OUTLINED_FUNCTION_20_61();
    v20 = v19;
    if (!v20)
    {
LABEL_18:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      specialized _arrayForceCast<A, B>(_:)(v23);
      OUTLINED_FUNCTION_28_0();

      return;
    }

    while (1)
    {
      type metadata accessor for ReportSpamManager();
      static ReportSpamManager.getContact(forHandle:)(v20);
      if (v21)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v9 = v15;
      v10 = v18;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v20 = v22;
        v15 = v9;
        v18 = v10;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      goto LABEL_18;
    }

    ++v14;
    if (*(v7 + 8 * v15))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t TUCall.isOneToOneUnknownFaceTimeCall.getter()
{
  v1 = [v0 remoteParticipantHandles];
  OUTLINED_FUNCTION_41();
  type metadata accessor for NSObject(v2, v3);
  OUTLINED_FUNCTION_41();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v4, v5);
  OUTLINED_FUNCTION_76();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Set.count.getter(v6);
  OUTLINED_FUNCTION_72_12();

  if (v1 == 1)
  {
    TUCall.unknownHandles.getter();
    v7 = OUTLINED_FUNCTION_6_116([v0 initiator]);
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_158();
    OUTLINED_FUNCTION_14_68(v8, v9);
  }

  return OUTLINED_FUNCTION_34_36();
}

BOOL TUCall.isGroupFaceTimeWithSomeUnknownContacts.getter()
{
  v1 = [v0 remoteParticipantHandles];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
  OUTLINED_FUNCTION_45_1();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Set.count.getter(v2);

  if (v3 < 2)
  {
    return 0;
  }

  v4 = [v0 remoteParticipantHandles];
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v5);
  v7 = v6;

  v8 = *(v7 + 16);

  if (!v8)
  {
    return 0;
  }

  v9 = [v0 remoteParticipantHandles];
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Set.count.getter(v10);
  OUTLINED_FUNCTION_28_0();

  return v8 < v9;
}

void TUCall.isGroupFaceTimeWithAllUnknownContacts.getter()
{
  OUTLINED_FUNCTION_272();
  v1 = [v0 remoteParticipantHandles];
  OUTLINED_FUNCTION_41();
  type metadata accessor for NSObject(v2, v3);
  OUTLINED_FUNCTION_41();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v4, v5);
  OUTLINED_FUNCTION_76();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v6);

  v7 = [v0 remoteParticipantHandles];
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Set.count.getter(v8);

  OUTLINED_FUNCTION_194_0();
}

void TUCall.spamModel(with:)()
{
  OUTLINED_FUNCTION_408();
  v65 = v3;
  v66 = v4;
  v7 = OUTLINED_FUNCTION_41_26(v5, v6);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = TUCall.formattedTUCallHandle.getter();
  v13 = TUCall.faceTimeSpamCallType.getter();
  v58 = v14;
  v59 = v13;
  [v0 callDuration];
  v15 = TUCall.initiatorHandle.getter();
  if (!v15)
  {
    v16 = [v2 remoteParticipantHandles];
    OUTLINED_FUNCTION_134();
    type metadata accessor for NSObject(v17, v18);
    OUTLINED_FUNCTION_134();
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(v19, v20);
    v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = specialized Collection.first.getter(v21);
  }

  v22 = [v2 callUUID];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v24;
  v57 = v23;

  [v2 callDuration];
  Date.init(timeIntervalSinceNow:)();
  Date.timeIntervalSince1970.getter();
  (*(v9 + 8))(v12, v7);
  v25 = specialized SpamModelable.pendingOrHandledNickname.getter();
  if (v25)
  {
    v26 = v25;
    v27 = [v25 firstName];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v29;
    v55 = v28;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v30 = specialized SpamModelable.pendingOrHandledNickname.getter();
  v31 = v30;
  if (v30)
  {
    v32 = [v30 lastName];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v34;
  }

  else
  {
    v33 = 0;
  }

  v35 = specialized SpamModelable.pendingOrHandledNickname.getter();
  if (v35)
  {
    v43 = v35;
    v44 = [v35 recordID];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  specialized SpamModelable.unknownSenderRecordInfo.getter(specialized SpamModelable.formattedInitiatorHandle.getter, v36, v37, v38, v39, v40, v41, v42, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  OUTLINED_FUNCTION_8_100();
  v1[7] = v15;
  v1[8] = v48;
  OUTLINED_FUNCTION_24_50(v49);
  v1[12] = v50;
  v1[13] = 0x80000001BC5180E0;
  v1[14] = v50 | 1;
  v1[15] = 0x80000001BC5062A0;
  v1[16] = 0;
  v1[17] = 0;
  v51 = v54;
  v1[18] = v55;
  v1[19] = v51;
  v1[20] = v33;
  v1[21] = v31;
  v1[22] = v45;
  v1[23] = v47;
  v1[24] = v52;

  OUTLINED_FUNCTION_415();
}

uint64_t TUCall.formattedTUCallHandle.getter()
{
  v1 = [v0 remoteParticipantHandles];
  OUTLINED_FUNCTION_30_20();
  type metadata accessor for NSObject(v2, v3);
  OUTLINED_FUNCTION_30_20();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v4, v5);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v6);
  v8 = v7;

  return v8;
}

unint64_t TUCall.faceTimeSpamCallType.getter()
{
  v1 = [v0 remoteParticipantHandles];
  OUTLINED_FUNCTION_41();
  type metadata accessor for NSObject(v2, v3);
  OUTLINED_FUNCTION_41();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v4, v5);
  OUTLINED_FUNCTION_76();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Set.count.getter(v6);
  OUTLINED_FUNCTION_72_12();

  v7 = [v0 provider];
  v8 = [v7 isFaceTimeProvider];

  v9 = 0x656D697465636166;
  if (v1 == 1)
  {
    v9 = 0xD000000000000013;
  }

  if (v8)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

id TUCall.initiatorHandle.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 activeConversationForCall_];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 initiator];

  return v3;
}

void CHRecentCall.block()()
{
  OUTLINED_FUNCTION_272();
  v1 = v0;
  v3 = v2();
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v6 = *(v3 + 16);
  while (v6 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v7 = *(v3 + 8 * v4++ + 32);
    if (v7)
    {
      v7;
      MEMORY[0x1BFB20CC0]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v13;
    }
  }

  v8 = specialized Array.count.getter(v5);
  for (i = 0; v8 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFB22010](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v10 = *(v5 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      goto LABEL_20;
    }

    [v10 *v1];
  }

  OUTLINED_FUNCTION_194_0();
}

Swift::Void __swiftcall TUCall.unblock()()
{
  v1 = [v0 remoteParticipantHandles];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v33;
    v3 = v34;
    v5 = v35;
    v4 = v36;
    v6 = v37;
  }

  else
  {
    OUTLINED_FUNCTION_16_7();
    v3 = v2 + 56;
    v5 = ~v7;
    OUTLINED_FUNCTION_56();
    v6 = v8 & v9;

    v4 = 0;
  }

  v10 = (v5 + 64) >> 6;
  v30 = v2;
  if (v2 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v11 = v4;
    v12 = v4;
    if (!v6)
    {
      break;
    }

LABEL_9:
    OUTLINED_FUNCTION_7_1();
    v15 = v14 & v13;
    OUTLINED_FUNCTION_20_61();
    v17 = v16;
    if (!v17)
    {
LABEL_19:
      outlined consume of Set<TUHandle>.Iterator._Variant();

      return;
    }

    while (1)
    {
      v31 = v15;
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_203();
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static ReportSpamManager.logger);
      v19 = v17;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_42();
        v32 = OUTLINED_FUNCTION_23();
        *v22 = 136315138;
        v23 = v10;
        v24 = v3;
        v25 = [v19 value];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        v3 = v24;
        v10 = v23;
        v27 = OUTLINED_FUNCTION_45_1();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v29);
        OUTLINED_FUNCTION_27_3();
        *(v22 + 4) = v26;
        v2 = v30;
        _os_log_impl(&dword_1BBC58000, v20, v21, "TUCall: unblock handle %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      v6 = v31;
      [v19 unblock];

      v4 = v12;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v17 = v32;
        v12 = v4;
        v15 = v6;
        if (v32)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_19;
    }

    ++v11;
    if (*(v3 + 8 * v12))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t RecentsCallItem.isOneToOneUnknownFaceTimeCall.getter()
{
  RecentsCallItem.tuHandles.getter();
  specialized Set.count.getter(v2);
  OUTLINED_FUNCTION_27_3();
  if (v1 == 1)
  {
    RecentsCallItem.unknownHandles.getter();
    v3 = RecentsCallItem.initiator.getter();
    v4 = OUTLINED_FUNCTION_6_116(v3);
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_2_158();
    OUTLINED_FUNCTION_14_68(v5, v6);
  }

  return OUTLINED_FUNCTION_34_36();
}

void RecentsCallItem.unknownHandles.getter()
{
  RecentsCallItem.tuHandles.getter();
  v1 = v0;
  v22 = MEMORY[0x1E69E7CC0];
  if ((v0 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    OUTLINED_FUNCTION_30_20();
    type metadata accessor for NSObject(v2, v3);
    OUTLINED_FUNCTION_30_20();
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(v4, v5);
    Set.Iterator.init(_cocoa:)();
    v1 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v8 = 0;
    OUTLINED_FUNCTION_16_7();
    v6 = v1 + 56;
    v7 = ~v10;
    OUTLINED_FUNCTION_56();
    v9 = v11 & v12;
  }

  if (v1 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v13 = v8;
    v14 = v8;
    if (!v9)
    {
      break;
    }

LABEL_9:
    OUTLINED_FUNCTION_7_1();
    v17 = v16 & v15;
    OUTLINED_FUNCTION_20_61();
    v19 = v18;
    if (!v19)
    {
LABEL_18:
      OUTLINED_FUNCTION_41();
      outlined consume of Set<TUHandle>.Iterator._Variant();
      specialized _arrayForceCast<A, B>(_:)(v22);
      OUTLINED_FUNCTION_28_0();

      return;
    }

    while (1)
    {
      type metadata accessor for ReportSpamManager();
      static ReportSpamManager.getContact(forHandle:)(v19);
      if (v20)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v8 = v14;
      v9 = v17;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
        swift_dynamicCast();
        v19 = v21;
        v14 = v8;
        v17 = v9;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= ((v7 + 64) >> 6))
    {
      goto LABEL_18;
    }

    ++v13;
    if (*(v6 + 8 * v14))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t RecentsCallItem.isGroupFaceTimeWithUnknownInitiator.getter()
{
  RecentsCallItem.tuHandles.getter();
  specialized Set.count.getter(v2);
  OUTLINED_FUNCTION_27_3();
  if (v1 >= 2)
  {
    RecentsCallItem.unknownHandles.getter();
    v3 = RecentsCallItem.initiator.getter();
    v4 = OUTLINED_FUNCTION_6_116(v3);
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_2_158();
    OUTLINED_FUNCTION_14_68(v5, v6);
  }

  return OUTLINED_FUNCTION_34_36();
}

BOOL RecentsCallItem.isGroupFaceTimeWithSomeUnknownContacts.getter()
{
  RecentsCallItem.isGroupFaceTimeCall.getter();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  RecentsCallItem.unknownHandles.getter();
  v3 = *(v2 + 16);

  if (!v3)
  {
    return 0;
  }

  RecentsCallItem.unknownHandles.getter();
  v5 = *(v4 + 16);

  RecentsCallItem.tuHandles.getter();
  specialized Set.count.getter(v6);
  OUTLINED_FUNCTION_28_0();

  return v5 < v0;
}

uint64_t RecentsCallItem.isGroupFaceTimeWithAllUnknownContacts.getter()
{
  RecentsCallItem.tuHandles.getter();
  specialized Sequence.compactMap<A>(_:)(v0);
  OUTLINED_FUNCTION_27_3();
  v1 = MEMORY[0x10];

  RecentsCallItem.isGroupFaceTimeCall.getter();
  return v2 & (v1 == 0);
}

void RecentsCallItem.isOneToOneFaceTime.getter()
{
  if ((RecentsCallItem.isTelephony.getter() & 1) == 0)
  {

    RecentsCallItem.isOneToOne.getter();
  }
}

void RecentsCallItem.spamModel(with:)()
{
  OUTLINED_FUNCTION_408();
  v71 = v1;
  v72 = v2;
  v68 = v3;
  v69 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - v8;
  RecentsCallItem.tuHandles.getter();
  specialized Sequence.compactMap<A>(_:)(v10);
  v67 = v11;

  v12 = RecentsCallItem.faceTimeSpamCallType.getter();
  v65 = v13;
  v66 = v12;
  v64 = RecentsCallItem.duration.getter();
  v63 = v14;
  RecentsCallItem.conversationLink.getter();
  v15 = v70;
  if (v70)
  {
    outlined consume of ConversationLink?(v70);
  }

  v62 = RecentsCallItem.initiator.getter();
  v16 = RecentsCallItem.callUniqueId.getter();
  v60 = v17;
  v61 = v16;
  v18 = type metadata accessor for RecentsCallItem(0);
  outlined init with copy of Date?(v0 + *(v18 + 36), v9);
  v19 = type metadata accessor for Date();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v19);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Date?(v9);
    v21 = 0;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v21 = v22;
    v23 = OUTLINED_FUNCTION_76();
    v24(v23);
  }

  v25 = RecentsCallItem.callStatus.getter();
  if ((v25 & 0x100000000) != 0)
  {
    v58 = 0;
    v59 = 0;
  }

  else
  {
    v26 = UInt32.stringValue.getter(v25);
    v58 = v27;
    v59 = v26;
  }

  RecentsCallItem.linkName.getter();
  v56 = v29;
  v57 = v28;
  v30 = specialized SpamModelable.pendingOrHandledNickname.getter();
  if (v30)
  {
    v31 = v30;
    v32 = [v30 firstName];

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v33;
  }

  else
  {
    v55 = 0;
    v54 = 0;
  }

  v34 = specialized SpamModelable.pendingOrHandledNickname.getter();
  if (v34)
  {
    v35 = v34;
    v36 = [v34 lastName];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = specialized SpamModelable.pendingOrHandledNickname.getter();
  v41 = v40;
  if (v40)
  {
    v42 = [v40 recordID];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v44;
  }

  else
  {
    v43 = 0;
  }

  v45 = specialized SpamModelable.unknownSenderRecordInfo.getter();
  v46 = v66;
  *v6 = v67;
  *(v6 + 8) = v46;
  v47 = v64;
  *(v6 + 16) = v65;
  *(v6 + 24) = v47;
  *(v6 + 32) = v63 & 1;
  *(v6 + 33) = v15 != 0;
  v48 = v69;
  *(v6 + 40) = v68;
  *(v6 + 48) = v48;
  v49 = v61;
  *(v6 + 56) = v62;
  *(v6 + 64) = v49;
  *(v6 + 72) = v60;
  *(v6 + 80) = v21;
  *(v6 + 88) = EnumTagSinglePayload == 1;
  *(v6 + 96) = 0xD000000000000010;
  *(v6 + 104) = 0x80000001BC5180E0;
  v50 = v58;
  *(v6 + 112) = v59;
  *(v6 + 120) = v50;
  v51 = v56;
  *(v6 + 128) = v57;
  *(v6 + 136) = v51;
  v52 = v54;
  *(v6 + 144) = v55;
  *(v6 + 152) = v52;
  *(v6 + 160) = v37;
  *(v6 + 168) = v39;
  *(v6 + 176) = v43;
  *(v6 + 184) = v41;
  *(v6 + 192) = v45;

  OUTLINED_FUNCTION_415();
}

void RecentsCallItem.blockUnknownHandles()(SEL *a1)
{
  RecentsCallItem.unknownHandles.getter();
  v3 = v2;
  v4 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + 16);
  while (v5 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v6 = *(v3 + 8 * v4++ + 32);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1BFB20CC0]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v29 = v30;
    }
  }

  v8 = specialized Array.count.getter(v29);
  v9 = 0;
  v10 = v29 & 0xC000000000000001;
  v11 = v29 & 0xFFFFFFFFFFFFFF8;
  v12 = &unk_1EDDBC000;
  v26 = v8;
  v27 = a1;
  while (v8 != v9)
  {
    if (v10)
    {
      v13 = MEMORY[0x1BFB22010](v9, v29);
    }

    else
    {
      if (v9 >= *(v11 + 16))
      {
        goto LABEL_25;
      }

      v13 = *(v29 + 8 * v9 + 32);
    }

    v14 = v13;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_24;
    }

    if (v12[302] != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static ReportSpamManager.logger);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_42();
      v28 = OUTLINED_FUNCTION_23();
      v30 = v28;
      *v19 = 136315138;
      v20 = v12;
      v21 = v11;
      v22 = [v16 value];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v11 = v21;
      v12 = v20;
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v30);
      OUTLINED_FUNCTION_72_12();
      v10 = v29 & 0xC000000000000001;

      *(v19 + 4) = v23;
      v8 = v26;
      _os_log_impl(&dword_1BBC58000, v17, v18, "TUCall: block unknown handle %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      a1 = v27;
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    [v16 *a1];
    ++v9;
  }
}

Swift::Bool __swiftcall RecentsCallItem.isBlocked()()
{
  OUTLINED_FUNCTION_272();
  RecentsCallItem.unknownHandles.getter();
  v2 = v1;
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v5 = v1[2];
  while (v5 != v3)
  {
    if (v3 >= v2[2])
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return v1;
    }

    v6 = v2[v3++ + 4];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_38_34();
      if (v8)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_309();
      LOBYTE(v1) = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v15;
    }
  }

  specialized Array.count.getter(v4);
  OUTLINED_FUNCTION_39_25();
  do
  {
    v10 = v9;
    if (v2 == v9)
    {
      break;
    }

    if (v5)
    {
      v13 = OUTLINED_FUNCTION_309();
      v1 = MEMORY[0x1BFB22010](v13);
    }

    else
    {
      if (v9 >= *(v0 + 16))
      {
        goto LABEL_20;
      }

      v1 = *(v4 + 8 * v9 + 32);
    }

    v11 = v1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_19;
    }

    v12 = TUHandle.isBlocked()();

    v9 = v10 + 1;
  }

  while (v12);

  OUTLINED_FUNCTION_194_0();
  return v1;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8CHHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t NSDiffableDataSourceSnapshot.appendItemsRemovingDupes(_:toSection:onDupe:)()
{
  Set.init()();
  type metadata accessor for Array();

  swift_getWitnessTable();
  _ArrayProtocol.filter(_:)();
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
}

BOOL closure #1 in NSDiffableDataSourceSnapshot.appendItemsRemovingDupes(_:toSection:onDupe:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a4;
  v22 = a3;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v18 = *v17;

  v19 = MEMORY[0x1BFB21180](a1, v18, a6, a8);

  if (v19)
  {
    if (v22)
    {
      v22(a1);
    }
  }

  else
  {
    (*(v11 + 16))(v13, a1, a6);
    type metadata accessor for Set();
    Set.insert(_:)();
    (*(v11 + 8))(v16, a6);
  }

  return (v19 & 1) == 0;
}

BOOL SGURL.isValidConversationLink.getter()
{
  v1 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TUConversationLink();
  v4 = [v0 url];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = @nonobjc TUConversationLink.init(url:)(v3, v5);
  v7 = v6;
  if (v6)
  {
  }

  return v7 != 0;
}

unint64_t type metadata accessor for TUConversationLink()
{
  result = lazy cache variable for type metadata for TUConversationLink;
  if (!lazy cache variable for type metadata for TUConversationLink)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversationLink);
  }

  return result;
}

uint64_t SGURL.recentsDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_2_12();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = [v3 documentDate];
  if (v13)
  {
    v14 = v13;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v6 + 32);
    v15(v12, v9, v1);
    OUTLINED_FUNCTION_1_168();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    return (v15)(a1, v12, v1);
  }

  else
  {
    OUTLINED_FUNCTION_29_5();
    OUTLINED_FUNCTION_1_168();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    v25 = [v3 receivedAt];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = OUTLINED_FUNCTION_29_5();
    result = __swift_getEnumTagSinglePayload(v26, v27, v1);
    if (result != 1)
    {
      return outlined destroy of Date?(v12);
    }
  }

  return result;
}

uint64_t SGURL.endDate.getter@<X0>(char *a1@<X8>)
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_2_12();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = [v2 documentDate];
  if (v12)
  {
    v13 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v5 + 32);
    v14(v11, v9, v1);
    if (([v2 flags] & 0x40) != 0)
    {
      v14(a1, v11, v1);
    }

    else if (([v2 flags] & 0x20) != 0)
    {
      [v2 documentTimeInterval];
      Date.addingTimeInterval(_:)();
      (*(v5 + 8))(v11, v1);
    }

    else
    {
      (*(v5 + 8))(v11, v1);
      OUTLINED_FUNCTION_29_5();
    }

    OUTLINED_FUNCTION_1_168();
    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_29_5();
    OUTLINED_FUNCTION_1_168();

    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }
}

unint64_t SGURL.receivedFromDisplayName(using:)()
{
  v1 = outlined bridged method (pb) of @objc SGURL.receivedFromHandle.getter(v0);
  v3 = v2;
  if (v2)
  {
    v4 = v1;
    v5 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v5 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = objc_opt_self();
      v7 = MEMORY[0x1BFB209B0](v4, v3);

      v8 = [v6 normalizedHandleWithDestinationID_];

      if (v8)
      {
        ParticipantContactDetailsCache.contactDetails(for:nickname:)();
        v3 = v12;
        v9 = v11;

        static ParticipantContactDetails.initialsFor(_:)(v11);
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.localizedUppercase.getter();

        return v3;
      }
    }

    else
    {
    }

    return 0;
  }

  return v3;
}

uint64_t SGURL.applicationLocalizedName.getter()
{
  v0 = SGURL.applicationRecord.getter();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 localizedName];
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v2 = [objc_opt_self() conversationKit];
    v8._object = 0xE000000000000000;
    v4._countAndFlagsBits = 0x6E776F6E6B6E55;
    v5.value._countAndFlagsBits = 0x61737265766E6F43;
    v5.value._object = 0xEF74694B6E6F6974;
    v4._object = 0xE700000000000000;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v8._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v2, v6, v8)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t SGURL.hasEventDate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = [v0 documentDate];
  if (v4)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = type metadata accessor for Date();
    v4 = 1;
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
    outlined destroy of Date?(v3);
    if (([v0 flags] & 0x20) == 0 && (objc_msgSend(v0, sel_flags) & 0x80) == 0)
    {
      return ([v0 flags] >> 6) & 1;
    }
  }

  else
  {
    v6 = type metadata accessor for Date();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
    outlined destroy of Date?(v3);
  }

  return v4;
}

id @nonobjc TUConversationLink.init(url:)@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  URL._bridgeToObjectiveC()(a2);
  v4 = v3;
  v5 = [swift_getObjCClassFromMetadata() conversationLinkForURL_];

  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id SGURL.applicationIcon.getter()
{
  v0 = SGURL.applicationRecord.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v1 compatibilityObject];
  v4 = [v2 _iconForResourceProxy_format_];

  return v4;
}

id SGURL.applicationRecord.getter()
{
  v1 = [v0 bundleIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  return @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v2, v4, 1);
}

uint64_t outlined bridged method (pb) of @objc SGURL.receivedFromHandle.getter(void *a1)
{
  v1 = [a1 receivedFromHandle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t key path setter for ConversationControlsTrailingActionsView.recipe : ConversationControlsTrailingActionsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit0A14ControlsRecipeVWOcTm_3(a1, v6, type metadata accessor for ConversationControlsRecipe);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x90))(v6);
}

uint64_t ConversationControlsTrailingActionsView.recipe.didset(uint64_t a1)
{
  v3 = type metadata accessor for ConversationControlsRecipe();
  v27 = *(a1 + *(v3 + 44));
  v28 = v1;
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView_recipe;
  result = swift_beginAccess();
  v6 = v4[*(v3 + 44)];
  v7 = *(v3 + 60);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v11 = *(a1 + v7 + 16);
  v10 = *(a1 + v7 + 24);
  v12 = *(a1 + v7 + 32);
  v13 = *(a1 + v7 + 40);
  v14 = &v4[v7];
  v16 = *v14;
  v15 = *(v14 + 1);
  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  v19 = *(v14 + 4);
  v20 = v14[40];
  if (v13 > 0xFD)
  {
    if (v20 > 0xFD)
    {
      if (v27 == v6)
      {
        return result;
      }

      return (*((*MEMORY[0x1E69E7D40] & *v28) + 0x118))(result);
    }

    goto LABEL_6;
  }

  if (v20 > 0xFD)
  {
LABEL_6:
    v23 = *v14;
    v25 = *(v14 + 1);
    outlined copy of ConversationControlsRecipe.Actions?(*v14, v15, v18, v17, v19, v20);
    outlined copy of ConversationControlsRecipe.Actions?(v9, v8, v11, v10, v12, v13);
    outlined consume of ConversationControlsRecipe.Actions?(v9, v8, v11, v10, v12, v13);
    result = outlined consume of ConversationControlsRecipe.Actions?(v23, v25, v18, v17, v19, v20);
    return (*((*MEMORY[0x1E69E7D40] & *v28) + 0x118))(result);
  }

  v31[0] = *v14;
  v31[1] = v15;
  v31[2] = v18;
  v31[3] = v17;
  v31[4] = v19;
  v32 = v20;
  v29[0] = v9;
  v29[1] = v8;
  v29[2] = v11;
  v29[3] = v10;
  v29[4] = v12;
  v30 = v13;
  v24 = v16;
  v26 = v15;
  v22 = v6;
  outlined copy of ConversationControlsRecipe.Actions?(v16, v15, v18, v17, v19, v20);
  outlined copy of ConversationControlsRecipe.Actions?(v9, v8, v11, v10, v12, v13);
  v21 = static ConversationControlsRecipe.Actions.== infix(_:_:)(v29, v31);
  outlined consume of ConversationControlsRecipe.Actions?(v24, v26, v18, v17, v19, v20);
  result = outlined consume of ConversationControlsRecipe.Actions?(v9, v8, v11, v10, v12, v13);
  if (v27 != v22 || (v21 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v28) + 0x118))(result);
  }

  return result;
}

uint64_t ConversationControlsTrailingActionsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView_recipe;
  swift_beginAccess();
  OUTLINED_FUNCTION_1_169();
  return _s15ConversationKit0A14ControlsRecipeVWOcTm_3(v1 + v3, a1, v4);
}

uint64_t ConversationControlsTrailingActionsView.recipe.setter(uint64_t a1)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView_recipe;
  swift_beginAccess();
  OUTLINED_FUNCTION_2_159();
  _s15ConversationKit0A14ControlsRecipeVWOcTm_3(v1 + v7, v6, v8);
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v7);
  swift_endAccess();
  ConversationControlsTrailingActionsView.recipe.didset(v6);
  _s15ConversationKit0A14ControlsRecipeVWOhTm_5(a1, v2);
  return _s15ConversationKit0A14ControlsRecipeVWOhTm_5(v6, v2);
}

void (*ConversationControlsTrailingActionsView.recipe.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = *(*(type metadata accessor for ConversationControlsRecipe() - 8) + 64);
  v3[4] = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  v3[5] = v5;
  v6 = OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView_recipe;
  swift_beginAccess();
  OUTLINED_FUNCTION_1_169();
  _s15ConversationKit0A14ControlsRecipeVWOcTm_3(v1 + v6, v5, v7);
  return ConversationControlsTrailingActionsView.recipe.modify;
}

void ConversationControlsTrailingActionsView.recipe.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    _s15ConversationKit0A14ControlsRecipeVWOcTm_3(*(*a1 + 40), v3, type metadata accessor for ConversationControlsRecipe);
    ConversationControlsTrailingActionsView.recipe.setter(v3);
    _s15ConversationKit0A14ControlsRecipeVWOhTm_5(v4, type metadata accessor for ConversationControlsRecipe);
  }

  else
  {
    ConversationControlsTrailingActionsView.recipe.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

char *ConversationControlsTrailingActionsView.alignmentView.getter()
{
  v0 = ConversationControlsTrailingActionsView.actionButtonsHStack.getter();
  v1 = [v0 arrangedSubviews];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized BidirectionalCollection.last.getter(v2);

  if (v3)
  {
    return v3;
  }

  return v5;
}

id closure #1 in ConversationControlsTrailingActionsView.actionButtonsHStack.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAxis_];
  static Layout.ConversationControls.values.getter(v3);
  [v0 setSpacing_];
  LODWORD(v1) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v1];
  return v0;
}

uint64_t key path getter for ConversationControlsTrailingActionsView.showCallDetailsButton : ConversationControlsTrailingActionsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

id ConversationControlsTrailingActionsView.actionButtonsHStack.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in ConversationControlsTrailingActionsView.showCallDetailsButton.getter()
{
  v0 = [objc_opt_self() buttonWithType_];
  [v0 setPointerInteractionEnabled_];
  [v0 setMaximumContentSizeCategory_];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTintColor_];

  return v0;
}

void (*ConversationControlsTrailingActionsView.showCallDetailsButton.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = ConversationControlsTrailingActionsView.showCallDetailsButton.getter();
  return ConversationControlsTrailingActionsView.showCallDetailsButton.modify;
}

uint64_t key path getter for ConversationControlsTrailingActionsView.showStopScreenShareButton : ConversationControlsTrailingActionsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

id ConversationControlsTrailingActionsView.showStopScreenShareButton.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView____lazy_storage___showStopScreenShareButton;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView____lazy_storage___showStopScreenShareButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView____lazy_storage___showStopScreenShareButton);
  }

  else
  {
    v4 = closure #1 in ConversationControlsTrailingActionsView.showStopScreenShareButton.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in ConversationControlsTrailingActionsView.showStopScreenShareButton.getter(uint64_t a1)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v36 - v2;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - v8;
  v39 = type metadata accessor for UIButton.Configuration();
  v10 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() buttonWithType_];
  static UIButton.Configuration.plain()();
  v14 = [objc_opt_self() conversationKit];
  v43._object = 0xE000000000000000;
  v15.value._countAndFlagsBits = 0x61737265766E6F43;
  v15.value._object = 0xEF74694B6E6F6974;
  v16._object = 0x80000001BC500F50;
  v16._countAndFlagsBits = 0xD000000000000013;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v43);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v18 = type metadata accessor for AttributedString();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v18);
  UIButton.Configuration.attributedTitle.setter();
  v19 = UIButton.Configuration.attributedTitle.modify();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v18);
  v22 = MEMORY[0x1E69DDD80];
  if (!EnumTagSinglePayload)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
    v41 = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*v22, 0, 1);
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();
  }

  v19(v42, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v23 = @nonobjc UIImage.__allocating_init(systemName:)();
  if (v23)
  {
    v24 = v23;
    v25 = [objc_opt_self() configurationWithTextStyle:*v22 scale:1];
    v26 = [v24 imageWithSymbolConfiguration_];
  }

  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePlacement.setter();
  UIButton.Configuration.imagePadding.setter();
  v27 = objc_opt_self();
  v28 = [v27 systemIndigoColor];
  v29 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v29(v42, 0);
  (*(v37 + 104))(v36, *MEMORY[0x1E69DC508], v38);
  UIButton.Configuration.cornerStyle.setter();
  v30 = v39;
  (*(v10 + 16))(v3, v12, v39);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v30);
  UIButton.configuration.setter();
  v31 = [v27 whiteColor];
  [v13 setTintColor_];

  v32 = v13;
  v33 = [v27 systemIndigoColor];
  [v32 setBackgroundColor_];

  v34 = [v27 whiteColor];
  [v32 setTitleColor:v34 forState:0];

  [v32 setContentEdgeInsets_];
  [v32 addTarget:v40 action:sel_tappedStopScreenShareWithSender_ forControlEvents:64];
  (*(v10 + 8))(v12, v30);
  return v32;
}

void (*ConversationControlsTrailingActionsView.showStopScreenShareButton.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = ConversationControlsTrailingActionsView.showStopScreenShareButton.getter();
  return ConversationControlsTrailingActionsView.showStopScreenShareButton.modify;
}

BOOL ConversationControlsTrailingActionsView.isOnlyShowingInfoButton.getter()
{
  v1 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  v5 = v3 - v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  v10(v7);
  v11 = &v9[*(v1 + 60)];
  if (v11[40] < 0)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = *v11;
    outlined copy of ConversationControlsRecipe.Actions(*v11, *(v11 + 1), *(v11 + 2), *(v11 + 3), *(v11 + 4));
  }

  OUTLINED_FUNCTION_4_66();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_5(v9, v13);
  v14 = *(v12 + 16);

  if (v14)
  {
    return 0;
  }

  (v10)(v15);
  v17 = *(v5 + *(v1 + 44));
  OUTLINED_FUNCTION_4_66();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_5(v5, v18);
  return v17 == 0;
}

Swift::Void __swiftcall ConversationControlsTrailingActionsView.updateActionView()()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsAction();
  v84 = *(v2 - 8);
  v85 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  v86 = v3 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v75 - v6;
  v83 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v82 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v75 - v11;
  v12 = ConversationControlsTrailingActionsView.actionButtonsHStack.getter();
  v13 = [v12 arrangedSubviews];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = specialized Array.count.getter(v14);
  v16 = 0;
  v88 = OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView____lazy_storage___actionButtonsHStack;
  while (v15 != v16)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1BFB22010](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    [*(v1 + v88) removeArrangedSubview_];
    [v18 removeFromSuperview];

    ++v16;
  }

  v20 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  v21 = v81;
  (v20)(v19);
  v22 = v83;
  v23 = *(v21 + *(v83 + 44));
  OUTLINED_FUNCTION_4_66();
  v25 = _s15ConversationKit0A14ControlsRecipeVWOhTm_5(v21, v24);
  if (v23)
  {
    (v20)(v25);
    v26 = *(v21 + *(v22 + 44));
    OUTLINED_FUNCTION_4_66();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_5(v21, v27);
    if (v26 != 1)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_8_101();
    v29 = *(v28 + 240);
    v31 = v30;
    v32 = v29();
  }

  else
  {
    OUTLINED_FUNCTION_8_101();
    v34 = *(v33 + 216);
    v31 = v35;
    v32 = v34();
  }

  v36 = v32;
  [v31 addArrangedSubview_];

  v22 = v83;
LABEL_14:
  v37 = v82;
  v20();
  v38 = v37 + *(v22 + 60);
  v40 = *v38;
  v39 = *(v38 + 8);
  v42 = *(v38 + 16);
  v41 = *(v38 + 24);
  v43 = *(v38 + 32);
  v44 = *(v38 + 40);
  v45 = OUTLINED_FUNCTION_7_101();
  outlined copy of ConversationControlsRecipe.Actions?(v45, v46, v47, v48, v49, v50);
  OUTLINED_FUNCTION_4_66();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_5(v37, v51);
  if (v44 <= 0xFD)
  {
    if ((v44 & 0x80) != 0)
    {
      v69 = OUTLINED_FUNCTION_7_101();
      outlined consume of ConversationControlsRecipe.Actions?(v69, v70, v71, v72, v73, v74);
    }

    else
    {
      v76 = v39;
      v77 = v42;
      v78 = v41;
      v79 = v43;
      v80 = v44;
      v52 = 0;
      v53 = *(v40 + 16);
      v82 = OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView_controlsManager;
      v83 = v53;
      v81 = OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView_context;
      while (v83 != v52)
      {
        if (v52 >= *(v40 + 16))
        {
          goto LABEL_29;
        }

        v54 = v87;
        _s15ConversationKit0A14ControlsRecipeVWOcTm_3(v40 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v52, v87, type metadata accessor for ConversationControlsAction);
        Strong = swift_unknownObjectWeakLoadStrong();
        v90 = 0;
        memset(v89, 0, sizeof(v89));
        ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
        v57 = v56;

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89);
        v58 = v57;
        static Layout.ConversationControls.iOS.getter(v91);
        [v58 _setTouchInsets_];

        v59 = ConversationControlsTrailingActionsView.actionButtonsHStack.getter();
        [v59 addArrangedSubview_];

        v60 = [v58 widthAnchor];
        v61 = [v60 constraintEqualToConstant_];

        LODWORD(v62) = 1144733696;
        [v61 setPriority_];
        [v61 setActive_];

        _s15ConversationKit0A14ControlsRecipeVWOcTm_3(v54, v86, type metadata accessor for ConversationControlsAction);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload && EnumCaseMultiPayload != 10)
        {
          v66 = v58;
          OUTLINED_FUNCTION_3_150();
          _s15ConversationKit0A14ControlsRecipeVWOhTm_5(v86, v67);
          LODWORD(v65) = 1144750080;
        }

        else
        {
          v64 = v58;
          LODWORD(v65) = 1146388480;
        }

        [v58 setContentCompressionResistancePriority:0 forAxis:v65];

        OUTLINED_FUNCTION_3_150();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_5(v87, v68);
        ++v52;
      }

      outlined consume of ConversationControlsRecipe.Actions?(v40, v76, v77, v78, v79, v80);
      [*(v1 + v88) layoutIfNeeded];
    }
  }
}

id ConversationControlsTrailingActionsView.init(recipe:controlsManager:menuHostViewController:context:)(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v12 = &v5[OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView_menuHostViewController];
  *&v5[OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView_menuHostViewController + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView____lazy_storage___actionButtonsHStack] = 0;
  *&v5[OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView____lazy_storage___showCallDetailsButton] = 0;
  *&v5[OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView____lazy_storage___showStopScreenShareButton] = 0;
  OUTLINED_FUNCTION_2_159();
  _s15ConversationKit0A14ControlsRecipeVWOcTm_3(a1, &v5[v13], v14);
  *&v5[OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView_controlsManager] = a2;
  v5[OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView_context] = a5;
  *(v12 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v18.receiver = v5;
  v18.super_class = type metadata accessor for ConversationControlsTrailingActionsView();
  v15 = a2;
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ConversationControlsTrailingActionsView.configureSubviews()();

  _s15ConversationKit0A14ControlsRecipeVWOhTm_5(a1, v6);
  return v16;
}

void ConversationControlsTrailingActionsView.configureSubviews()()
{
  v1 = ConversationControlsTrailingActionsView.actionButtonsHStack.getter();
  [v0 addSubview_];

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA7F0;
  v4 = OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView____lazy_storage___actionButtonsHStack;
  v5 = [*(v0 + OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView____lazy_storage___actionButtonsHStack) topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v3 + 32) = v7;
  v8 = [*(v0 + v4) leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v3 + 40) = v10;
  v11 = [*(v0 + v4) trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v3 + 48) = v13;
  v14 = [*(v0 + v4) bottomAnchor];
  v15 = [v0 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v3 + 56) = v16;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints_];
}

id ConversationControlsTrailingActionsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationControlsTrailingActionsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView_menuHostViewController + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView____lazy_storage___actionButtonsHStack) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView____lazy_storage___showCallDetailsButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit39ConversationControlsTrailingActionsView____lazy_storage___showStopScreenShareButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id ConversationControlsTrailingActionsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConversationControlsTrailingActionsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationControlsTrailingActionsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOcTm_3(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOhTm_5(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for ConversationControlsTrailingActionsView()
{
  result = type metadata singleton initialization cache for ConversationControlsTrailingActionsView;
  if (!type metadata singleton initialization cache for ConversationControlsTrailingActionsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ConversationControlsTrailingActionsView()
{
  result = type metadata accessor for ConversationControlsRecipe();
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

ConversationKit::ParticipantsCollectionViewDataSource::SectionType_optional __swiftcall ParticipantsCollectionViewDataSource.SectionType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = ConversationKit_ParticipantsCollectionViewDataSource_SectionType_offline;
  }

  else
  {
    v1.value = ConversationKit_ParticipantsCollectionViewDataSource_SectionType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

ConversationKit::ParticipantsCollectionViewDataSource::SectionType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ParticipantsCollectionViewDataSource.SectionType@<W0>(Swift::Int *a1@<X0>, ConversationKit::ParticipantsCollectionViewDataSource::SectionType_optional *a2@<X8>)
{
  result.value = ParticipantsCollectionViewDataSource.SectionType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ParticipantsCollectionViewDataSource.SectionType@<X0>(uint64_t *a1@<X8>)
{
  result = ParticipantsCollectionViewDataSource.SectionType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t ParticipantsCollectionViewDataSource.participants.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants;
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_4_0();

  specialized Array.append<A>(contentsOf:)(v3);
  return v2;
}

uint64_t ParticipantsCollectionViewDataSource.onlineParticipants.getter()
{
  return ParticipantsCollectionViewDataSource.onlineParticipants.getter();
}

{
  OUTLINED_FUNCTION_4_0();
}

uint64_t key path getter for ParticipantsCollectionViewDataSource.didCreateCellForParticipant : ParticipantsCollectionViewDataSource@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_didCreateCellForParticipant);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed ParticipantCell, @in_guaranteed Participant) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for ParticipantsCollectionViewDataSource.didCreateCellForParticipant : ParticipantsCollectionViewDataSource(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ParticipantCell, @in_guaranteed Participant) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_didCreateCellForParticipant);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

uint64_t ParticipantsCollectionViewDataSource.didCreateCellForParticipant.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_didCreateCellForParticipant);
  OUTLINED_FUNCTION_4_0();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v1);
  return v2;
}

uint64_t ParticipantsCollectionViewDataSource.didCreateCellForParticipant.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_didCreateCellForParticipant);
  OUTLINED_FUNCTION_3_5();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

char *ParticipantsCollectionViewDataSource.init(participants:participantIsShownInGrid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_offlineParticipants] = v8;
  v9 = &v3[OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_didCreateCellForParticipant];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v3[OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_participantIsShownInGrid];
  *v10 = a2;
  *(v10 + 1) = a3;
  v17.receiver = v3;
  v17.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v17, sel_init);
  v12 = ParticipantsCollectionViewDataSource.onlineParticipantsToShow(in:)(a1);
  v13 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants;
  OUTLINED_FUNCTION_3_5();
  *&v11[v13] = v12;

  v14 = ParticipantsCollectionViewDataSource.offlineParticipantsToShow(in:)(a1);

  v15 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_offlineParticipants;
  OUTLINED_FUNCTION_3_5();
  *&v11[v15] = v14;

  return v11;
}

uint64_t ParticipantsCollectionViewDataSource.onlineParticipantsToShow(in:)(uint64_t a1)
{
  v30 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Participant(0);
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = 0;
  v11 = a1;
  v12 = *(a1 + 16);
  v28 = (v1 + OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_participantIsShownInGrid);
  v13 = MEMORY[0x1E69E7CC0];
  while (v12 != v10)
  {
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    _s15ConversationKit11ParticipantVWOcTm_15(v11 + v14 + v15 * v10, v9, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_15(v9, v4, type metadata accessor for Participant.State);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 4u:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v18 = v13;
        v19 = *(v17 + 48);
        outlined consume of Participant.CopresenceInfo?(*&v4[*(v17 + 64)], *&v4[*(v17 + 64) + 8]);
        v20 = &v4[v19];
        v13 = v18;
        outlined destroy of Participant.MediaInfo(v20);
        v21 = type metadata accessor for Date();
        (*(*(v21 - 8) + 8))(v4, v21);
        if (!*&v9[*(v29 + 28)])
        {
          goto LABEL_5;
        }

        v13 = v18;
        if ((*v28)(v9))
        {
          goto LABEL_5;
        }

        outlined init with take of Participant(v9, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v13 = v31;
        }

        v23 = *(v13 + 16);
        v24 = v23 + 1;
        if (v23 >= *(v13 + 24) >> 1)
        {
          v26 = v23 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v24 = v26;
          v13 = v31;
        }

        ++v10;
        *(v13 + 16) = v24;
        outlined init with take of Participant(v27, v13 + v14 + v23 * v15);
        break;
      case 6u:
        goto LABEL_5;
      default:
        v16 = type metadata accessor for Date();
        (*(*(v16 - 8) + 8))(v4, v16);
LABEL_5:
        _s15ConversationKit11ParticipantVWOhTm_15(v9, type metadata accessor for Participant);
        ++v10;
        break;
    }
  }

  return v13;
}

uint64_t ParticipantsCollectionViewDataSource.offlineParticipantsToShow(in:)(uint64_t a1)
{
  v28 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Participant(0);
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = 0;
  v27 = a1;
  v11 = *(a1 + 16);
  v12 = (v1 + OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_participantIsShownInGrid);
  v13 = MEMORY[0x1E69E7CC0];
  while (v11 != v10)
  {
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    _s15ConversationKit11ParticipantVWOcTm_15(v27 + v14 + v15 * v10, v9, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOcTm_15(v9, v4, type metadata accessor for Participant.State);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 4u:
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v21 = *(v20 + 48);
        outlined consume of Participant.CopresenceInfo?(*&v4[*(v20 + 64)], *&v4[*(v20 + 64) + 8]);
        outlined destroy of Participant.MediaInfo(&v4[v21]);
        v22 = type metadata accessor for Date();
        (*(*(v22 - 8) + 8))(v4, v22);
        goto LABEL_13;
      case 6u:
        break;
      default:
        v16 = type metadata accessor for Date();
        (*(*(v16 - 8) + 8))(v4, v16);
        break;
    }

    if (!*&v9[*(v26 + 28)] || ((*v12)(v9) & 1) != 0)
    {
LABEL_13:
      _s15ConversationKit11ParticipantVWOhTm_15(v9, type metadata accessor for Participant);
      ++v10;
    }

    else
    {
      outlined init with take of Participant(v9, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v29;
      }

      v18 = *(v13 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v13 + 24) >> 1)
      {
        v24 = v18 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v24;
        v13 = v29;
      }

      ++v10;
      *(v13 + 16) = v19;
      outlined init with take of Participant(v25, v13 + v14 + v18 * v15);
    }
  }

  return v13;
}

uint64_t ParticipantsCollectionViewDataSource.update(_:in:)(char *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_82();
  v5 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = (v17 - v16);
  type metadata accessor for OS_dispatch_queue();
  *v18 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v18, *MEMORY[0x1E69E8020], v12);
  v19 = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v18, v12);
  if (v19)
  {
    result = type metadata accessor for Participant(0);
    if (*&a1[*(result + 28)])
    {
      ParticipantsCollectionViewDataSource.indexPath(of:)(&a1[*(result + 20)], v2);
      if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
      {
        return outlined destroy of CallControlsService?(v2, &_s10Foundation9IndexPathVSgMd);
      }

      else
      {
        (*(v7 + 32))(v11, v2, v5);
        ParticipantsCollectionViewDataSource.updateExistingRosterParticipant(_:at:in:)(a1, v11, a2);
        return (*(v7 + 8))(v11, v5);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ParticipantsCollectionViewDataSource.indexPath(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants;
  OUTLINED_FUNCTION_4_0();
  v6 = *(v2 + v5);
  v20 = a1;

  v7 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ParticipantsCollectionViewDataSource.indexPath(of:), v19, v6);
  v9 = v8;

  if (v9)
  {
    v10 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_offlineParticipants;
    v11 = OUTLINED_FUNCTION_4_0();
    v12 = *(v2 + v10);
    MEMORY[0x1EEE9AC00](v11);
    v18[2] = a1;

    v7 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in closure #4 in ParticipantGridViewController.update(with:animationStyle:forced:), v18, v12);
    v14 = v13;

    v15 = 1;
    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x1BFB1A660](v7, v15);
  v15 = 0;
LABEL_6:
  v16 = type metadata accessor for IndexPath();
  return __swift_storeEnumTagSinglePayload(a2, v15, 1, v16);
}

void ParticipantsCollectionViewDataSource.updateExistingRosterParticipant(_:at:in:)(char *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v56 = a3;
  v58 = a1;
  v6 = type metadata accessor for IndexPath();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = v7;
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for Participant(0);
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v20 = _dispatchPreconditionTest(_:)();
  v22 = *(v17 + 8);
  v21 = (v17 + 8);
  v22(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  ParticipantsCollectionViewDataSource.participant(at:)(a2, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of CallControlsService?(v10, &_s15ConversationKit11ParticipantVSgMd);
    return;
  }

  v21 = v4;
  v23 = v10;
  v10 = v15;
  outlined init with take of Participant(v23, v15);
  v15 = v58;
  if ((*&v4[OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_participantIsShownInGrid])(v58))
  {
    goto LABEL_19;
  }

  v24 = Participant.isActive.getter();
  if ((v24 ^ Participant.isActive.getter()))
  {
    v25 = v53;
    v26 = a2;
    v27 = v54;
    (*(v53 + 16))(v57, v26, v54);
    v28 = v15;
    v29 = v51;
    _s15ConversationKit11ParticipantVWOcTm_15(v28, v51, type metadata accessor for Participant);
    v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v31 = (v52 + *(v55 + 80) + v30) & ~*(v55 + 80);
    v32 = v12 + v31 + 7;
    v33 = v10;
    v34 = v32 & 0xFFFFFFFFFFFFFFF8;
    v35 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    (*(v25 + 32))(v36 + v30, v57, v27);
    outlined init with take of Participant(v29, v36 + v31);
    *(v36 + v34) = v21;
    v37 = v56;
    *(v36 + v35) = v56;
    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for closure #1 in ParticipantsCollectionViewDataSource.updateExistingRosterParticipant(_:at:in:);
    *(v38 + 24) = v36;
    aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_31_1;
    v39 = _Block_copy(aBlock);
    swift_retain_n();
    v40 = v21;
    v41 = v37;

    [v41 performBatchUpdates:v39 completion:0];
    _Block_release(v39);

    _s15ConversationKit11ParticipantVWOhTm_15(v33, type metadata accessor for Participant);

    return;
  }

  v42 = IndexPath.section.getter();
  v20 = IndexPath.item.getter();
  if (!v42)
  {
    goto LABEL_12;
  }

  v16 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_offlineParticipants;
  swift_beginAccess();
  v43 = *&v4[v16];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v16] = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_22:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v43 = v49;
    *&v21[v16] = v49;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (v20 < *(v43 + 16))
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_12:
  v16 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants;
  swift_beginAccess();
  v43 = *&v21[v16];
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *&v21[v16] = v43;
  if (v45)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_24:
  specialized _ArrayBuffer._consumeAndCreateNew()();
  v43 = v50;
  *&v21[v16] = v50;
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (v20 >= *(v43 + 16))
  {
LABEL_26:
    __break(1u);
    return;
  }

LABEL_15:
  outlined assign with copy of Participant(v15, v43 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v20);
  *&v21[v16] = v43;
  swift_endAccess();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v47 = [v56 cellForItemAtIndexPath_];

  if (v47)
  {
    type metadata accessor for ParticipantCell();
    v48 = swift_dynamicCastClass();
    if (v48)
    {
      ParticipantsCollectionViewDataSource.configureCell(_:with:)(v48, v15);
    }
  }

LABEL_19:
  _s15ConversationKit11ParticipantVWOhTm_15(v10, type metadata accessor for Participant);
}

uint64_t ParticipantsCollectionViewDataSource.update(_:in:with:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_82();
  v6 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = (v18 - v17);
  type metadata accessor for OS_dispatch_queue();
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8020], v13);
  v20 = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v19, v13);
  if (v20)
  {
    result = type metadata accessor for Participant(0);
    if (*(a1 + *(result + 28)))
    {
      ParticipantsCollectionViewDataSource.indexPath(of:)(a1 + *(result + 20), v3);
      if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
      {
        return outlined destroy of CallControlsService?(v3, &_s10Foundation9IndexPathVSgMd);
      }

      else
      {
        (*(v8 + 32))(v12, v3, v6);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v23 = [a2 cellForItemAtIndexPath_];

        if (v23)
        {
          type metadata accessor for ParticipantCell();
          v24 = swift_dynamicCastClass();
          if (v24)
          {
            ParticipantsCollectionViewDataSource.configureCell(_:with:)(v24, a3);
          }
        }

        return (*(v8 + 8))(v12, v6);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ParticipantsCollectionViewDataSource.configureCell(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = (v8 - v7);
  type metadata accessor for OS_dispatch_queue();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v3);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v3);
  if (v10)
  {
    static Participant.affineTransformForRemote(_:)(a2, &to);
    ParticipantView.updateLayerTransform(to:)(&to);
  }

  else
  {
    __break(1u);
  }
}

void ParticipantsCollectionViewDataSource.participant(at:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = IndexPath.section.getter();
  if (v6 != 1)
  {
    if (v6)
    {
      type metadata accessor for Participant(0);
      v14 = OUTLINED_FUNCTION_2_10();

      goto LABEL_13;
    }

    v7 = IndexPath.item.getter();
    v8 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants;
    OUTLINED_FUNCTION_4_0();
    if (v7 >= *(*(v3 + v8) + 16))
    {
      goto LABEL_12;
    }

    if (IndexPath.item.getter() < 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_6_117();
    if (!v9)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v7 = IndexPath.item.getter();
  v10 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_offlineParticipants;
  OUTLINED_FUNCTION_4_0();
  if (v7 >= *(*(v3 + v10) + 16))
  {
LABEL_12:
    type metadata accessor for Participant(0);
    v14 = OUTLINED_FUNCTION_2_10();
    goto LABEL_13;
  }

  if (IndexPath.item.getter() < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_6_117();
  if (!v9)
  {
LABEL_11:
    v11 = type metadata accessor for Participant(0);
    OUTLINED_FUNCTION_9_3();
    _s15ConversationKit11ParticipantVWOcTm_15(v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * a1, a2, type metadata accessor for Participant);
    v14 = a2;
    v15 = 0;
    v16 = 1;
    v17 = v11;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t closure #1 in ParticipantsCollectionViewDataSource.updateExistingRosterParticipant(_:at:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v55 = a4;
  v7 = type metadata accessor for Participant(0);
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for IndexPath();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = IndexPath.section.getter();
  v56 = v15;
  if (v16)
  {
    v17 = a1;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_15(a2, v12, type metadata accessor for Participant);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v7);
    specialized >> prefix<A>(_:)();
    v20 = v19;
    v22 = v21;
    outlined destroy of CallControlsService?(v12, &_s15ConversationKit11ParticipantVSgMd);
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v23 = IndexPath.item.getter();
    swift_beginAccess();
    specialized Array.remove(at:)(v23, v9);
    swift_endAccess();
    _s15ConversationKit11ParticipantVWOhTm_15(v9, type metadata accessor for Participant);
    v24 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v25 = *(*(a3 + v24) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v25);
    v26 = *(a3 + v24);
    *(v26 + 16) = v25 + 1;
    _s15ConversationKit11ParticipantVWOcTm_15(a2, v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v25, type metadata accessor for Participant);
    *(a3 + v24) = v26;
    swift_endAccess();
    v27 = v25;
    v28 = 0;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BC4BA940;
    *&v51 = type metadata accessor for Participant;
    _s15ConversationKit11ParticipantVWOcTm_15(a2, v12, type metadata accessor for Participant);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v7);
    specialized >> prefix<A>(_:)();
    v31 = v30;
    v32 = a2;
    v34 = v33;
    outlined destroy of CallControlsService?(v12, &_s15ConversationKit11ParticipantVSgMd);
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v29 + 32) = v31;
    *(v29 + 40) = v34;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v35 = IndexPath.item.getter();
    swift_beginAccess();
    specialized Array.remove(at:)(v35, v9);
    swift_endAccess();
    _s15ConversationKit11ParticipantVWOhTm_15(v9, type metadata accessor for Participant);
    v17 = a1;
    v36 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_offlineParticipants;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v37 = *(*(a3 + v36) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v37);
    v38 = *(a3 + v36);
    *(v38 + 16) = v37 + 1;
    _s15ConversationKit11ParticipantVWOcTm_15(v32, v38 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v37, v51);
    *(a3 + v36) = v38;
    swift_endAccess();
    v27 = v37;
    v28 = 1;
  }

  MEMORY[0x1BFB1A660](v27, v28);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
  v39 = v53;
  v40 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v41 = swift_allocObject();
  v51 = xmmword_1BC4BA940;
  *(v41 + 16) = xmmword_1BC4BA940;
  v42 = *(v39 + 16);
  v43 = v17;
  v44 = v54;
  v42(v41 + v40, v43, v54);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v46 = v55;
  [v55 deleteItemsAtIndexPaths_];

  v47 = swift_allocObject();
  *(v47 + 16) = v51;
  v48 = v56;
  v42(v47 + v40, v56, v44);
  v49 = Array._bridgeToObjectiveC()().super.isa;

  [v46 insertItemsAtIndexPaths_];

  return (*(v39 + 8))(v48, v44);
}

uint64_t ParticipantsCollectionViewDataSource.configureCell(_:with:)(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v69 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  v17 = type metadata accessor for UUID();
  v68 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v23 = static OS_dispatch_queue.main.getter();
  (*(v21 + 104))(v23, *MEMORY[0x1E69E8020], v20);
  v24 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v25 = OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantIdentifier;
  swift_beginAccess();
  outlined init with copy of UUID?(a1 + v25, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
  {
    v20 = v68;
    (*(v68 + 32))(v19, v16, v17);
    v26 = *(v69 + 20);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      (*(v20 + 8))(v19, v17);
      goto LABEL_8;
    }

    v62 = v26;
    v65 = v8;
    v66 = a1;
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_7:
      v64 = static OS_os_log.conversationKit;
      HIDWORD(v63) = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BC4BB980;
      v28 = *(v20 + 16);
      v28(v13, v19, v17);
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v17);
      specialized >> prefix<A>(_:)(v13, v29, v30, v31, v32, v33, v34, v35, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
      v37 = v36;
      v39 = v38;
      outlined destroy of CallControlsService?(v13, &_s10Foundation4UUIDVSgMd);
      *(v27 + 56) = MEMORY[0x1E69E6158];
      v40 = lazy protocol witness table accessor for type String and conformance String();
      *(v27 + 64) = v40;
      *(v27 + 32) = v37;
      *(v27 + 40) = v39;
      v41 = v72;
      v28(v13, (v72 + v62), v17);
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v17);
      specialized >> prefix<A>(_:)(v13, v42, v43, v44, v45, v46, v47, v48, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
      v50 = v49;
      v52 = v51;
      outlined destroy of CallControlsService?(v13, &_s10Foundation4UUIDVSgMd);
      v53 = MEMORY[0x1E69E6158];
      *(v27 + 96) = MEMORY[0x1E69E6158];
      *(v27 + 104) = v40;
      *(v27 + 72) = v50;
      *(v27 + 80) = v52;
      v54 = v67;
      _s15ConversationKit11ParticipantVWOcTm_15(v41, v67, type metadata accessor for Participant);
      __swift_storeEnumTagSinglePayload(v54, 0, 1, v69);
      specialized >> prefix<A>(_:)();
      v56 = v55;
      v58 = v57;
      outlined destroy of CallControlsService?(v54, &_s15ConversationKit11ParticipantVSgMd);
      *(v27 + 136) = v53;
      *(v27 + 144) = v40;
      *(v27 + 112) = v56;
      *(v27 + 120) = v58;
      os_log(_:dso:log:type:_:)();

      (*(v68 + 8))(v19, v17);
      v8 = v65;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  outlined destroy of CallControlsService?(v16, &_s10Foundation4UUIDVSgMd);
LABEL_8:
  v59 = v70;
  _s15ConversationKit11ParticipantVWOcTm_15(v72, v70, type metadata accessor for Participant);
  ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)(v59, 1u, 0, 0, 0, 0, 0, v8, 1u, 0, 1u, 1u);
  v60 = v71;
  ParticipantViewModel.compatibleWithRoster.getter();
  ParticipantCell.configure(with:)();
  _s15ConversationKit11ParticipantVWOhTm_15(v60, type metadata accessor for ParticipantViewModel);
  return _s15ConversationKit11ParticipantVWOhTm_15(v8, type metadata accessor for ParticipantViewModel);
}

void ParticipantsCollectionViewDataSource.updateAudioPower(forParticipant:in:withPower:)(uint64_t a1, void *a2, Swift::Float a3)
{
  v4 = v3;
  v34 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  v17 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v23 = (v22 - v21);
  type metadata accessor for OS_dispatch_queue();
  *v23 = static OS_dispatch_queue.main.getter();
  (*(v19 + 104))(v23, *MEMORY[0x1E69E8020], v17);
  v24 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v23, v17);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v17 = type metadata accessor for Participant(0);
  ParticipantsCollectionViewDataSource.indexPath(of:)(a1 + *(v17 + 20), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of CallControlsService?(v9, &_s10Foundation9IndexPathVSgMd);
    return;
  }

  (*(v12 + 32))(v16, v9, v10);
  v25 = IndexPath.section.getter();
  v24 = IndexPath.item.getter();
  if (!v25)
  {
    goto LABEL_9;
  }

  v23 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_offlineParticipants;
  OUTLINED_FUNCTION_9_99();
  v26 = *(v23 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + v4) = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_19:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v26 = v32;
    *(v23 + v4) = v32;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v24 < *(v26 + 16))
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_9:
  v23 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants;
  OUTLINED_FUNCTION_9_99();
  v26 = *(v23 + v4);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + v4) = v26;
  if (v28)
  {
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  specialized _ArrayBuffer._consumeAndCreateNew()();
  v26 = v33;
  *(v23 + v4) = v33;
  if ((v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v24 >= *(v26 + 16))
  {
LABEL_23:
    __break(1u);
    return;
  }

LABEL_12:
  outlined assign with copy of Participant(a1, v26 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v24);
  *(v23 + v4) = v26;
  swift_endAccess();
  v29 = v34;
  if (v34)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v31 = [v29 cellForItemAtIndexPath_];

    if (v31)
    {
      type metadata accessor for ParticipantCell();
      if (swift_dynamicCastClass())
      {
        ParticipantsCollectionViewDataSource.updateAudioPower(forCell:withPower:)(a3);
      }
    }
  }

  (*(v12 + 8))(v16, v10);
}

void ParticipantsCollectionViewDataSource.updateAudioPower(forCell:withPower:)(Swift::Float a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = ParticipantView.monogramView.getter();
    ParticipantMonogramView.updateAudioVisualization(with:)(a1);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ParticipantsCollectionViewDataSource.set(_:)(Swift::OpaquePointer a1)
{
  v3 = ParticipantsCollectionViewDataSource.onlineParticipantsToShow(in:)(a1._rawValue);
  v4 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants;
  OUTLINED_FUNCTION_3_5();
  *(v1 + v4) = v3;

  v5 = ParticipantsCollectionViewDataSource.offlineParticipantsToShow(in:)(a1._rawValue);
  v6 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_offlineParticipants;
  OUTLINED_FUNCTION_3_5();
  *(v1 + v6) = v5;
}

Swift::Void __swiftcall ParticipantsCollectionViewDataSource.set(_:in:)(Swift::OpaquePointer _, UICollectionView *in)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_82();
  type metadata accessor for OS_dispatch_queue();
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v3, *MEMORY[0x1E69E8020], v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v3, v7);
  if (v11)
  {
    v12 = ParticipantsCollectionViewDataSource.onlineParticipantsToShow(in:)(_._rawValue);
    v13 = ParticipantsCollectionViewDataSource.offlineParticipantsToShow(in:)(_._rawValue);
    v14 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants;
    OUTLINED_FUNCTION_4_0();
    v15 = *&v4[v14];

    LOBYTE(v14) = ParticipantsCollectionViewDataSource.participantArrayHasEqualIdentifiers(_:to:)(v12, v15);

    if (v14 & 1) != 0 && (v16 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_offlineParticipants, OUTLINED_FUNCTION_4_0(), v17 = *&v4[v16], , LOBYTE(v16) = ParticipantsCollectionViewDataSource.participantArrayHasEqualIdentifiers(_:to:)(v13, v17), , (v16))
    {
    }

    else
    {
      v18 = swift_allocObject();
      v18[2] = v4;
      v18[3] = v13;
      v18[4] = in;
      v18[5] = v12;
      v19 = swift_allocObject();
      *(v19 + 16) = partial apply for closure #1 in ParticipantsCollectionViewDataSource.set(_:in:);
      *(v19 + 24) = v18;
      v31 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      v32 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v29 = thunk for @escaping @callee_guaranteed () -> ();
      v30 = &block_descriptor_103;
      v20 = _Block_copy(&aBlock);
      v21 = v4;
      v22 = in;

      v23 = swift_allocObject();
      v23[2]._rawValue = _._rawValue;
      v23[3]._rawValue = v21;
      v23[4]._rawValue = v22;
      v31 = partial apply for closure #2 in ParticipantsCollectionViewDataSource.set(_:in:);
      v32 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v29 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v30 = &block_descriptor_9_3;
      v24 = _Block_copy(&aBlock);
      v25 = v21;
      v26 = v22;

      [(UICollectionView *)v26 performBatchUpdates:v20 completion:v24];
      _Block_release(v24);
      _Block_release(v20);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ParticipantsCollectionViewDataSource.participantArrayHasEqualIdentifiers(_:to:)(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for Participant(0);
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v31 = a2;
    v32 = v10;
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = v36;
    v16 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v30 = v4;
    v17 = *(v4 + 72);
    v33 = v8 + 32;
    v34 = v17;
    do
    {
      _s15ConversationKit11ParticipantVWOcTm_15(v16, v6, type metadata accessor for Participant);
      (*(v8 + 16))(v13, &v6[*(v35 + 20)], v7);
      _s15ConversationKit11ParticipantVWOhTm_15(v6, type metadata accessor for Participant);
      v36 = v15;
      v18 = *(v15 + 16);
      if (v18 >= *(v15 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v15 = v36;
      }

      *(v15 + 16) = v18 + 1;
      (*(v8 + 32))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v13, v7);
      v16 += v34;
      --v14;
    }

    while (v14);
    a2 = v31;
    v10 = v32;
    v4 = v30;
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5();
  v20 = *(a2 + 16);
  if (v20)
  {
    v32 = v19;
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v21 = v36;
    v22 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v23 = *(v4 + 72);
    v33 = v8 + 32;
    v34 = v23;
    do
    {
      _s15ConversationKit11ParticipantVWOcTm_15(v22, v6, type metadata accessor for Participant);
      (*(v8 + 16))(v10, &v6[*(v35 + 20)], v7);
      _s15ConversationKit11ParticipantVWOhTm_15(v6, type metadata accessor for Participant);
      v36 = v21;
      v24 = v10;
      v25 = *(v21 + 16);
      if (v25 >= *(v21 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v36;
      }

      *(v21 + 16) = v25 + 1;
      (*(v8 + 32))(v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v24, v7);
      v22 += v34;
      --v20;
      v10 = v24;
    }

    while (v20);
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5();
  _sSh2eeoiySbShyxG_ABtFZ10Foundation4UUIDV_Tt1g5();
  v27 = v26;

  return v27 & 1;
}

uint64_t closure #1 in ParticipantsCollectionViewDataSource.set(_:in:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v171 = a4;
  v180 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy15ConversationKit11ParticipantVGMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v166 = &v165 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v167 = &v165 - v9;
  v184 = type metadata accessor for IndexPath();
  v182 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v190 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v181 = &v165 - v12;
  v13 = type metadata accessor for Participant(0);
  v189 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v185 = &v165 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v170 = &v165 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v178 = &v165 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v165 - v23;
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v28 = static OS_dispatch_queue.main.getter();
  (*(v26 + 104))(v28, *MEMORY[0x1E69E8020], v25);
  v29 = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v28, v25);
  if ((v29 & 1) == 0)
  {
LABEL_68:
    __break(1u);

    __break(1u);
    return result;
  }

  v30 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_offlineParticipants;
  swift_beginAccess();
  v186 = a1;
  v176 = v30;
  v31 = *(a1 + v30);
  v32 = *(v31 + 16) - 1;

  LODWORD(v187) = 0;
  v179 = xmmword_1BC4BAA20;
  v188 = xmmword_1BC4BA940;
  v183 = v15;
  v172 = a2;
  v177 = v31;
  while (1)
  {
    v33 = v185;
    if (v32 > 0)
    {
      v34 = v32 - 1;
      goto LABEL_7;
    }

    if ((v32 != 0) | v187 & 1)
    {
      break;
    }

    v34 = 0;
    LODWORD(v187) = 1;
LABEL_7:
    if (v32 >= *(v31 + 16))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v35 = (*(v189 + 80) + 32) & ~*(v189 + 80);
    v36 = *(v189 + 72);
    _s15ConversationKit11ParticipantVWOcTm_15(v31 + v35 + v36 * v32, v24, type metadata accessor for Participant);
    v37 = a2 + v35;
    v38 = *(a2 + 16) + 1;
    while (--v38)
    {
      v39 = v37 + v36;
      v40 = static UUID.== infix(_:_:)();
      v37 = v39;
      if (v40)
      {
        goto LABEL_15;
      }
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v41 = swift_allocObject();
    *(v41 + 16) = v179;
    v42 = v181;
    _s15ConversationKit11ParticipantVWOcTm_15(v24, v181, type metadata accessor for Participant);
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v13);
    specialized >> prefix<A>(_:)();
    v44 = v43;
    v46 = v45;
    outlined destroy of CallControlsService?(v42, &_s15ConversationKit11ParticipantVSgMd);
    v47 = MEMORY[0x1E69E6158];
    *(v41 + 56) = MEMORY[0x1E69E6158];
    v48 = lazy protocol witness table accessor for type String and conformance String();
    *(v41 + 64) = v48;
    *(v41 + 32) = v44;
    *(v41 + 40) = v46;
    v193 = v32;
    v49 = String.init<A>(reflecting:)();
    *(v41 + 96) = v47;
    *(v41 + 104) = v48;
    *(v41 + 72) = v49;
    *(v41 + 80) = v50;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    swift_beginAccess();
    v51 = v178;
    specialized Array.remove(at:)(v32, v178);
    swift_endAccess();
    _s15ConversationKit11ParticipantVWOhTm_15(v51, type metadata accessor for Participant);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
    *(swift_allocObject() + 16) = v188;
    MEMORY[0x1BFB1A660](v32, 1);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v180 deleteItemsAtIndexPaths_];

    v15 = v183;
    a2 = v172;
    v31 = v177;
LABEL_15:
    _s15ConversationKit11ParticipantVWOhTm_15(v24, type metadata accessor for Participant);
    v32 = v34;
  }

  v53 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants;
  v54 = v186;
  swift_beginAccess();
  v177 = v53;
  v55 = *(v54 + v53);
  v192 = MEMORY[0x1E69E7CC0];
  v56 = *(v55 + 16) - 1;
  v174 = v182 + 16;
  v173 = v182 + 8;

  LODWORD(v175) = 0;
  a2 = v171;
  v57 = v170;
  v169 = v13;
  v168 = v55;
  while (1)
  {
    if (v56 > 0)
    {
      v58 = v56 - 1;
      goto LABEL_21;
    }

    if ((v56 != 0) | v175 & 1)
    {
      break;
    }

    v58 = 0;
    LODWORD(v175) = 1;
LABEL_21:
    if (v56 >= *(v55 + 16))
    {
      goto LABEL_63;
    }

    v187 = v58;
    v59 = (*(v189 + 80) + 32) & ~*(v189 + 80);
    v60 = *(v189 + 72);
    _s15ConversationKit11ParticipantVWOcTm_15(v55 + v59 + v60 * v56, v57, type metadata accessor for Participant);
    v61 = a2 + v59;
    v62 = *(a2 + 16) + 1;
    while (--v62)
    {
      v63 = v61 + v60;
      v64 = static UUID.== infix(_:_:)();
      v61 = v63;
      if (v64)
      {
        goto LABEL_29;
      }
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v65 = swift_allocObject();
    *(v65 + 16) = v179;
    v66 = v57;
    v67 = v181;
    _s15ConversationKit11ParticipantVWOcTm_15(v66, v181, type metadata accessor for Participant);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v13);
    specialized >> prefix<A>(_:)();
    v69 = v68;
    v71 = v70;
    outlined destroy of CallControlsService?(v67, &_s15ConversationKit11ParticipantVSgMd);
    v72 = MEMORY[0x1E69E6158];
    *(v65 + 56) = MEMORY[0x1E69E6158];
    v73 = lazy protocol witness table accessor for type String and conformance String();
    *(v65 + 64) = v73;
    *(v65 + 32) = v69;
    *(v65 + 40) = v71;
    v191[0] = v56;
    v74 = String.init<A>(reflecting:)();
    *(v65 + 96) = v72;
    *(v65 + 104) = v73;
    *(v65 + 72) = v74;
    *(v65 + 80) = v75;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    swift_beginAccess();
    v76 = v178;
    specialized Array.remove(at:)(v56, v178);
    swift_endAccess();
    _s15ConversationKit11ParticipantVWOhTm_15(v76, type metadata accessor for Participant);
    MEMORY[0x1BFB1A660](v56, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
    v77 = v182;
    v78 = (*(v182 + 80) + 32) & ~*(v182 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = v188;
    v80 = *(v77 + 16);
    v81 = v184;
    v80(v79 + v78, v190, v184);
    specialized Array.append<A>(contentsOf:)(v79);
    v82 = swift_allocObject();
    *(v82 + 16) = v188;
    v80(v82 + v78, v190, v81);
    v57 = v170;
    v13 = v169;
    v83 = Array._bridgeToObjectiveC()().super.isa;

    [v180 deleteItemsAtIndexPaths_];

    (*(v77 + 8))(v190, v81);
    v15 = v183;
    a2 = v171;
    v33 = v185;
    v55 = v168;
LABEL_29:
    _s15ConversationKit11ParticipantVWOhTm_15(v57, type metadata accessor for Participant);
    v56 = v187;
  }

  v84 = v192;
  if (*(v192 + 16))
  {
    v191[0] = v192;

    specialized MutableCollection<>.sort(by:)(v191);

    v84 = v191[0];
  }

  v165 = 0;
  v175 = v84;
  v187 = *(v172 + 2);
  if (v187)
  {
    v85 = 0;
    v86 = (*(v189 + 80) + 32) & ~*(v189 + 80);
    v178 = v172 + v86;
    v87 = *(v189 + 72);
    do
    {
      v88 = v178 + v87 * v85++;
      _s15ConversationKit11ParticipantVWOcTm_15(v88, v33, type metadata accessor for Participant);
      v89 = *&v176[v186];
      v90 = *(v89 + 16);
      v91 = v89 + v86;

      v92 = v90 + 1;
      while (--v92)
      {
        v91 += v87;
        if (static UUID.== infix(_:_:)())
        {

          goto LABEL_41;
        }
      }

      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v93 = swift_allocObject();
      *(v93 + 16) = v188;
      v94 = v33;
      v95 = v181;
      _s15ConversationKit11ParticipantVWOcTm_15(v94, v181, type metadata accessor for Participant);
      __swift_storeEnumTagSinglePayload(v95, 0, 1, v13);
      specialized >> prefix<A>(_:)();
      v97 = v96;
      v99 = v98;
      v100 = v95;
      v33 = v185;
      outlined destroy of CallControlsService?(v100, &_s15ConversationKit11ParticipantVSgMd);
      *(v93 + 56) = MEMORY[0x1E69E6158];
      *(v93 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v93 + 32) = v97;
      *(v93 + 40) = v99;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v101 = v186;
      v102 = v176;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v103 = *(*&v102[v101] + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v103);
      v104 = *&v102[v101];
      *(v104 + 16) = v103 + 1;
      _s15ConversationKit11ParticipantVWOcTm_15(v33, v104 + v86 + v103 * v87, type metadata accessor for Participant);
      *&v102[v101] = v104;
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
      *(swift_allocObject() + 16) = v188;
      MEMORY[0x1BFB1A660](*(v104 + 16) - 1, 1);
      v105 = Array._bridgeToObjectiveC()().super.isa;

      [v180 insertItemsAtIndexPaths_];

      v15 = v183;
LABEL_41:
      _s15ConversationKit11ParticipantVWOhTm_15(v33, type metadata accessor for Participant);
    }

    while (v85 != v187);
  }

  v106 = v186;
  v107 = v175;
  v185 = *(v171 + 16);
  if (v185)
  {
    v108 = 0;
    v109 = 0;
    v187 = (*(v189 + 80) + 32) & ~*(v189 + 80);
    v178 = v171 + v187;
    a2 = *(v189 + 72);
    while (2)
    {
      v110 = v178 + a2 * v109++;
      _s15ConversationKit11ParticipantVWOcTm_15(v110, v15, type metadata accessor for Participant);
      v111 = *(v106 + v177);
      v112 = *(v111 + 16);
      v113 = v111 + v187;

      v114 = v112 + 1;
      while (--v114)
      {
        v113 += a2;
        if (static UUID.== infix(_:_:)())
        {

          v106 = v186;
          goto LABEL_60;
        }
      }

      v115 = *(v107 + 16);
      v116 = v186;
      v189 = v108;
      if (v108 >= v115)
      {
        goto LABEL_51;
      }

      if (v108 < 0)
      {
        goto LABEL_64;
      }

      v117 = v182;
      v171 = (*(v182 + 80) + 32) & ~*(v182 + 80);
      v170 = *(v182 + 72);
      v118 = v107 + v171 + v170 * v108;
      v119 = v190;
      v120 = v184;
      v176 = *(v182 + 16);
      (v176)(v190, v118, v184);
      v121 = IndexPath.item.getter();
      v122 = *(v117 + 8);
      v15 = v183;
      v172 = v122;
      v122(v119, v120);
      if (*(*(v116 + v177) + 16) >= v121)
      {
        if (v189 >= *(v175 + 16))
        {
          goto LABEL_65;
        }

        v135 = v190;
        v136 = v184;
        v137 = v176;
        (v176)(v190, v118, v184);
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v168 = static OS_os_log.conversationKit;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v138 = swift_allocObject();
        *(v138 + 16) = v179;
        v139 = v167;
        v137(v167, v135, v136);
        __swift_storeEnumTagSinglePayload(v139, 0, 1, v136);
        specialized >> prefix<A>(_:)(v139, v140, v141, v142, v143, v144, v145, v146, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174);
        v148 = v147;
        v150 = v149;
        outlined destroy of CallControlsService?(v139, &_s10Foundation9IndexPathVSgMd);
        *(v138 + 56) = MEMORY[0x1E69E6158];
        v151 = lazy protocol witness table accessor for type String and conformance String();
        *(v138 + 64) = v151;
        *(v138 + 32) = v148;
        *(v138 + 40) = v150;
        v152 = v181;
        _s15ConversationKit11ParticipantVWOcTm_15(v183, v181, type metadata accessor for Participant);
        __swift_storeEnumTagSinglePayload(v152, 0, 1, v13);
        specialized >> prefix<A>(_:)();
        v154 = v153;
        v156 = v155;
        outlined destroy of CallControlsService?(v152, &_s15ConversationKit11ParticipantVSgMd);
        *(v138 + 96) = MEMORY[0x1E69E6158];
        *(v138 + 104) = v151;
        *(v138 + 72) = v154;
        *(v138 + 80) = v156;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v157 = IndexPath.item.getter();
        v106 = v186;
        v158 = v177;
        swift_beginAccess();
        if (*(*(v106 + v158) + 16) < v157)
        {
          goto LABEL_66;
        }

        if (v157 < 0)
        {
          goto LABEL_67;
        }

        v15 = v183;
        _s15ConversationKit11ParticipantVWOcTm_15(v183, v166, type metadata accessor for Participant);
        specialized Array.replaceSubrange<A>(_:with:)(v157, v157);
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
        v159 = v171;
        v160 = swift_allocObject();
        *(v160 + 16) = v188;
        v161 = v190;
        v162 = v184;
        (v176)(v160 + v159, v190, v184);
        v163 = Array._bridgeToObjectiveC()().super.isa;

        [v180 insertItemsAtIndexPaths_];

        v172(v161, v162);
        v108 = v189 + 1;
        v107 = v175;
      }

      else
      {
LABEL_51:
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v123 = swift_allocObject();
        *(v123 + 16) = v188;
        v124 = v181;
        _s15ConversationKit11ParticipantVWOcTm_15(v15, v181, type metadata accessor for Participant);
        __swift_storeEnumTagSinglePayload(v124, 0, 1, v13);
        specialized >> prefix<A>(_:)();
        v126 = v125;
        v128 = v127;
        outlined destroy of CallControlsService?(v124, &_s15ConversationKit11ParticipantVSgMd);
        *(v123 + 56) = MEMORY[0x1E69E6158];
        *(v123 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v123 + 32) = v126;
        *(v123 + 40) = v128;
        v15 = v183;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v129 = v186;
        v130 = v177;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v131 = *(*(v129 + v130) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v131);
        v132 = *(v129 + v130);
        *(v132 + 16) = v131 + 1;
        v133 = v132 + v187 + v131 * a2;
        v106 = v129;
        _s15ConversationKit11ParticipantVWOcTm_15(v15, v133, type metadata accessor for Participant);
        *(v129 + v130) = v132;
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
        *(swift_allocObject() + 16) = v188;
        MEMORY[0x1BFB1A660](*(v132 + 16) - 1, 0);
        v134 = Array._bridgeToObjectiveC()().super.isa;

        [v180 insertItemsAtIndexPaths_];

        v107 = v175;
        v108 = v189;
      }

LABEL_60:
      _s15ConversationKit11ParticipantVWOhTm_15(v15, type metadata accessor for Participant);
      if (v109 != v185)
      {
        continue;
      }

      break;
    }
  }
}

void closure #2 in ParticipantsCollectionViewDataSource.set(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v33 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v39 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v40);
  v33[0] = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v33 - v18;
  v20 = *(a2 + 16);
  if (v20)
  {
    v21 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v22 = *(v17 + 72);
    v36 = (v13 + 8);
    v37 = (v13 + 32);
    v33[1] = a3;
    v34 = a4;
    v38 = v22;
    while (1)
    {
      _s15ConversationKit11ParticipantVWOcTm_15(v21, v19, type metadata accessor for Participant);
      ParticipantsCollectionViewDataSource.indexPath(of:)(&v19[*(v40 + 20)], v11);
      if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
      {
        break;
      }

      outlined destroy of CallControlsService?(v11, &_s10Foundation9IndexPathVSgMd);
LABEL_14:
      _s15ConversationKit11ParticipantVWOhTm_15(v19, type metadata accessor for Participant);
      v21 += v22;
      if (!--v20)
      {
        return;
      }
    }

    (*v37)(v39, v11, v12);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v24 = [a4 cellForItemAtIndexPath_];

    if (v24)
    {
      type metadata accessor for ParticipantCell();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        v26 = v25;
        v27 = ParticipantsCollectionViewDataSource.participants.getter();
        MEMORY[0x1EEE9AC00](v27);
        v33[-2] = v19;
        v29 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in ParticipantGridViewController.updateProminenceEMA(withParticipant:ema:audioPriority:videoPriority:), &v33[-4], v28);
        v30 = v35;
        specialized Collection.first.getter(v29, v35);

        if (__swift_getEnumTagSinglePayload(v30, 1, v40) == 1)
        {
          (*v36)(v39, v12);

          outlined destroy of CallControlsService?(v30, &_s15ConversationKit11ParticipantVSgMd);
        }

        else
        {
          v31 = v30;
          v32 = v33[0];
          outlined init with take of Participant(v31, v33[0]);
          ParticipantsCollectionViewDataSource.configureCell(_:with:)(v26, v32);

          _s15ConversationKit11ParticipantVWOhTm_15(v32, type metadata accessor for Participant);
          (*v36)(v39, v12);
        }

        a4 = v34;
        goto LABEL_13;
      }
    }

    (*v36)(v39, v12);
LABEL_13:
    v22 = v38;
    goto LABEL_14;
  }
}

Swift::Int __swiftcall ParticipantsCollectionViewDataSource.numberOfItemsInSection(_:)(Swift::Int a1)
{
  if (a1 == 1)
  {
    v2 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_offlineParticipants;
    goto LABEL_5;
  }

  if (!a1)
  {
    v2 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants;
LABEL_5:
    v3 = v1 + v2;
    OUTLINED_FUNCTION_4_0();
    return *(*v3 + 16);
  }

  return 0;
}

id ParticipantsCollectionViewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ParticipantsCollectionViewDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ParticipantsCollectionViewDataSource._collectionView(_:cellForItemAt:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Participant(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = IndexPath.section.getter();
  if (v8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 2)
  {
    goto LABEL_24;
  }

  v11 = IndexPath.item.getter();
  if (v10)
  {
    v12 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_offlineParticipants;
    swift_beginAccess();
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    v13 = *(v2 + v12);
    if (v11 < *(v13 + 16))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v14 = OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_onlineParticipants;
  swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = *(v2 + v14);
  if (v11 >= *(v13 + 16))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v25 = 0xD000000000000010;
    v26 = 0x80000001BC5183E0;
    v24 = IndexPath.section.getter();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v23);

LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_14:
  _s15ConversationKit11ParticipantVWOcTm_15(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, type metadata accessor for Participant);
  if (one-time initialization token for reuseIdentifier != -1)
  {
    swift_once();
  }

  v15 = MEMORY[0x1BFB209B0](static ParticipantCell.reuseIdentifier, *algn_1EDDCCF28);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17 = [a1 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:isa];

  type metadata accessor for ParticipantCell();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

    goto LABEL_26;
  }

  v19 = v18;
  ParticipantsCollectionViewDataSource.configureCell(_:with:)(v18, v7);
  v20 = (v2 + OBJC_IVAR____TtC15ConversationKit36ParticipantsCollectionViewDataSource_didCreateCellForParticipant);
  swift_beginAccess();
  v21 = *v20;
  if (*v20)
  {
    swift_endAccess();

    v21(v19, v7);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v21);
    _s15ConversationKit11ParticipantVWOhTm_15(v7, type metadata accessor for Participant);
  }

  else
  {
    _s15ConversationKit11ParticipantVWOhTm_15(v7, type metadata accessor for Participant);
    swift_endAccess();
  }

  return v19;
}

unint64_t lazy protocol witness table accessor for type ParticipantsCollectionViewDataSource.SectionType and conformance ParticipantsCollectionViewDataSource.SectionType()
{
  result = lazy protocol witness table cache variable for type ParticipantsCollectionViewDataSource.SectionType and conformance ParticipantsCollectionViewDataSource.SectionType;
  if (!lazy protocol witness table cache variable for type ParticipantsCollectionViewDataSource.SectionType and conformance ParticipantsCollectionViewDataSource.SectionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantsCollectionViewDataSource.SectionType and conformance ParticipantsCollectionViewDataSource.SectionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ParticipantsCollectionViewDataSource.SectionType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ParticipantsCollectionViewDataSource.SectionType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ParticipantsCollectionViewDataSource.SectionType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15ConversationKit36ParticipantsCollectionViewDataSourceC11SectionTypeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ParticipantsCollectionViewDataSource.SectionType] and conformance [A]);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ParticipantsCollectionViewDataSource.SectionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ParticipantCell, @in_guaranteed Participant) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for closure #1 in ParticipantsCollectionViewDataSource.updateExistingRosterParticipant(_:at:in:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Participant(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in ParticipantsCollectionViewDataSource.updateExistingRosterParticipant(_:at:in:)(v0 + v2, v0 + v5, v7, v8);
}

uint64_t CallDisplayStatus.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(60);
  MEMORY[0x1BFB20B10](0xD000000000000020, 0x80000001BC518680);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v3, v4);

  MEMORY[0x1BFB20B10](0x656E6E6F43736920, 0xED00003D64657463);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v5, v6);

  MEMORY[0x1BFB20B10](0x3D73757461747320, 0xE800000000000000);
  type metadata accessor for TUCallStatus(0);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v7);

  MEMORY[0x1BFB20B10](62, 0xE100000000000000);
  return 0;
}

uint64_t CallDisplayStatus.init(call:)@<X0>(uint64_t (**a1)(void, void)@<X1>, uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = a1[14](ObjectType, a1);
  v6 = a1[13](ObjectType, a1);
  LODWORD(a1) = a1[26](ObjectType, a1);
  result = swift_unknownObjectRelease();
  *a2 = v5 & 1;
  *(a2 + 1) = v6 & 1;
  *(a2 + 4) = a1;
  return result;
}

uint64_t CallDisplayStatus.init(isConnecting:isConnected:status:)@<X0>(uint64_t result@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 1) = a2;
  *(a4 + 4) = a3;
  return result;
}

BOOL static CallDisplayStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    return *(a1 + 1) == *(a2 + 1);
  }

  return result;
}

void CallDisplayStatus.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int CallDisplayStatus.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CallDisplayStatus()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for CallDisplayStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[8])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t storeEnumTagSinglePayload for CallDisplayStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)()
{
  OUTLINED_FUNCTION_3_1();
  *(v1 + 176) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v1 + 176) = v0;
  swift_unknownObjectWeakAssign();

  *(v1 + 160) = v5;
  return ControlsButtonProvider.init(context:shape:)(v4, v3);
}

uint64_t ConversationControlsMenuButtonProvider.deinit()
{
  v0 = ControlsButtonProvider.deinit();

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 168);
  return v0;
}

uint64_t ConversationControlsMenuButtonProvider.menuDataSource.getter()
{
  OUTLINED_FUNCTION_0_1();
  if (((*(v1 + 632))() & 1) == 0)
  {
    return 0;
  }

  return v0;
}

Swift::Void __swiftcall ConversationControlsMenuButtonProvider.updateButtonConfiguration()()
{
  ControlsButtonProvider.updateButtonConfiguration()();
  OUTLINED_FUNCTION_0_1();
  if ((*(v0 + 192))())
  {
    OUTLINED_FUNCTION_0_1();
    v2 = *(v1 + 632);
    v4 = v3;
    [v4 setContextMenuInteractionEnabled_];

    v5 = v4;
    [v5 setShowsMenuAsPrimaryAction_];
  }
}

uint64_t ConversationControlsMenuButtonProvider.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIBackgroundConfiguration();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for UIButton.Configuration();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ControlsButtonProvider.defaultButtonConfiguration.getter(v6);
  OUTLINED_FUNCTION_0_1();
  v8 = (*(v7 + 192))();
  if (v8)
  {
    v9 = v8;
    if ([v8 isSelected])
    {
      v10 = objc_opt_self();
      v11 = [v10 blackColor];
      UIButton.Configuration.baseForegroundColor.setter();
      v12 = [v10 whiteColor];
      (*(v4 + 16))(a1, v6, v3);
      static UIBackgroundConfiguration.clear()();
      UIButton.Configuration.background.setter();
      UIButton.Configuration.baseBackgroundColor.setter();

      return (*(v4 + 8))(v6, v3);
    }
  }

  return (*(v4 + 32))(a1, v6, v3);
}

uint64_t ConversationControlsMenuButtonProvider.startedContextMenu(button:animator:)(void *a1)
{
  ControlsButtonProvider.startedContextMenu(button:animator:)(a1);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_1_170();
  }

  OUTLINED_FUNCTION_0_1();
  v3 = *(v2 + 96);

  v3(v4);
  v5 = *(*v1 + 672);

  return v5();
}

uint64_t ConversationControlsMenuButtonProvider.endedContextMenu(button:animator:)(void *a1, void *a2)
{
  v3 = v2;
  ControlsButtonProvider.endedContextMenu(button:animator:)(a1, a2);
  if (a2)
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v12[4] = partial apply for closure #1 in ConversationControlsMenuButtonProvider.endedContextMenu(button:animator:);
    v12[5] = v5;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed () -> ();
    v12[3] = &block_descriptor_104;
    v6 = _Block_copy(v12);

    [a2 addCompletion_];
    _Block_release(v6);
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_1_170();
  }

  OUTLINED_FUNCTION_0_1();
  v8 = (*(v7 + 88))();
  if (v8)
  {
    v9 = v8;

    if (v9 == v3)
    {
      OUTLINED_FUNCTION_0_1();
      v8 = (*(v10 + 96))(0);
    }
  }

  return (*(*v3 + 664))(v8);
}

Swift::Void __swiftcall ConversationControlsMenuButtonProvider.dismissMenu(context:)(Swift::String context)
{
  v2 = v1;
  object = context._object;
  countAndFlagsBits = context._countAndFlagsBits;
  OUTLINED_FUNCTION_0_1();
  v6 = (*(v5 + 608))();
  if (!v6)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, &static Logger.conversationControls);
    v17 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BBC58000, v17, v15, "Menu's containerView is gone, can't dismiss menu", v16, 2u);
      MEMORY[0x1BFB23DF0](v16, -1, -1);
    }

    goto LABEL_12;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Logger.conversationControls);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v18);
    _os_log_impl(&dword_1BBC58000, v8, v9, "Dismissing menu for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFB23DF0](v11, -1, -1);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
  }

  v12 = (*(*v2 + 192))();
  if (v12)
  {
    v13 = v12;
    v17 = [v12 contextMenuInteraction];

    [v17 dismissMenu];
LABEL_12:
  }
}

Swift::Void __swiftcall ConversationControlsMenuButtonProvider.disableMenuContainerViewInteraction()()
{
  OUTLINED_FUNCTION_0_1();
  v1 = (*(v0 + 608))();
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
  }
}

void *ConversationControlsMenuButtonProvider.menuStyle(for:existingStyle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_1();
      v6 = (*(v5 + 608))();
      if (v6)
      {
        v8 = v6;
        v9 = v7;
        ObjectType = swift_getObjectType();
        v11 = (*(v9 + 16))(ObjectType, v9);

        if (v11)
        {
          [v4 setIgnoresContainerSizeChange_];
          [v4 setContainerView_];
        }
      }
    }
  }

  return a3;
}

void *ConversationControlsMenuButtonProvider.attachmentPoint(for:configuration:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_1();
  result = (*(v3 + 192))();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = [result imageView];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  OUTLINED_FUNCTION_0_1();
  v9 = (*(v8 + 608))();
  if (!v9 || (v10 = v9, v11 = [v9 view], v10, !v11))
  {

    return 0;
  }

  [v11 bounds];
  MidX = CGRectGetMidX(v23);
  [v5 bounds];
  v13 = v5;
  v24.origin.x = OUTLINED_FUNCTION_5_72();
  v14 = CGRectGetMidX(v24);
  v25.origin.x = OUTLINED_FUNCTION_5_72();
  [v13 convertPoint:v11 toCoordinateSpace:{v14, CGRectGetMidY(v25)}];
  v16 = v15;

  if (MidX + -2.0 > v16 || v16 >= MidX + 2.0 + 1.0)
  {
    if (MidX >= v16)
    {
      ObjectType = swift_getObjectType();
      if ((*(a2 + 32))(ObjectType, a2) == 2)
      {
        v20 = v13;
      }

      else
      {
        v20 = v7;
      }

      [v20 frame];
      MinX = CGRectGetMinX(v27);
    }

    else
    {
      [v7 frame];
      MinX = CGRectGetMaxX(v26);
    }

    MidX = MinX;
  }

  [v11 bounds];
  MaxY = CGRectGetMaxY(v28);
  v22 = v13;
  [v11 convertPoint:v22 toCoordinateSpace:{0.0, MaxY}];

  return *&MidX;
}

uint64_t key path setter for ConversationControlsMenuButtonProvider.menuHostViewController : ConversationControlsMenuButtonProvider(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 176) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ConversationControlsMenuButtonProvider.__allocating_init(controlsManager:context:shape:menuHostViewController:)()
{
  OUTLINED_FUNCTION_3_1();
  swift_allocObject();
  return ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
}

uint64_t closure #1 in ConversationControlsMenuButtonProvider.endedContextMenu(button:animator:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 608))();
    if (v1)
    {
      v3 = v1;
      v4 = v2;
      ObjectType = swift_getObjectType();
      (*(v4 + 24))(ObjectType, v4);
    }
  }

  return result;
}

uint64_t ConversationControlsMenuButtonProvider.__deallocating_deinit()
{
  ConversationControlsMenuButtonProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t DialButtonViewModel.__allocating_init(service:)(__int128 *a1)
{
  v2 = swift_allocObject();
  DialButtonViewModel.init(service:)(a1);
  return v2;
}

uint64_t DialButtonViewModel.init(service:)(__int128 *a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 72) = 0;
  *(v1 + 80) = -1;
  *(v1 + 88) = 0;
  outlined init with take of TapInteractionHandler(a1, v1 + 32);
  return v1;
}

uint64_t DialButtonViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*DialButtonViewModel.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return CancelConfirmationViewModel.delegate.modify;
}

uint64_t DialButtonViewModel.enabled(for:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 72);
  *(v1 + 72) = *a1;
  v5 = *(v1 + 80);
  *(v1 + 80) = v3;
  outlined copy of PreCallControlsContext(v2);
  outlined consume of PreCallControlsContext?(v4, v5);
  return 1;
}

uint64_t DialButtonViewModel.config.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVyytGMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - v3;
  if (*(v0 + 88))
  {
    v5 = *(v0 + 88);
  }

  else
  {
    v16[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCyytGMd);
    DialButtonViewModel.buttonStyle.getter(v4);
    v6 = objc_opt_self();
    v7 = [v6 conversationKit];
    v17._object = 0xE000000000000000;
    v8._countAndFlagsBits = OUTLINED_FUNCTION_0_204();
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v10, v7, v9, v17);

    v11 = [v6 conversationKit];
    v18._object = 0xE000000000000000;
    v12._countAndFlagsBits = OUTLINED_FUNCTION_0_204();
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v14, v11, v13, v18);

    swift_allocObject();
    swift_weakInit();
    v5 = IconButtonConfig<A>.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:enabled:didTap:)();
    *(v1 + 88) = v5;
  }

  return v5;
}

Swift::Void __swiftcall DialButtonViewModel.onDisappear()()
{
  v1 = *(v0 + 72);
  *(v0 + 72) = 0;
  v2 = *(v0 + 80);
  *(v0 + 80) = -1;
  outlined consume of PreCallControlsContext?(v1, v2);
}

Swift::Void __swiftcall DialButtonViewModel.didTap()()
{
  v1 = v0;
  v2 = *(v0 + 80);
  if (v2 == 255)
  {
    if (one-time initialization token for sidebar != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Logger.sidebar);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "DialButton missing request context", v10, 2u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    OUTLINED_FUNCTION_4_5();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(ObjectType, v11);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1((v0 + 32), v5);
    if (v2)
    {
      v6 = *(v4 + 16);
    }

    else
    {
      v6 = *(v4 + 8);
    }

    outlined copy of PreCallControlsContext(v3);
    v6(v3, v5, v4);
    OUTLINED_FUNCTION_4_5();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v0 + 24);
      v14 = swift_getObjectType();
      (*(v13 + 16))(v14, v13);
      swift_unknownObjectRelease();
    }

    outlined consume of PreCallControlsContext?(v3, v2);
  }
}

uint64_t DialButtonViewModel.symbolName.getter()
{
  v0 = *MEMORY[0x1E69DDDC8];
  v4[64] = 0;
  v5[0] = 0x69662E6F65646976;
  v5[1] = 0xEA00000000006C6CLL;
  v5[2] = 2;
  v5[3] = v0;
  v6 = 0;
  v7 = 4;
  v8 = 0;
  v9 = 0;
  v10[0] = 0x69662E6F65646976;
  v10[1] = 0xEA00000000006C6CLL;
  v10[2] = 2;
  v10[3] = v0;
  v11 = 0;
  v12 = 4;
  v13 = 0;
  v14 = 0;
  v1 = v0;
  outlined init with copy of SymbolImageDescription(v5, v4);
  outlined destroy of SymbolImageDescription(v10);
  v2 = v5[0];

  outlined destroy of SymbolImageDescription(v5);
  return v2;
}

uint64_t DialButtonViewModel.buttonStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for IconButtonWidthRestriction();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v32 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Font.Leading();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v27 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Image.Scale();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVyyt_GMd);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v26 = v25 - v13;
  v25[1] = DialButtonViewModel.symbolName.getter();
  v14 = [objc_opt_self() systemGreenColor];
  v15 = Color.init(uiColor:)();
  *(&v37 + 1) = MEMORY[0x1E69815C0];
  v38 = MEMORY[0x1E6981568];
  *&v36 = v15;
  static Color.white.getter();
  static IconButtonStyle.SystemSymbol<A>.controlGlassOff.getter();
  v16 = type metadata accessor for _Glass();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v16);
  (*(v6 + 104))(v8, *MEMORY[0x1E69816E0], v5);
  static IconButtonStyle.Defaults.phone.iconFont.getter();
  static Font.Weight.regular.getter();
  static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:scale:font:weight:)();

  (*(v6 + 8))(v8, v5);
  outlined destroy of TapInteractionHandler?(v11, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of TapInteractionHandler?(&v36, &_s7SwiftUI10ShapeStyle_pSgMd);
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v16);
  static Color.white.getter();
  static Font.subheadline.getter();
  v17 = v27;
  v18 = v28;
  v19 = v29;
  (*(v28 + 104))(v27, *MEMORY[0x1E6980EA8], v29);
  Font.leading(_:)();

  (*(v18 + 8))(v17, v19);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  v21 = v32;
  v20 = v33;
  v22 = v34;
  (*(v33 + 104))(v32, *MEMORY[0x1E6995BD0], v34);
  v23 = v26;
  static IconButtonStyle.iosCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

  (*(v20 + 8))(v21, v22);
  outlined destroy of TapInteractionHandler?(v11, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of TapInteractionHandler?(&v36, &_s7SwiftUI10ShapeStyle_pSgMd);
  return (*(v30 + 8))(v23, v31);
}

uint64_t closure #1 in DialButtonViewModel.config.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DialButtonViewModel.didTap()();
  }

  return result;
}

uint64_t DialButtonViewModel.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  outlined consume of PreCallControlsContext?(*(v0 + 72), *(v0 + 80));

  return v0;
}

uint64_t DialButtonViewModel.__deallocating_deinit()
{
  DialButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for CallControlsPreCallButtonViewModel.delegate.modify in conformance DialButtonViewModel(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = *v1;
  v3[5] = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 24);
  v3[3] = Strong;
  v3[4] = v6;
  return protocol witness for CallControlsPreCallButtonViewModel.delegate.modify in conformance DialButtonViewModel;
}

uint64_t Participant.displayName.getter()
{
  type metadata accessor for TUHandle();
  Participant.handle.getter();
  v0 = TUHandle.init(destinationID:)();
  if (one-time initialization token for faceTime != -1)
  {
    swift_once();
  }

  ParticipantContactDetailsCache.contactDetails(for:nickname:)();
  v1 = v3;

  static ParticipantContactDetails.initialsFor(_:)(v3);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.localizedUppercase.getter();

  return v4;
}

{
  return MEMORY[0x1EEDD8C90]();
}

uint64_t ScreenSharingBroadcasterViewModel.__allocating_init(interactionController:bannerPresentationManager:)()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_45_1();
  ScreenSharingBroadcasterViewModel.init(interactionController:bannerPresentationManager:)(v1, v2);
  return v0;
}

id TUHandle.init(destinationID:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = OUTLINED_FUNCTION_45_1();
  v2 = MEMORY[0x1BFB209B0](v1);

  v3 = [v0 initWithDestinationID_];

  return v3;
}

void *ScreenSharingBroadcasterViewModel.bannerPresentationManager.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

unint64_t ScreenSharingBroadcasterViewModel._remoteControlState.didset()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FaceIDUnavailableNotice(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*v0 + 144))(&v26, v6);
  v9 = v26;
  if (v26 >> 61 == 4 && *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == 2)
  {
    *v8 = 0;
    v8[1] = 0;
    UUID.init()();
    v10 = v5[6];
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v12 = v11;
    (*(v2 + 8))(v4, v1);
    *(v8 + v10) = v12;
    *(v8 + v5[7]) = 0;
    v13 = v5[8];
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    *(v8 + v13) = (*(*static Defaults.shared + 1024))();
    *(v8 + v5[9]) = 1;
    *(v8 + v5[10]) = 1;
    v14 = (v8 + v5[11]);
    *v14 = 0;
    v14[1] = 0;
    v15 = (v8 + v5[12]);
    *v15 = 0;
    v15[1] = 0;
    *(v8 + v5[13]) = 0;
    v16 = (v8 + v5[14]);
    *v16 = 0;
    v16[1] = 0;
    v17 = v0[3];
    if (v17)
    {
      v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x1D8);
      v19 = v17;
      v20 = v18();
      if (!v20)
      {
        outlined destroy of FaceIDUnavailableNotice(v8);

        return outlined consume of RemoteControlState(v9);
      }

      v21 = v20;
      v22 = *(v20 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator);

      specialized ConversationControlsNoticeCoordinator.post(notice:)();
    }

    outlined destroy of FaceIDUnavailableNotice(v8);
    return outlined consume of RemoteControlState(v9);
  }

  v23 = v26;

  return outlined consume of RemoteControlState(v23);
}

unint64_t ScreenSharingBroadcasterViewModel._remoteControlState.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  outlined consume of RemoteControlState(v3);
  return ScreenSharingBroadcasterViewModel._remoteControlState.didset();
}

unint64_t (*ScreenSharingBroadcasterViewModel._remoteControlState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ScreenSharingBroadcasterViewModel._remoteControlState.modify;
}

unint64_t ScreenSharingBroadcasterViewModel._remoteControlState.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return ScreenSharingBroadcasterViewModel._remoteControlState.didset();
  }

  return result;
}

void *key path getter for ScreenSharingBroadcasterViewModel.remoteControlState : ScreenSharingBroadcasterViewModel@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 144))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for ScreenSharingBroadcasterViewModel.remoteControlState : ScreenSharingBroadcasterViewModel(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 152);
  outlined copy of RemoteControlState(v5);
  return v3(&v5);
}

unint64_t ScreenSharingBroadcasterViewModel.remoteControlState.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 272))();

  swift_beginAccess();
  v4 = *(v1 + 32);
  *a1 = v4;
  return outlined copy of RemoteControlState(v4);
}

unint64_t ScreenSharingBroadcasterViewModel.remoteControlState.setter(unint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = v1[4];
  outlined copy of RemoteControlState(v3);
  v4 = OUTLINED_FUNCTION_45_1();
  v6 = specialized ScreenSharingSpectatorViewModel.shouldNotifyObservers<A>(_:_:)(v4, v5);
  outlined consume of RemoteControlState(v3);
  if (v6)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_91();
    *(v8 - 16) = v1;
    *(v8 - 8) = v2;
    (*(*v1 + 280))();
    outlined consume of RemoteControlState(v2);
  }

  else
  {
    v10 = v2;
    return ScreenSharingBroadcasterViewModel._remoteControlState.setter(&v10);
  }
}

unint64_t closure #1 in ScreenSharingBroadcasterViewModel.remoteControlState.setter(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  outlined copy of RemoteControlState(a2);
  return ScreenSharingBroadcasterViewModel._remoteControlState.setter(&v3);
}

void (*ScreenSharingBroadcasterViewModel.remoteControlState.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 272))(KeyPath);

  v3[5] = OBJC_IVAR____TtC15ConversationKit33ScreenSharingBroadcasterViewModel___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  v5 = lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel();
  OUTLINED_FUNCTION_19_17(v5);

  v3[7] = ScreenSharingBroadcasterViewModel._remoteControlState.modify(v3);
  return ScreenSharingBroadcasterViewModel.remoteControlState.modify;
}

uint64_t ScreenSharingBroadcasterViewModel.isPresentingOnboardingView.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v1 + 272))();

  swift_beginAccess();
  return *(v0 + 40);
}

uint64_t ScreenSharingBroadcasterViewModel.isPresentingOnboardingView.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[40] == v2)
  {
    v1[40] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_91();
    *(v5 - 16) = v1;
    *(v5 - 8) = v2;
    (*(*v1 + 280))();
  }

  return result;
}

uint64_t closure #1 in ScreenSharingBroadcasterViewModel.isPresentingOnboardingView.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 40) = a2;
  return result;
}

void (*ScreenSharingBroadcasterViewModel.isPresentingOnboardingView.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 272))(KeyPath);

  v3[5] = OBJC_IVAR____TtC15ConversationKit33ScreenSharingBroadcasterViewModel___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  v5 = lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel();
  OUTLINED_FUNCTION_19_17(v5);

  v3[7] = ScreenSharingBroadcasterViewModel._isPresentingOnboardingView.modify();
  return ScreenSharingBroadcasterViewModel.isPresentingOnboardingView.modify;
}

uint64_t ScreenSharingBroadcasterViewModel.init(interactionController:bannerPresentationManager:)(void *a1, void *a2)
{
  v3 = v2;
  *(v3 + 32) = 0xA000000000000008;
  *(v3 + 40) = 0;
  ObservationRegistrar.init()();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x178);
  v8 = a2;
  v9 = a1;
  v7(&v15);
  ScreenSharingBroadcasterViewModel.remoteControlState.setter(&v15);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = *((*v6 & *v9) + 0x1B0);
  v13 = v9;

  v12(partial apply for closure #1 in ScreenSharingBroadcasterViewModel.init(interactionController:bannerPresentationManager:), v11);

  return v3;
}

uint64_t closure #1 in ScreenSharingBroadcasterViewModel.init(interactionController:bannerPresentationManager:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = a2;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v7;
    v11[5] = v9;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  return result;
}

uint64_t closure #1 in closure #1 in ScreenSharingBroadcasterViewModel.init(interactionController:bannerPresentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ScreenSharingBroadcasterViewModel.init(interactionController:bannerPresentationManager:), v7, v6);
}

uint64_t closure #1 in closure #1 in ScreenSharingBroadcasterViewModel.init(interactionController:bannerPresentationManager:)()
{
  v8 = v0;
  v1 = v0[3];
  v2 = v0[2];

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x178))(&v7, v3);
  v4 = (*(*v2 + 152))(&v7);
  (*(*v2 + 224))(v4);
  v5 = v0[1];

  return v5();
}

Swift::Void __swiftcall ScreenSharingBroadcasterViewModel.checkOnboardingState()()
{
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 144))(&v4);
  v1 = v4;
  if (!(v4 >> 61))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd);
    if (*(swift_projectBox() + *(v2 + 64)) == 1)
    {
      OUTLINED_FUNCTION_0_1();
      (*(v3 + 200))(1);
    }
  }

  outlined consume of RemoteControlState(v1);
}

uint64_t ScreenSharingBroadcasterViewModel.activeControlParticipant.getter@<X0>(char *a1@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 144))(&v8);
  v4 = (v8 >> 61) - 2;
  result = outlined consume of RemoteControlState(v8);
  if (v4 <= 2 && (result = (*((*MEMORY[0x1E69E7D40] & **(v1 + 16)) + 0xF8))(result)) != 0)
  {
    ScreenSharingInteractionSession.activeControlParticipant.getter(&v7);

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t ScreenSharingBroadcasterViewModel.statusText.getter()
{
  v0 = type metadata accessor for Participant();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 144))(&v29);
  v5 = v29;
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 240))(&v28 + 7);
  if (HIBYTE(v28) == 1)
  {
    v7 = [objc_opt_self() conversationKit];
    v27 = 0xE000000000000000;
    OUTLINED_FUNCTION_5_5();
    v11 = v10 + 1;
    v12 = 0x80000001BC517440;
  }

  else if (v5 >> 61 == 3)
  {
    if (HIBYTE(v28) == 2)
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
      v18 = swift_projectBox();
      (*(v1 + 16))(v3, v18 + *(v17 + 48), v0);
      v19 = [objc_opt_self() conversationKit];
      v20._countAndFlagsBits = 0xD000000000000020;
      v30._object = 0xE000000000000000;
      v20._object = 0x80000001BC517470;
      v21.value._countAndFlagsBits = 0x61737265766E6F43;
      v21.value._object = 0xEF74694B6E6F6974;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v30._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v30);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1BC4BA940;
      v24 = Participant.displayName.getter();
      v26 = v25;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      countAndFlagsBits = String.init(format:_:)();

      (*(v1 + 8))(v3, v0);
      goto LABEL_4;
    }

    v7 = [objc_opt_self() conversationKit];
    v27 = 0xE000000000000000;
    v12 = 0x80000001BC518760;
    v11 = 0xD000000000000021;
    v8 = 0x61737265766E6F43;
    v9 = 0xEF74694B6E6F6974;
  }

  else
  {
    if (v5 >> 61 != 4 || *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) != 2)
    {
      outlined consume of RemoteControlState(v5);
      return 0;
    }

    v7 = [objc_opt_self() conversationKit];
    v27 = 0xE000000000000000;
    OUTLINED_FUNCTION_5_5();
    v12 = 0x80000001BC518790;
    v11 = 0xD000000000000021;
  }

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v8, v7, v13, *(&v27 - 1))._countAndFlagsBits;

LABEL_4:
  outlined consume of RemoteControlState(v5);
  return countAndFlagsBits;
}

BOOL ScreenSharingBroadcasterViewModel.isUnderRemoteControl.getter()
{
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 144))(&v3);
  result = 0;
  switch(v3 >> 61)
  {
    case 3uLL:
      outlined consume of RemoteControlState(v3);
      result = 1;
      break;
    case 4uLL:
      v2 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      outlined consume of RemoteControlState(v3);
      result = v2 >> 61 == 3;
      break;
    case 5uLL:
      return result;
    default:
      outlined consume of RemoteControlState(v3);
      result = 0;
      break;
  }

  return result;
}

void ScreenSharingBroadcasterViewModel.bezelEffects.getter()
{
  OUTLINED_FUNCTION_0_1();
  if ((*(v0 + 256))())
  {
    OUTLINED_FUNCTION_0_1();
    (*(v1 + 240))(&var1);

    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15ConversationKit11BezelEffectO_Tt0g5();
  }
}

unint64_t lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel()
{
  result = lazy protocol witness table cache variable for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel;
  if (!lazy protocol witness table cache variable for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel)
  {
    type metadata accessor for ScreenSharingBroadcasterViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel);
  }

  return result;
}

uint64_t type metadata accessor for ScreenSharingBroadcasterViewModel()
{
  result = type metadata singleton initialization cache for ScreenSharingBroadcasterViewModel;
  if (!type metadata singleton initialization cache for ScreenSharingBroadcasterViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScreenSharingBroadcasterViewModel.deinit()
{
  outlined consume of RemoteControlState(*(v0 + 32));
  v1 = OBJC_IVAR____TtC15ConversationKit33ScreenSharingBroadcasterViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScreenSharingBroadcasterViewModel.__deallocating_deinit()
{
  ScreenSharingBroadcasterViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for ScreenSharingBroadcasterViewModel()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t partial apply for closure #1 in closure #1 in ScreenSharingBroadcasterViewModel.init(interactionController:bannerPresentationManager:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #1 in ScreenSharingBroadcasterViewModel.init(interactionController:bannerPresentationManager:)(a1, v4, v5, v7, v6);
}

uint64_t outlined destroy of FaceIDUnavailableNotice(uint64_t a1)
{
  v2 = type metadata accessor for FaceIDUnavailableNotice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id clarityUIRootView_generic()
{
  v0 = clarityUIRootView_generic()();

  return v0;
}

uint64_t clarityUIRootView_generic()()
{
  type metadata accessor for NavigationPath();
  OUTLINED_FUNCTION_5_135();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23[-v8];
  v10 = type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23[-v16];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_151();
  }

  *v17 = static ClarityUIPreferences.shared;
  v23[15] = 0;

  State.init(wrappedValue:)();
  v18 = v24;
  v17[8] = v23[16];
  *(v17 + 2) = v18;
  v19 = *(v10 + 24);
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19MultimodalListStyleV6LayoutO_GMd);
  swift_storeEnumTagMultiPayload();
  NavigationPath.init()();
  (*(v2 + 16))(v6, v9, v0);
  State.init(wrappedValue:)();
  (*(v2 + 8))(v9, v0);
  v20 = *(v10 + 32);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_127();
  }

  *&v17[v20] = static ClarityUICallHistory.shared;
  outlined init with copy of ClarityUIRootView(v17, v14);

  v21 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  outlined destroy of ClarityUIRootView(v17, type metadata accessor for ClarityUIRootView);
  return v21;
}

uint64_t ClarityUIRootView.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NavigationPath();
  OUTLINED_FUNCTION_5_135();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_151();
  }

  *a1 = static ClarityUIPreferences.shared;
  v17[15] = 0;

  State.init(wrappedValue:)();
  v12 = v18;
  *(a1 + 8) = v17[16];
  *(a1 + 16) = v12;
  v13 = type metadata accessor for ClarityUIRootView();
  v14 = *(v13 + 24);
  *(a1 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19MultimodalListStyleV6LayoutO_GMd);
  swift_storeEnumTagMultiPayload();
  NavigationPath.init()();
  (*(v4 + 16))(v8, v11, v1);
  State.init(wrappedValue:)();
  (*(v4 + 8))(v11, v1);
  v15 = *(v13 + 32);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_127();
  }

  *(a1 + v15) = static ClarityUICallHistory.shared;
}

uint64_t type metadata accessor for ClarityUIRootView()
{
  result = type metadata singleton initialization cache for ClarityUIRootView;
  if (!type metadata singleton initialization cache for ClarityUIRootView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClarityUIRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  type metadata accessor for ClarityUIRootView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14NavigationPathVGMd);
  State.projectedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA15ModifiedContentVyAcAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAmnOQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAmnOQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAmnOQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesC0V_AP0r31UIOutgoingCallActionsNavigationM0VAP0rtuvC0VQo__AP0r9UIPreviewwM0VAP0r7PreviewC0VQo__AP0r10UIContactswM0VAP0rzC0VQo__AP0r9UIRecentswM0VAP0r9UIRecentsC0VQo_AA14_OpacityEffectVG_AP0r8UIDialerC0VtGG_SbQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesE0V_AM0n31UIOutgoingCallActionsNavigationI0VAM0npqrE0VQo__AM0n9UIPreviewsI0VAM0n7PreviewE0VQo__AM0n10UIContactssI0VAM0nvE0VQo__AM0n9UIRecentssI0VAM0nwE0VQo_AA14_OpacityEffectVG_AM0n8UIDialerE0VtGGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<<<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0, _OpacityEffect>, ClarityUIDialerView)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesE0V_AM0n31UIOutgoingCallActionsNavigationI0VAM0npqrE0VQo__AM0n9UIPreviewsI0VAM0n7PreviewE0VQo__AM0n10UIContactssI0VAM0nvE0VQo__AM0n9UIRecentssI0VAM0nwE0VQo_AA14_OpacityEffectVG_AM0n8UIDialerE0VtGGMd);
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(path:root:)();
  static Color.green.getter();
  KeyPath = swift_getKeyPath();
  v5 = AnyShapeStyle.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyAA05TupleH0VyACyAiAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAqrSQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAqrSQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAqrSQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesH0V_AT0u21UIOutgoingCallActionseP0VAT0uwxyH0VQo__AT0u9UIPrevieweP0VAT0u7PreviewH0VQo__AT0u10UIContactseP0VAT0u10UIContactsH0VQo__AT0u9UIRecentseP0VAT0u9UIRecentsH0VQo_AA14_OpacityEffectVG_AT0u8UIDialerH0VtGG_SbQo_GAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v5;
  return result;
}

uint64_t closure #1 in ClarityUIRootView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesE0V_AM0n31UIOutgoingCallActionsNavigationI0VAM0npqrE0VQo__AM0n9UIPreviewsI0VAM0n7PreviewE0VQo__AM0n10UIContactssI0VAM0nvE0VQo__AM0n9UIRecentssI0VAM0nwE0VQo_AA14_OpacityEffectVG_AM0n8UIDialerE0VtGGMd);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9[-v3];
  *v4 = static Alignment.center.getter();
  v4[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaLRd_0_r0_lFQOyAmAEAnoPQrqd__m_qd_0_qd__ctSHRd__AaLRd_0_r0_lFQOyAmAEAnoPQrqd__m_qd_0_qd__ctSHRd__AaLRd_0_r0_lFQOyAmAEAnoPQrqd__m_qd_0_qd__ctSHRd__AaLRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesD0V_AQ0q31UIOutgoingCallActionsNavigationL0VAQ0qstuD0VQo__AQ0q9UIPreviewvL0VAQ0q7PreviewD0VQo__AQ0q10UIContactsvL0VAQ0qyD0VQo__AQ0q9UIRecentsvL0VAQ0qzD0VQo_AA14_OpacityEffectVG_AQ0q8UIDialerD0VtGGMd);
  closure #1 in closure #1 in ClarityUIRootView.body.getter(a1, v4 + *(v6 + 44));
  v7 = *(a1 + 16);
  v10 = *(a1 + 8);
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v10 = v9[15];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<<<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0, _OpacityEffect>, ClarityUIDialerView)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesE0V_AM0n31UIOutgoingCallActionsNavigationI0VAM0npqrE0VQo__AM0n9UIPreviewsI0VAM0n7PreviewE0VQo__AM0n10UIContactssI0VAM0nvE0VQo__AM0n9UIRecentssI0VAM0nwE0VQo_AA14_OpacityEffectVG_AM0n8UIDialerE0VtGGMd);
  View.onChange<A>(of:initial:_:)();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAjkLQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesE0V_AM0n31UIOutgoingCallActionsNavigationI0VAM0npqrE0VQo__AM0n9UIPreviewsI0VAM0n7PreviewE0VQo__AM0n10UIContactssI0VAM0nvE0VQo__AM0n9UIRecentssI0VAM0nwE0VQo_AA14_OpacityEffectVG_AM0n8UIDialerE0VtGGMd);
}

uint64_t closure #1 in closure #1 in ClarityUIRootView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for ClarityUIRootView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = type metadata accessor for ClarityUIFavoritesView();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesC0V_AG0j31UIOutgoingCallActionsNavigationE0VAG0jlmnC0VQo_Md);
  v74 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v94 = &v71 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAdeFQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesC0V_AG0j31UIOutgoingCallActionsNavigationE0VAG0jlmnC0VQo__AG0j9UIPreviewoE0VAG0j7PreviewC0VQo_Md);
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v95 = &v71 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAdeFQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAdeFQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesC0V_AG0j31UIOutgoingCallActionsNavigationE0VAG0jlmnC0VQo__AG0j9UIPreviewoE0VAG0j7PreviewC0VQo__AG0j10UIContactsoE0VAG0jrC0VQo_Md);
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v71 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAdeFQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAdeFQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOyAcAEAdeFQrqd__m_qd_0_qd__ctSHRd__AaBRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesC0V_AG0j31UIOutgoingCallActionsNavigationE0VAG0jlmnC0VQo__AG0j9UIPreviewoE0VAG0j7PreviewC0VQo__AG0j10UIContactsoE0VAG0jrC0VQo__AG0j9UIRecentsoE0VAG0jsC0VQo_Md);
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v71 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesE0V_AI0l31UIOutgoingCallActionsNavigationG0VAI0lnopE0VQo__AI0l9UIPreviewqG0VAI0l7PreviewE0VQo__AI0l10UIContactsqG0VAI0ltE0VQo__AI0l9UIRecentsqG0VAI0luE0VQo_AA14_OpacityEffectVGMd);
  MEMORY[0x1EEE9AC00](v81);
  v90 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v71 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14NavigationPathVGMd);
  State.projectedValue.getter();
  v18 = *(a1 + 16);
  v76 = *(a1 + 8);
  LOBYTE(v102) = v76;
  v77 = v18;
  v103 = v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v19 = v97;
  v20 = v98;
  v21 = v8;
  v22 = &v8[v6[5]];
  *v22 = v96;
  *(v22 + 1) = v19;
  v22[16] = v20;
  v23 = v6[6];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *&v8[v23] = static ClarityUIPreferences.shared;
  v24 = v6[7];
  v25 = one-time initialization token for shared;

  if (v25 != -1)
  {
    swift_once();
  }

  *&v8[v24] = static ClarityUICallHistory.shared;
  v26 = v6[8];
  v27 = one-time initialization token for shared;

  v73 = v6;
  if (v27 != -1)
  {
    swift_once();
  }

  *&v8[v26] = static ClarityUIFavoritesList.shared;
  outlined init with copy of ClarityUIRootView(a1, &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = *(v4 + 80);
  v28 = (v93 + 16) & ~v93;
  v29 = swift_allocObject();
  v71 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with take of ClarityUIRootView(v71, v29 + v28);
  v30 = type metadata accessor for ClarityUIOutgoingCallActionsView();
  v92 = v5;
  v31 = v30;
  v32 = lazy protocol witness table accessor for type ClarityUIFavoritesView and conformance ClarityUIFavoritesView(&lazy protocol witness table cache variable for type ClarityUIFavoritesView and conformance ClarityUIFavoritesView, type metadata accessor for ClarityUIFavoritesView);
  v33 = lazy protocol witness table accessor for type ClarityUIOutgoingCallActionsNavigationDestination and conformance ClarityUIOutgoingCallActionsNavigationDestination();
  v72 = a1;
  v34 = v33;
  v35 = lazy protocol witness table accessor for type ClarityUIFavoritesView and conformance ClarityUIFavoritesView(&lazy protocol witness table cache variable for type ClarityUIOutgoingCallActionsView and conformance ClarityUIOutgoingCallActionsView, type metadata accessor for ClarityUIOutgoingCallActionsView);

  v36 = v73;
  View.navigationDestination<A, B>(for:destination:)();

  outlined destroy of ClarityUIRootView(v21, type metadata accessor for ClarityUIFavoritesView);
  v37 = v71;
  outlined init with copy of ClarityUIRootView(a1, v71);
  v38 = swift_allocObject();
  outlined init with take of ClarityUIRootView(v37, v38 + v28);
  v39 = type metadata accessor for ClarityPreviewView();
  v96 = v36;
  v97 = &type metadata for ClarityUIOutgoingCallActionsNavigationDestination;
  v98 = v31;
  v99 = v32;
  v100 = v34;
  v101 = v35;
  v73 = MEMORY[0x1E697D2E0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = lazy protocol witness table accessor for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination();
  v42 = lazy protocol witness table accessor for type ClarityUIFavoritesView and conformance ClarityUIFavoritesView(&lazy protocol witness table cache variable for type ClarityPreviewView and conformance ClarityPreviewView, type metadata accessor for ClarityPreviewView);
  v43 = v78;
  v44 = v39;
  v45 = v94;
  View.navigationDestination<A, B>(for:destination:)();

  (*(v74 + 8))(v45, v43);
  outlined init with copy of ClarityUIRootView(v72, v37);
  v46 = swift_allocObject();
  outlined init with take of ClarityUIRootView(v37, v46 + v28);
  v47 = type metadata accessor for ClarityUIContactsView();
  v96 = v43;
  v97 = &type metadata for ClarityUIPreviewNavigationDestination;
  v98 = v44;
  v99 = OpaqueTypeConformance2;
  v100 = v41;
  v101 = v42;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = lazy protocol witness table accessor for type ClarityUIContactsNavigationDestination and conformance ClarityUIContactsNavigationDestination();
  v50 = lazy protocol witness table accessor for type ClarityUIFavoritesView and conformance ClarityUIFavoritesView(&lazy protocol witness table cache variable for type ClarityUIContactsView and conformance ClarityUIContactsView, type metadata accessor for ClarityUIContactsView);
  v51 = v84;
  v52 = v82;
  v53 = v95;
  View.navigationDestination<A, B>(for:destination:)();

  (*(v80 + 8))(v53, v52);
  v96 = v52;
  v97 = &type metadata for ClarityUIContactsNavigationDestination;
  v98 = v47;
  v99 = v48;
  v100 = v49;
  v101 = v50;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination();
  lazy protocol witness table accessor for type ClarityUIRecentsView and conformance ClarityUIRecentsView();
  v54 = v83;
  v55 = v88;
  View.navigationDestination<A, B>(for:destination:)();
  (*(v86 + 8))(v51, v55);
  v56 = v76;
  LOBYTE(v96) = v76;
  v57 = v77;
  v97 = v77;
  State.wrappedValue.getter();
  if (v102)
  {
    v58 = 0.0;
  }

  else
  {
    v58 = 1.0;
  }

  v59 = v79;
  (*(v85 + 32))(v79, v54, v87);
  *(v59 + *(v81 + 36)) = v58;
  v60 = v89;
  sub_1BBD003E4(v59, v89);
  LOBYTE(v102) = v56;
  v103 = v57;
  State.projectedValue.getter();
  v61 = v96;
  v62 = v97;
  v63 = v98;
  v102 = 0;
  v103 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v65 = v96;
  v64 = v97;
  v66 = v98;
  v67 = v90;
  sub_1BBD0044C(v60, v90);
  v68 = v91;
  sub_1BBD0044C(v67, v91);
  v69 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesE0V_AI0l31UIOutgoingCallActionsNavigationG0VAI0lnopE0VQo__AI0l9UIPreviewqG0VAI0l7PreviewE0VQo__AI0l10UIContactsqG0VAI0ltE0VQo__AI0l9UIRecentsqG0VAI0luE0VQo_AA14_OpacityEffectVG_AI0l8UIDialerE0VtMd) + 48);
  *v69 = v61;
  *(v69 + 8) = v62;
  *(v69 + 16) = v63;
  *(v69 + 24) = v65;
  *(v69 + 32) = v64;
  *(v69 + 40) = v66;

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesE0V_AI0l31UIOutgoingCallActionsNavigationG0VAI0lnopE0VQo__AI0l9UIPreviewqG0VAI0l7PreviewE0VQo__AI0l10UIContactsqG0VAI0ltE0VQo__AI0l9UIRecentsqG0VAI0luE0VQo_AA14_OpacityEffectVGMd);

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v67, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOyAeAEAfgHQrqd__m_qd_0_qd__ctSHRd__AaDRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesE0V_AI0l31UIOutgoingCallActionsNavigationG0VAI0lnopE0VQo__AI0l9UIPreviewqG0VAI0l7PreviewE0VQo__AI0l10UIContactsqG0VAI0ltE0VQo__AI0l9UIRecentsqG0VAI0luE0VQo_AA14_OpacityEffectVGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in ClarityUIRootView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  type metadata accessor for ClarityUIRootView();

  v8 = v3;
  v9 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14NavigationPathVGMd);
  State.projectedValue.getter();
  v10 = type metadata accessor for ClarityUIOutgoingCallActionsView();
  v11 = (a2 + v10[5]);
  *v11 = v8;
  v11[1] = v9;
  v11[2] = v6;
  v11[3] = v5;
  *(a2 + v10[6]) = v7;
  v12 = v10[7];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(a2 + v12) = static ClarityUIOutgoingCallActionProvider.shared;
  v13 = v10[8];
  v14 = one-time initialization token for shared;

  if (v14 != -1)
  {
    swift_once();
  }

  *(a2 + v13) = static ClarityUICallHistory.shared;
}

uint64_t closure #2 in closure #1 in closure #1 in ClarityUIRootView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 40);
  v20 = *(a1 + 32);
  v19 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  type metadata accessor for ClarityUIRootView();
  v10 = v3;
  v11 = v4;

  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14NavigationPathVGMd);
  State.projectedValue.getter();
  v12 = type metadata accessor for ClarityPreviewView();
  v13 = (a2 + v12[5]);
  *v13 = v10;
  v13[1] = v11;
  v13[2] = v6;
  v13[3] = v5;
  v14 = a2 + v12[6];
  *v14 = v20;
  *(v14 + 8) = v7;
  *(v14 + 16) = v19;
  *(v14 + 24) = v8;
  *(v14 + 32) = v9;
  v15 = v12[7];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(a2 + v15) = static ClarityCameraModel.shared;
  v16 = v12[8];
  v17 = one-time initialization token for shared;

  if (v17 != -1)
  {
    swift_once();
  }

  *(a2 + v16) = static ClarityUICallHistory.shared;
}

uint64_t closure #3 in closure #1 in closure #1 in ClarityUIRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ClarityUIRootView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14NavigationPathVGMd);
  State.projectedValue.getter();
  v2 = type metadata accessor for ClarityUIContactsView();
  v3 = (a1 + *(v2 + 20));
  type metadata accessor for ClarityUIContactsList();
  swift_allocObject();
  ClarityUIContactsList.init()();
  State.init(wrappedValue:)();
  *v3 = v6;
  v3[1] = v7;
  v4 = *(v2 + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(a1 + v4) = static ClarityUICallHistory.shared;
}

uint64_t closure #4 in closure #1 in closure #1 in ClarityUIRootView.body.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *a1 = static ClarityUICallHistory.shared;
}

uint64_t closure #2 in closure #1 in ClarityUIRootView.body.getter()
{
  v0 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v5, 0, sizeof(v5));
  MEMORY[0x1BFB1AC50](v5);
  _AccessibilityNotifications.post()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t outlined init with copy of ClarityUIRootView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIRootView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ClarityUIRootView()
{
  type metadata accessor for ClarityUIPreferences();
  if (v0 <= 0x3F)
  {
    type metadata accessor for State<Bool>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<MultimodalListStyle.Layout>(319, &lazy cache variable for type metadata for Environment<MultimodalListStyle.Layout>, MEMORY[0x1E697C580], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<MultimodalListStyle.Layout>(319, &lazy cache variable for type metadata for State<NavigationPath>, MEMORY[0x1E697C0B0], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ClarityUICallHistory();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for State<Bool>()
{
  if (!lazy cache variable for type metadata for State<Bool>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<Bool>);
    }
  }
}

void type metadata accessor for Environment<MultimodalListStyle.Layout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyAA05TupleH0VyACyAiAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAqrSQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAqrSQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOyAiAEAqrSQrqd__m_qd_0_qd__ctSHRd__AaHRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesH0V_AT0u21UIOutgoingCallActionseP0VAT0uwxyH0VQo__AT0u9UIPrevieweP0VAT0u7PreviewH0VQo__AT0u10UIContactseP0VAT0u10UIContactsH0VQo__AT0u9UIRecentseP0VAT0u9UIRecentsH0VQo_AA14_OpacityEffectVG_AT0u8UIDialerH0VtGG_SbQo_GAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA15ModifiedContentVyAgAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaFRd_0_r0_lFQOyAgAEAqrSQrqd__m_qd_0_qd__ctSHRd__AaFRd_0_r0_lFQOyAgAEAqrSQrqd__m_qd_0_qd__ctSHRd__AaFRd_0_r0_lFQOyAgAEAqrSQrqd__m_qd_0_qd__ctSHRd__AaFRd_0_r0_lFQOy15ConversationKit018ClarityUIFavoritesF0V_AT0u21UIOutgoingCallActionscP0VAT0uwxyF0VQo__AT0u9UIPreviewcP0VAT0u7PreviewF0VQo__AT0u10UIContactscP0VAT0u10UIContactsF0VQo__AT0u9UIRecentscP0VAT0u9UIRecentsF0VQo_AA14_OpacityEffectVG_AT0u8UIDialerF0VtGG_SbQo_GMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ClarityUIRootView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIRootView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ClarityUIRootView.body.getter()
{
  v0 = OUTLINED_FUNCTION_6_118();
  OUTLINED_FUNCTION_22(v0);
  v1 = OUTLINED_FUNCTION_1_171();

  return closure #1 in closure #1 in closure #1 in ClarityUIRootView.body.getter(v1, v2);
}

uint64_t outlined destroy of ClarityUIRootView(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in ClarityUIRootView.body.getter()
{
  v0 = OUTLINED_FUNCTION_6_118();
  OUTLINED_FUNCTION_22(v0);
  v1 = OUTLINED_FUNCTION_1_171();

  return closure #2 in closure #1 in closure #1 in ClarityUIRootView.body.getter(v1, v2);
}

uint64_t partial apply for closure #3 in closure #1 in closure #1 in ClarityUIRootView.body.getter()
{
  v0 = OUTLINED_FUNCTION_6_118();
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_1_171();

  return closure #3 in closure #1 in closure #1 in ClarityUIRootView.body.getter(v1);
}

uint64_t lazy protocol witness table accessor for type ClarityUIFavoritesView and conformance ClarityUIFavoritesView(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ClarityUIRecentsView and conformance ClarityUIRecentsView()
{
  result = lazy protocol witness table cache variable for type ClarityUIRecentsView and conformance ClarityUIRecentsView;
  if (!lazy protocol witness table cache variable for type ClarityUIRecentsView and conformance ClarityUIRecentsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIRecentsView and conformance ClarityUIRecentsView);
  }

  return result;
}

uint64_t PeoplePickerViewController.presentMessageComposeViewController(for:withRecipientHandles:shouldIgnoreEmails:delegate:)(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_getObjectType();

  return specialized PeoplePickerViewController.presentMessageComposeViewController(for:withRecipientHandles:shouldIgnoreEmails:delegate:)(a1, a2, a3, a4, v4);
}

void outlined bridged method (mbgnn) of @objc MFMessageComposeViewController.recipients.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setRecipients_];
}

void outlined bridged method (mbnn) of @objc MFMessageComposeViewController.body.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();

  [a3 setBody_];
}

Swift::Void __swiftcall FaceTimeControlsView.handleUpdateDuringEphemeralAlert()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 24))();
  if (v4)
  {
    outlined consume of ConversationControlsRecipe.View?(v4, v5);
    v6 = (*(v2 + 56))(v3, v2);
    if (v6)
    {
      v14 = v6;
      v7 = [v6 isValid];
      v8 = v14;
      if (v7)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, &static Logger.conversationControls);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_1BBC58000, v10, v11, "setupRootView: displaying ephemeral alert, hiding new status view", v12, 2u);
          OUTLINED_FUNCTION_27();
        }

        v13 = (*(v2 + 88))(v3, v2);
        [v13 setAlpha_];

        v8 = v13;
      }
    }
  }
}

Swift::Void __swiftcall FaceTimeControlsView.displayEphemeralAlert()()
{
  v3 = v1;
  v4 = v0;
  v5 = (*(v1 + 24))();
  if (v5)
  {
    outlined consume of ConversationControlsRecipe.View?(v5, v6);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Logger.conversationControls);
    v8 = v2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      v13 = OUTLINED_FUNCTION_6_119(4.8149e-34);
      v14(v13);
      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

      *(v11 + 4) = v17;
      OUTLINED_FUNCTION_11_100(&dword_1BBC58000, v18, v19, "⇢ [%s] 1. Starting display of ephemeral alert");
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v20 = OUTLINED_FUNCTION_8_102();
    v22 = v21(v20);
    [v22 invalidate];

    objc_opt_self();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    (*(*static Defaults.shared + 1056))();
    v23 = OUTLINED_FUNCTION_7_102();
    OUTLINED_FUNCTION_12_89();
    OUTLINED_FUNCTION_37_0();
    v24 = swift_allocObject();
    v24[2] = v4;
    v24[3] = v3;
    v24[4] = v23;
    OUTLINED_FUNCTION_1_172();
    OUTLINED_FUNCTION_2_160();
    v33 = v25;
    v34 = &block_descriptor_105;
    v26 = _Block_copy(aBlock);

    v27 = OUTLINED_FUNCTION_7_102();
    OUTLINED_FUNCTION_12_89();
    OUTLINED_FUNCTION_37_0();
    v28 = swift_allocObject();
    v28[2] = v4;
    v28[3] = v3;
    v28[4] = v27;
    v35 = partial apply for closure #2 in FaceTimeControlsView.displayEphemeralAlert();
    v36 = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_152();
    v33 = v29;
    v34 = &block_descriptor_10_1;
    v30 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_10_87(v31, sel_animateWithDuration_animations_completion_);
    _Block_release(v30);
    _Block_release(v26);
  }
}

Swift::Void __swiftcall FaceTimeControlsView.cleanUpEphemeralAlert()()
{
  v3 = v1;
  v4 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    v11 = OUTLINED_FUNCTION_6_119(4.8149e-34);
    v12(v11);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, aBlock);

    *(v9 + 4) = v15;
    OUTLINED_FUNCTION_11_100(&dword_1BBC58000, v16, v17, "⇢ [%s] 3. Removing ephemeral alert");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v18 = OUTLINED_FUNCTION_8_102();
  v20 = v19(v18);
  [v20 invalidate];

  objc_opt_self();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  (*(*static Defaults.shared + 1056))();
  v21 = OUTLINED_FUNCTION_7_102();
  OUTLINED_FUNCTION_12_89();
  OUTLINED_FUNCTION_37_0();
  v22 = swift_allocObject();
  v22[2] = v4;
  v22[3] = v3;
  v22[4] = v21;
  OUTLINED_FUNCTION_1_172();
  OUTLINED_FUNCTION_2_160();
  v31 = v23;
  v32 = &block_descriptor_17_2;
  v24 = _Block_copy(aBlock);

  v25 = OUTLINED_FUNCTION_7_102();
  OUTLINED_FUNCTION_12_89();
  OUTLINED_FUNCTION_37_0();
  v26 = swift_allocObject();
  v26[2] = v4;
  v26[3] = v3;
  v26[4] = v25;
  v33 = partial apply for closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert();
  v34 = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_3_152();
  v31 = v27;
  v32 = &block_descriptor_24_2;
  v28 = _Block_copy(aBlock);

  OUTLINED_FUNCTION_10_87(v29, sel_animateWithDuration_animations_completion_);
  _Block_release(v28);
  _Block_release(v24);
}

void closure #1 in FaceTimeControlsView.displayEphemeralAlert()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*(a3 + 88))(a2, a3);
    [v7 setAlpha_];

    v8 = (*(a3 + 48))(a2, a3);
    [v8 setAlpha_];

    (*(a3 + 128))(a2, a3, 0.0);
  }
}

void closure #2 in FaceTimeControlsView.displayEphemeralAlert()(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (*(a4 + 24))(a3, a4);
    if (v9)
    {
      v12 = v9;
      v33 = v11;
      v34 = v10;
      if (a1)
      {
        v13 = *(a4 + 48);
        v14 = v13(a3, a4);
      }

      else
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, &static Logger.conversationControls);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1BBC58000, v16, v17, "displayEphemeralAlert: statusView.alpha/ephemeralAlertStack.alpha -> 0 didn't finish", v18, 2u);
          MEMORY[0x1BFB23DF0](v18, -1, -1);
        }

        v19 = (*(a4 + 88))(a3, a4);
        [v19 setAlpha_];

        v13 = *(a4 + 48);
        v20 = v13(a3, a4);
        [v20 setAlpha_];

        (*(a4 + 128))(a3, a4, 0.0);
        v14 = v13(a3, a4);
      }

      v21 = v14;
      [v14 setHidden_];

      v22 = v13(a3, a4);
      v23 = MEMORY[0x1E69E7D40];
      v24 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x88))();

      [v24 setAttributedText_];
      v25 = v13(a3, a4);
      v26 = (*((*v23 & *v25) + 0xA0))();

      [v26 setAttributedText_];
      v27 = objc_opt_self();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v28 = (*(*static Defaults.shared + 1056))();
      v29 = swift_allocObject();
      *(v29 + 16) = a3;
      *(v29 + 24) = a4;
      *(v29 + 32) = v8;
      *(v29 + 40) = v12;
      *(v29 + 48) = v34;
      *(v29 + 56) = v33 & 1;
      aBlock[4] = partial apply for closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert();
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_43_3;
      v30 = _Block_copy(aBlock);
      v31 = v8;
      v8 = v12;
      v32 = v34;

      [v27 animateWithDuration:v30 animations:v28];
      _Block_release(v30);
    }
  }
}

void closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert()(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = (*(a6 + 88))(a5, a6);
  [v10 setAlpha_];

  (*(a6 + 128))(a5, a6, 0.0);
  v11 = *(a6 + 48);
  v12 = v11(a5, a6);
  [v12 setHidden_];

  v13 = v11(a5, a6);
  v14 = *(a6 + 8);
  (*(v14 + 24))(a5, v14);
  [v13 setAlpha_];

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, &static Logger.conversationControls);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    (*(v14 + 16))(a5, v14);
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, aBlock);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1BBC58000, v17, v18, "⇢ [%s] 2. Displaying ephemeral alert", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFB23DF0](v20, -1, -1);
    MEMORY[0x1BFB23DF0](v19, -1, -1);
  }

  if (a4)
  {
    v24 = objc_opt_self();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v25 = (*(*static Defaults.shared + 1048))();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    v26[4] = v16;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert();
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_49_2;
    v27 = _Block_copy(aBlock);
    v16;

    v28 = [v24 scheduledTimerWithTimeInterval:0 repeats:v27 block:v25];
    _Block_release(v27);
    (*(a6 + 64))(v28, a5, a6);
  }
}

void closure #1 in closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(*(a4 + 8) + 8))(a3, *(a4 + 8));
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x8E0))(0, 0, 0);
}

void closure #1 in FaceTimeControlsView.cleanUpEphemeralAlert()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*(a3 + 48))(a2, a3);
    [v7 setAlpha_];
  }
}

void closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (*(a4 + 24))(a3, a4);
    if (v9)
    {
      outlined consume of ConversationControlsRecipe.View?(v9, v10);
    }

    else
    {
      if (a1)
      {
        v11 = *(a4 + 48);
        v12 = v11(a3, a4);
      }

      else
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        __swift_project_value_buffer(v13, &static Logger.conversationControls);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1BBC58000, v14, v15, "cleanUpEphemeralAlert: ephemeralAlertStack.alpha -> 0 didn't finish", v16, 2u);
          MEMORY[0x1BFB23DF0](v16, -1, -1);
        }

        v11 = *(a4 + 48);
        v17 = v11(a3, a4);
        [v17 setAlpha_];

        v12 = v11(a3, a4);
      }

      v18 = v12;
      [v12 setHidden_];

      v19 = v11(a3, a4);
      v20 = MEMORY[0x1E69E7D40];
      v21 = (*((*MEMORY[0x1E69E7D40] & *v19) + 0x88))();

      [v21 setAttributedText_];
      v22 = v11(a3, a4);
      v23 = (*((*v20 & *v22) + 0xA0))();

      [v23 setAttributedText_];
      v24 = objc_opt_self();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v25 = (*(*static Defaults.shared + 1056))();
      v26 = swift_allocObject();
      v26[2] = a3;
      v26[3] = a4;
      v26[4] = v8;
      v36 = partial apply for closure #1 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert();
      v37 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v33 = 1107296256;
      v34 = thunk for @escaping @callee_guaranteed () -> ();
      v35 = &block_descriptor_30_4;
      v27 = _Block_copy(&aBlock);
      v28 = v8;

      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      v30[2] = a3;
      v30[3] = a4;
      v30[4] = v29;
      v36 = partial apply for closure #2 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert();
      v37 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v33 = 1107296256;
      v34 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v35 = &block_descriptor_37_4;
      v31 = _Block_copy(&aBlock);

      [v24 animateWithDuration:v27 animations:v31 completion:v25];
      _Block_release(v31);
      _Block_release(v27);
    }
  }
}

uint64_t closure #1 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 88))(a2, a3);
  v6 = *(a3 + 8);
  v7 = *(v6 + 24);
  v7(a2, v6);
  [v5 setAlpha_];

  v7(a2, v6);
  return (*(a3 + 128))(a2, a3);
}

void closure #2 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ((a1 & 1) == 0)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, &static Logger.conversationControls);
      v10 = v8;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v32 = v14;
        *v13 = 136315138;
        (*(*(a4 + 8) + 24))(a3);
        v15 = String.init<A>(reflecting:)();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_1BBC58000, v11, v12, "cleanUpEphemeralAlert: statusView.alpha -> %s didn't finish", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x1BFB23DF0](v14, -1, -1);
        MEMORY[0x1BFB23DF0](v13, -1, -1);
      }

      v18 = (*(a4 + 88))(a3, a4);
      v19 = *(a4 + 8);
      v20 = *(v19 + 24);
      v20(a3, v19);
      [v18 setAlpha_];

      v20(a3, v19);
      (*(a4 + 128))(a3, a4);
    }

    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, &static Logger.conversationControls);
    v22 = v8;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      v27 = *(a4 + 8);
      (*(v27 + 16))(a3, v27);
      v28 = String.init<A>(reflecting:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v32);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1BBC58000, v23, v24, "⇢ [%s] 4. Removed ephemeral alert, displaying status view", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1BFB23DF0](v26, -1, -1);
      MEMORY[0x1BFB23DF0](v25, -1, -1);
    }

    else
    {

      v27 = *(a4 + 8);
    }

    v31 = (*(v27 + 8))(a3, v27);
    (*((*MEMORY[0x1E69E7D40] & *v31) + 0xAD0))();
  }
}

uint64_t AccessibilityCaptionsReader.init(viewModel:content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = property wrapper backing initializer of AccessibilityCaptionsReader.viewModel();
  *(a3 + 8) = v6;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  v7 = type metadata accessor for AccessibilityCaptionsReader();
  v8 = v7[10];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  AccessibilityFocusState.init<>()();
  v9 = (a3 + v7[12]);
  result = property wrapper backing initializer of AccessibilityCaptionsReader.announcedCaptions();
  *v9 = result;
  v9[1] = v11;
  v12 = (a3 + v7[13]);
  *v12 = a1;
  v12[1] = a2;
  return result;
}

uint64_t key path setter for EnvironmentValues.redactionReasons : EnvironmentValues(uint64_t a1)
{
  type metadata accessor for RedactionReasons();
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(v4 - v3, a1);
  return EnvironmentValues.redactionReasons.setter();
}

uint64_t property wrapper backing initializer of AccessibilityCaptionsReader.viewModel()
{
  OUTLINED_FUNCTION_1_173();
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_2(v0, v1);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t key path getter for AccessibilityCaptionsReader.viewModel : <A>AccessibilityCaptionsReader<A>@<X0>(uint64_t *a1@<X8>)
{
  result = AccessibilityCaptionsReader.viewModel.getter();
  *a1 = result;
  return result;
}

uint64_t AccessibilityCaptionsReader.viewModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void AccessibilityCaptionsReader.$viewModel.getter()
{
  type metadata accessor for TranscriptionViewModel(0);
  OUTLINED_FUNCTION_1_173();
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_2(v0, v1);

  JUMPOUT(0x1BFB1E3A0);
}

uint64_t property wrapper backing initializer of AccessibilityCaptionsReader.announcedCaptions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15ConversationKit22TranscriptionViewModelC9CaptionIDVGMd);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t AccessibilityCaptionsReader.content.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t AccessibilityCaptionsReader.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v74[0] = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_2_7();
  v75 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v6 - v5);
  OUTLINED_FUNCTION_2_7();
  v8 = v7;
  v105 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10(v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 16);
  OUTLINED_FUNCTION_2_7();
  v103 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v102 = v16 - v15;
  v17 = *(a1 + 24);
  v106 = v12;
  v107 = v17;
  OUTLINED_FUNCTION_3_153();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2_7();
  v83 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10(v74 - v20);
  v21 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_2_7();
  v94 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v104 = v74 - v24;
  v106 = v12;
  v107 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v110 = OpaqueTypeConformance2;
  v111 = MEMORY[0x1E69805D0];
  OUTLINED_FUNCTION_12_2();
  WitnessTable = swift_getWitnessTable();
  v106 = v21;
  v107 = MEMORY[0x1E69E6370];
  v26 = MEMORY[0x1E69E6388];
  v108 = WitnessTable;
  v109 = MEMORY[0x1E69E6388];
  v27 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2_7();
  v93 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v91 = v74 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15ConversationKit22TranscriptionViewModelC7CaptionVGMd);
  v95 = v21;
  v106 = v21;
  v107 = MEMORY[0x1E69E6370];
  v108 = WitnessTable;
  v84 = WitnessTable;
  v109 = v26;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = lazy protocol witness table accessor for type [TranscriptionViewModel.Caption] and conformance <A> [A]();
  v96 = v27;
  v106 = v27;
  v107 = v31;
  v89 = v31;
  v88 = v32;
  v108 = v32;
  v109 = v33;
  v87 = v33;
  v92 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2_7();
  v90 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v85 = v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_10(v74 - v38);
  v39 = v81;
  v40 = v102;
  (*(v81 + *(a1 + 52)))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI23AccessibilityFocusStateVySbGMd);
  AccessibilityFocusState.projectedValue.getter();
  v41 = v77;
  View.accessibilityFocused(_:)();

  (*(v103 + 8))(v40, v12);
  v42 = *(v8 + 16);
  v43 = v82;
  v101 = v8 + 16;
  v78 = v42;
  v42(v82, v39, a1);
  v44 = *(v8 + 80);
  v45 = (v44 + 32) & ~v44;
  v99 = v45 + v105;
  v100 = v44;
  v46 = swift_allocObject();
  v102 = v12;
  v103 = v45;
  *(v46 + 16) = v12;
  *(v46 + 24) = v17;
  v105 = v17;
  v47 = *(v8 + 32);
  v48 = v43;
  v97 = v8 + 32;
  v76 = v47;
  (v47)(v46 + v45, v43, a1);
  v49 = OpaqueTypeMetadata2;
  View.onAppear(perform:)();

  (*(v83 + 8))(v41, v49);
  v50 = *(v39 + 16);
  if (*(v39 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v51 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v52 = v74[1];
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v50);
    (*(v75 + 8))(v52, v74[0]);
    LOBYTE(v50) = v106;
  }

  LOBYTE(v106) = v50 & 1;
  v53 = v39;
  v54 = v78;
  v78(v48, v39, a1);
  v55 = swift_allocObject();
  v56 = OUTLINED_FUNCTION_5_136(v55);
  v57 = v76;
  v76(v56);
  v58 = v91;
  v59 = v95;
  v60 = v104;
  View.onChange<A>(of:initial:_:)();

  (*(v94 + 8))(v60, v59);

  v61 = TranscriptionViewModel.captions.getter();

  v106 = v61;
  v54(v48, v53, a1);
  v62 = swift_allocObject();
  v63 = OUTLINED_FUNCTION_5_136(v62);
  v57(v63);
  v64 = v85;
  v65 = v96;
  v66 = v89;
  v67 = v88;
  v68 = v87;
  View.onChange<A>(of:initial:_:)();

  (*(v93 + 8))(v58, v65);
  v106 = v65;
  v107 = v66;
  v108 = v67;
  v109 = v68;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v86;
  v71 = v92;
  static ViewBuilder.buildExpression<A>(_:)(v64, v92, v69);
  v72 = *(v90 + 8);
  v72(v64, v71);
  static ViewBuilder.buildExpression<A>(_:)(v70, v71, v69);
  return (v72)(v70, v71);
}

uint64_t closure #1 in AccessibilityCaptionsReader.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));

  v10 = TranscriptionViewModel.captions.getter();

  v11 = *(v10 + 16);
  if (v11)
  {
    v23[1] = a2;
    v23[2] = a3;
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v12 = v24;
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      outlined init with copy of TranscriptionViewModel.Caption(v13, v9);
      v15 = *v9;
      outlined destroy of TranscriptionViewModel.Caption(v9);
      v24 = v12;
      v16 = *(v12 + 16);
      if (v16 >= *(v12 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v12 = v24;
      }

      *(v12 + 16) = v16 + 1;
      *(v12 + 8 * v16 + 32) = v15;
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  v17 = type metadata accessor for AccessibilityCaptionsReader();
  v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit22TranscriptionViewModelC9CaptionIDV_SayAHGTt0g5();
  v19 = (a1 + *(v17 + 48));
  v21 = *v19;
  v20 = v19[1];
  v24 = v21;
  v25 = v20;
  v23[3] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyShy15ConversationKit22TranscriptionViewModelC9CaptionIDVGGMd);
  State.wrappedValue.setter();
  LOBYTE(v24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI23AccessibilityFocusStateVySbGMd);
  return AccessibilityFocusState.wrappedValue.setter();
}

void closure #2 in AccessibilityCaptionsReader.body.getter(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a2 == 1)
  {
    v9 = type metadata accessor for AccessibilityCaptionsReader();

    v10 = TranscriptionViewModel.captions.getter();

    v11 = *(v10 + 16);
    if (v11)
    {
      v21[0] = v9;
      v22 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v12 = v22;
      v13 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v14 = *(v6 + 72);
      do
      {
        outlined init with copy of TranscriptionViewModel.Caption(v13, v8);
        v15 = *v8;
        outlined destroy of TranscriptionViewModel.Caption(v8);
        v22 = v12;
        v16 = *(v12 + 16);
        if (v16 >= *(v12 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v12 = v22;
        }

        *(v12 + 16) = v16 + 1;
        *(v12 + 8 * v16 + 32) = v15;
        v13 += v14;
        --v11;
      }

      while (v11);

      v9 = v21[0];
    }

    else
    {
    }

    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit22TranscriptionViewModelC9CaptionIDV_SayAHGTt0g5();
    v18 = (a3 + *(v9 + 48));
    v20 = *v18;
    v19 = v18[1];
    v22 = v20;
    v23 = v19;
    v21[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyShy15ConversationKit22TranscriptionViewModelC9CaptionIDVGGMd);
    State.wrappedValue.setter();
  }
}

void AccessibilityCaptionsReader.announceNewCaptionsIfNeeded()(uint64_t a1)
{
  v2 = v1;
  v59 = a1;
  v3 = type metadata accessor for AccessibilityNotification.Announcement();
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15AttributeScopesO13AccessibilityE0D10AttributesV020AnnouncementPriorityB0O0fG0OSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v48 - v9;
  v10 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v48 - v15;
  v16 = type metadata accessor for RedactionReasons();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v23 = type metadata accessor for EnvironmentValues();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v2 + 16);
  if (*(v2 + 24) == 1)
  {
    if ((v27 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    v48 = v2;
    v29 = v28;
    os_log(_:dso:log:_:_:)();

    v2 = v48;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v27);
    (*(v24 + 8))(v26, v23);
    if (v60 != 1)
    {
      return;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI23AccessibilityFocusStateVySbGMd);
  AccessibilityFocusState.wrappedValue.getter();
  if (v60 == 1)
  {
    specialized Environment.wrappedValue.getter(v22);
    static RedactionReasons.privacy.getter();
    _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, MEMORY[0x1E697EA58]);
    v30 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v31 = *(v17 + 8);
    v31(v19, v16);
    v31(v22, v16);
    if ((v30 & 1) == 0)
    {

      v32 = TranscriptionViewModel.hidePrivacySensitiveContent.getter();

      if ((v32 & 1) == 0)
      {

        v33 = TranscriptionViewModel.captions.getter();

        MEMORY[0x1EEE9AC00](v34);
        v35 = *(v59 + 16);
        v36 = *(v59 + 24);
        *(&v48 - 4) = v35;
        *(&v48 - 3) = v36;
        *(&v48 - 2) = v2;
        v37 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in AccessibilityCaptionsReader.announceNewCaptionsIfNeeded(), (&v48 - 6), v33);
        MEMORY[0x1EEE9AC00](v37);
        *(&v48 - 4) = v35;
        *(&v48 - 3) = v36;
        *(&v48 - 2) = v2;
        v38 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15ConversationKit22TranscriptionViewModelC7CaptionVG_SSs5NeverOTg5(partial apply for closure #2 in AccessibilityCaptionsReader.announceNewCaptionsIfNeeded(), (&v48 - 6), v37);

        v60 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        BidirectionalCollection<>.joined(separator:)();

        AttributeContainer.init()();
        v39 = v53;
        AttributedString.init(_:attributes:)();
        v40 = *MEMORY[0x1E69594D8];
        v41 = type metadata accessor for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority();
        v42 = v55;
        (*(*(v41 - 8) + 104))(v55, v40, v41);
        __swift_storeEnumTagSinglePayload(v42, 0, 1, v41);
        outlined init with copy of AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority?(v42, v54);
        lazy protocol witness table accessor for type AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute and conformance AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute();
        AttributedString.subscript.setter();
        outlined destroy of AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority?(v42);
        v44 = v56;
        v43 = v57;
        v45 = v52;
        (*(v56 + 16))(v52, v39, v57);
        v46 = v58;
        MEMORY[0x1BFB1AC30](v45);
        v47 = v49;
        _AccessibilityNotifications.post()();
        (*(v50 + 8))(v46, v47);
        (*(v44 + 8))(v39, v43);
      }
    }
  }
}

uint64_t closure #1 in AccessibilityCaptionsReader.announceNewCaptionsIfNeeded()(void *a1)
{
  if (*(a1 + *(type metadata accessor for TranscriptionViewModel.Caption(0) + 40)) == 1)
  {
    type metadata accessor for AccessibilityCaptionsReader();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyShy15ConversationKit22TranscriptionViewModelC9CaptionIDVGGMd);
    State.wrappedValue.getter();
    v2 = (specialized Set.contains(_:))(*a1);

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t closure #2 in AccessibilityCaptionsReader.announceNewCaptionsIfNeeded()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AccessibilityCaptionsReader();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyShy15ConversationKit22TranscriptionViewModelC9CaptionIDVGGMd);
  State.wrappedValue.getter();
  specialized Set._Variant.insert(_:)();
  State.wrappedValue.setter();

  v4 = (a1 + *(type metadata accessor for TranscriptionViewModel.Caption(0) + 28));
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t key path getter for EnvironmentValues.accessibilityVoiceOverEnabled : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityVoiceOverEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t partial apply for closure #1 in AccessibilityCaptionsReader.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for AccessibilityCaptionsReader() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in AccessibilityCaptionsReader.body.getter(v4, v1, v2);
}

void partial apply for closure #2 in AccessibilityCaptionsReader.body.getter()
{
  OUTLINED_FUNCTION_7_103();
  v0 = OUTLINED_FUNCTION_4_140();

  closure #2 in AccessibilityCaptionsReader.body.getter(v0, v1, v2);
}

void partial apply for closure #3 in AccessibilityCaptionsReader.body.getter()
{
  OUTLINED_FUNCTION_7_103();
  OUTLINED_FUNCTION_4_140();

  closure #3 in AccessibilityCaptionsReader.body.getter();
}

void type metadata completion function for AccessibilityCaptionsReader()
{
  type metadata accessor for ObservedObject<TranscriptionViewModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<Bool>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<RedactionReasons>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AccessibilityFocusState<Bool>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for State<Set<TranscriptionViewModel.CaptionID>>();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ()();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Environment<Bool>()
{
  if (!lazy cache variable for type metadata for Environment<Bool>)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<Bool>);
    }
  }
}

void type metadata accessor for AccessibilityFocusState<Bool>()
{
  if (!lazy cache variable for type metadata for AccessibilityFocusState<Bool>)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityFocusState<Bool>);
    }
  }
}

void type metadata accessor for State<Set<TranscriptionViewModel.CaptionID>>()
{
  if (!lazy cache variable for type metadata for State<Set<TranscriptionViewModel.CaptionID>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy15ConversationKit22TranscriptionViewModelC9CaptionIDVGMd);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<Set<TranscriptionViewModel.CaptionID>>);
    }
  }
}

uint64_t _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15AttributeScopesO13AccessibilityE0D10AttributesV020AnnouncementPriorityB0O0fG0OSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute and conformance AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute and conformance AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute and conformance AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute and conformance AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute);
  }

  return result;
}

uint64_t outlined destroy of AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15AttributeScopesO13AccessibilityE0D10AttributesV020AnnouncementPriorityB0O0fG0OSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double ConversationControlsJoinCallCountdownView.RingLayer.percentage.getter()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_percentage;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

double ConversationControlsJoinCallCountdownView.RingLayer.lineWidth.getter()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_lineWidth;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

id ConversationControlsJoinCallCountdownView.RingLayer.percentage.setter(uint64_t *a1, double a2)
{
  v4 = *a1;
  OUTLINED_FUNCTION_6_0();
  *&v2[v4] = a2;
  return [v2 setNeedsDisplay];
}

uint64_t (*ConversationControlsJoinCallCountdownView.RingLayer.lineWidth.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ConversationControlsJoinCallCountdownView.RingLayer.lineWidth.modify;
}

uint64_t key path getter for ConversationControlsJoinCallCountdownView.RingLayer.fillColor : ConversationControlsJoinCallCountdownView.RingLayer@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

id ConversationControlsJoinCallCountdownView.RingLayer.fillColor.getter()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_fillColor;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t (*ConversationControlsJoinCallCountdownView.RingLayer.fillColor.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ConversationControlsJoinCallCountdownView.RingLayer.lineWidth.modify;
}

uint64_t key path getter for ConversationControlsJoinCallCountdownView.RingLayer.strokeColor : ConversationControlsJoinCallCountdownView.RingLayer@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

id ConversationControlsJoinCallCountdownView.RingLayer.strokeColor.getter()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_strokeColor;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

void ConversationControlsJoinCallCountdownView.RingLayer.fillColor.setter(void *a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_6_0();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = a1;

  [v2 setNeedsDisplay];
}

uint64_t (*ConversationControlsJoinCallCountdownView.RingLayer.strokeColor.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ConversationControlsJoinCallCountdownView.RingLayer.strokeColor.modify;
}

id ConversationControlsJoinCallCountdownView.RingLayer.init()()
{
  *&v0[OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_percentage] = 0;
  *&v0[OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_lineWidth] = 0x4020000000000000;
  v1 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_fillColor;
  v2 = objc_opt_self();
  v3 = [v2 systemDarkGreenColor];
  v4 = [v3 CGColor];

  *&v0[v1] = v4;
  v5 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_strokeColor;
  v6 = [v2 systemGreenColor];
  v7 = [v6 CGColor];

  *&v0[v5] = v7;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ConversationControlsJoinCallCountdownView.RingLayer();
  return objc_msgSendSuper2(&v9, sel_init);
}

char *ConversationControlsJoinCallCountdownView.RingLayer.init(layer:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_percentage] = 0;
  *&v1[OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_lineWidth] = 0x4020000000000000;
  v3 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_fillColor;
  v4 = objc_opt_self();
  v5 = [v4 systemDarkGreenColor];
  v6 = [v5 CGColor];

  *&v1[v3] = v6;
  v7 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_strokeColor;
  v8 = [v4 systemGreenColor];
  v9 = [v8 CGColor];

  *&v1[v7] = v9;
  v10 = OUTLINED_FUNCTION_44_0();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v12 = _bridgeAnythingToObjectiveC<A>(_:)();
  v32.receiver = v1;
  v32.super_class = type metadata accessor for ConversationControlsJoinCallCountdownView.RingLayer();
  v13 = objc_msgSendSuper2(&v32, sel_initWithLayer_, v12);
  swift_unknownObjectRelease();
  outlined init with copy of Any(a1, v31);
  v14 = v13;
  if (swift_dynamicCast())
  {
    [v30 percentage];
    v16 = v15;
    v17 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_percentage;
    OUTLINED_FUNCTION_3_5();
    *&v14[v17] = v16;
    OUTLINED_FUNCTION_12_6();
    v19 = (*(v18 + 112))();
    v20 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_lineWidth;
    OUTLINED_FUNCTION_3_5();
    *&v14[v20] = v19;
    OUTLINED_FUNCTION_12_6();
    v22 = (*(v21 + 136))();
    v23 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_fillColor;
    OUTLINED_FUNCTION_3_5();
    v24 = *&v14[v23];
    *&v14[v23] = v22;

    OUTLINED_FUNCTION_12_6();
    v26 = (*(v25 + 160))();

    __swift_destroy_boxed_opaque_existential_1(a1);
    v27 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_strokeColor;
    OUTLINED_FUNCTION_6_0();
    v28 = *&v14[v27];
    *&v14[v27] = v26;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v14;
}

void ConversationControlsJoinCallCountdownView.RingLayer.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_percentage) = 0;
  *(v0 + OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_lineWidth) = 0x4020000000000000;
  v1 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_fillColor;
  v2 = objc_opt_self();
  v3 = [v2 systemDarkGreenColor];
  v4 = [v3 CGColor];

  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer_strokeColor;
  v6 = [v2 systemGreenColor];
  v7 = [v6 CGColor];

  *(v0 + v5) = v7;
  OUTLINED_FUNCTION_14_69();
  __break(1u);
}

uint64_t static ConversationControlsJoinCallCountdownView.RingLayer.needsDisplay(forKey:)()
{
  OUTLINED_FUNCTION_7_104();
  v3 = v3 && v1 == v2;
  if (v3)
  {
    return 1;
  }

  v4 = v1;
  v5 = v0;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = MEMORY[0x1BFB209B0](v5, v4);
  v10.receiver = ObjCClassFromMetadata;
  v10.super_class = &OBJC_METACLASS____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView9RingLayer;
  v6 = objc_msgSendSuper2(&v10, sel_needsDisplayForKey_, v8);

  return v6;
}

id ConversationControlsJoinCallCountdownView.RingLayer.action(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_7_104();
  v8 = v8 && v6 == v7;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CABasicAnimation);

    v9 = @nonobjc CABasicAnimation.__allocating_init(keyPath:)(a1, a2);
    v10 = [v3 presentationLayer];
    if (v10)
    {
      v11 = v10;
      [v10 percentage];
    }

    else
    {
      [v3 percentage];
    }

    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v9 setFromValue_];
  }

  else
  {
    v13 = MEMORY[0x1BFB209B0](a1, a2);
    v15.receiver = v3;
    v15.super_class = type metadata accessor for ConversationControlsJoinCallCountdownView.RingLayer();
    v9 = objc_msgSendSuper2(&v15, sel_actionForKey_, v13);
  }

  return v9;
}

id @nonobjc CABasicAnimation.__allocating_init(keyPath:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

Swift::Void __swiftcall ConversationControlsJoinCallCountdownView.RingLayer.draw(in:)(CGContextRef in)
{
  v2 = v1;
  v4 = type metadata accessor for CGPathFillRule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConversationControlsJoinCallCountdownView.RingLayer();
  v39.receiver = v1;
  v39.super_class = v8;
  [(CGContext *)&v39 drawInContext:in];
  v9 = [v1 presentationLayer];
  if (v9)
  {
    v1 = v9;
    [v9 bounds];
    OUTLINED_FUNCTION_6_3();
  }

  else
  {
    [v1 bounds];
    OUTLINED_FUNCTION_6_3();
  }

  if (OUTLINED_FUNCTION_17_67())
  {
    OUTLINED_FUNCTION_2_161();
    v38 = (*(v10 + 112))();
  }

  else
  {
    OUTLINED_FUNCTION_4_141();
    v1 = v2;
    v38 = (*(v11 + 112))();
  }

  v12 = OUTLINED_FUNCTION_17_67();
  if (v12)
  {
    v1 = v12;
    [v12 percentage];
    v36 = v13;
  }

  else
  {
    [v2 percentage];
    v36 = v14;
  }

  if (OUTLINED_FUNCTION_17_67())
  {
    OUTLINED_FUNCTION_2_161();
    v37 = (*(v15 + 160))();
  }

  else
  {
    OUTLINED_FUNCTION_4_141();
    v1 = v2;
    v37 = (*(v16 + 160))();
  }

  if (OUTLINED_FUNCTION_17_67())
  {
    OUTLINED_FUNCTION_2_161();
    v18 = (*(v17 + 136))();
  }

  else
  {
    OUTLINED_FUNCTION_4_141();
    v18 = (*(v19 + 136))();
  }

  v40.origin.x = OUTLINED_FUNCTION_5_72();
  v20 = CGRectGetMaxX(v40) * 0.5;
  v41.origin.x = OUTLINED_FUNCTION_5_72();
  v21 = CGRectGetMaxY(v41) * 0.5;
  v42.origin.x = OUTLINED_FUNCTION_5_72();
  CGRectGetWidth(v42);
  v22 = objc_opt_self();
  v23 = OUTLINED_FUNCTION_5_72();
  v26 = [v24 v25];
  v27 = [v26 CGPath];
  CGContextSaveGState(in);
  CGContextAddPath(in, v27);
  CGContextSetFillColorWithColor(in, v18);
  (*(v5 + 104))(v7, *MEMORY[0x1E695EEB8], v4);
  CGContextRef.fillPath(using:)();
  (*(v5 + 8))(v7, v4);
  CGContextRestoreGState(in);
  v43.origin.x = OUTLINED_FUNCTION_5_72();
  Width = CGRectGetWidth(v43);
  v29 = v38;
  v30 = [v22 bezierPathWithArcCenter:1 radius:v20 startAngle:v21 endAngle:Width * 0.5 - v38 * 0.5 clockwise:{-1.57079633, (v36 * 360.0 + -90.0) * 0.0174532925}];
  v31 = [v30 CGPath];
  CGContextSaveGState(in);
  v32 = OUTLINED_FUNCTION_44_0();
  CGContextAddPath(v32, v33);
  v34 = v37;
  CGContextSetStrokeColorWithColor(in, v37);
  CGContextSetLineCap(in, kCGLineCapRound);
  CGContextSetLineWidth(in, v29);
  CGContextStrokePath(in);
  CGContextSetShouldAntialias(in, 1);
  CGContextRestoreGState(in);
}

uint64_t ConversationControlsJoinCallCountdownView.CountingLayer.value.getter()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_value;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

id ConversationControlsJoinCallCountdownView.CountingLayer.value.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_value;
  OUTLINED_FUNCTION_6_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return ConversationControlsJoinCallCountdownView.CountingLayer.value.didset(v4);
}

id ConversationControlsJoinCallCountdownView.CountingLayer.value.didset(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_value;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    return ConversationControlsJoinCallCountdownView.CountingLayer.updateString()();
  }

  return result;
}

uint64_t key path getter for ConversationControlsJoinCallCountdownView.CountingLayer.valueFont : ConversationControlsJoinCallCountdownView.CountingLayer@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

void ConversationControlsJoinCallCountdownView.CountingLayer.valueFont.didset()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_valueFont;
  swift_beginAccess();
  v2 = *(v0 + v1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    ConversationControlsJoinCallCountdownView.CountingLayer.updateString()();
  }
}

id ConversationControlsJoinCallCountdownView.CountingLayer.valueFont.getter()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_valueFont;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

void ConversationControlsJoinCallCountdownView.CountingLayer.valueFont.setter(void *a1)
{
  v3 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_valueFont;
  OUTLINED_FUNCTION_6_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  ConversationControlsJoinCallCountdownView.CountingLayer.valueFont.didset();
}

uint64_t ConversationControlsJoinCallCountdownView.CountingLayer.valueFont.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_13_32(v2);
  v3 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_valueFont;
  OUTLINED_FUNCTION_12_1();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return OUTLINED_FUNCTION_44_0();
}

void ConversationControlsJoinCallCountdownView.CountingLayer.valueFont.modify(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    ConversationControlsJoinCallCountdownView.CountingLayer.valueFont.setter(v3);
  }

  else
  {
    ConversationControlsJoinCallCountdownView.CountingLayer.valueFont.setter(v3);
  }

  free(v2);
}

id ConversationControlsJoinCallCountdownView.CountingLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationControlsJoinCallCountdownView.CountingLayer.init()()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_value] = 0;
  v2 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_valueFont;
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8002u).super.isa;

  *&v1[v2] = isa;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ConversationControlsJoinCallCountdownView.CountingLayer();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ConversationControlsJoinCallCountdownView.RingLayer.__allocating_init(layer:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OUTLINED_FUNCTION_44_0();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  _bridgeAnythingToObjectiveC<A>(_:)();
  v6 = OUTLINED_FUNCTION_2_52();
  v8 = [v6 v7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

char *ConversationControlsJoinCallCountdownView.CountingLayer.init(layer:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_value] = 0;
  v4 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_valueFont;
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8002u).super.isa;

  *&v2[v4] = isa;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for ConversationControlsJoinCallCountdownView.CountingLayer();
  v8 = objc_msgSendSuper2(&v15, sel_initWithLayer_, v7);
  swift_unknownObjectRelease();
  outlined init with copy of Any(a1, v14);
  v9 = v8;
  if (swift_dynamicCast())
  {
    v10 = [v13 value];

    __swift_destroy_boxed_opaque_existential_1(a1);
    v11 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_value;
    OUTLINED_FUNCTION_3_5();
    *&v9[v11] = v10;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t @objc ConversationControlsJoinCallCountdownView.RingLayer.init(layer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return a4(&v6);
}

id ConversationControlsJoinCallCountdownView.CountingLayer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationControlsJoinCallCountdownView.CountingLayer.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_value) = 0;
  v2 = OBJC_IVAR____TtCC15ConversationKit41ConversationControlsJoinCallCountdownView13CountingLayer_valueFont;
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8002u).super.isa;

  *(v1 + v2) = isa;
  OUTLINED_FUNCTION_14_69();
  __break(1u);
}

id ConversationControlsJoinCallCountdownView.CountingLayer.updateString()()
{
  v1 = v0;
  objc_opt_self();
  v2 = [v0 value];
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v4 = OUTLINED_FUNCTION_2_52();
  v6 = [v4 v5];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))(v11);
  v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  *(inited + 40) = v12;
  v14 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 whiteColor];
  *(inited + 104) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
  *(inited + 80) = v17;
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v18 = Dictionary.init(dictionaryLiteral:)();
  v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v20 = @nonobjc NSAttributedString.init(string:attributes:)(v7, v9, v18);
  [v1 setString_];

  return [v1 setNeedsDisplay];
}

uint64_t key path getter for ConversationControlsJoinCallCountdownView.ringWidth : ConversationControlsJoinCallCountdownView@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ConversationControlsJoinCallCountdownView.ringWidth.didset(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringWidth;
  result = swift_beginAccess();
  if (a2)
  {
    if (*(v5 + 8))
    {
      return result;
    }

    v7.n128_u64[0] = *v5;
    return (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringLayer)) + 0x78))(result, v7);
  }

  if ((*(v5 + 8) & 1) == 0)
  {
    v7.n128_u64[0] = *v5;
    if (*&a1 != *v5)
    {
      return (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringLayer)) + 0x78))(result, v7);
    }
  }

  return result;
}

uint64_t ConversationControlsJoinCallCountdownView.ringWidth.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringWidth;
  swift_beginAccess();
  return *v1;
}

uint64_t ConversationControlsJoinCallCountdownView.ringWidth.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringWidth;
  OUTLINED_FUNCTION_3_5();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return ConversationControlsJoinCallCountdownView.ringWidth.didset(v6, v7);
}

void (*ConversationControlsJoinCallCountdownView.ringWidth.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringWidth;
  swift_beginAccess();
  v5 = *(v4 + 8);
  v3[3] = *v4;
  *(v3 + 32) = v5;
  return ConversationControlsJoinCallCountdownView.ringWidth.modify;
}

void ConversationControlsJoinCallCountdownView.ringWidth.modify(uint64_t a1)
{
  v1 = *a1;
  ConversationControlsJoinCallCountdownView.ringWidth.setter(*(*a1 + 24), *(*a1 + 32));

  free(v1);
}

uint64_t key path getter for ConversationControlsJoinCallCountdownView.fillColor : ConversationControlsJoinCallCountdownView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsJoinCallCountdownView.fillColor : ConversationControlsJoinCallCountdownView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB8);
  v4 = *a1;
  return v3(v2);
}

void ConversationControlsJoinCallCountdownView.fillColor.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_fillColor;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!a1)
  {
    goto LABEL_5;
  }

  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
    v6 = v5;
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      v5 = *(v2 + v4);
LABEL_5:
      if (v5)
      {
        v9 = *(v2 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringLayer);
        v10 = v5;
        v11 = [v10 CGColor];
        (*((*MEMORY[0x1E69E7D40] & *v9) + 0x90))(v11);
      }
    }
  }
}

void *ConversationControlsJoinCallCountdownView.fillColor.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_fillColor;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t ConversationControlsJoinCallCountdownView.fillColor.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_13_32(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_fillColor;
  OUTLINED_FUNCTION_12_1();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return OUTLINED_FUNCTION_44_0();
}

uint64_t key path getter for ConversationControlsJoinCallCountdownView.strokeColor : ConversationControlsJoinCallCountdownView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsJoinCallCountdownView.strokeColor : ConversationControlsJoinCallCountdownView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);
  v4 = *a1;
  return v3(v2);
}

void ConversationControlsJoinCallCountdownView.strokeColor.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_strokeColor;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!a1)
  {
    goto LABEL_5;
  }

  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
    v6 = v5;
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      v5 = *(v2 + v4);
LABEL_5:
      if (v5)
      {
        v9 = *(v2 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringLayer);
        v10 = v5;
        v11 = [v10 CGColor];
        (*((*MEMORY[0x1E69E7D40] & *v9) + 0xA8))(v11);
      }
    }
  }
}

void *ConversationControlsJoinCallCountdownView.strokeColor.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_strokeColor;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConversationControlsJoinCallCountdownView.fillColor.setter(void *a1, uint64_t *a2, void (*a3)(void *))
{
  v6 = *a2;
  OUTLINED_FUNCTION_6_0();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;
  a3(v7);
}

uint64_t ConversationControlsJoinCallCountdownView.strokeColor.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_13_32(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_strokeColor;
  OUTLINED_FUNCTION_12_1();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return OUTLINED_FUNCTION_44_0();
}

void ConversationControlsJoinCallCountdownView.fillColor.modify(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

id ConversationControlsJoinCallCountdownView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

char *ConversationControlsJoinCallCountdownView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  *(v0 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_percentageAnimation) = 0;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringWidth;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_fillColor) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_strokeColor) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringLayer) = [objc_allocWithZone(type metadata accessor for ConversationControlsJoinCallCountdownView.RingLayer()) init];
  v2 = [objc_allocWithZone(type metadata accessor for ConversationControlsJoinCallCountdownView.CountingLayer()) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_countdownLayer) = v2;
  [v2 setAllowsFontSubpixelQuantization_];
  v26 = type metadata accessor for ConversationControlsJoinCallCountdownView();
  v3 = OUTLINED_FUNCTION_18_1();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v26);
  [v6 setUserInteractionEnabled_];
  v7 = [v6 layer];
  v8 = OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringLayer;
  [v7 addSublayer_];

  v9 = *&v6[v8];
  [v6 bounds];
  [v9 setFrame_];

  v10 = *&v6[v8];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v11 = v10;
  [v11 setContentsScale_];

  v12 = [v6 layer];
  v13 = OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_countdownLayer;
  [v12 addSublayer_];

  v14 = *&v6[v13];
  [v6 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v14 setFrame_];
  [*&v6[v13] setAlignmentMode_];
  v23 = *&v6[v13];
  [v23 setContentsScale_];

  v24 = [v6 layer];
  [v24 setContentsScale_];

  return v6;
}

void ConversationControlsJoinCallCountdownView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_percentageAnimation) = 0;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringWidth;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_fillColor) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_strokeColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id ConversationControlsJoinCallCountdownView.frame.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationControlsJoinCallCountdownView();
  return objc_msgSendSuper2(&v2, sel_frame);
}

id ConversationControlsJoinCallCountdownView.frame.setter()
{
  OUTLINED_FUNCTION_20_2();
  v1 = type metadata accessor for ConversationControlsJoinCallCountdownView();
  v14.receiver = v0;
  v14.super_class = v1;
  objc_msgSendSuper2(&v14, sel_frame);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_18_1();
  objc_msgSendSuper2(v11, v12, v10, v0, v1);
  return ConversationControlsJoinCallCountdownView.frame.didset(v3, v5, v7, v9);
}

id ConversationControlsJoinCallCountdownView.frame.didset(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  [v4 frame];
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  result = CGRectEqualToRect(v20, v24);
  if ((result & 1) == 0)
  {
    v11 = [v4 layer];
    [v5 bounds];
    [v11 setCornerRadius_];

    v13 = *&v5[OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringLayer];
    [v5 bounds];
    [v13 setFrame_];
    v14 = [v13 setNeedsDisplay];
    v15 = *&v5[OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_countdownLayer];
    v16 = (*((*MEMORY[0x1E69E7D40] & *v15) + 0x60))(v14);
    v17 = UIFont.layoutLineHeight.getter();

    [v5 bounds];
    v18 = (CGRectGetHeight(v21) - v17) * 0.5;
    [v5 bounds];
    v22.origin.x = 0.0;
    v22.origin.y = v18;
    v22.size.height = v17;
    v23 = CGRectIntegral(v22);
    [v15 setFrame_];

    return [v15 setNeedsDisplay];
  }

  return result;
}

Swift::Void __swiftcall ConversationControlsJoinCallCountdownView.initializeCountdown(with:fullValue:)(Swift::Double with, Swift::Double fullValue)
{
  v3 = v2;
  v6 = with / fullValue;
  if (with == fullValue)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v6;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CABasicAnimation);
  v8 = @nonobjc CABasicAnimation.__allocating_init(keyPath:)(0x61746E6563726570, 0xEA00000000006567);
  [v8 setDuration_];
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v10 = OUTLINED_FUNCTION_2_52();
  [v10 v11];

  v12 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v13 = OUTLINED_FUNCTION_2_52();
  [v13 v14];

  [v8 setFillMode_];
  [v8 setRemovedOnCompletion_];

  if ((*&with & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (with <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (with >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  [*(v3 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_countdownLayer) setValue_];
  [*(v3 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringLayer) setPercentage_];
  v15 = *(v3 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_percentageAnimation);
  *(v3 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_percentageAnimation) = v8;
}

Swift::Void __swiftcall ConversationControlsJoinCallCountdownView.startCountdown()()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_percentageAnimation];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    [v2 begin];
    [v2 setDisableActions_];
    [v0 setNeedsLayout];
    outlined bridged method (mnbnn) of @objc CALayer.add(_:forKey:)(v3, 0x61746E6563726570, 0xEA00000000006567, *&v0[OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_ringLayer]);
    [v2 commit];
  }
}

Swift::Void __swiftcall ConversationControlsJoinCallCountdownView.tick()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit41ConversationControlsJoinCallCountdownView_countdownLayer);
  v2 = [v1 value];
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {

    [v1 setValue_];
  }
}

id ConversationControlsJoinCallCountdownView.RingLayer.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id @nonobjc NSAttributedString.init(string:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1BFB209B0]();

  if (a3)
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6.super.isa];

  return v7;
}