uint64_t partial apply for specialized closure #1 in MostActiveParticipantsController.markParticipantAsReacting(_:)(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(v5, v6);
}

uint64_t objectdestroy_459Tm()
{

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t objectdestroy_342Tm()
{

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t objectdestroy_391Tm()
{

  return swift_deallocObject();
}

id partial apply for closure #1 in MultiwayViewController.reactionPickerTipState.didset()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha_];
}

id partial apply for closure #2 in MultiwayViewController.reactionPickerTipState.didset()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(v0 + 24) removeFromSuperview];
  }

  return result;
}

uint64_t (*OUTLINED_FUNCTION_70_8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>))()
{
  *(v2 + 264) = a2;
  *(v2 + 272) = a1;
  return closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver();
}

uint64_t OUTLINED_FUNCTION_108_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 8) = a1;

  return swift_unknownObjectWeakAssign();
}

void *OUTLINED_FUNCTION_146_3(void *a1)
{

  return memcpy(a1, v1, 0xE8uLL);
}

void *OUTLINED_FUNCTION_190_1(void *a1)
{

  return memcpy(a1, v1, 0xE8uLL);
}

void OUTLINED_FUNCTION_207_1()
{
  v3 = *(v0 + 72);
  v1[13] = v2 + 16;
  v1[14] = v3;
  v1[12] = v2 + 32;
}

uint64_t OUTLINED_FUNCTION_217_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{

  return outlined init with copy of MultiwayViewController.ViewContent(&a39, &a10);
}

void OUTLINED_FUNCTION_223_3()
{

  ConversationController.participant(with:)();
}

id OUTLINED_FUNCTION_224_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_268_2()
{
  v2 = *(v0 + 3080);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 3056, v2);
}

id OUTLINED_FUNCTION_270_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return [v3 numberOfTapsRequired];
}

void OUTLINED_FUNCTION_271_3()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_272_1()
{

  return os_log(_:dso:log:type:_:)();
}

uint64_t OUTLINED_FUNCTION_273_1()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_278_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  return outlined init with copy of MultiwayViewController.ViewContent(&a38, &a9);
}

id OUTLINED_FUNCTION_280_1()
{

  return [v0 (v1 + 2808)];
}

id OUTLINED_FUNCTION_282_1()
{

  return [v1 (v0 + 2808)];
}

id OUTLINED_FUNCTION_283_1()
{

  return [v0 (v1 + 3986)];
}

void *OUTLINED_FUNCTION_284_0(void *a1)
{

  return memcpy(a1, (v1 + 648), 0xE8uLL);
}

void *OUTLINED_FUNCTION_286_1(void *a1)
{

  return memcpy(a1, v1, 0xE8uLL);
}

void static RequestsHandler.localHandle(for:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v4 = [v1 localParticipantUUID];
  if (!v4)
  {
LABEL_10:
    v26 = outlined bridged method (pb) of @objc CHRecentCall.serviceProvider.getter(v1);
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v28)
    {
      if (v26 == v29 && v28 == v30)
      {

LABEL_21:
        v36 = static RequestsHandler.fetchLocalFaceTimeHandles()();
        v37 = specialized Collection.first.getter(v36);
        v39 = v38;

        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_2_9();
        }

        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, static Logger.conversationKit);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = OUTLINED_FUNCTION_42();
          v44 = OUTLINED_FUNCTION_23();
          *&v55 = v44;
          *v43 = 136315138;
          if (v39)
          {
            *&v57[0] = v37;
            *(&v57[0] + 1) = v39;

            v45 = String.init<A>(reflecting:)();
            v47 = v46;
          }

          else
          {
            v47 = 0xE300000000000000;
            v45 = OUTLINED_FUNCTION_12_96();
          }

          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v55);

          *(v43 + 4) = v52;
          _os_log_impl(&dword_1BBC58000, v41, v42, "[RequestsHandler] Found local FaceTime handle: %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        goto LABEL_37;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v33 = [v3 telephonyProvider];
    v34 = [v33 prioritizedSenderIdentities];

    v35 = [v34 firstObject];
    if (v35)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    v57[0] = v55;
    v57[1] = v56;
    if (!*(&v56 + 1))
    {

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_sypSgMd);
      goto LABEL_38;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSenderIdentity);
    if ((swift_dynamicCast() & 1) == 0 || (v50 = [v54 handle], v54, !v50))
    {

      goto LABEL_38;
    }

    v51 = [v50 value];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_37:

    goto LABEL_38;
  }

  v5 = v4;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v3 telephonyProvider];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v8 = [v6 senderIdentityForAccountUUID_];

  if (!v8)
  {
    v24 = OUTLINED_FUNCTION_10_90();
    v25(v24);
    goto LABEL_10;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationKit);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_42();
    v53 = OUTLINED_FUNCTION_23();
    *&v57[0] = v53;
    *v13 = 136315138;
    *&v55 = v10;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSenderIdentity);
    v14 = v10;
    v15 = String.init<A>(reflecting:)();
    v17 = v3;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v57);

    *(v13 + 4) = v18;
    v3 = v17;
    _os_log_impl(&dword_1BBC58000, v11, v12, "[RequestsHandler] Found senderIdentity: %s for recent call", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v19 = [v10 handle];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 value];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = OUTLINED_FUNCTION_10_90();
    v23(v22);
  }

  else
  {
    v48 = OUTLINED_FUNCTION_10_90();
    v49(v48);
  }

LABEL_38:
  OUTLINED_FUNCTION_30_0();
}

uint64_t static RequestsHandler.sourceBundleID(for:)(void *a1)
{
  v1 = outlined bridged method (pb) of @objc CHRecentCall.serviceProvider.getter(a1);
  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v3)
  {
    if (v1 != v4 || v3 != v5)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
  }

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void RequestsHandler.updateCache(with:shouldRequeryCached:_:)()
{
  OUTLINED_FUNCTION_29();
  v90 = v1;
  v89 = v2;
  v94 = v3;
  v5 = v4;
  v93 = v0;
  v106 = *v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v88 = &v87 - v7;
  v111 = type metadata accessor for Handle();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v91 = (v11 - v12);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v87 - v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v87 - v16;
  v100 = specialized Array.count.getter(v5);
  v18 = 0;
  v98 = v5 & 0xC000000000000001;
  v97 = v5 & 0xFFFFFFFFFFFFFF8;
  v87 = v5;
  v95 = v5 + 32;
  v96 = *MEMORY[0x1E69935C0];
  v110 = v9;
  v107 = (v9 + 32);
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v103 = v19;
    if (v18 == v100)
    {
      v64 = 0;
      v65 = *(v19 + 16);
      v66 = (v110 + 8);
      v67 = MEMORY[0x1E69E7CC0];
      for (i = v99; ; i = v71)
      {
        while (1)
        {
          if (v65 == v64)
          {

            _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC20LiveCommunicationKit6HandleV_SayAFGTt0g5();
            v80 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC20LiveCommunicationKit6HandleV_ShyAFGTt0g5(v79);
            if (*(v80 + 16))
            {
              v81 = type metadata accessor for TaskPriority();
              __swift_storeEnumTagSinglePayload(v88, 1, 1, v81);
              v82 = swift_allocObject();
              swift_weakInit();
              type metadata accessor for MainActor();

              v83 = v90;

              v84 = static MainActor.shared.getter();
              v85 = swift_allocObject();
              v86 = MEMORY[0x1E69E85E0];
              v85[2] = v84;
              v85[3] = v86;
              v85[4] = v80;
              v85[5] = v82;
              v85[6] = v89;
              v85[7] = v83;

              _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
            }

            else
            {
              v89();
            }

            OUTLINED_FUNCTION_30_0();
            return;
          }

          if (v64 >= *(v103 + 16))
          {
            goto LABEL_83;
          }

          v69 = (*(v110 + 80) + 32) & ~*(v110 + 80);
          v70 = *(v110 + 72);
          (*(v110 + 16))(i, v103 + v69 + v70 * v64, v111);
          v71 = i;
          if ((v94 & 1) == 0)
          {
            break;
          }

LABEL_65:
          v75 = *v107;
          (*v107)(v91, v71, v111);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v113 = v67;
          if (isUniquelyReferenced_nonNull_native)
          {
            i = v71;
          }

          else
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            i = v99;
            v67 = v113;
          }

          v77 = *(v67 + 16);
          v78 = v77 + 1;
          if (v77 >= *(v67 + 24) >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v78 = v77 + 1;
            i = v99;
            v67 = v113;
          }

          ++v64;
          *(v67 + 16) = v78;
          v75(v67 + v69 + v77 * v70, v91, v111);
        }

        v72 = v93;
        swift_beginAccess();
        if (!*(v72[2] + 16))
        {
          swift_endAccess();
          v71 = v99;
          goto LABEL_65;
        }

        v71 = v99;
        specialized __RawDictionaryStorage.find<A>(_:)();
        v74 = v73;
        swift_endAccess();
        if ((v74 & 1) == 0)
        {
          goto LABEL_65;
        }

        (*v66)(v71, v111);
        ++v64;
      }
    }

    if (v98)
    {
      v20 = MEMORY[0x1BFB22010](v18, v87);
    }

    else
    {
      if (v18 >= *(v97 + 16))
      {
        goto LABEL_80;
      }

      v20 = *(v95 + 8 * v18);
    }

    v21 = v20;
    v22 = __OFADD__(v18, 1);
    v23 = v18 + 1;
    if (v22)
    {
      goto LABEL_79;
    }

    v24 = [v20 callStatus];
    v102 = v23;
    if ((v24 & v96) != 0)
    {
      break;
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_45:
    v59 = *(v28 + 16);
    v60 = *(v19 + 16);
    if (__OFADD__(v60, v59))
    {
      goto LABEL_81;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v60 + v59 > *(v19 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v61;
    }

    if (*(v28 + 16))
    {
      if ((*(v19 + 24) >> 1) - *(v19 + 16) < v59)
      {
        goto LABEL_84;
      }

      swift_arrayInitWithCopy();

      v18 = v102;
      if (v59)
      {
        v62 = *(v19 + 16);
        v22 = __OFADD__(v62, v59);
        v63 = v62 + v59;
        if (v22)
        {
          goto LABEL_85;
        }

        *(v19 + 16) = v63;
      }
    }

    else
    {

      v18 = v102;
      if (v59)
      {
        goto LABEL_82;
      }
    }
  }

  v25 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v21);
  if (!v25)
  {

    goto LABEL_43;
  }

  v26 = v25;
  v109 = v25 & 0xC000000000000001;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = __CocoaSet.count.getter();
    if (v27)
    {
      goto LABEL_11;
    }

LABEL_42:

LABEL_43:
    v28 = MEMORY[0x1E69E7CC0];
LABEL_44:
    v19 = v103;
    goto LABEL_45;
  }

  v27 = *(v25 + 16);
  if (!v27)
  {
    goto LABEL_42;
  }

LABEL_11:
  v116 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v28 = v116;
  v113 = specialized Set.startIndex.getter(v26);
  v114 = v29;
  v115 = v30 & 1;
  if ((v27 & 0x8000000000000000) == 0)
  {
    v92 = v21;
    v31 = 0;
    if (v26 >= 0)
    {
      v32 = v26 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v32 = v26;
    }

    v104 = v26 + 56;
    v105 = v32;
    v101 = v26 + 64;
    v108 = v27;
    while (1)
    {
      v22 = __OFADD__(v31++, 1);
      if (v22)
      {
        break;
      }

      v33 = v113;
      v34 = v114;
      v35 = v115;
      v36 = OUTLINED_FUNCTION_153_2();
      v37 = v26;
      specialized Set.subscript.getter(v36, v38, v35, v26);
      v40 = v39;
      static RequestsHandler.lckHandle(from:)(v39);

      v116 = v28;
      v41 = v17;
      v42 = *(v28 + 16);
      if (v42 >= *(v28 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v28 = v116;
      }

      *(v28 + 16) = v42 + 1;
      (*(v110 + 32))(v28 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v42, v41, v111);
      v17 = v41;
      if (v109)
      {
        if (!v35)
        {
          goto LABEL_87;
        }

        v26 = v37;
        OUTLINED_FUNCTION_153_2();
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v47 = v108;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8CHHandleC_GMd);
        v48 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        v48(&v112, 0);
      }

      else
      {
        if (v35)
        {
          goto LABEL_88;
        }

        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        v26 = v37;
        v43 = 1 << *(v37 + 32);
        if (v33 >= v43)
        {
          goto LABEL_76;
        }

        v44 = v33 >> 6;
        v45 = *(v104 + 8 * (v33 >> 6));
        if (((v45 >> v33) & 1) == 0)
        {
          goto LABEL_77;
        }

        if (*(v37 + 36) != v34)
        {
          goto LABEL_78;
        }

        v46 = v45 & (-2 << (v33 & 0x3F));
        if (v46)
        {
          v43 = __clz(__rbit64(v46)) | v33 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v49 = v44 << 6;
          v50 = v44 + 1;
          v51 = (v101 + 8 * v44);
          while (v50 < (v43 + 63) >> 6)
          {
            v53 = *v51++;
            v52 = v53;
            v49 += 64;
            ++v50;
            if (v53)
            {
              v54 = OUTLINED_FUNCTION_153_2();
              outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v54, v55, 0);
              v43 = __clz(__rbit64(v52)) + v49;
              goto LABEL_36;
            }
          }

          v56 = OUTLINED_FUNCTION_153_2();
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v56, v57, 0);
        }

LABEL_36:
        v58 = *(v37 + 36);
        v113 = v43;
        v114 = v58;
        v115 = 0;
        v47 = v108;
      }

      if (v31 == v47)
      {

        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v113, v114, v115);
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

void RequestsHandler.isRequestItem(_:)()
{
  OUTLINED_FUNCTION_29();
  v47 = v0;
  v2 = v1;
  v51 = type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v52 = v4 - v5;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v44 - v7;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v49 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v46 = v12 - v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v44 - v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v44 - v17;
  v18 = *(type metadata accessor for RecentsCallItem(0) + 48);
  v50 = v2;
  v19 = *(v2 + v18);
  v53 = MEMORY[0x1E69E7CC0];
  v20 = specialized Array.count.getter(v19);
  for (i = 0; ; ++i)
  {
    if (v20 == i)
    {
      v24 = specialized Array.count.getter(v53);

      if (!v24)
      {
        v25 = v50;
        outlined init with copy of RecentsCallItemType(v50, v10);
        if (swift_getEnumCaseMultiPayload())
        {
          OUTLINED_FUNCTION_1_185();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v10, v26);
          v27 = 0;
          v28 = v52;
          v29 = v49;
        }

        else
        {
          v30 = v44;
          outlined init with take of RecentCallRecentItemMetadata(v10, v44);
          v29 = v49;
          v27 = *(v30 + *(v49 + 24));
          v31 = v27;
          OUTLINED_FUNCTION_0_221();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v30, v32);
          v28 = v52;
        }

        v33 = v48;
        outlined init with copy of RecentsCallItemType(v25, v48);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v34 = v45;
          outlined init with take of RecentCallRecentItemMetadata(v33, v45);
          v35 = *(v34 + *(v29 + 24));
          v36 = v35;
          OUTLINED_FUNCTION_0_221();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v34, v37);
          if (v35)
          {

            v27 = v35;
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_185();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v33, v38);
        }

        outlined init with copy of RecentsCallItemType(v25, v28);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v39 = v46;
          outlined init with take of RecentCallRecentItemMetadata(v28, v46);
          v40 = *(v39 + *(v29 + 24));
          v41 = v40;
          OUTLINED_FUNCTION_0_221();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v39, v42);
          if (v40)
          {

LABEL_26:
            RequestsHandler.callShouldShowInRequests(_:)(v41);

            goto LABEL_27;
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_185();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v28, v43);
        }

        if (v27)
        {
          v41 = v27;
          goto LABEL_26;
        }
      }

LABEL_27:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1BFB22010](i, v19);
    }

    else
    {
      if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v22 = *(v19 + 8 * i + 32);
    }

    v23 = v22;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v22 hasBeenPersisted])
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t *RequestsHandler.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_140();
  }

  return &static RequestsHandler.shared;
}

uint64_t RequestsHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  RequestsHandler.init()();
  return v0;
}

uint64_t static RequestsHandler.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_140();
  }
}

uint64_t static RequestsHandler.lckHandle(from:)(void *a1)
{
  v2 = type metadata accessor for Handle.Kind();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v14 - v8;
  v10 = [a1 type];
  if (v10 > 3)
  {
    v11 = MEMORY[0x1E696ED80];
  }

  else
  {
    v11 = qword_1E7FE78E0[v10];
  }

  (*(v3 + 104))(v9, *v11, v2);
  (*(v3 + 16))(v5, v9, v2);
  v12 = [a1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Handle.init(type:value:displayName:)();
  return (*(v3 + 8))(v9, v2);
}

uint64_t closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleV3key_0B5Trust0bF5ScoreO5valuetMd);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CommunicationTrust7ServiceOSgMd);
  v7[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18CommunicationTrust0aB12ScoreOptionsVSgMd);
  v7[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[18] = v9;
  v7[19] = v8;

  return MEMORY[0x1EEE6DFA0](closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:), v9, v8);
}

uint64_t closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:)()
{
  v2 = v0[15];
  v1 = v0[16];
  type metadata accessor for CommunicationTrustManager();
  v0[20] = static CommunicationTrustManager.shared.getter();
  v3 = type metadata accessor for CommunicationTrustScoreOptions();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  v4 = type metadata accessor for Service();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:);
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[9];

  return MEMORY[0x1EEDF61E8](v8, v6, v7);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);

  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;

  v9 = 0;
  v36 = v7;
  v37 = v1 + 64;
  v34 = v2;
  v35 = v1;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v11 = *(v0 + 112);
      v12 = __clz(__rbit64(v6)) | (v9 << 6);
      v13 = *(v1 + 48);
      type metadata accessor for Handle();
      OUTLINED_FUNCTION_7_0();
      v40 = *(v14 + 72);
      v41 = *(v14 + 16);
      v42 = v15;
      v41(v11, v13 + v40 * v12);
      *(v11 + *(v2 + 48)) = *(*(v1 + 56) + 8 * v12);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        v39 = CommunicationTrustScore.rawValue.getter();
        v38 = CommunicationTrustScore.rawValue.getter();
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(v17 + 16);
        *(v17 + 16) = 0x8000000000000000;
        result = specialized __RawDictionaryStorage.find<A>(_:)();
        v21 = v19[2];
        v22 = (v20 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }

        v24 = result;
        v25 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy20LiveCommunicationKit6HandleVSbGMd);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23))
        {
          v26 = specialized __RawDictionaryStorage.find<A>(_:)();
          if ((v25 & 1) != (v27 & 1))
          {

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v24 = v26;
        }

        if (v25)
        {
          *(v19[7] + v24) = v39 == v38;
        }

        else
        {
          v28 = *(v0 + 112);
          v19[(v24 >> 6) + 8] |= 1 << v24;
          result = (v41)(v19[6] + v24 * v40, v28, v42);
          *(v19[7] + v24) = v39 == v38;
          v29 = v19[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_28;
          }

          v19[2] = v31;
        }

        *(v17 + 16) = v19;

        swift_endAccess();

        v2 = v34;
        v1 = v35;
      }

      v6 &= v6 - 1;
      result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(*(v0 + 112), &_s20LiveCommunicationKit6HandleV3key_0B5Trust0bF5ScoreO5valuetMd);
      v7 = v36;
      v3 = v37;
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_8;
    }
  }

  (*(v0 + 88))(v32);

  v33 = *(v0 + 8);

  return v33();
}

{
  v18 = v0;

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v1 = *(v0 + 184);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationKit);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 184);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_23();
    v17 = v9;
    *v8 = 136315138;
    *(v0 + 64) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Failed to batch fetch trust scores with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  (*(v0 + 88))(v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 128);
  v7 = *(*v2 + 120);
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s18CommunicationTrust7ServiceOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s18CommunicationTrust0aB12ScoreOptionsVSgMd);
  v8 = *(v3 + 152);
  v9 = *(v3 + 144);
  if (v1)
  {
    v10 = closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:);
  }

  else
  {
    v10 = closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

id RequestsHandler.contactStore.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = closure #1 in RequestsHandler.contactStore.getter();
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id closure #1 in RequestsHandler.contactStore.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  [v0 setIncludeLocalContacts_];
  [v0 setIncludeAcceptedIntroductions_];
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  return v1;
}

uint64_t RequestsHandler.isCallUnknownParticipant(_:)(void *a1)
{
  v1 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(a1);
  if (!v1)
  {
    return 1;
  }

  v2 = specialized Collection.first.getter(v1);

  if (!v2)
  {
    return 1;
  }

  v3 = RequestsHandler.contactStore.getter();
  v4 = [v2 value];
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x1BFB209B0](v5);
  }

  v6 = [v3 contactForDestinationId_];

  if (!v6)
  {
    return 1;
  }

  return 0;
}

void static RequestsHandler.accept(recentCall:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v1);
  if (!v9)
  {
    goto LABEL_43;
  }

  v10 = specialized Collection.first.getter(v9);

  if (!v10)
  {
    goto LABEL_43;
  }

  v90 = v1;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationKit);
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_42();
    v16 = OUTLINED_FUNCTION_23();
    v92 = v16;
    *v15 = 136315138;
    v98 = v12;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle);
    v17 = v12;
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v92);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v13, v14, "[RequestsHandler] acceptRecentCall %s)", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  if (_TUIsInternalInstall())
  {
    v21 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v22 = @nonobjc NSUserDefaults.init(suiteName:)(0xD00000000000001CLL, 0x80000001BC51D6B0);
    if (v22)
    {
      v23 = v22;
      v24 = [v12 value];
      if (!v24)
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = MEMORY[0x1BFB209B0](v25);
      }

      v26 = MEMORY[0x1BFB209B0](0xD000000000000012, 0x80000001BC51D6D0);
      [v23 setValue:v24 forKey:v26];
    }
  }

  v27 = [v12 type];
  if (v27 == 2)
  {
    v28 = [v12 value];
    v29 = MEMORY[0x1E6998F60];
    if (v28)
    {
LABEL_15:
      v30 = v28;
      goto LABEL_18;
    }
  }

  else
  {
    if (v27 != 3)
    {
      goto LABEL_25;
    }

    v28 = [v12 value];
    v29 = MEMORY[0x1E6998F48];
    if (v28)
    {
      goto LABEL_15;
    }
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = MEMORY[0x1BFB209B0](v31);

LABEL_18:
  v32 = objc_opt_self();
  v33 = *v29;
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v8, v2);
  Dictionary.init(dictionaryLiteral:)();
  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = [v32 recentEventForAddress:v30 displayName:0 kind:v33 date:isa weight:0 metadata:v35 options:1];

  if (!v36)
  {
LABEL_25:
    v66 = v12;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v69 = 136315394;
      v70 = OUTLINED_FUNCTION_12_96();
      *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, 0xE300000000000000, v71);
      *(v69 + 12) = 2080;
      v98 = v66;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle);
      v72 = v66;
      v73 = String.init<A>(reflecting:)();
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v92);

      *(v69 + 14) = v75;
      _os_log_impl(&dword_1BBC58000, v67, v68, "[RequestsHandler] Could not create event for name: %s handle %s", v69, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }

    goto LABEL_43;
  }

  v37 = v36;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_42();
    v41 = OUTLINED_FUNCTION_23();
    v92 = v41;
    *v40 = 136315138;
    v98 = v37;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v42 = v37;
    v43 = String.init<A>(reflecting:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v92);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_1BBC58000, v38, v39, "[RequestsHandler] Generated event: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v46 = [objc_opt_self() defaultInstance];
  if (v46)
  {
    v47 = v46;
    static RequestsHandler.localHandle(for:)();
    v88 = v48;
    v50 = v49;
    v89 = static RequestsHandler.sourceBundleID(for:)(v90);
    v52 = v51;

    v53 = v12;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    v91 = v53;
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v56 = 136315906;
      v57 = 0xE300000000000000;
      v58 = OUTLINED_FUNCTION_12_96();
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, 0xE300000000000000, v59);
      *(v56 + 12) = 2080;
      v92 = v53;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle);
      v60 = v53;
      v61 = String.init<A>(reflecting:)();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v98);

      *(v56 + 14) = v63;
      *(v56 + 22) = 2080;
      if (v50)
      {
        v92 = v88;
        v93 = v50;

        v64 = String.init<A>(reflecting:)();
        v57 = v65;
      }

      else
      {
        v64 = OUTLINED_FUNCTION_12_96();
      }

      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v57, &v98);

      *(v56 + 24) = v76;
      *(v56 + 32) = 2080;
      v53 = v91;
      if (v52)
      {
        v92 = v89;
        v93 = v52;

        v77 = String.init<A>(reflecting:)();
        v79 = v78;
      }

      else
      {
        v79 = 0xE300000000000000;
        v77 = OUTLINED_FUNCTION_12_96();
      }

      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v98);

      *(v56 + 34) = v80;
      _os_log_impl(&dword_1BBC58000, v54, v55, "[RequestsHandler] Calling into CoreRecents to accept name: %s handle %s from localHandle: %s source: %s", v56, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    if ([v47 respondsToSelector_])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1BC4BAC30;
      *(v81 + 32) = v37;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      v82 = v37;
      v83 = v47;
      v84.super.isa = Array._bridgeToObjectiveC()().super.isa;
      if (v50)
      {
        v85 = MEMORY[0x1BFB209B0](v88, v50);
        if (v52)
        {
LABEL_37:
          v86 = MEMORY[0x1BFB209B0](v89, v52);
LABEL_42:
          v96 = closure #1 in static RequestsHandler.accept(recentCall:);
          v97 = 0;
          v92 = MEMORY[0x1E69E9820];
          v93 = 1107296256;
          v94 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
          v95 = &block_descriptor_115;
          v87 = _Block_copy(&v92);

          [v83 recordAcceptedContactEvents:v84.super.isa sendingAddress:v85 source:v86 completion:v87];
          _Block_release(v87);

          goto LABEL_43;
        }
      }

      else
      {
        v85 = 0;
        if (v52)
        {
          goto LABEL_37;
        }
      }

      v86 = 0;
      goto LABEL_42;
    }
  }

  else
  {
  }

LABEL_43:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in static RequestsHandler.accept(recentCall:)(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationKit);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1BBC58000, v5, v6, "[RequestsHandler] Failed to accept request, error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
      MEMORY[0x1BFB23DF0](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.conversationKit);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v14, "[RequestsHandler] Finished accepting request", v15, 2u);
      MEMORY[0x1BFB23DF0](v15, -1, -1);
    }

    v16 = oslog;
  }
}

id static RequestsHandler.fetchLocalFaceTimeHandles()()
{
  v0 = [objc_opt_self() sharedController];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [v0 blockUntilConnected];
    v3 = [objc_opt_self() facetimeService];
    v4 = [v2 accountsForService_];

    if (v4)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMAccount);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (one-time initialization token for conversationKit != -1)
      {
LABEL_41:
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.conversationKit);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      v31 = v2;
      v32 = v0;
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v33 = v10;
        *v9 = 136315138;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9IMAccountCGMd);
        v11 = String.init<A>(reflecting:)();
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v33);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_1BBC58000, v7, v8, "[RequestsHandler] Found FaceTime accounts: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        MEMORY[0x1BFB23DF0](v10, -1, -1);
        MEMORY[0x1BFB23DF0](v9, -1, -1);
      }

      v14 = MEMORY[0x1E69E7CC0];
      v33 = MEMORY[0x1E69E7CC0];
      v15 = specialized Array.count.getter(v5);
      v2 = 0;
      v0 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (v15 != v2)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1BFB22010](v2, v5);
        }

        else
        {
          if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v16 = *(v5 + 8 * v2 + 32);
        }

        v17 = v16;
        if (__OFADD__(v2, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ([v16 registrationStatus] == 5)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v2;
      }

      v5 = v33;
      v18 = specialized Array.count.getter(v33);
      if (!v18)
      {

        v20 = MEMORY[0x1E69E7CC0];
LABEL_35:
        v30 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v20);

        return v30;
      }

      v19 = v18;
      v33 = v14;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if ((v19 & 0x8000000000000000) == 0)
      {
        v2 = 0;
        v20 = v33;
        while (1)
        {
          v0 = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
            goto LABEL_39;
          }

          if ((v5 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1BFB22010](v2, v5);
          }

          else
          {
            if (v2 >= *(v5 + 16))
            {
              goto LABEL_40;
            }

            v21 = *(v5 + 8 * v2 + 32);
          }

          v22 = v21;
          result = outlined bridged method (pb) of @objc IMAccount.strippedLogin.getter(v21);
          if (!v23)
          {
            __break(1u);
            goto LABEL_45;
          }

          v24 = String.lowercased()();

          v33 = v20;
          v25 = *(v20 + 16);
          if (v25 >= *(v20 + 24) >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v20 = v33;
          }

          *(v20 + 16) = v25 + 1;
          *(v20 + 16 * v25 + 32) = v24;
          ++v2;
          if (v0 == v19)
          {

            goto LABEL_35;
          }
        }
      }

      __break(1u);
    }

    else if (one-time initialization token for conversationKit == -1)
    {
LABEL_31:
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.conversationKit);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1BBC58000, v27, v28, "[RequestsHandler] Could not find any facetime service IMAccount in IMAccountController", v29, 2u);
        MEMORY[0x1BFB23DF0](v29, -1, -1);
      }

      return MEMORY[0x1E69E7CD0];
    }

    swift_once();
    goto LABEL_31;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t RequestsHandler.deinit()
{

  return v0;
}

uint64_t RequestsHandler.__deallocating_deinit()
{
  RequestsHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t RequestsHandler.init()()
{
  type metadata accessor for Handle();
  lazy protocol witness table accessor for type Handle and conformance Handle();
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 24) = 0;
  return v0;
}

void RequestsHandler.isItemUnknownParticipant(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v20 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v21 = v8 - v7;
  v22 = v1;
  v9 = *(v1 + *(type metadata accessor for RecentsCallItem(0) + 48));
  v23 = MEMORY[0x1E69E7CC0];
  v10 = specialized Array.count.getter(v9);
  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {
      v14 = specialized Array.count.getter(v23);

      if (!v14)
      {
        outlined init with copy of RecentsCallItemType(v22, v5);
        if (swift_getEnumCaseMultiPayload())
        {
          OUTLINED_FUNCTION_1_185();
          v16 = v5;
        }

        else
        {
          outlined init with take of RecentCallRecentItemMetadata(v5, v21);
          v17 = *(v21 + *(v20 + 24));
          if (v17)
          {
            v18 = v17;
            RequestsHandler.isCallUnknownParticipant(_:)(v18);

            OUTLINED_FUNCTION_0_221();
            _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v21, v19);
            goto LABEL_16;
          }

          OUTLINED_FUNCTION_0_221();
          v16 = v21;
        }

        _s15ConversationKit19RecentsCallItemTypeOWOhTm_5(v16, v15);
      }

LABEL_16:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB22010](i, v9);
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v12 hasBeenPersisted])
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t outlined bridged method (pb) of @objc CHRecentCall.serviceProvider.getter(void *a1)
{
  v1 = [a1 serviceProvider];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t partial apply for closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #3 in RequestsHandler.updateCache(with:shouldRequeryCached:_:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t outlined init with take of RecentCallRecentItemMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCallRecentItemMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Handle and conformance Handle()
{
  result = lazy protocol witness table cache variable for type Handle and conformance Handle;
  if (!lazy protocol witness table cache variable for type Handle and conformance Handle)
  {
    type metadata accessor for Handle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Handle and conformance Handle);
  }

  return result;
}

id one-time initialization function for systemGreenWithUserInterfaceStyleLight()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  result = @nonobjc UIColor.init(dynamicProvider:)(closure #1 in variable initialization expression of static UIColor.systemGreenWithUserInterfaceStyleLight, 0);
  static UIColor.systemGreenWithUserInterfaceStyleLight = result;
  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static UIColor.systemGreenWithUserInterfaceStyleLight(uint64_t a1)
{
  return closure #1 in closure #1 in variable initialization expression of static UIColor.systemGreenWithUserInterfaceStyleLight(a1);
}

{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  return UIMutableTraits.userInterfaceStyle.setter();
}

id one-time initialization function for systemFillDark()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  result = @nonobjc UIColor.init(dynamicProvider:)(closure #1 in variable initialization expression of static UIColor.systemFillDark, 0);
  static UIColor.systemFillDark = result;
  return result;
}

id closure #1 in variable initialization expression of static UIColor.systemGreenWithUserInterfaceStyleLight(uint64_t a1, SEL *a2)
{
  v2 = [objc_opt_self() *a2];
  v3 = UITraitCollection.modifyingTraits(_:)();
  v4 = [v2 resolvedColorWithTraitCollection_];

  return v4;
}

uint64_t *UIColor.systemFillDark.unsafeMutableAddressor()
{
  if (one-time initialization token for systemFillDark != -1)
  {
    swift_once();
  }

  return &static UIColor.systemFillDark;
}

id @nonobjc UIColor.init(dynamicProvider:)(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed UICustomViewMenuElement) -> (@owned UIView);
  v6[3] = &block_descriptor_116;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void *(*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  v7 = (a3 + 32);
  if (v6)
  {
    while (1)
    {
      memcpy(__dst, v7, 0x41uLL);
      v8 = a1(&v10, __dst);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        MEMORY[0x1BFB20CC0](v8);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = v12;
      }

      v7 += 72;
      if (!--v6)
      {
        return v5;
      }
    }
  }

  return v5;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo25TUConversationParticipantCG_15ConversationKit0E15MediaPrioritiesVs5NeverOTg504_s15f44Kit0A10ControllerC10callCenter_36participanthi66ChangedForyAA04CallE8Provider_p_AA0A0_ptFAA011ParticipantgH0VSo014D8M0CXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v48 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v3 = v48;
    v45 = specialized Set.startIndex.getter(v1);
    v46 = v4;
    v47 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v36 = v1 + 56;
      v35 = v1 + 64;
      v37 = v2;
      v38 = v1;
      while (1)
      {
        v7 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
          break;
        }

        v9 = v45;
        v10 = v47;
        v40 = v8;
        v41 = v46;
        specialized Set.subscript.getter(v45, v46, v47, v1);
        v12 = v11;
        v43 = [v12 handle];
        v42 = [v12 identifier];
        v13 = [v12 avcIdentifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = [v12 audioPriority];
        v18 = [v12 videoPriority];

        v48 = v3;
        v20 = *(v3 + 16);
        v19 = *(v3 + 24);
        v21 = v3;
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
          v21 = v48;
        }

        *(v21 + 16) = v20 + 1;
        v22 = v21 + 48 * v20;
        *(v22 + 32) = v43;
        *(v22 + 40) = v42;
        *(v22 + 48) = 0;
        *(v22 + 56) = v14;
        *(v22 + 64) = v16;
        *(v22 + 72) = v17;
        *(v22 + 76) = v18;
        v3 = v21;
        if (v39)
        {
          v1 = v38;
          if (!v10)
          {
            goto LABEL_36;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v27 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo25TUConversationParticipantC_GMd);
          v28 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v28(v44, 0);
        }

        else
        {
          v1 = v38;
          if (v10)
          {
            goto LABEL_37;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v23 = 1 << *(v38 + 32);
          if (v9 >= v23)
          {
            goto LABEL_32;
          }

          v24 = v9 >> 6;
          v25 = *(v36 + 8 * (v9 >> 6));
          if (((v25 >> v9) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v38 + 36) != v41)
          {
            goto LABEL_34;
          }

          v26 = v25 & (-2 << (v9 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v27 = v37;
          }

          else
          {
            v29 = v24 << 6;
            v30 = v24 + 1;
            v31 = (v35 + 8 * v24);
            v27 = v37;
            while (v30 < (v23 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v9, v41, 0);
                v23 = __clz(__rbit64(v32)) + v29;
                goto LABEL_27;
              }
            }

            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v9, v41, 0);
          }

LABEL_27:
          v34 = *(v38 + 36);
          v45 = v23;
          v46 = v34;
          v47 = 0;
        }

        v6 = v40;
        if (v40 == v27)
        {
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v45, v46, v47);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

void specialized EnumeratedSequence.Iterator.next()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_140_0();
  v4 = v0[1];
  v5 = *(*v0 + 16);
  if (v4 == v5)
  {
    OUTLINED_FUNCTION_7_7();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    if (v4 >= v5)
    {
      __break(1u);
    }

    else
    {
      v10 = type metadata accessor for Participant(0);
      OUTLINED_FUNCTION_9_0(v10);
      v0[1] = v4 + 1;
      v11 = v0[2];
      *v1 = v11;
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v13, v1 + v12);
      if (!__OFADD__(v11, 1))
      {
        v0[2] = v11 + 1;
        v14 = OUTLINED_FUNCTION_309();
        outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v14, v15, v16);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v17, v18, v19, v2);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a1 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v10 = [v15 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = static UUID.== infix(_:_:)();
    (*(v4 + 8))(v7, v3);
    if (v11)
    {
      break;
    }

    ++v8;
  }

  v12 = v8;
LABEL_7:

  return v12;
}

Swift::Void __swiftcall ConversationController.swapLocalParticipantCamera()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  v7 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v8 = OUTLINED_FUNCTION_23_6();
  v9(v8);
  _dispatchPreconditionTest(_:)();
  v10 = OUTLINED_FUNCTION_3_7();
  v11(v10);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if ((*(v7 + 16) & 0x80000000) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_4:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_37_22();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1BC4BA940;
      v13 = *(v7 + 16);
      v34 = *v7;
      v35 = v13;
      String.init<A>(reflecting:)();
      OUTLINED_FUNCTION_87();
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v12 + 32) = v7;
      *(v12 + 40) = v5;
      OUTLINED_FUNCTION_41_0();
      os_log(_:dso:log:type:_:)();

      goto LABEL_12;
    }

LABEL_14:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_4;
  }

  if (BYTE1(*v7))
  {
    if (BYTE1(*v7) != 1)
    {
      goto LABEL_12;
    }

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_194();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC4BAA20;
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_254();
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 64) = v17;
  *(v15 + 32) = v2;
  *(v15 + 40) = v3;
  LOBYTE(v34) = v14;
  v18 = String.init<A>(reflecting:)();
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 72) = v18;
  *(v15 + 80) = v19;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v20 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  ConversationController.broadcastingState.setter();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v21 = OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_202_3(v21, v22);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_58_9();
  v24 = OUTLINED_FUNCTION_153_4();
  v25(v24);
  v26 = OUTLINED_FUNCTION_40_2();
  v27(v26);
  v28 = OUTLINED_FUNCTION_208();
  v29(v28);
  v30 = v36;
  v31 = v37;
  __swift_project_boxed_opaque_existential_1(&v34, v36);
  v32 = *(v0 + v20);
  v33 = ConversationController.isOneToOneModeEnabled.getter();
  (*(v31 + 32))(v14, v32, (v33 & 1) == 0, v30, v31);
  __swift_destroy_boxed_opaque_existential_1(&v34);
LABEL_12:
  OUTLINED_FUNCTION_30_0();
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

void ConversationController.leaveConversation(reason:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = v0;
  v5 = v4;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_12_3();
  v10(v9);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = OUTLINED_FUNCTION_162_4();
  v13(v12);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for conversationKit != -1)
  {
LABEL_5:
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_37_22();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC4BA940;
  v15 = (v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v22 = *v15;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
  OUTLINED_FUNCTION_437();
  OUTLINED_FUNCTION_254();
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = v7;
  *(v14 + 40) = v2;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_299_0();

  v16 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v3 + v16, &v22);
  v17 = v23;
  v18 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, v23);
  v19 = *(v15 + 1);
  v20 = *(v18 + 88);
  v21 = swift_unknownObjectRetain();
  v20(v21, v19, v5, v17, v18);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  OUTLINED_FUNCTION_49();
}

void ConversationController.updateParticipant(for:withAnalysis:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = v1;
  v4 = OUTLINED_FUNCTION_46_4();
  v5 = type metadata accessor for Participant(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_10();
  v7 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {

    v9 = OUTLINED_FUNCTION_91_2();
    v8(v9);
    v10 = OUTLINED_FUNCTION_43_0();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
  }

  if (*(v2 + *(v5 + 28)))
  {
    ConversationController.didUpdateVisibleParticipant(_:)(v2);
  }

  else
  {
    v11 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v12 = *v11;
    if (*v11)
    {
      v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v3 + v13, v0);
      OUTLINED_FUNCTION_276_2();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();

      v14 = OUTLINED_FUNCTION_76();
      v12(v14);
      v15 = OUTLINED_FUNCTION_91_2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v15);
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v0, v16);
    }
  }

  OUTLINED_FUNCTION_49();
}

Swift::Void __swiftcall ConversationController.stopLocalVideo()()
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if ((v3 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_6;
  }

  v8 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if ((*(v8 + 16) & 0x80000000) == 0)
  {
    return;
  }

  if (dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter())
  {
    v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable;
    OUTLINED_FUNCTION_3_5();
    *(v0 + v9) = 1;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)();
  ConversationController.broadcastingState.setter();
  v10 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_5(v10);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_58_9();
  v12 = OUTLINED_FUNCTION_74_10();
  v13(v12);
  OUTLINED_FUNCTION_260_4();
  v14 = OUTLINED_FUNCTION_62_0();
  v15(v14);
  v16 = OUTLINED_FUNCTION_15_14();
  v17(v16);
  OUTLINED_FUNCTION_82_0(v22);
  v18 = OUTLINED_FUNCTION_2_14();
  v19(v18);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v20 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_382_0();
  v21 = *(v20 + 336);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_9_51();
  v21();
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall ConversationController.startLocalVideo(allowVideoUpgrade:)(Swift::Bool allowVideoUpgrade)
{
  OUTLINED_FUNCTION_29();
  v3 = v1;
  v5 = v4;
  v6 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_24_5();
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v2 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_250_3();
  v9();
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_248_1();
  v10 = OUTLINED_FUNCTION_48_0();
  v11(v10);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v12 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v12 + 16) < 0)
  {
    goto LABEL_25;
  }

  v6 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v13 = *(v6 + 8);
  swift_getObjectType();
  v14 = *(v13 + 136);
  swift_unknownObjectRetain();
  v15 = OUTLINED_FUNCTION_157();
  LOBYTE(v13) = v14(v15);
  swift_unknownObjectRelease();
  if ((v13 & 1) != 0 || (v16 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), *(v3 + v16) == 3))
  {
    v17 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (*(v3 + v17) == 3)
    {
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v18 = OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_202_3(v18, v19);
      OUTLINED_FUNCTION_2_7();
      OUTLINED_FUNCTION_21();
      MEMORY[0x1EEE9AC00](v20);
      OUTLINED_FUNCTION_58_9();
      v21 = OUTLINED_FUNCTION_153_4();
      v22(v21);
      OUTLINED_FUNCTION_361_0();
      v23 = OUTLINED_FUNCTION_43_0();
      v24(v23);
      v25 = OUTLINED_FUNCTION_139();
      v26(v25);
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v27 = OUTLINED_FUNCTION_0_95();
      LOBYTE(v2) = v28(v27);
      __swift_destroy_boxed_opaque_existential_1(v79);
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    ConversationController.cameraStartPolicy.getter();
    if (v29)
    {
      v78 = v5;
      v30 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable;
      OUTLINED_FUNCTION_3_5();
      *(v3 + v30) = 0;
      v31 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable;
      OUTLINED_FUNCTION_3_5();
      *(v3 + v31) = 0;
      v32 = OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable;
      OUTLINED_FUNCTION_3_5();
      *(v3 + v32) = 0;
      if (one-time initialization token for conversationKit == -1)
      {
LABEL_10:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        OUTLINED_FUNCTION_37_22();
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1BC4BA940;
        LOBYTE(v79[0]) = v2;
        v34 = String.init<A>(reflecting:)();
        v36 = v35;
        *(v33 + 56) = MEMORY[0x1E69E6158];
        *(v33 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v33 + 32) = v34;
        *(v33 + 40) = v36;
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)();

        ConversationController.broadcastingState.setter();
        if (ConversationController.shouldDeferStartCameraAction.getter())
        {
          ConversationController.didDeferStartCameraAction.setter(1);
        }

        else
        {
          v52 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          v53 = *(v52 + 24);
          v54 = *(v52 + 32);
          v55 = OUTLINED_FUNCTION_243();
          OUTLINED_FUNCTION_202_3(v55, v56);
          OUTLINED_FUNCTION_2_7();
          OUTLINED_FUNCTION_21();
          MEMORY[0x1EEE9AC00](v57);
          OUTLINED_FUNCTION_58_9();
          v58 = OUTLINED_FUNCTION_153_4();
          v59(v58);
          (*(v54 + 32))(v79, v53, v54);
          v60 = OUTLINED_FUNCTION_243();
          v61(v60);
          OUTLINED_FUNCTION_179_2(v79, v80);
          OUTLINED_FUNCTION_494();
          v62();
          __swift_destroy_boxed_opaque_existential_1(v79);
        }

        if (v78)
        {
          v63 = *(v6 + 8);
          swift_getObjectType();
          v64 = *(v63 + 528);
          swift_unknownObjectRetain();
          v65 = OUTLINED_FUNCTION_7_8();
          LOBYTE(v63) = v64(v65);
          swift_unknownObjectRelease();
          if (v63)
          {
            v66 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            outlined init with copy of CallCenterProvider(v3 + v66, v79);
            v67 = v81;
            OUTLINED_FUNCTION_179_2(v79, v80);
            v68 = *(v67 + 216);
            swift_unknownObjectRetain();
            OUTLINED_FUNCTION_205_0();
            v68();
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v79);
            v69 = (v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v70 = *v69;
            if (*v69)
            {
              v71 = *(v6 + 8);
              v72 = OUTLINED_FUNCTION_4_31();
              outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v72);
              v73 = swift_unknownObjectRetain();
              v70(v73, v71);
              v74 = OUTLINED_FUNCTION_4_31();
              outlined consume of (@escaping @callee_guaranteed () -> ())?(v74);
              swift_unknownObjectRelease();
            }
          }
        }

        v75 = *(v6 + 8);
        ObjectType = swift_getObjectType();
        v77 = *(v75 + 336);
        swift_unknownObjectRetain();
        v77(1, ObjectType, v75);
        swift_unknownObjectRelease();
        goto LABEL_25;
      }

LABEL_27:
      OUTLINED_FUNCTION_0_6();
      goto LABEL_10;
    }

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    OUTLINED_FUNCTION_194();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BC4BAA20;
    v38 = *(v6 + 8);
    swift_getObjectType();
    v39 = *(v38 + 352);
    swift_unknownObjectRetain();
    v40 = OUTLINED_FUNCTION_20_36();
    v39(v40);
    OUTLINED_FUNCTION_448();
    LOBYTE(v79[0]) = v38 & 1;
    v41 = String.init<A>(reflecting:)();
    v43 = v42;
    v44 = MEMORY[0x1E69E6158];
    *(v37 + 56) = MEMORY[0x1E69E6158];
    v45 = lazy protocol witness table accessor for type String and conformance String();
    *(v37 + 64) = v45;
    *(v37 + 32) = v41;
    *(v37 + 40) = v43;
    LOBYTE(v79[0]) = [objc_opt_self() allowsScreenSharingWithVideo];
    v46 = String.init<A>(reflecting:)();
    *(v37 + 96) = v44;
    *(v37 + 104) = v45;
    *(v37 + 72) = v46;
    *(v37 + 80) = v47;
    OUTLINED_FUNCTION_355_0();

    v48 = (v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v49 = *v48;
    if (*v48)
    {
      v50 = OUTLINED_FUNCTION_363_0();
      v49(v50);
      v51 = OUTLINED_FUNCTION_4_31();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v51);
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_156();
    os_log(_:dso:log:type:_:)();
  }

LABEL_25:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.setLocalAudio(muted:bluetoothAudioFormat:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v9 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_398_0();
  v10(v1);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_414();
  v11 = OUTLINED_FUNCTION_157();
  v12(v11);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v25 = v5;
  if ((*(v13 + 16) & 0x80000000) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_37_22();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BC4BA940;
      String.init<A>(reflecting:)();
      OUTLINED_FUNCTION_80_0();
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v14 + 32) = v1;
      *(v14 + 40) = v2;
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_156();
      os_log(_:dso:log:type:_:)();

      ConversationController.broadcastingState.setter();
      v15 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      goto LABEL_8;
    }

LABEL_12:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_4;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_194();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BC4BAA20;
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_80_0();
  v17 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v18 = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 64) = v18;
  *(v16 + 32) = v1;
  *(v16 + 40) = v2;
  v19 = String.init<A>(reflecting:)();
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  *(v16 + 72) = v19;
  *(v16 + 80) = v20;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  ConversationController.broadcastingState.setter();
  v15 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
LABEL_8:
  v21 = *(v15 + 8);
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 384);
  swift_unknownObjectRetain();
  (v23)(v7 & 1, ObjectType, v21);
  swift_unknownObjectRelease();
  if ((v25 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_447();
    v24 = *(v23 + 304);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_142();
    v24();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationController.setDownlinkMuted(_:)(Swift::Bool a1)
{
  v3 = v1;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v2 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_12_3();
  v6(v5);
  v7 = _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_162_4();
  v9(v8);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_5;
  }

  ConversationController.lookupActiveConversation()();
  if (v13)
  {
    outlined init with take of TapInteractionHandler(&v12, v14);
    v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v3 + v10, &v12);
    OUTLINED_FUNCTION_113_5(&v12);
    OUTLINED_FUNCTION_123_2();
    v11();
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(&v12);
    return;
  }

  outlined destroy of CallControlsService?(&v12, &_s15ConversationKit0A0_pSgMd);
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)();
}

void ConversationController.__allocating_init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  HIDWORD(v21) = a8;
  ObjectType = swift_getObjectType();
  v16 = OUTLINED_FUNCTION_316_1();
  specialized ConversationController.__allocating_init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(v16, v17, a4, a5, a6, a7, HIDWORD(v21), a9, a10, a11, v11, ObjectType, a2, v19, a7, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t ConversationController.lookupActiveParticipant(correspondingTo:)(uint64_t a1)
{
  ConversationController.lookupActiveConversation()();
  if (v15)
  {
    OUTLINED_FUNCTION_384_0(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17[0]);
    ConversationController.activeParticipant(correspondingTo:in:)(a1, v17);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    outlined destroy of CallControlsService?(&v13, &_s15ConversationKit0A0_pSgMd);
    return 0;
  }

  return v11;
}

uint64_t ConversationController.lookupActiveParticipant(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  ConversationController.lookupActiveConversation()();
  if (v20)
  {
    OUTLINED_FUNCTION_384_0(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19, v20, v21, v22[0]);
    if (a1)
    {
      v12 = a1;
      ConversationController.activeParticipant(from:in:)(v12, a2);

      return __swift_destroy_boxed_opaque_existential_1(v22);
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of CallControlsService?(&v18, &_s15ConversationKit0A0_pSgMd);
  }

  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_10_0();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

BOOL ConversationController.isLinkCall.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v15)
  {
    OUTLINED_FUNCTION_384_0(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17[0]);
    OUTLINED_FUNCTION_97_8(v17);
    v8 = OUTLINED_FUNCTION_4_38();
    v10 = v9(v8);
    v11 = v10 != 0;
    if (v10)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    outlined destroy of CallControlsService?(&v13, &_s15ConversationKit0A0_pSgMd);
    return 0;
  }

  return v11;
}

Swift::Void __swiftcall ConversationController.cancelJoinCountdown()()
{
  v2 = OUTLINED_FUNCTION_129();
  v3 = type metadata accessor for Participant(v2);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_149();
  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v0 + v9, v7);
  Participant.asCanceledJoinCountdown()();
  OUTLINED_FUNCTION_0_222();
  _s15ConversationKit11ParticipantVWOhTm_18(v7, v10);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_85_8();
  _s15ConversationKit11ParticipantVWOdTm_0(v1, v0 + v9);
  swift_endAccess();
}

void ConversationController.activeOneToOneConversationBackedByGroupSession.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  ConversationController.lookupActiveConversation()();
  if (!v27[3])
  {
    outlined destroy of CallControlsService?(v27, &_s15ConversationKit0A0_pSgMd);
LABEL_7:
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_335();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_202_3(v3, v4);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_58_9();
  v6 = OUTLINED_FUNCTION_153_4();
  v7(v6);
  v8 = OUTLINED_FUNCTION_33_0();
  v10 = v9(v8);
  v11 = OUTLINED_FUNCTION_209();
  v12(v11);
  OUTLINED_FUNCTION_184_2(v28);
  v13 = OUTLINED_FUNCTION_84_9();
  v14(v13);
  v15 = OUTLINED_FUNCTION_166_4();
  type metadata accessor for NSObject(v15, v16);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v17, &lazy cache variable for type metadata for TUConversationMember);
  OUTLINED_FUNCTION_325_1();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v19 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  OUTLINED_FUNCTION_401_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  swift_getObjectType();
  v22 = *(v21 + 136);
  swift_unknownObjectRetain();
  v23 = OUTLINED_FUNCTION_157();
  v22(v23);
  OUTLINED_FUNCTION_530();
  v24 = [v10 activeConversationWithRemoteMembers:isa andLink:0 matchingVideo:v20 & 1 backedByGroupSession:1];

  if (!v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
    goto LABEL_7;
  }

  if ([v24 isOneToOneModeEnabled])
  {
    v25 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
    v26 = &protocol witness table for TUConversation;
  }

  else
  {

    v25 = 0;
    v26 = 0;
    v24 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  *(v2 + 24) = v25;
  *(v2 + 32) = v26;
  *v2 = v24;
  __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_10:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.participant(with:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_83_1();
  v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v0 + v10, v2);
  v11 = *(v2 + *(v7 + 28));
  if (v11)
  {
    v12 = v11;
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v2, v13);
    v14 = [v12 isEqualToHandle_];

    if (v14)
    {
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v0 + v10, v6);
LABEL_14:
      v23 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v2, v15);
  }

  v16 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v17 = *(v0 + v16);
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_12:
    v23 = 1;
LABEL_15:
    __swift_storeEnumTagSinglePayload(v6, v23, 1, v7);
    OUTLINED_FUNCTION_30_0();
    return;
  }

  OUTLINED_FUNCTION_40_3();

  v19 = 0;
  while (v19 < *(v17 + 16))
  {
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v20, v1);
    v21 = *(v1 + *(v7 + 28));
    if (v21 && [v21 isEqualToHandle_])
    {

      OUTLINED_FUNCTION_4_150();
      v24 = OUTLINED_FUNCTION_249();
      _s15ConversationKit11ParticipantVWObTm_8(v24, v25);
      goto LABEL_14;
    }

    ++v19;
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v1, v22);
    if (v18 == v19)
    {

      goto LABEL_12;
    }
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v40 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v39 = v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_78_4();
  v9 = type metadata accessor for Participant(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v37 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v38 = v13;
  OUTLINED_FUNCTION_4_24();
  v14 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_10();
  v18 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  (*(v16 + 16))(v0, v18 + *(v9 + 20), v14);
  v19 = static UUID.== infix(_:_:)();
  (*(v16 + 8))(v0, v14);
  if ((v19 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    v20 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v20);

    OUTLINED_FUNCTION_9_51();
    specialized Sequence.first(where:)(v21, v22, v23);

    v24 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_115(v24, v25, v9);
    if (v26)
    {
      outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd);
      OUTLINED_FUNCTION_3_0();
      v27 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v27);

      OUTLINED_FUNCTION_487();
      specialized Sequence.first(where:)(v28, v29, v30);

      OUTLINED_FUNCTION_115(v39, 1, v9);
      if (v26)
      {
        outlined destroy of CallControlsService?(v39, &_s15ConversationKit11ParticipantVSgMd);
        goto LABEL_9;
      }

      v31 = v39;
      v32 = v37;
    }

    else
    {
      v31 = v2;
      v32 = v38;
    }

    _s15ConversationKit11ParticipantVWObTm_8(v31, v32);
    _s15ConversationKit11ParticipantVWObTm_8(v32, v40);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v18, v40);
LABEL_9:
  OUTLINED_FUNCTION_350_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v91 = v4;
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_17();
  v11 = *v3;
  v100 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 32);
  v97 = *(v3 + 24);
  v90 = v0;
  v14 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v99 = v1;
  v15 = v14 + *(v1 + 28);
  v16 = *v15;
  v17 = *(v15 + 8);
  v19 = *(v15 + 16);
  v18 = *(v15 + 24);
  v20 = *(v15 + 32);
  v98 = v13;
  if (*v15)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_460();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_142();
      outlined copy of Participant.RemoteIdentifiers?(v21);
      OUTLINED_FUNCTION_433();
      v22 = v11;
      OUTLINED_FUNCTION_142();
      outlined copy of Participant.RemoteIdentifiers?(v23);
      OUTLINED_FUNCTION_45_1();
      v24 = static NSObject.== infix(_:_:)();
      v18 = v100;
      OUTLINED_FUNCTION_485();
      outlined consume of Participant.RemoteIdentifiers?(v25);
      if (v24)
      {
        if (v19)
        {
          v26 = v12;
        }

        else
        {
          v26 = (v17 == v100) & ~v12;
        }

        OUTLINED_FUNCTION_142();
        outlined consume of Participant.RemoteIdentifiers?(v27);
        OUTLINED_FUNCTION_492();
        if (v26)
        {
          goto LABEL_52;
        }
      }

      else
      {

        OUTLINED_FUNCTION_142();
        outlined consume of Participant.RemoteIdentifiers?(v32);
        OUTLINED_FUNCTION_492();
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_451();
    outlined copy of Participant.RemoteIdentifiers?(v30);
    OUTLINED_FUNCTION_433();
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_451();
    outlined copy of Participant.RemoteIdentifiers?(v31);
  }

  else
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_451();
    outlined copy of Participant.RemoteIdentifiers?(v28);

    if (!v11)
    {
      OUTLINED_FUNCTION_117();
      OUTLINED_FUNCTION_451();
      outlined consume of Participant.RemoteIdentifiers?(v74);
LABEL_52:
      OUTLINED_FUNCTION_1_186();
      OUTLINED_FUNCTION_309_0();
      _s15ConversationKit11ParticipantVWOcTm_17(v75, v18);
      goto LABEL_61;
    }

    v29 = v11;
  }

  v101 = v16;
  v102 = v17;
  v103 = v19;
  v104 = v18;
  v105 = v20;
  v106 = v11;
  v107 = v100;
  v108 = v12;
  v109 = v97;
  v110 = v13;
  outlined destroy of CallControlsService?(&v101, &_s15ConversationKit11ParticipantV17RemoteIdentifiersVSg_AFtMd);
LABEL_14:
  v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  v34 = v90;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v18 = v91;
  if (!*(*(v90 + v33) + 16))
  {
LABEL_32:
    v53 = OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v54 = *(v34 + v53);
    v95 = *(v54 + 16);
    if (!v95)
    {
      v73 = 1;
      goto LABEL_62;
    }

    v96 = v12;
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_40_3();

    v55 = 0;
    v56 = v92;
    v93 = v54;
    while (1)
    {
      if (v55 >= *(v54 + 16))
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v57, v56);
      v58 = (v56 + *(v99 + 28));
      v59 = v58[1];
      v61 = v58[2];
      v60 = v58[3];
      v62 = v58[4];
      if (!*v58)
      {
        if (!v11)
        {

          OUTLINED_FUNCTION_79_16();
          outlined copy of Participant.RemoteIdentifiers?(v78);

LABEL_58:
          OUTLINED_FUNCTION_79_16();
          outlined consume of Participant.RemoteIdentifiers?(v82);
          goto LABEL_59;
        }

LABEL_42:
        v101 = *v58;
        v102 = v59;
        v103 = v61;
        v104 = v60;
        v105 = v62;
        v106 = v11;
        OUTLINED_FUNCTION_91_11();
        v107 = v68;
        v108 = v67;
        v18 = v98;
        v109 = v97;
        v110 = v98;
        v69 = v11;

        v70 = OUTLINED_FUNCTION_52_20();
        outlined copy of Participant.RemoteIdentifiers?(v70);
        outlined destroy of CallControlsService?(&v101, &_s15ConversationKit11ParticipantV17RemoteIdentifiersVSg_AFtMd);
        goto LABEL_43;
      }

      if (!v11)
      {
        goto LABEL_42;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      v63 = v11;

      v64 = OUTLINED_FUNCTION_52_20();
      outlined copy of Participant.RemoteIdentifiers?(v64);
      OUTLINED_FUNCTION_246_0();
      v56 = v92;
      v18 = static NSObject.== infix(_:_:)();
      v54 = v93;
      outlined consume of Participant.RemoteIdentifiers?(v11);
      if ((v18 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (v61)
      {
        break;
      }

      if (v59 == v100)
      {
        v18 = v96;
      }

      else
      {
        v18 = 1;
      }

      v72 = OUTLINED_FUNCTION_52_20();
      outlined consume of Participant.RemoteIdentifiers?(v72);
      OUTLINED_FUNCTION_497();
      if ((v18 & 1) == 0)
      {

LABEL_59:
        v18 = v87;
        OUTLINED_FUNCTION_22_53();
        _s15ConversationKit11ParticipantVWObTm_8(v56, v87);
        v83 = OUTLINED_FUNCTION_15_14();
        _s15ConversationKit11ParticipantVWObTm_8(v83, v84);
        goto LABEL_60;
      }

LABEL_43:
      ++v55;
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v56, v71);
      if (v95 == v55)
      {

        OUTLINED_FUNCTION_309_0();
        goto LABEL_62;
      }
    }

    OUTLINED_FUNCTION_91_11();
    if (v65)
    {

      goto LABEL_58;
    }

LABEL_40:
    v66 = OUTLINED_FUNCTION_52_20();
    outlined consume of Participant.RemoteIdentifiers?(v66);
    OUTLINED_FUNCTION_497();
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_460();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_40_3();

  v35 = 0;
  OUTLINED_FUNCTION_456();
  v37 = v36;
  OUTLINED_FUNCTION_39_22(v36);
  while (1)
  {
    if (v35 >= *(v37 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v38, v34);
    v39 = (v34 + *(v99 + 28));
    v40 = v39[1];
    v42 = v39[2];
    v41 = v39[3];
    v43 = v39[4];
    if (!*v39)
    {
      if (!v11)
      {

        OUTLINED_FUNCTION_79_16();
        outlined copy of Participant.RemoteIdentifiers?(v76);

        OUTLINED_FUNCTION_79_16();
        outlined consume of Participant.RemoteIdentifiers?(v77);
        goto LABEL_56;
      }

LABEL_24:
      v101 = *v39;
      v102 = v40;
      v103 = v42;
      v104 = v41;
      v105 = v43;
      v106 = v11;
      v107 = v100;
      v108 = v12;
      v18 = v98;
      v109 = v97;
      v110 = v98;
      v48 = v11;

      v49 = OUTLINED_FUNCTION_52_20();
      v37 = v94;
      outlined copy of Participant.RemoteIdentifiers?(v49);
      outlined destroy of CallControlsService?(&v101, &_s15ConversationKit11ParticipantV17RemoteIdentifiersVSg_AFtMd);
      goto LABEL_25;
    }

    if (!v11)
    {
      goto LABEL_24;
    }

    v34 = v39[4];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v44 = v11;
    OUTLINED_FUNCTION_433();
    v45 = OUTLINED_FUNCTION_52_20();
    outlined copy of Participant.RemoteIdentifiers?(v45);
    OUTLINED_FUNCTION_46();
    v18 = static NSObject.== infix(_:_:)();
    v11 = v12;
    OUTLINED_FUNCTION_485();
    v37 = v94;
    outlined consume of Participant.RemoteIdentifiers?(v46);
    if (v18)
    {
      break;
    }

LABEL_22:
    v47 = OUTLINED_FUNCTION_52_20();
    outlined consume of Participant.RemoteIdentifiers?(v47);
    OUTLINED_FUNCTION_497();
    OUTLINED_FUNCTION_456();
LABEL_25:
    ++v35;
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v34, v50);
    OUTLINED_FUNCTION_91_11();
    if (v51 == v35)
    {

      OUTLINED_FUNCTION_309_0();
      v34 = v90;
      goto LABEL_32;
    }
  }

  if (v42)
  {
    if (v12)
    {

      v79 = OUTLINED_FUNCTION_52_20();
      outlined consume of Participant.RemoteIdentifiers?(v79);
      OUTLINED_FUNCTION_456();
      goto LABEL_56;
    }

    goto LABEL_22;
  }

  if (v40 == v100)
  {
    v18 = v12;
  }

  else
  {
    v18 = 1;
  }

  v52 = OUTLINED_FUNCTION_52_20();
  outlined consume of Participant.RemoteIdentifiers?(v52);
  OUTLINED_FUNCTION_497();
  OUTLINED_FUNCTION_456();
  if (v18)
  {
    goto LABEL_25;
  }

LABEL_56:
  OUTLINED_FUNCTION_22_53();
  _s15ConversationKit11ParticipantVWObTm_8(v34, v89);
  v18 = v88;
  OUTLINED_FUNCTION_487();
  _s15ConversationKit11ParticipantVWObTm_8(v80, v81);
LABEL_60:
  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_487();
  _s15ConversationKit11ParticipantVWObTm_8(v85, v86);
LABEL_61:
  v73 = 0;
LABEL_62:
  __swift_storeEnumTagSinglePayload(v18, v73, 1, v99);
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationController.update()()
{
  ConversationController.lookupActiveConversation()();
  ConversationController.update(with:)();
  outlined destroy of CallControlsService?(v0, &_s15ConversationKit0A0_pSgMd);
}

void ConversationController.updateCallForAVModeChange(_:)()
{
  OUTLINED_FUNCTION_55();
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  OUTLINED_FUNCTION_3_5();
  *v3 = v2;
  v3[1] = v0;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v1 + v4, v9);
  v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v1 + v5);
  ObjectType = swift_getObjectType();
  v8 = swift_unknownObjectRetain();
  specialized BroadcastingState.init(call:callCenter:deviceOrientation:shouldMaintainCameraPosition:)(v8, v9, v6, 0, ObjectType, v0);
  ConversationController.broadcastingState.setter();
}

Swift::Void __swiftcall ConversationController.joinConversation()()
{
  OUTLINED_FUNCTION_50_2();
  v4 = OUTLINED_FUNCTION_129();
  v5 = type metadata accessor for Participant(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_149();
  v8 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_24_5();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v3, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  v13 = OUTLINED_FUNCTION_7_8();
  v14(v13);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_5;
  }

  v15 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v0 + v15) == 1)
  {
    v8 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_1_186();
    v16 = _s15ConversationKit11ParticipantVWOcTm_17(v0 + v8, v2);
    Participant.asRequestedApproval()(v16, v17, v18, v19, v20, v21, v22, v23, v30, v31, v32, v33, v34, *(&v34 + 1), v35, v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v2, v24);
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_85_8();
    _s15ConversationKit11ParticipantVWOdTm_0(v1, v0 + v8);
    swift_endAccess();
  }

  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_37_22();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BC4BA940;
  v26 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v34 = *v26;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_43_7();
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v25 + 32) = v8;
  *(v25 + 40) = v3;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_3_94();

  v27 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v0 + v27, &v34);
  v28 = v37;
  __swift_project_boxed_opaque_existential_1(&v34, v36);
  v29 = *(v28 + 96);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_98_1();
  v29();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v34);
  OUTLINED_FUNCTION_49();
}

Swift::Void __swiftcall ConversationController.downgradeToAVLess()()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if (v3)
  {
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_9();
LABEL_3:
  OUTLINED_FUNCTION_0_1();
  if ((*(v8 + 904))())
  {
    v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v0 + v9, v12);
    v10 = v12[4];
    OUTLINED_FUNCTION_113_5(v12);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v11 = *(v10 + 128);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_123_2();
    v11();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_49();
}

void ConversationController.openMessagesConversation(completion:)()
{
  OUTLINED_FUNCTION_29();
  v168 = v3;
  v5 = v4;
  v182[5] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16(v12);
  v169 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v166 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v15);
  v16 = type metadata accessor for URLComponents();
  OUTLINED_FUNCTION_49_0(v16);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_40();
  v173 = v20;
  v21 = OUTLINED_FUNCTION_4_24();
  v177 = type metadata accessor for Participant.State(v21);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_1();
  *&v179 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4();
  v172 = v26;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v176 = v28;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v159 - v30;
  v171 = type metadata accessor for URLQueryItem();
  OUTLINED_FUNCTION_1();
  v170 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32();
  v178 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_363();
  v38 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_40();
  v43 = v42;
  ConversationController.lookupActiveConversation()();
  if (v181)
  {
    v162 = v18;
    v175 = v0;
    v159 = v5;
    outlined init with take of TapInteractionHandler(&v180, v182);
    v44 = v182[4];
    __swift_project_boxed_opaque_existential_1(v182, v182[3]);
    OUTLINED_FUNCTION_361_0();
    v45 = OUTLINED_FUNCTION_182();
    v46(v45, v44);
    OUTLINED_FUNCTION_115(v2, 1, v38);
    if (v47)
    {
      outlined destroy of CallControlsService?(v2, &_s10Foundation4UUIDVSgMd);
      v174 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      (*(v40 + 32))(v43, v2, v38);
      UUID.uuidString.getter();
      v48 = v178;
      URLQueryItem.init(name:value:)();

      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v51 = *(v49 + 16);
      v50 = *(v49 + 24);
      v174 = v49;
      if (v51 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v50);
        OUTLINED_FUNCTION_494();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v174 = v158;
      }

      v40 += 8;
      v52 = OUTLINED_FUNCTION_406_0();
      v53(v52);
      v54 = v174;
      *(v174 + 16) = v51 + 1;
      (*(v170 + 32))(v54 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v51, v48, v171);
    }

    ConversationController.remoteAndAssociatedParticipants.getter();
    v56 = v55;
    v57 = 0;
    v178 = *(v55 + 16);
    v175 = MEMORY[0x1E69E7CC0];
    while (v178 != v57)
    {
      if (v57 >= *(v56 + 16))
      {
        __break(1u);
LABEL_72:
        OUTLINED_FUNCTION_362_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v174 = v156;
        goto LABEL_46;
      }

      v40 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v43 = *(v24 + 72);
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v58, v31);
      v59 = *(v179 + 28);
      v60 = *&v31[v59];
      if (!v60)
      {
        goto LABEL_75;
      }

      v61 = [v60 value];
      if (!v61)
      {
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = MEMORY[0x1BFB209B0](v62);
      }

      v63 = [v61 destinationIdIsTemporary];

      if (v63)
      {
LABEL_25:
        OUTLINED_FUNCTION_0_222();
        _s15ConversationKit11ParticipantVWOhTm_18(v31, v71);
        ++v57;
      }

      else
      {
LABEL_75:
        OUTLINED_FUNCTION_12_97();
        v64 = OUTLINED_FUNCTION_44_0();
        _s15ConversationKit11ParticipantVWOcTm_17(v64, v65);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            type metadata accessor for Date();
            OUTLINED_FUNCTION_15_1();
            (*(v72 + 8))(v1);
            goto LABEL_25;
          case 4u:
            v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
            v74 = *(v73 + 48);
            OUTLINED_FUNCTION_37((v1 + *(v73 + 64)));
            outlined destroy of Participant.MediaInfo(v1 + v74);
            goto LABEL_20;
          case 6u:
            goto LABEL_21;
          default:
LABEL_20:
            type metadata accessor for Date();
            OUTLINED_FUNCTION_15_1();
            (*(v66 + 8))(v1);
LABEL_21:
            v67 = *&v31[v59];
            if (v67)
            {
              v68 = [v67 value];
              if (!v68)
              {
                v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v68 = MEMORY[0x1BFB209B0](v69);
              }

              v70 = [v68 destinationIdIsPseudonym];

              if (v70)
              {
                goto LABEL_25;
              }
            }

            OUTLINED_FUNCTION_4_150();
            _s15ConversationKit11ParticipantVWObTm_8(v31, v172);
            v75 = v175;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v180 = v75;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_362_0();
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v75 = v180;
            }

            v78 = *(v75 + 16);
            v77 = *(v75 + 24);
            if (v78 >= v77 >> 1)
            {
              OUTLINED_FUNCTION_59_3(v77);
              OUTLINED_FUNCTION_494();
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v75 = v180;
            }

            ++v57;
            *(v75 + 16) = v78 + 1;
            v175 = v75;
            OUTLINED_FUNCTION_4_150();
            _s15ConversationKit11ParticipantVWObTm_8(v172, v79);
            break;
        }
      }
    }

    v80 = *(v175 + 16);
    if (v80)
    {
      v81 = *(v179 + 28);
      OUTLINED_FUNCTION_40_3();
      v84 = v82 + v83;
      v85 = *(v24 + 72);
      v86 = MEMORY[0x1E69E7CC0];
      v87 = v176;
      do
      {
        OUTLINED_FUNCTION_1_186();
        v88 = OUTLINED_FUNCTION_4_31();
        _s15ConversationKit11ParticipantVWOcTm_17(v88, v89);
        v90 = *(v87 + v81);
        if (v90)
        {
          v91 = [v90 value];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_43_7();

          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v87, v92);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_362_0();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v86 = v97;
          }

          v94 = *(v86 + 16);
          v93 = *(v86 + 24);
          if (v94 >= v93 >> 1)
          {
            OUTLINED_FUNCTION_59_3(v93);
            OUTLINED_FUNCTION_494();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v86 = v98;
          }

          *(v86 + 16) = v94 + 1;
          v95 = v86 + 16 * v94;
          *(v95 + 32) = v56;
          *(v95 + 40) = v43;
          v87 = v176;
        }

        else
        {
          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v87, v96);
        }

        v84 += v85;
        --v80;
      }

      while (v80);
    }

    else
    {

      v86 = MEMORY[0x1E69E7CC0];
    }

    *&v180 = v86;
    v99 = OUTLINED_FUNCTION_15_14();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v99);
    OUTLINED_FUNCTION_100_6(&lazy protocol witness table cache variable for type [String] and conformance [A]);
    BidirectionalCollection<>.joined(separator:)();
    OUTLINED_FUNCTION_18_8();

    OUTLINED_FUNCTION_502();
    URLQueryItem.init(name:value:)();

    v100 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v167;
    if ((v100 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_46:
    v101 = v169;
    v103 = *(v174 + 16);
    v102 = *(v174 + 24);
    v104 = v103 + 1;
    if (v103 >= v102 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v102);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v174 = v157;
    }

    v105 = v174;
    *(v174 + 16) = v104;
    (*(v170 + 32))(v105 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v103, v40, v171);
    URLComponents.init()();
    URLComponents.scheme.setter();
    MEMORY[0x1BFB19BE0](1852141679, 0xE400000000000000);
    URLComponents.queryItems.setter();
    OUTLINED_FUNCTION_417_0();
    URLComponents.url.getter();
    v106 = OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_115(v106, v107, v101);
    if (v47)
    {
      outlined destroy of CallControlsService?(v104, &_s10Foundation3URLVSgMd);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_37_22();
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_1BC4BA940;
      v109 = v161;
      (*(v162 + 16))(v161, v173, v24);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v110, v111, v112, v24);
      specialized >> prefix<A>(_:)(v109, v113, v114, v115, v116, v117, v118, v119, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
      OUTLINED_FUNCTION_213();
      outlined destroy of CallControlsService?(v109, &_s10Foundation13URLComponentsVSgMd);
      *(v108 + 56) = MEMORY[0x1E69E6158];
      v120 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_416(v120);
      OUTLINED_FUNCTION_94_11();
      os_log(_:dso:log:type:_:)();

      if (v159)
      {
        v159(0);
      }

      OUTLINED_FUNCTION_23_26();
      v121(v173, v24);
    }

    else
    {
      v122 = v166;
      v123 = OUTLINED_FUNCTION_308_1();
      v124(v123);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_37_22();
      v125 = swift_allocObject();
      v179 = xmmword_1BC4BA940;
      *(v125 + 16) = xmmword_1BC4BA940;
      v126 = v160;
      OUTLINED_FUNCTION_452();
      v127();
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v128, v129, v130, v101);
      specialized >> prefix<A>(_:)(v126, v131, v132, v133, v134, v135, v136, v137, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
      OUTLINED_FUNCTION_43_7();
      outlined destroy of CallControlsService?(v126, &_s10Foundation3URLVSgMd);
      v138 = MEMORY[0x1E69E6158];
      *(v125 + 56) = MEMORY[0x1E69E6158];
      v139 = lazy protocol witness table accessor for type String and conformance String();
      *(v125 + 64) = v139;
      *(v125 + 32) = v122;
      *(v125 + 40) = v43;
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_41_0();
      os_log(_:dso:log:type:_:)();

      URL._bridgeToObjectiveC()(v140);
      v142 = v141;
      *&v180 = 0;
      OUTLINED_FUNCTION_12();
      v143 = TUOpenURLWithError();

      v144 = v180;
      if (v143)
      {
        v145 = v159;
        if (v159)
        {
          v146 = v180;
          v145(1);
        }

        else
        {
          v151 = v180;
        }

        (*(v166 + 8))(v163, v169);
      }

      else
      {
        OUTLINED_FUNCTION_37_22();
        v147 = swift_allocObject();
        *(v147 + 16) = v179;
        if (v144)
        {
          *&v180 = v144;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSError);
          v148 = v144;
          v149 = String.init<A>(reflecting:)();
        }

        else
        {
          v149 = OUTLINED_FUNCTION_12_96();
        }

        v152 = v159;
        *(v147 + 56) = v138;
        *(v147 + 64) = v139;
        *(v147 + 32) = v149;
        *(v147 + 40) = v150;
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_41_0();
        os_log(_:dso:log:type:_:)();

        if (v152)
        {
          v152(0);
        }

        v153 = OUTLINED_FUNCTION_20_38();
        v154(v153, v169);
      }

      OUTLINED_FUNCTION_23_26();
      v155(v173, v24);
    }

    __swift_destroy_boxed_opaque_existential_1(v182);
  }

  else
  {
    outlined destroy of CallControlsService?(&v180, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)();
    if (v5)
    {
      v5(0);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationController.toggleLocalAudio()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if ((v3 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if ((*(v8 + 16) & 0x80000000) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_37_22();
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_498(v9, xmmword_1BC4BA940);
      String.init<A>(reflecting:)();
      OUTLINED_FUNCTION_213();
      v9[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v10 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_416(v10);
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_156();
      os_log(_:dso:log:type:_:)();

      ConversationController.broadcastingState.setter();
      v11 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      goto LABEL_8;
    }

LABEL_10:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_4;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_194();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_498(v12, xmmword_1BC4BAA20);
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_213();
  v13 = MEMORY[0x1E69E6158];
  v12[3].n128_u64[1] = MEMORY[0x1E69E6158];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_416(v14);
  v15 = String.init<A>(reflecting:)();
  v12[6].n128_u64[0] = v13;
  v12[6].n128_u64[1] = v14;
  v12[4].n128_u64[1] = v15;
  v12[5].n128_u64[0] = v16;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  ConversationController.broadcastingState.setter();
  v11 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
LABEL_8:
  OUTLINED_FUNCTION_382_0();
  v17 = *(v11 + 384);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_9_51();
  v17();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationController.toggleLocalVideo(shouldPauseIfStopped:)(Swift::Bool shouldPauseIfStopped)
{
  v3 = v1;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v2 = static OS_dispatch_queue.main.getter();
  v6 = OUTLINED_FUNCTION_12_3();
  v7(v6);
  v8 = _dispatchPreconditionTest(_:)();
  v9 = OUTLINED_FUNCTION_162_4();
  v10(v9);
  if (v8)
  {
    v11 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (*(v11 + 16) < 0)
    {
      ConversationController.stopLocalVideo()();
    }

    else if (shouldPauseIfStopped)
    {
      ConversationController.pauseLocalVideoIfStopped()();
    }

    else
    {
      ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationController.startScreenSharingSession()()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_149();
  v7 = type metadata accessor for ScreenSharingSessionConfiguration(0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_10();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v9, &static Log.screenSharing);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_33();
    *v12 = 0;
    _os_log_impl(&dword_1BBC58000, v10, v11, "Starting screen sharing session", v12, 2u);
    OUTLINED_FUNCTION_27();
  }

  v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v13 + v1, &v46, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
  if (v47)
  {
    outlined init with take of TapInteractionHandler(&v46, v48);
    OUTLINED_FUNCTION_401_0();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_528();
    v14 = v1[25];
    swift_unknownObjectRetain();
    v15 = ObjectType;
    v16 = OUTLINED_FUNCTION_157();
    v14(v16);
    OUTLINED_FUNCTION_182();
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      v17 = [ObjectType windowUUID];

      if (v17)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      type metadata accessor for UUID();
      v33 = OUTLINED_FUNCTION_246();
      __swift_storeEnumTagSinglePayload(v33, v18, 1, v15);
      v34 = OUTLINED_FUNCTION_1_5();
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v34, v35, v36);
      v37 = OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_115(v37, v38, v15);
      if (!v39)
      {
        OUTLINED_FUNCTION_2_3();
        v40 = OUTLINED_FUNCTION_44_0();
        v41(v40);
        v42 = v0;
        v43 = 0;
LABEL_17:
        __swift_storeEnumTagSinglePayload(v42, v43, 1, v15);
        OUTLINED_FUNCTION_113_5(v48);
        v44 = OUTLINED_FUNCTION_44_0();
        v45(v44);
        _s15ConversationKit11ParticipantVWOhTm_18(v0, type metadata accessor for ScreenSharingSessionConfiguration);
        __swift_destroy_boxed_opaque_existential_1(v48);
        goto LABEL_18;
      }
    }

    else
    {
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, 0);
    }

    outlined destroy of CallControlsService?(v2, &_s10Foundation4UUIDVSgMd);
    type metadata accessor for UUID();
    v42 = OUTLINED_FUNCTION_18_12();
    goto LABEL_17;
  }

  outlined destroy of CallControlsService?(&v46, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
  v19 = v1;
  v20 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();

  if (OUTLINED_FUNCTION_64_14())
  {
    OUTLINED_FUNCTION_42();
    v21 = OUTLINED_FUNCTION_21_4();
    v48[0] = v21;
    *v2 = 136315138;
    *&v46 = v19;
    v22 = v19;
    v23 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v48);
    OUTLINED_FUNCTION_366();

    *(v2 + 4) = ObjectType;
    OUTLINED_FUNCTION_132();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_26();
  }

LABEL_18:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.requestScreenSharingPicker(with:)(uint64_t a1)
{
  v2 = v1;
  ConversationController.lookupActiveConversation()();
  if (v27[3])
  {
    OUTLINED_FUNCTION_525(v4, v5, v6, v7);
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v8, &static Log.screenSharing);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_240(v10))
    {
      v11 = OUTLINED_FUNCTION_42();
      *v11 = 134217984;
      *(v11 + 4) = a1;
      OUTLINED_FUNCTION_25_53();
      _os_log_impl(v12, v13, v14, v15, v11, 0xCu);
      OUTLINED_FUNCTION_4_4();
    }

    v16 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v2 + v16, v27);
    OUTLINED_FUNCTION_113_5(v27);
    OUTLINED_FUNCTION_123_2();
    v17();
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    outlined destroy of CallControlsService?(v27, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v18, &static Log.screenSharing);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v20))
    {
      v21 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v21);
      OUTLINED_FUNCTION_132();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      OUTLINED_FUNCTION_26();
    }
  }
}

void ConversationController.requestScreenSharingSession(for:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  ConversationController.lookupActiveConversation()();
  if (v23[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
    if (OUTLINED_FUNCTION_287_1())
    {
      v2 = [v22 activeRemoteParticipants];
      v3 = OUTLINED_FUNCTION_166_4();
      type metadata accessor for NSObject(v3, v4);
      OUTLINED_FUNCTION_1_65();
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v5, &lazy cache variable for type metadata for TUConversationParticipant);
      v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      MEMORY[0x1EEE9AC00](v7);
      OUTLINED_FUNCTION_313();
      *(v8 - 16) = v1;
      specialized Sequence.first(where:)(partial apply for closure #1 in ConversationController.requestScreenSharingSession(for:), v9, v6);
      v11 = v10;

      if (v11)
      {
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v12 = OUTLINED_FUNCTION_208();
        OUTLINED_FUNCTION_202_3(v12, v13);
        OUTLINED_FUNCTION_2_7();
        OUTLINED_FUNCTION_21();
        MEMORY[0x1EEE9AC00](v14);
        OUTLINED_FUNCTION_58_9();
        v15 = OUTLINED_FUNCTION_153_4();
        v16(v15);
        v17 = OUTLINED_FUNCTION_40_2();
        v19 = v18(v17);
        v20 = OUTLINED_FUNCTION_208();
        v21(v20);
        [v19 requestParticipantToShareScreen:v11 forConversation:v22];
      }

      else
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)();
      }

      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v23, &_s15ConversationKit0A0_pSgMd);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)();
LABEL_9:
  OUTLINED_FUNCTION_49();
}

Swift::Void __swiftcall ConversationController.stopScreenSharingSession()()
{
  swift_getObjectType();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Log.screenSharing);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_383();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_2_2();
  }

  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&v9[v0], &v24, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
  if (v25)
  {
    outlined init with take of TapInteractionHandler(&v24, v26);
    OUTLINED_FUNCTION_97_8(v26);
    v10 = OUTLINED_FUNCTION_4_38();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    outlined destroy of CallControlsService?(&v24, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
    v12 = v0;
    v13 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();

    if (OUTLINED_FUNCTION_317())
    {
      OUTLINED_FUNCTION_42();
      v14 = OUTLINED_FUNCTION_13_80();
      v26[0] = v14;
      *v9 = 136315138;
      *&v24 = v12;
      v15 = v12;
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v26);

      *(v9 + 4) = v18;
      OUTLINED_FUNCTION_219();
      _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18();
    }
  }
}

void ConversationController.declineOrCancelScreenShareRequest(for:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  v3 = v2;
  ConversationController.lookupActiveConversation()();
  if (v18[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
    if (OUTLINED_FUNCTION_287_1())
    {
      v4 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0]);
      if (v4)
      {
        v5 = v4;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUScreenSharingRequest);
        v6 = v3;
        OUTLINED_FUNCTION_33_0();
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {
          v8 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          OUTLINED_FUNCTION_103_5(v8);
          OUTLINED_FUNCTION_31_1();
          OUTLINED_FUNCTION_21();
          MEMORY[0x1EEE9AC00](v9);
          OUTLINED_FUNCTION_58_9();
          v10 = OUTLINED_FUNCTION_74_10();
          v11(v10);
          v12 = OUTLINED_FUNCTION_316();
          v14 = v13(v12);
          v15 = OUTLINED_FUNCTION_15_14();
          v16(v15);
          [v14 cancelOrDenyScreenShareRequest:v6 forConversation:v17];

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v18, &_s15ConversationKit0A0_pSgMd);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)();
LABEL_11:
  OUTLINED_FUNCTION_49();
}

void ConversationController.approve(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_173();
  swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_82();
  type metadata accessor for Participant(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_2();
  ConversationController.lookupActiveConversation()();
  if (v57)
  {
    OUTLINED_FUNCTION_335();
    ConversationController.participant(with:)();
    OUTLINED_FUNCTION_22_5(v4);
    if (v11)
    {
      outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantVSgMd);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_194();
      v12 = swift_allocObject();
      v13 = OUTLINED_FUNCTION_424_0(v12, xmmword_1BC4BAA20);
      OUTLINED_FUNCTION_7_0();
      v14 = OUTLINED_FUNCTION_44_0();
      v15(v14);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v13);
      specialized >> prefix<A>(_:)(v0, v19, v20, v21, v22, v23, v24, v25, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59[0]);
      outlined destroy of CallControlsService?(v0, &_s10Foundation4UUIDVSgMd);
      v26 = MEMORY[0x1E69E6158];
      v12[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v27 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_513(v27);
      v28 = String.init<A>(reflecting:)();
      v12[6].n128_u64[0] = v26;
      v12[6].n128_u64[1] = v0;
      v12[4].n128_u64[1] = v28;
      v12[5].n128_u64[0] = v29;
      OUTLINED_FUNCTION_355_0();

      v49 = v59;
    }

    else
    {
      OUTLINED_FUNCTION_4_150();
      v44 = OUTLINED_FUNCTION_7_8();
      _s15ConversationKit11ParticipantVWObTm_8(v44, v45);
      v46 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(v1 + v46, &v54);
      OUTLINED_FUNCTION_179_2(&v54, v57);
      OUTLINED_FUNCTION_98_1();
      v47();
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v3, v48);
      __swift_destroy_boxed_opaque_existential_1(v59);
      v49 = &v54;
    }

    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    outlined destroy of CallControlsService?(&v54, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    OUTLINED_FUNCTION_37_22();
    v30 = swift_allocObject();
    v31 = OUTLINED_FUNCTION_424_0(v30, xmmword_1BC4BA940);
    OUTLINED_FUNCTION_7_0();
    v32 = OUTLINED_FUNCTION_44_0();
    v33(v32);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v31);
    specialized >> prefix<A>(_:)(v0, v37, v38, v39, v40, v41, v42, v43, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59[0]);
    OUTLINED_FUNCTION_508();
    outlined destroy of CallControlsService?(v0, &_s10Foundation4UUIDVSgMd);
    v30[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v30[4].n128_u64[0] = lazy protocol witness table accessor for type String and conformance String();
    v30[2].n128_u64[0] = v2;
    v30[2].n128_u64[1] = v31;
    OUTLINED_FUNCTION_156();
    OUTLINED_FUNCTION_521();
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.dismiss(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_173();
  swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_82();
  type metadata accessor for Participant(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_2();
  ConversationController.lookupActiveConversation()();
  if (v57)
  {
    OUTLINED_FUNCTION_335();
    ConversationController.participant(with:)();
    OUTLINED_FUNCTION_22_5(v4);
    if (v11)
    {
      outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantVSgMd);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_194();
      v12 = swift_allocObject();
      v13 = OUTLINED_FUNCTION_424_0(v12, xmmword_1BC4BAA20);
      OUTLINED_FUNCTION_7_0();
      v14 = OUTLINED_FUNCTION_44_0();
      v15(v14);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v13);
      specialized >> prefix<A>(_:)(v0, v19, v20, v21, v22, v23, v24, v25, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59[0]);
      outlined destroy of CallControlsService?(v0, &_s10Foundation4UUIDVSgMd);
      v26 = MEMORY[0x1E69E6158];
      v12[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v27 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_513(v27);
      v28 = String.init<A>(reflecting:)();
      v12[6].n128_u64[0] = v26;
      v12[6].n128_u64[1] = v0;
      v12[4].n128_u64[1] = v28;
      v12[5].n128_u64[0] = v29;
      OUTLINED_FUNCTION_355_0();

      v49 = v59;
    }

    else
    {
      OUTLINED_FUNCTION_4_150();
      v44 = OUTLINED_FUNCTION_7_8();
      _s15ConversationKit11ParticipantVWObTm_8(v44, v45);
      v46 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(v1 + v46, &v54);
      OUTLINED_FUNCTION_179_2(&v54, v57);
      OUTLINED_FUNCTION_98_1();
      v47();
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v3, v48);
      __swift_destroy_boxed_opaque_existential_1(v59);
      v49 = &v54;
    }

    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    outlined destroy of CallControlsService?(&v54, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    OUTLINED_FUNCTION_37_22();
    v30 = swift_allocObject();
    v31 = OUTLINED_FUNCTION_424_0(v30, xmmword_1BC4BA940);
    OUTLINED_FUNCTION_7_0();
    v32 = OUTLINED_FUNCTION_44_0();
    v33(v32);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v31);
    specialized >> prefix<A>(_:)(v0, v37, v38, v39, v40, v41, v42, v43, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59[0]);
    OUTLINED_FUNCTION_508();
    outlined destroy of CallControlsService?(v0, &_s10Foundation4UUIDVSgMd);
    v30[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v30[4].n128_u64[0] = lazy protocol witness table accessor for type String and conformance String();
    v30[2].n128_u64[0] = v2;
    v30[2].n128_u64[1] = v31;
    OUTLINED_FUNCTION_156();
    OUTLINED_FUNCTION_521();
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationController.pttLeaveChannel()()
{
  OUTLINED_FUNCTION_512();
  v21 = v1;
  v22 = v2;
  v3 = v0;
  v4 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v5 = *(v4 + 8);
  swift_getObjectType();
  v6 = *(v5 + 464);
  swift_unknownObjectRetain();
  v7 = OUTLINED_FUNCTION_33_0();
  v6(v7);
  OUTLINED_FUNCTION_448();
  if (v5)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v8, &static Logger.conversationControls);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_240(v10))
    {
      v11 = OUTLINED_FUNCTION_33();
      *v11 = 0;
      OUTLINED_FUNCTION_25_53();
      _os_log_impl(v12, v13, v14, v15, v11, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    v16 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v3 + v16, v19);
    v17 = v20;
    OUTLINED_FUNCTION_113_5(v19);
    v18 = *(v17 + 264);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_123_2();
    v18();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  OUTLINED_FUNCTION_511();
}

Swift::Void __swiftcall ConversationController.pttStopTransmit()()
{
  OUTLINED_FUNCTION_512();
  v24 = v2;
  v25 = v3;
  v4 = v0;
  v5 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v5 + 8);
  swift_getObjectType();
  OUTLINED_FUNCTION_490();
  v7 = *(v1 + 208);
  swift_unknownObjectRetain();
  v8 = OUTLINED_FUNCTION_33_0();
  v7(v8);
  OUTLINED_FUNCTION_448();
  if (v6 == 1)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v9, &static Logger.conversationControls);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_240(v11))
    {
      v12 = OUTLINED_FUNCTION_33();
      *v12 = 0;
      OUTLINED_FUNCTION_25_53();
      _os_log_impl(v13, v14, v15, v16, v12, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    v17 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v4 + v17, v21);
    v18 = v23;
    OUTLINED_FUNCTION_179_2(v21, v22);
    v19 = *(v18 + 256);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_97_0();
    v19();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v21);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  *(v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = v20;
  OUTLINED_FUNCTION_511();
}

Swift::Void __swiftcall ConversationController.pttStartTransmit()()
{
  OUTLINED_FUNCTION_512();
  v18 = v1;
  v19 = v2;
  v3 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v4, &static Logger.conversationControls);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v6))
  {
    v7 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v7);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_18();
  }

  v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v3 + v13, v16);
  v14 = v17;
  OUTLINED_FUNCTION_113_5(v16);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v15 = *(v14 + 248);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_123_2();
  v15();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v16);
  *(v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = 0;
  OUTLINED_FUNCTION_511();
}

Swift::Void __swiftcall ConversationController.callBack()()
{
  OUTLINED_FUNCTION_512();
  v17 = v1;
  v18 = v2;
  v3 = v0;
  v4 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v5 = *(v4 + 8);
  swift_getObjectType();
  v6 = *(v5 + 544);
  swift_unknownObjectRetain();
  v7 = OUTLINED_FUNCTION_33_0();
  v6(v7);
  OUTLINED_FUNCTION_448();
  if (v5)
  {
    v8 = *(v4 + 8);
    swift_getObjectType();
    v9 = v8[69];
    swift_unknownObjectRetain();
    v10 = OUTLINED_FUNCTION_1_5();
    v9(v10);
    OUTLINED_FUNCTION_173();
    swift_unknownObjectRelease();
    if (v8)
    {
      v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(v3 + v11, v14);
      v12 = v15;
      v13 = v16;
      OUTLINED_FUNCTION_179_2(v14, v15);
      (*(v13 + 232))(v8, 0, 0, v12, v13);

      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  OUTLINED_FUNCTION_511();
}

void ConversationController.buzz(_:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v1;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_28_6();
  v66 = type metadata accessor for Participant(v13);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_10();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_363();
  v16 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  v17 = OUTLINED_FUNCTION_171_3();
  v18(v17);
  _dispatchPreconditionTest(_:)();
  v19 = OUTLINED_FUNCTION_173_2();
  v20(v19);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_8;
  }

  ConversationController.lookupActiveConversation()();
  if (v74)
  {
    OUTLINED_FUNCTION_335();
    v21 = ConversationController.indexOfRemoteParticipant(with:)(v6);
    if (v22)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_37_22();
      v23 = swift_allocObject();
      v24 = OUTLINED_FUNCTION_424_0(v23, xmmword_1BC4BA940);
      OUTLINED_FUNCTION_7_0();
      v25 = OUTLINED_FUNCTION_43_0();
      v26(v25);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v24);
      specialized >> prefix<A>(_:)(v10, v30, v31, v32, v33, v34, v35, v36, v65, v66, v67, v68, v69, v70, v71, v72, v73[0], v73[1]);
      OUTLINED_FUNCTION_213();
      outlined destroy of CallControlsService?(v10, &_s10Foundation4UUIDVSgMd);
      v23[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v37 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_416(v37);
      OUTLINED_FUNCTION_94_11();
      os_log(_:dso:log:type:_:)();

      goto LABEL_18;
    }

    v38 = v21;
    v39 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if ((v38 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v38 < *(*(v4 + v39) + 16))
    {
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v40, v0);
      Participant.isBuzzable.getter();
      if ((v41 & 1) == 0)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        OUTLINED_FUNCTION_37_22();
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1BC4BA940;
        OUTLINED_FUNCTION_1_186();
        v55 = OUTLINED_FUNCTION_44_0();
        _s15ConversationKit11ParticipantVWOcTm_17(v55, v56);
        v57 = OUTLINED_FUNCTION_54_15();
        __swift_storeEnumTagSinglePayload(v57, v58, v59, v66);
        specialized >> prefix<A>(_:)();
        v61 = v60;
        v63 = v62;
        outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd);
        *(v54 + 56) = MEMORY[0x1E69E6158];
        *(v54 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v54 + 32) = v61;
        *(v54 + 40) = v63;
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)();
        goto LABEL_17;
      }

      v42 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(v4 + v42, v73);
      OUTLINED_FUNCTION_179_2(v73, v74);
      OUTLINED_FUNCTION_205_0();
      v43();
      __swift_destroy_boxed_opaque_existential_1(v73);
      if (one-time initialization token for conversationKit == -1)
      {
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        OUTLINED_FUNCTION_37_22();
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1BC4BA940;
        OUTLINED_FUNCTION_1_186();
        v45 = OUTLINED_FUNCTION_44_0();
        _s15ConversationKit11ParticipantVWOcTm_17(v45, v46);
        v47 = OUTLINED_FUNCTION_54_15();
        __swift_storeEnumTagSinglePayload(v47, v48, v49, v66);
        specialized >> prefix<A>(_:)();
        v51 = v50;
        v53 = v52;
        outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd);
        *(v44 + 56) = MEMORY[0x1E69E6158];
        *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v44 + 32) = v51;
        *(v44 + 40) = v53;
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)();
LABEL_17:

        OUTLINED_FUNCTION_0_222();
        _s15ConversationKit11ParticipantVWOhTm_18(v0, v64);
LABEL_18:
        __swift_destroy_boxed_opaque_existential_1(&v75);
        goto LABEL_19;
      }

LABEL_24:
      OUTLINED_FUNCTION_0_6();
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_24;
  }

  outlined destroy of CallControlsService?(v73, &_s15ConversationKit0A0_pSgMd);
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_21;
  }

LABEL_8:
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)();
LABEL_19:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.canKick(_:)()
{
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_410_0();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_24_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_101_4();
  v9 = type metadata accessor for Participant(v8);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_149();
  v12 = ConversationController.indexOfRemoteParticipant(with:)(v4);
  if ((v13 & 1) == 0)
  {
    v28 = v12;
    v29 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v28 < *(*(v0 + v29) + 16))
    {
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v30, v1);
      if (Participant.isKickingAvailableWithLeeway.getter())
      {
        OUTLINED_FUNCTION_0_222();
        _s15ConversationKit11ParticipantVWOhTm_18(v1, v31);
        goto LABEL_19;
      }

      Participant.broadcastStartDate.getter();
      v34 = type metadata accessor for Date();
      OUTLINED_FUNCTION_115(v3, 1, v34);
      if (v35)
      {
        outlined destroy of CallControlsService?(v3, &_s10Foundation4DateVSgMd);
        v3 = 0xEE0064656E696F6ALL;
        v29 = 0x2074657920746F6ELL;
      }

      else
      {
        Date.timeIntervalSinceNow.getter();
        OUTLINED_FUNCTION_2_3();
        v36 = OUTLINED_FUNCTION_157();
        v37(v36);
        v55[0] = 0;
        v55[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(21);
        Double.write<A>(to:)();
        MEMORY[0x1BFB20B10](0xD000000000000013, 0x80000001BC51DD70);
        v29 = 0;
        v3 = 0xE000000000000000;
      }

      if (one-time initialization token for conversationKit == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_22:
    OUTLINED_FUNCTION_2_9();
LABEL_15:
    v38 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v38, static Logger.conversationKit);
    OUTLINED_FUNCTION_1_186();
    v39 = OUTLINED_FUNCTION_62_0();
    _s15ConversationKit11ParticipantVWOcTm_17(v39, v40);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_30_1();
      v55[0] = OUTLINED_FUNCTION_29_7();
      *v43 = 136315394;
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v3, v55);

      *(v43 + 4) = v44;
      *(v43 + 12) = 2080;
      v45 = *(v9 + 20);
      OUTLINED_FUNCTION_13_83();
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v46, v47);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_91_12();
      _s15ConversationKit11ParticipantVWOhTm_18(v2, v48);
      v49 = OUTLINED_FUNCTION_209();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v51);
      OUTLINED_FUNCTION_182();

      *(v43 + 14) = v2 + v45;
      _os_log_impl(&dword_1BBC58000, v41, v42, "Requested to kick out a participant that cannot be kicked out %s: %s", v43, 0x16u);
      OUTLINED_FUNCTION_399_0();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_104_2();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      OUTLINED_FUNCTION_91_12();
      _s15ConversationKit11ParticipantVWOhTm_18(v2, v52);
    }

    v53 = OUTLINED_FUNCTION_45_1();
    _s15ConversationKit11ParticipantVWOhTm_18(v53, v54);
    goto LABEL_19;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v14, static Logger.conversationKit);
  v15 = OUTLINED_FUNCTION_406_0();
  v16(v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_42();
    v19 = OUTLINED_FUNCTION_13_80();
    v55[2] = v19;
    *v2 = 136315138;
    OUTLINED_FUNCTION_13_83();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v20, v21);
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_347_0();
    v22 = OUTLINED_FUNCTION_408_0();
    v23(v22);
    v24 = OUTLINED_FUNCTION_243();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v26);

    *(v2 + 4) = v27;
    _os_log_impl(&dword_1BBC58000, v17, v18, "Could not find participant with identifier %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_18();
  }

  else
  {

    v32 = OUTLINED_FUNCTION_408_0();
    v33(v32);
  }

LABEL_19:
  OUTLINED_FUNCTION_20_6();
}

uint64_t ConversationController.kick(_:)()
{
  ConversationController.lookupActiveConversation()();
  if (!v8[3])
  {
    return outlined destroy of CallControlsService?(v8, &_s15ConversationKit0A0_pSgMd);
  }

  OUTLINED_FUNCTION_525(v1, v2, v3, v4);
  v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v0 + v5, v8);
  OUTLINED_FUNCTION_113_5(v8);
  OUTLINED_FUNCTION_123_2();
  v6();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t *ConversationController.DidChangeIsWaitingOnFirstFrameNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for DidChangeIsWaitingOnFirstFrameNotification != -1)
  {
    OUTLINED_FUNCTION_293_1();
  }

  return &static ConversationController.DidChangeIsWaitingOnFirstFrameNotification;
}

uint64_t ConversationController.shareableLink(completionHandler:)(void (*a1)(uint64_t, void), uint64_t a2)
{
  v3 = v2;
  ConversationController.lookupActiveConversation()();
  if (v19)
  {
    outlined init with take of TapInteractionHandler(&v18, v21);
    OUTLINED_FUNCTION_184_2(v21);
    v6 = OUTLINED_FUNCTION_84_9();
    v8 = v7(v6);
    if (v8)
    {
      v9 = v8;
      if (a1)
      {
        a1(v8, 0);
      }
    }

    else
    {
      v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(v3 + v11, &v18);
      v12 = v19;
      v13 = v20;
      OUTLINED_FUNCTION_179_2(&v18, v19);
      outlined init with copy of CallCenterProvider(v21, v17);
      OUTLINED_FUNCTION_37_22();
      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;
      outlined init with take of TapInteractionHandler(v17, v14 + 32);
      v15 = *(v13 + 184);
      v16 = OUTLINED_FUNCTION_44_0();
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v16);
      v15(v21, partial apply for closure #1 in ConversationController.shareableLink(completionHandler:), v14, v12, v13);

      __swift_destroy_boxed_opaque_existential_1(&v18);
    }

    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    outlined destroy of CallControlsService?(&v18, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_156();
    result = os_log(_:dso:log:type:_:)();
    if (a1)
    {
      return (a1)(0, 0);
    }
  }

  return result;
}

BOOL ConversationController.joinedConversation.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  OUTLINED_FUNCTION_19_1();
  return (*(v0 + v1) & 0xFFFFFFFFFFFFFFFELL) == 2;
}

void ConversationController.cameraStartPolicy.getter()
{
  OUTLINED_FUNCTION_11_97();
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_517();
  v2 = OUTLINED_FUNCTION_45_1();
  v1(v2);
  OUTLINED_FUNCTION_524();
  if (v0)
  {
    [objc_opt_self() allowsScreenSharingWithVideo];
  }

  OUTLINED_FUNCTION_10_84();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Bool)@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result & 1;
  return result;
}

void specialized MutableCollection.swapAt(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v5 = v4;
  v7 = v6;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_12();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v11);
  if (v7 == v5)
  {
    goto LABEL_8;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = *v1;
  v3 = *(*v1 + 16);
  if (v3 <= v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = &v21 - v12;
  v22 = v1;
  v24 = v9;
  v14 = *(v9 + 16);
  OUTLINED_FUNCTION_40_3();
  v23 = v15;
  v16 = v13 + v15;
  v17 = *(v9 + 72);
  v7 *= v17;
  v14();
  if (v3 > v5)
  {
    v3 = v17 * v5;
    (v14)(v2, v16 + v17 * v5, v0);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  specialized _ArrayBuffer._consumeAndCreateNew()();
  v13 = v20;
LABEL_6:
  v18 = v13 + v23;
  v19 = *(v24 + 40);
  v19(v13 + v23 + v7, v2, v0);
  if (*(v13 + 16) > v5)
  {
    v19(v18 + v3, v21, v0);
    *v22 = v13;
LABEL_8:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  __break(1u);
}

uint64_t ConversationController.hasAvailableDeskViewCameras.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v0 + 320))())
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_54_19();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v1);
    v3 = OUTLINED_FUNCTION_37_34(v2, v13);
    v4(v3);
    OUTLINED_FUNCTION_260_4();
    v5 = OUTLINED_FUNCTION_62_0();
    v6(v5);
    v7 = OUTLINED_FUNCTION_15_14();
    v8(v7);
    OUTLINED_FUNCTION_97_8(v14);
    v9 = OUTLINED_FUNCTION_4_38();
    v11 = v10(v9);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void ConversationController.participants(with:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v6 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_24_5();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v9 = *(v3 + 16);
  if (v9)
  {
    OUTLINED_FUNCTION_40_3();
    v11 = v3 + v10;
    v29 = *(v12 + 56);
    v30 = v13;
    v14 = MEMORY[0x1E69E7CC0];
    v15 = v6;
    v28 = v6;
    do
    {
      v16 = OUTLINED_FUNCTION_179_0();
      v30(v16);
      ConversationController.participant(with:)();
      v17 = OUTLINED_FUNCTION_281();
      v18(v17);
      v19 = OUTLINED_FUNCTION_18_12();
      OUTLINED_FUNCTION_115(v19, v20, v15);
      if (v21)
      {
        outlined destroy of CallControlsService?(v0, &_s15ConversationKit11ParticipantVSgMd);
      }

      else
      {
        OUTLINED_FUNCTION_4_150();
        _s15ConversationKit11ParticipantVWObTm_8(v0, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_350_0();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v26;
        }

        v24 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (v24 >= v23 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v23);
          OUTLINED_FUNCTION_350_0();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v27;
        }

        *(v14 + 16) = v24 + 1;
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_4_150();
        _s15ConversationKit11ParticipantVWObTm_8(v1, v25);
        v15 = v28;
      }

      v11 += v29;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationController.updateLayoutStyle(_:)(ConversationKit::MultiwayViewController::LayoutStyle a1)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  v4 = *v1;
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v6 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_278(v7);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_61();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  v21[4] = partial apply for closure #1 in ConversationController.updateLayoutStyle(_:);
  v21[5] = v8;
  OUTLINED_FUNCTION_5_73();
  v21[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v21[2] = v9;
  v21[3] = &block_descriptor_117;
  v10 = _Block_copy(v21);

  static DispatchQoS.unspecified.getter();
  v21[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v11, v12);
  v13 = OUTLINED_FUNCTION_334();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v14, v15);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_68_6();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v16);
  _Block_release(v10);

  v17 = OUTLINED_FUNCTION_181();
  v18(v17);
  v19 = OUTLINED_FUNCTION_491();
  v20(v19);
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.activeCallHasPreviouslyReceivedFirstRemoteFrame.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_528();
  OUTLINED_FUNCTION_515();
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_157();
  v0(v2);
  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_62_0();
  specialized Set.contains(_:)(v3, v4);

  v5 = OUTLINED_FUNCTION_45_1();
  v6(v5);
  OUTLINED_FUNCTION_30_0();
}

BOOL ConversationController.hasRingingCalls.getter()
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(*(v0 + v2) + 16))
  {
    return 1;
  }

  v4 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_507();
  v5 = *(v1 + 208);
  swift_unknownObjectRetain();
  v6 = OUTLINED_FUNCTION_45_1();
  v5(v6);
  OUTLINED_FUNCTION_524();
  return v4 == 4;
}

uint64_t ConversationController.isTrackingActiveConversation.getter()
{
  v0 = OUTLINED_FUNCTION_44_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v3, v4, v5);
  type metadata accessor for UUID();
  v6 = OUTLINED_FUNCTION_60_16();
  OUTLINED_FUNCTION_115(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_309();
  outlined destroy of CallControlsService?(v11, v12);
  return v10;
}

void ConversationController.isWaitingOnFirstRemoteFrame.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_528();
  OUTLINED_FUNCTION_515();
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_157();
  v0(v2);
  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_62_0();
  specialized Set.contains(_:)(v3, v4);

  v5 = OUTLINED_FUNCTION_45_1();
  v6(v5);
  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationController.isLocallyCreated.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v14)
  {
    OUTLINED_FUNCTION_384_0(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13, v14, v15, v16[0]);
    OUTLINED_FUNCTION_97_8(v16);
    v8 = OUTLINED_FUNCTION_4_38();
    v10 = v9(v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    outlined destroy of CallControlsService?(&v12, &_s15ConversationKit0A0_pSgMd);
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t ConversationController.supportsCameraBlur.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v0 + 152))())
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_54_19();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v1);
    v3 = OUTLINED_FUNCTION_37_34(v2, v13);
    v4(v3);
    OUTLINED_FUNCTION_260_4();
    v5 = OUTLINED_FUNCTION_62_0();
    v6(v5);
    v7 = OUTLINED_FUNCTION_15_14();
    v8(v7);
    OUTLINED_FUNCTION_97_8(v14);
    v9 = OUTLINED_FUNCTION_4_38();
    v11 = v10(v9);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t ConversationController.supportsReactionGestures.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_37_34(v1, v11);
  v3(v2);
  v4 = OUTLINED_FUNCTION_112_8();
  v5(v4);
  v6 = OUTLINED_FUNCTION_15_14();
  v7(v6);
  OUTLINED_FUNCTION_97_8(&v12);
  v8 = OUTLINED_FUNCTION_4_38();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  return OUTLINED_FUNCTION_470();
}

uint64_t ConversationController.supportsStudioLight.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_37_34(v1, v11);
  v3(v2);
  v4 = OUTLINED_FUNCTION_112_8();
  v5(v4);
  v6 = OUTLINED_FUNCTION_15_14();
  v7(v6);
  OUTLINED_FUNCTION_97_8(&v12);
  v8 = OUTLINED_FUNCTION_4_38();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  return OUTLINED_FUNCTION_470();
}

void ConversationController.remoteOneToOneParticipant.getter()
{
  OUTLINED_FUNCTION_29();
  v65 = v3;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v67 = v5;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_149();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v66 = v9;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  v69 = v11;
  v12 = OUTLINED_FUNCTION_4_24();
  v68 = type metadata accessor for Participant(v12);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v72 = v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v60 = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v62 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v64 = v20;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_53_17();
  v22 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v63 = v0;
  v61 = v22;
  v23 = *(v0 + v22);
  v24 = *(v23 + 16);

  v25 = 0;
  v70 = MEMORY[0x1E69E7CC0];
  while (v24 != v25)
  {
    if (v25 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v26, v2);
    OUTLINED_FUNCTION_12_97();
    v27 = OUTLINED_FUNCTION_77_1();
    _s15ConversationKit11ParticipantVWOcTm_17(v27, v28);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v30 = *(v29 + 48);
      OUTLINED_FUNCTION_37((v1 + *(v29 + 64)));
      memcpy(v73, v1 + v30, sizeof(v73));
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v31 + 8))(v1);
      LOBYTE(v30) = v73[0];
      outlined destroy of Participant.MediaInfo(v73);
      if (v30)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_4_150();
      _s15ConversationKit11ParticipantVWObTm_8(v2, v64);
      v32 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_362_0();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v74;
      }

      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v34);
        v71 = v40;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v36 = v71;
        v32 = v74;
      }

      ++v25;
      *(v32 + 16) = v36;
      v70 = v32;
      OUTLINED_FUNCTION_4_150();
      _s15ConversationKit11ParticipantVWObTm_8(v64, v37);
    }

    else
    {
      OUTLINED_FUNCTION_86_7();
      _s15ConversationKit11ParticipantVWOhTm_18(v1, v38);
LABEL_12:
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v2, v39);
      ++v25;
    }
  }

  v73[0] = v70;

  specialized MutableCollection<>.sort(by:)(v73);

  specialized Collection.first.getter(v73[0], v69);

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v69, v66, &_s15ConversationKit11ParticipantVSgMd);
  v41 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v41, v42, v68);
  if (!v43)
  {
    outlined destroy of CallControlsService?(v69, &_s15ConversationKit11ParticipantVSgMd);
    v53 = v66;
    v54 = v62;
    goto LABEL_22;
  }

  outlined destroy of CallControlsService?(v66, &_s15ConversationKit11ParticipantVSgMd);
  v44 = *(v63 + v61);
  v45 = *(v44 + 16);

  v46 = 0;
  v1 = &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd;
  while (2)
  {
    if (v45 == v46)
    {
      outlined destroy of CallControlsService?(v69, &_s15ConversationKit11ParticipantVSgMd);

      goto LABEL_23;
    }

    if (v46 < *(v44 + 16))
    {
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v47, v72);
      OUTLINED_FUNCTION_12_97();
      _s15ConversationKit11ParticipantVWOcTm_17(v72, v67);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          ++v46;
          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v72, v48);
          v49 = OUTLINED_FUNCTION_316();
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v49);
          v51 = *(v50 + 48);
          OUTLINED_FUNCTION_37((v67 + *(v50 + 64)));
          outlined destroy of Participant.MediaInfo(v67 + v51);
          type metadata accessor for Date();
          OUTLINED_FUNCTION_15_1();
          (*(v52 + 8))(v67);
          continue;
        case 6u:
          outlined destroy of CallControlsService?(v69, &_s15ConversationKit11ParticipantVSgMd);

          break;
        default:
          outlined destroy of CallControlsService?(v69, &_s15ConversationKit11ParticipantVSgMd);

          type metadata accessor for Date();
          OUTLINED_FUNCTION_15_1();
          (*(v55 + 8))(v67);
          break;
      }

      v53 = v72;
      v54 = v60;
LABEL_22:
      _s15ConversationKit11ParticipantVWObTm_8(v53, v54);
      _s15ConversationKit11ParticipantVWObTm_8(v54, v65);
LABEL_23:
      OUTLINED_FUNCTION_350_0();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
      OUTLINED_FUNCTION_30_0();
      return;
    }

    break;
  }

LABEL_27:
  __break(1u);

  __break(1u);
}

uint64_t ConversationController.shouldPlayToneForAVModeChange(for:)(uint64_t a1)
{
  ConversationController.lookupActiveConversation()();
  if (v17)
  {
    OUTLINED_FUNCTION_384_0(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16, v17, v18, v19[0]);
    v10 = ConversationController.lookupActiveParticipant(correspondingTo:)(a1);
    if (v10)
    {
      v11 = v10;
      ConversationController.identityClaimingAssociationRelationship(for:in:)(v10, v19);
      v13 = ~v12;

      __swift_destroy_boxed_opaque_existential_1(v19);
      if (v13)
      {
        return 0;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v19);
    }
  }

  else
  {
    outlined destroy of CallControlsService?(&v15, &_s15ConversationKit0A0_pSgMd);
  }

  return 1;
}

uint64_t ConversationController.conversationDisplayName.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v13)
  {
    OUTLINED_FUNCTION_384_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15[0]);
    OUTLINED_FUNCTION_97_8(v15);
    v8 = OUTLINED_FUNCTION_4_38();
    v9(v8);
    OUTLINED_FUNCTION_305();
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    outlined destroy of CallControlsService?(&v11, &_s15ConversationKit0A0_pSgMd);
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t ConversationController.isLinkSharingSupported.getter()
{
  ConversationController.lookupActiveConversation()();
  v0 = v3;
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v2, v3);
    OUTLINED_FUNCTION_46();
    v0 = Conversation.isLinkSharingSupported.getter();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    outlined destroy of CallControlsService?(v2, &_s15ConversationKit0A0_pSgMd);
  }

  return v0 & 1;
}

void ConversationController.supportsMemojiPicker.getter()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_26_53(v1, v38);
  v3(v2);
  OUTLINED_FUNCTION_260_4();
  v4 = OUTLINED_FUNCTION_62_0();
  v5(v4);
  v6 = OUTLINED_FUNCTION_15_14();
  v7(v6);
  OUTLINED_FUNCTION_82_0(v40);
  v8 = OUTLINED_FUNCTION_2_14();
  v10 = v9(v8);
  __swift_destroy_boxed_opaque_existential_1(v40);
  if (!v10)
  {
    OUTLINED_FUNCTION_54_19();
    OUTLINED_FUNCTION_31_1();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_8();
    v12 = OUTLINED_FUNCTION_74_10();
    v13(v12);
    OUTLINED_FUNCTION_260_4();
    v14 = OUTLINED_FUNCTION_62_0();
    v15(v14);
    v16 = OUTLINED_FUNCTION_15_14();
    v17(v16);
    OUTLINED_FUNCTION_82_0(v40);
    v18 = OUTLINED_FUNCTION_2_14();
    if ((v19(v18) & 1) == 0)
    {
      v20 = objc_opt_self();
      v21 = [v20 currentDevice];
      v22 = [v21 userInterfaceIdiom];

      if (!v22)
      {
        v23 = OUTLINED_FUNCTION_101_5();
        OUTLINED_FUNCTION_202_3(v23, v24);
        OUTLINED_FUNCTION_2_7();
        MEMORY[0x1EEE9AC00](v25);
        OUTLINED_FUNCTION_8();
        v26 = OUTLINED_FUNCTION_153_4();
        v27(v26);
        v28 = OUTLINED_FUNCTION_40_2();
        v29(v28);
        v30 = OUTLINED_FUNCTION_208();
        v31(v30);
        v32 = v39[4];
        __swift_project_boxed_opaque_existential_1(v39, v39[3]);
        v33 = OUTLINED_FUNCTION_28_0();
        v35 = v34(v33, v32);
        __swift_destroy_boxed_opaque_existential_1(v39);
        if (v35)
        {
          v36 = [v20 currentDevice];
          v37 = [v36 userInterfaceIdiom];

          if (!v37)
          {
            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            if (static AmbientState.isPresented == 1)
            {
              if (one-time initialization token for shared != -1)
              {
                OUTLINED_FUNCTION_0();
              }

              Features.isICUIRedesignEnabled.getter();
            }
          }
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationController.messagesGroupName.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v3[3])
  {
    OUTLINED_FUNCTION_97_8(v3);
    v0 = OUTLINED_FUNCTION_4_38();
    v1(v0);
    OUTLINED_FUNCTION_305();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    outlined destroy of CallControlsService?(v3, &_s15ConversationKit0A0_pSgMd);
  }

  return OUTLINED_FUNCTION_46();
}

void ConversationController.broadcastingState.setter()
{
  OUTLINED_FUNCTION_11_97();
  v4 = v3;
  OUTLINED_FUNCTION_15_25();
  v5 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
  OUTLINED_FUNCTION_3_5();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = v2;
  *(v5 + 8) = v1;
  v8 = *(v5 + 16);
  *(v5 + 16) = v4;
  ConversationController.broadcastingState.didset(v6, v7, v8);
  OUTLINED_FUNCTION_10_84();
}

uint64_t ConversationController.isCameraBlurEnabled.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_37_34(v1, v11);
  v3(v2);
  v4 = OUTLINED_FUNCTION_112_8();
  v5(v4);
  v6 = OUTLINED_FUNCTION_15_14();
  v7(v6);
  OUTLINED_FUNCTION_97_8(&v12);
  v8 = OUTLINED_FUNCTION_4_38();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  return OUTLINED_FUNCTION_470();
}

uint64_t ConversationController.isBackgroundReplacementEnabled.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_37_34(v1, v11);
  v3(v2);
  v4 = OUTLINED_FUNCTION_112_8();
  v5(v4);
  v6 = OUTLINED_FUNCTION_15_14();
  v7(v6);
  OUTLINED_FUNCTION_97_8(&v12);
  v8 = OUTLINED_FUNCTION_4_38();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  return OUTLINED_FUNCTION_470();
}

Swift::Void __swiftcall ConversationController.update(presentationContexts:forceUpdate:)(Swift::OpaquePointer presentationContexts, Swift::Bool forceUpdate)
{
  v3 = v2;
  v52 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v6);
  v7 = *(presentationContexts._rawValue + 2);
  rawValue = presentationContexts._rawValue;
  if (v7)
  {
    v55 = OBJC_IVAR____TtC15ConversationKit22ConversationController_recentPresentationContexts;
    v8 = presentationContexts._rawValue + 48;
    v9 = MEMORY[0x1E69E7CC0];
    v56 = v2;
    while (1)
    {
      v10 = *(v8 - 2);
      v59 = *(v8 - 1);
      v58 = *v8;
      v57 = *(v8 + 1);
      v11 = *(v8 + 2);
      v12 = *(v8 + 3);
      v13 = *(v8 + 4);
      v14 = *(v8 + 5);
      v15 = v8[48];
      swift_beginAccess();
      v16 = *(v3 + v55);
      v17 = 0.0;
      if (*(v16 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v19 & 1) != 0))
      {
        v20 = *(v16 + 56) + 72 * v18;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v17 = *(v20 + 32);
        v25 = *(v20 + 40);
        v26 = *(v20 + 48);
        v27 = *(v20 + 56);
        v28 = *(v20 + 64);
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0.0;
        v26 = 0.0;
        v28 = 2;
        v27 = 0.0;
      }

      swift_endAccess();
      if (v15 == 2)
      {
        v3 = v56;
        if (v28 != 2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v32 = v28 != 2 && v10 == v21 && v59 == v22 && v58 == v23 && v57 == v24;
        v3 = v56;
        if (!v32 || (v63.origin.x = v11, v63.origin.y = v12, v63.size.width = v13, v63.size.height = v14, v64.origin.x = v17, v64.origin.y = v25, v64.size.width = v26, v64.size.height = v27, !CGRectEqualToRect(v63, v64)) || ((v15 ^ v28) & 1) != 0)
        {
LABEL_23:
          *&v60 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = OUTLINED_FUNCTION_362_0();
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v34, v35);
            v9 = v60;
          }

          v37 = *(v9 + 16);
          v36 = *(v9 + 24);
          if (v37 >= v36 >> 1)
          {
            v39 = OUTLINED_FUNCTION_59_3(v36);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39, v37 + 1, 1);
            v9 = v60;
          }

          *(v9 + 16) = v37 + 1;
          v38 = v9 + 72 * v37;
          *(v38 + 32) = v10;
          *(v38 + 40) = v59;
          *(v38 + 48) = v58;
          *(v38 + 56) = v57;
          *(v38 + 64) = v11;
          *(v38 + 72) = v12;
          *(v38 + 80) = v13;
          *(v38 + 88) = v14;
          *(v38 + 96) = v15;
        }
      }

      v8 += 72;
      if (!--v7)
      {
        goto LABEL_34;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v40 = *(v9 + 16);

  if (v40 || forceUpdate)
  {
    ConversationController.lookupActiveConversation()();
    if (v61)
    {
      v41 = outlined init with take of TapInteractionHandler(&v60, v62);
      MEMORY[0x1EEE9AC00](v41);
      OUTLINED_FUNCTION_313();
      *(v42 - 16) = v62;
      *(v42 - 8) = v3;
      v44 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in ConversationController.update(presentationContexts:forceUpdate:), v43, rawValue);
      if (specialized Array.count.getter(v44))
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        OUTLINED_FUNCTION_37_22();
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1BC4BA940;
        v46 = OUTLINED_FUNCTION_179_0();
        *(v45 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v46);
        *(v45 + 64) = lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [TUConversationParticipantPresentationContext] and conformance [A], &_sSaySo44TUConversationParticipantPresentationContextCGMd);
        *(v45 + 32) = v44;

        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)();

        v47 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        outlined init with copy of CallCenterProvider(v3 + v47, &v60);
        __swift_project_boxed_opaque_existential_1(&v60, v61);
        OUTLINED_FUNCTION_183_4(v62, v62[3]);
        OUTLINED_FUNCTION_417_0();
        v48 = OUTLINED_FUNCTION_9_40();
        v49(v48);
        OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_205_0();
        v50();

        OUTLINED_FUNCTION_23_26();
        v51(v47, v52);
        __swift_destroy_boxed_opaque_existential_1(&v60);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v62);
    }

    else
    {
      outlined destroy of CallControlsService?(&v60, &_s15ConversationKit0A0_pSgMd);
    }
  }
}

Swift::Void __swiftcall ConversationController.toggleCameraBlur()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = OUTLINED_FUNCTION_23_6();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = OUTLINED_FUNCTION_3_7();
  v6(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v7 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_202_3(v7, v8);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_58_9();
    v10 = OUTLINED_FUNCTION_153_4();
    v11(v10);
    OUTLINED_FUNCTION_403_0();
    v12 = OUTLINED_FUNCTION_44_0();
    v13(v12);
    v14 = OUTLINED_FUNCTION_280_2();
    v15(v14);
    OUTLINED_FUNCTION_115_6(v30);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v16);
    v18 = OUTLINED_FUNCTION_26_53(v17, v28);
    v19(v18);
    OUTLINED_FUNCTION_361_0();
    v20 = OUTLINED_FUNCTION_43_0();
    v21(v20);
    v22 = OUTLINED_FUNCTION_139();
    v23(v22);
    OUTLINED_FUNCTION_184_2(v29);
    v24 = OUTLINED_FUNCTION_84_9();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v26 = OUTLINED_FUNCTION_111_9();
    v27(v26);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationController.toggleBackgroundReplacement()()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = OUTLINED_FUNCTION_23_6();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = OUTLINED_FUNCTION_3_7();
  v6(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v7 = OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_202_3(v7, v8);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v9);
    v11 = OUTLINED_FUNCTION_26_53(v10, v30);
    v12(v11);
    v13 = OUTLINED_FUNCTION_309();
    v15 = v14(v13);
    v16 = OUTLINED_FUNCTION_208();
    v17(v16);
    v18 = OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_202_3(v18, v19);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v20);
    OUTLINED_FUNCTION_58_9();
    v21 = OUTLINED_FUNCTION_153_4();
    v22(v21);
    v23 = OUTLINED_FUNCTION_40_2();
    v24(v23);
    v25 = OUTLINED_FUNCTION_208();
    v26(v25);
    OUTLINED_FUNCTION_82_0(v31);
    v27 = OUTLINED_FUNCTION_2_14();
    v29 = v28(v27);
    __swift_destroy_boxed_opaque_existential_1(v31);
    TUVideoDeviceController.setBackgroundReplacementEnabled(_:)((v29 & 1) == 0);

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationController.toggleCinematicFraming()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = OUTLINED_FUNCTION_23_6();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = OUTLINED_FUNCTION_3_7();
  v6(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v7 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_202_3(v7, v8);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_58_9();
    v10 = OUTLINED_FUNCTION_153_4();
    v11(v10);
    OUTLINED_FUNCTION_403_0();
    v12 = OUTLINED_FUNCTION_44_0();
    v13(v12);
    v14 = OUTLINED_FUNCTION_280_2();
    v15(v14);
    OUTLINED_FUNCTION_115_6(v30);
    OUTLINED_FUNCTION_2_7();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v16);
    v18 = OUTLINED_FUNCTION_26_53(v17, v28);
    v19(v18);
    OUTLINED_FUNCTION_361_0();
    v20 = OUTLINED_FUNCTION_43_0();
    v21(v20);
    v22 = OUTLINED_FUNCTION_139();
    v23(v22);
    OUTLINED_FUNCTION_184_2(v29);
    v24 = OUTLINED_FUNCTION_84_9();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v26 = OUTLINED_FUNCTION_111_9();
    v27(v26);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationController.stopLocalVideoForMiniWindow()()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isGreenTea];

    v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable;
    OUTLINED_FUNCTION_3_5();
    *(v0 + v4) = v3;
    ConversationController.stopLocalVideo()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationController.effectsEnabledForLocalParticipant(with:)(Swift::Bool with)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant);
  OUTLINED_FUNCTION_3_5();
  *(v1 + *(type metadata accessor for Participant(0) + 40)) = with;
}

Swift::Void __swiftcall ConversationController.updateVideoStateForExternalFactors(isShowingInMiniWindow:)(Swift::Bool isShowingInMiniWindow)
{
  v2 = v1;
  v4 = 1;
  if ((dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter() & 1) == 0 && !isShowingInMiniWindow)
  {
    ConversationController.cameraStartPolicy.getter();
    v4 = v5 ^ 1;
  }

  if ((dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter() & 1) != 0 || (v6 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), (*(v2 + v6) & 1) == 0)) && ((ConversationController.isLocallySharingScreen.getter(), (v7) || (v8 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), (*(v2 + v8) & 1) == 0)) && (isShowingInMiniWindow || (v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), *(v2 + v9) != 1)))
  {
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  else if ((v4 & 1) == 0)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    *(swift_allocObject() + 16) = xmmword_1BC4BB980;
    v10 = dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter();
    OUTLINED_FUNCTION_510(v10);
    OUTLINED_FUNCTION_386_0(v11);
    OUTLINED_FUNCTION_509();

    ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
    return;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  *(swift_allocObject() + 16) = xmmword_1BC4BB980;
  v12 = dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter();
  OUTLINED_FUNCTION_510(v12);
  OUTLINED_FUNCTION_386_0(v13);
  OUTLINED_FUNCTION_509();

  ConversationController.stopLocalVideo()();
}

BOOL ConversationController.conversationHasActiveRemoteParticipants.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v17)
  {
    OUTLINED_FUNCTION_384_0(v0, v1, v2, v3, v4, v5, v6, v7, v15, v16, v17, v18, v19[0]);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v8 = OUTLINED_FUNCTION_46();
    v10 = v9;
    active = Conversation.displayableActiveParticipants.getter(v8, v11);
    specialized Set.count.getter(active);
    OUTLINED_FUNCTION_28_0();

    v13 = v10 > 0;
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    outlined destroy of CallControlsService?(&v15, &_s15ConversationKit0A0_pSgMd);
    return 0;
  }

  return v13;
}

uint64_t ConversationController.shouldDeferStartCameraAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults + 8);
  ObjectType = swift_getObjectType();
  if (((*(v1 + 624))(ObjectType, v1) & 1) == 0)
  {
    return 0;
  }

  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [objc_opt_self() systemPreferredCamera];
  if (v5)
  {

    return 0;
  }

  return 1;
}

uint64_t ConversationController.captionsRecognizerShouldBeRunning.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

void ConversationController.captionsRecognizerShouldBeRunning.setter()
{
  OUTLINED_FUNCTION_29();
  v4 = v0;
  v40 = v5;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v7 = OUTLINED_FUNCTION_101_4();
  v8 = type metadata accessor for Participant(v7);
  v9 = OUTLINED_FUNCTION_9_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32_31();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v38 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v39 = v13;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_7();
  v15 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v16 = OUTLINED_FUNCTION_23_6();
  v17(v16);
  _dispatchPreconditionTest(_:)();
  v18 = OUTLINED_FUNCTION_3_7();
  v19(v18);
  if ((v15 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    return;
  }

  if (*(v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) != 1)
  {
    goto LABEL_17;
  }

  v20 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v21 = *(v4 + v20);
  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_17;
  }

  v37 = v4;
  OUTLINED_FUNCTION_40_3();

  v23 = 0;
  while (1)
  {
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v24, v3);
    OUTLINED_FUNCTION_12_97();
    v25 = OUTLINED_FUNCTION_2_125();
    _s15ConversationKit11ParticipantVWOcTm_17(v25, v26);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      OUTLINED_FUNCTION_86_7();
      _s15ConversationKit11ParticipantVWOhTm_18(v2, v31);
      goto LABEL_10;
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v28 = *(v27 + 48);
    OUTLINED_FUNCTION_37((v2 + *(v27 + 64)));
    memcpy(v41, (v2 + v28), 0x150uLL);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v29 + 8))(v2);
    v30 = v41[39];
    outlined copy of Participant.CaptionInfo?(v41[39]);
    outlined destroy of Participant.MediaInfo(v41);
    if (v30)
    {
      break;
    }

LABEL_10:
    ++v23;
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v3, v32);
    if (v22 == v23)
    {

      goto LABEL_17;
    }
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_43_30();
  _s15ConversationKit11ParticipantVWObTm_8(v3, v38);
  _s15ConversationKit11ParticipantVWObTm_8(v38, v39);
  v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning;
  OUTLINED_FUNCTION_3_5();
  if (*(v37 + v33) == (v40 & 1))
  {
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v39, v36);
  }

  else
  {
    if (Participant.captionsProvider.getter())
    {
      OUTLINED_FUNCTION_18_8();
      ObjectType = swift_getObjectType();
      (*(v38 + 40))(v40 & 1, ObjectType, v38);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v39, v35);
    *(v37 + v33) = v40 & 1;
  }

LABEL_17:
  OUTLINED_FUNCTION_30_0();
}

id ConversationController.momentsController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController);
  }

  else
  {
    v3 = [objc_opt_self() sharedInstance];
    [v3 addDelegate_];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v5 = v2;
  return v3;
}

void ConversationController.resetAssociatedDateForInactiveParticipant(with:)()
{
  OUTLINED_FUNCTION_29();
  v4 = OUTLINED_FUNCTION_77_2();
  v5 = type metadata accessor for Participant(v4);
  v6 = OUTLINED_FUNCTION_9_0(v5);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v44 = v9;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  v45 = v11;
  v12 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant.State(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_39_3();
  v18 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v19 = *(v0 + v18);
  v47 = v1;

  v20 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ConversationController.participant(with:), &v46, v19);
  v22 = v21;

  if (v22)
  {
    goto LABEL_16;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_483();
  if (v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v8 = *(v8 + 72) * v20;
  _s15ConversationKit11ParticipantVWOcTm_17(v23 + v19 + v8, v2);
  v25 = OUTLINED_FUNCTION_43_0();
  _s15ConversationKit11ParticipantVWOcTm_17(v25, v26);
  OUTLINED_FUNCTION_179_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      goto LABEL_6;
    case 4u:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v28 = *(v27 + 48);
      OUTLINED_FUNCTION_37((v3 + *(v27 + 64)));
      outlined destroy of Participant.MediaInfo(v3 + v28);
LABEL_6:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v29 + 8))(v3);
      goto LABEL_7;
    case 6u:
LABEL_7:
      OUTLINED_FUNCTION_12_97();
      v30 = OUTLINED_FUNCTION_7_8();
      _s15ConversationKit11ParticipantVWOcTm_17(v30, v31);
      break;
    default:
      Date.init()();
      OUTLINED_FUNCTION_299();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v32 + 8))(v3);
      break;
  }

  OUTLINED_FUNCTION_32_2();
  static Participant.State.== infix(_:_:)();
  if (v33)
  {
    goto LABEL_15;
  }

  v34 = *(v0 + v18);
  if (v20 < *(v34 + 16))
  {
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v35 + v8, v45);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  specialized _ArrayBuffer._consumeAndCreateNew()();
  v34 = v43;
LABEL_12:
  if (v20 >= *(v34 + 16))
  {
    __break(1u);
  }

  else
  {
    outlined assign with copy of Participant.State(v16, v34 + v19 + v8);
    ConversationController.remoteParticipants.setter(v34);
    OUTLINED_FUNCTION_483();
    if (!v24)
    {
      OUTLINED_FUNCTION_1_186();
      v37 = v44;
      _s15ConversationKit11ParticipantVWOcTm_17(v36 + v8, v44);
      ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:)(v37, v45);
      OUTLINED_FUNCTION_91_12();
      _s15ConversationKit11ParticipantVWOhTm_18(v37, v38);
      v39 = OUTLINED_FUNCTION_309();
      _s15ConversationKit11ParticipantVWOhTm_18(v39, v40);
LABEL_15:
      _s15ConversationKit11ParticipantVWOhTm_18(v16, type metadata accessor for Participant.State);
      v41 = OUTLINED_FUNCTION_312();
      _s15ConversationKit11ParticipantVWOhTm_18(v41, v42);
LABEL_16:
      OUTLINED_FUNCTION_30_0();
      return;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall ConversationController.toggleReactionEffectGesture()()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_202_3(v0, v1);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_58_9();
  v3 = OUTLINED_FUNCTION_153_4();
  v4(v3);
  OUTLINED_FUNCTION_403_0();
  v5 = OUTLINED_FUNCTION_44_0();
  v6(v5);
  v7 = OUTLINED_FUNCTION_280_2();
  v8(v7);
  OUTLINED_FUNCTION_115_6(v23);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = OUTLINED_FUNCTION_26_53(v10, v21);
  v12(v11);
  OUTLINED_FUNCTION_361_0();
  v13 = OUTLINED_FUNCTION_43_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_139();
  v16(v15);
  OUTLINED_FUNCTION_184_2(v22);
  v17 = OUTLINED_FUNCTION_84_9();
  v18(v17);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v19 = OUTLINED_FUNCTION_111_9();
  v20(v19);
  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_49();
}

Swift::Void __swiftcall ConversationController.toggleStudioLight()()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_202_3(v0, v1);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_58_9();
  v3 = OUTLINED_FUNCTION_153_4();
  v4(v3);
  OUTLINED_FUNCTION_403_0();
  v5 = OUTLINED_FUNCTION_44_0();
  v6(v5);
  v7 = OUTLINED_FUNCTION_280_2();
  v8(v7);
  OUTLINED_FUNCTION_115_6(v23);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = OUTLINED_FUNCTION_26_53(v10, v21);
  v12(v11);
  OUTLINED_FUNCTION_361_0();
  v13 = OUTLINED_FUNCTION_43_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_139();
  v16(v15);
  OUTLINED_FUNCTION_184_2(v22);
  v17 = OUTLINED_FUNCTION_84_9();
  v18(v17);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v19 = OUTLINED_FUNCTION_111_9();
  v20(v19);
  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_49();
}

Swift::Void __swiftcall ConversationController.startRecordingLocalVideo()()
{
  OUTLINED_FUNCTION_287();
  if (!v0)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();

    os_log(_:dso:log:type:_:)();
    return;
  }

  ConversationController.lookupActiveConversation()();
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
    if (swift_dynamicCast())
    {
      v1 = v12;
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0_9();
      }

      OUTLINED_FUNCTION_0_1();
      if ((*(v2 + 592))())
      {
        v3 = [objc_allocWithZone(MEMORY[0x1E69D8C68]) initWithConversation_];
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)();
        v4 = ConversationController.momentsController.getter();
        OUTLINED_FUNCTION_20();
        v5 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10 = partial apply for closure #1 in ConversationController.startRecordingLocalVideo();
        v11 = v5;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        OUTLINED_FUNCTION_257_2();
        aBlock[2] = v6;
        v9 = &block_descriptor_10_2;
        v7 = _Block_copy(aBlock);

        [v4 startRequestWithMediaType:2 forProvider:v3 requesteeID:0 completion:v7];
        _Block_release(v7);

        return;
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(aBlock, &_s15ConversationKit0A0_pSgMd);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)();
}

Swift::Void __swiftcall ConversationController.stopRecordingLocalVideo()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID);
  OUTLINED_FUNCTION_3_5();
  if (v1[1])
  {

    v2._countAndFlagsBits = OUTLINED_FUNCTION_1_5();
    ConversationController.endRequest(for:)(v2);

    *v1 = 0;
    v1[1] = 0;

    v3 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      OUTLINED_FUNCTION_363_0();
      v4(0);
      v5 = OUTLINED_FUNCTION_46();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
    }
  }
}

Swift::Void __swiftcall ConversationController.toggleFRSV()()
{
  if (one-time initialization token for conversationController != -1)
  {
    OUTLINED_FUNCTION_8_106();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, static Logger.conversationController);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = OUTLINED_FUNCTION_33();
    *v2 = 0;
    _os_log_impl(&dword_1BBC58000, oslog, v1, "toggle FRSV", v2, 2u);
    OUTLINED_FUNCTION_3_83();
  }
}

void ConversationController.captureMoment(for:)()
{
  OUTLINED_FUNCTION_29();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_140_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32_31();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_78_4();
  v13 = type metadata accessor for Participant(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_287();
  if (v15)
  {
    ConversationController.participant(with:)();
    v16 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_115(v16, v17, v13);
    if (v15)
    {
      outlined destroy of CallControlsService?(v3, &_s15ConversationKit11ParticipantVSgMd);
    }

    else
    {
      OUTLINED_FUNCTION_4_150();
      v19 = OUTLINED_FUNCTION_249();
      _s15ConversationKit11ParticipantVWObTm_8(v19, v20);
      v21 = (v0 + *(v13 + 28));
      if (*v21)
      {
        v22 = v21[4];
        if (v22)
        {
          v23 = v21[3];

          ConversationController.lookupActiveConversation()();
          if (v62)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd);
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
            if (swift_dynamicCast())
            {
              v54 = v23;
              v58 = v65;
              v56 = [objc_allocWithZone(MEMORY[0x1E69D8C68]) initWithConversation_];
              if (one-time initialization token for conversationKit != -1)
              {
                OUTLINED_FUNCTION_0_6();
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
              OUTLINED_FUNCTION_37_22();
              v24 = swift_allocObject();
              *(v24 + 16) = xmmword_1BC4BA940;
              OUTLINED_FUNCTION_1_186();
              _s15ConversationKit11ParticipantVWOcTm_17(v0, v4);
              v25 = OUTLINED_FUNCTION_127_2();
              __swift_storeEnumTagSinglePayload(v25, v26, v27, v13);
              specialized >> prefix<A>(_:)();
              v29 = v28;
              v31 = v30;
              outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantVSgMd);
              *(v24 + 56) = MEMORY[0x1E69E6158];
              *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v24 + 32) = v29;
              *(v24 + 40) = v31;
              static os_log_type_t.default.getter();
              OUTLINED_FUNCTION_156();
              os_log(_:dso:log:type:_:)();

              v32 = ConversationController.momentsController.getter();
              v33 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
              OUTLINED_FUNCTION_3_0();
              swift_beginAccess();
              v34 = *(v33 + 8);
              swift_getObjectType();
              v35 = *(v34 + 120);
              swift_unknownObjectRetain();
              v36 = OUTLINED_FUNCTION_455();
              LOBYTE(v29) = v35(v36);
              swift_unknownObjectRelease();
              v37 = 0;
              if (v29)
              {
                v37 = MEMORY[0x1BFB209B0](v54, v22);
              }

              OUTLINED_FUNCTION_20();
              v38 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v63 = partial apply for closure #1 in ConversationController.captureMoment(for:);
              v64 = v38;
              OUTLINED_FUNCTION_177_0();
              v60 = 1107296256;
              OUTLINED_FUNCTION_257_2();
              v61 = v39;
              v62 = &block_descriptor_14_1;
              v40 = _Block_copy(&v59);

              [v32 startRequestWithMediaType:3 forProvider:v56 requesteeID:v37 completion:v40];

              _Block_release(v40);
LABEL_29:
              OUTLINED_FUNCTION_0_222();
              _s15ConversationKit11ParticipantVWOhTm_18(v0, v52);
LABEL_30:
              OUTLINED_FUNCTION_30_0();
              return;
            }
          }

          else
          {

            outlined destroy of CallControlsService?(&v59, &_s15ConversationKit0A0_pSgMd);
          }

          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          static os_log_type_t.error.getter();
          OUTLINED_FUNCTION_156();
          os_log(_:dso:log:type:_:)();
          goto LABEL_29;
        }
      }

      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v0, v41);
    }

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    OUTLINED_FUNCTION_37_22();
    v42 = swift_allocObject();
    v43 = OUTLINED_FUNCTION_424_0(v42, xmmword_1BC4BA940);
    OUTLINED_FUNCTION_7_0();
    (*(v44 + 16))(v2, v6, v43);
    v45 = OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_531(v45, v46, v47, v43, v48, v49, v50, v51, v53, v55, v57, v59, v60, v61, v62, v63, v64, v65);
    OUTLINED_FUNCTION_43_7();
    outlined destroy of CallControlsService?(v2, &_s10Foundation4UUIDVSgMd);
    v42[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v42[4].n128_u64[0] = lazy protocol witness table accessor for type String and conformance String();
    v42[2].n128_u64[0] = v43;
    v42[2].n128_u64[1] = v6;
    OUTLINED_FUNCTION_94_11();
    os_log(_:dso:log:type:_:)();

    goto LABEL_30;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_30_0();

  os_log(_:dso:log:type:_:)();
}

Swift::Void __swiftcall ConversationController.addContactToCurrentConversation(_:)(CNContact a1)
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  ConversationController.lookupActiveConversation()();
  if (v19[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
    if (OUTLINED_FUNCTION_287_1())
    {
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v3 = OUTLINED_FUNCTION_209();
      OUTLINED_FUNCTION_202_3(v3, v4);
      OUTLINED_FUNCTION_2_7();
      OUTLINED_FUNCTION_21();
      MEMORY[0x1EEE9AC00](v5);
      OUTLINED_FUNCTION_58_9();
      v6 = OUTLINED_FUNCTION_153_4();
      v7(v6);
      v8 = OUTLINED_FUNCTION_33_0();
      v10 = v9(v8);
      v11 = OUTLINED_FUNCTION_209();
      v12(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BAC30;
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69D8B80]) initWithContact_];
      if (specialized Array.count.getter(inited))
      {
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20TUConversationMemberC_Tt0g5(inited);
      }

      else
      {
        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit();
      }

      OUTLINED_FUNCTION_172_1();
      type metadata accessor for NSObject(v14, v15);
      OUTLINED_FUNCTION_1_65();
      OUTLINED_FUNCTION_172_1();
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v16, v17);
      OUTLINED_FUNCTION_139();
      Set._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_173();

      [v10 addRemoteMembers:&lazy cache variable for type metadata for TUConversationMember toConversation:v18];

      goto LABEL_11;
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v19, &_s15ConversationKit0A0_pSgMd);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)();
LABEL_11:
  OUTLINED_FUNCTION_49();
}

void ConversationController.resetRecordingVideoMessage(completion:)()
{
  OUTLINED_FUNCTION_55();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_140_0();
  v5 = v1[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
  if (v5 == 1)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_20();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();
    OUTLINED_FUNCTION_182();

    v11 = OUTLINED_FUNCTION_45_1();
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v11);
    v12 = static MainActor.shared.getter();
    OUTLINED_FUNCTION_45_26();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v10;
    v13[5] = v2;
    v13[6] = v0;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  else
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, &static Logger.videoMessaging);
    v16 = v1;
    v22 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v22, v17))
    {
      v18 = OUTLINED_FUNCTION_42();
      v19 = OUTLINED_FUNCTION_23();
      v23 = v19;
      *v18 = 136315138;
      v20 = String.init<A>(reflecting:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v23);
      OUTLINED_FUNCTION_366();

      *(v18 + 4) = v5;
      _os_log_impl(&dword_1BBC58000, v22, v17, "Invalid request to stop video message recording for mode %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_3_83();
    }

    else
    {
    }
  }
}

void ConversationController.discardRecordedVideoMessage()()
{
  OUTLINED_FUNCTION_15_25();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_101();
  v4 = v0[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
  if (v4 == 1)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    type metadata accessor for MainActor();
    v9 = v0;
    v10 = static MainActor.shared.getter();
    OUTLINED_FUNCTION_37_0();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    OUTLINED_FUNCTION_504();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  else
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v13 = type metadata accessor for Logger();
    v14 = __swift_project_value_buffer(v13, &static Logger.videoMessaging);
    v15 = v0;
    OUTLINED_FUNCTION_413_0();
    v20 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v20, v16))
    {
      OUTLINED_FUNCTION_42();
      v17 = OUTLINED_FUNCTION_21_4();
      v21 = v17;
      *v14 = 136315138;
      v18 = String.init<A>(reflecting:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v21);
      OUTLINED_FUNCTION_412_0();

      *(v14 + 4) = v4;
      OUTLINED_FUNCTION_436(&dword_1BBC58000);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }
  }
}

void ConversationController.saveRecordedVideoMessage()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_25();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_101();
  v8 = v3[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
  if (v8 == 1)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_20();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_247_0(v13);
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();
    OUTLINED_FUNCTION_28_0();

    static MainActor.shared.getter();
    OUTLINED_FUNCTION_246();
    OUTLINED_FUNCTION_37_0();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v3;
    v14[3] = v15;
    v14[4] = a3;

    OUTLINED_FUNCTION_504();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  else
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v16 = type metadata accessor for Logger();
    v17 = __swift_project_value_buffer(v16, &static Logger.videoMessaging);
    v18 = v3;
    OUTLINED_FUNCTION_413_0();
    v23 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v19))
    {
      OUTLINED_FUNCTION_42();
      v20 = OUTLINED_FUNCTION_21_4();
      v24 = v20;
      *v17 = 136315138;
      v21 = String.init<A>(reflecting:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v24);
      OUTLINED_FUNCTION_412_0();

      *(v17 + 4) = v8;
      OUTLINED_FUNCTION_436(&dword_1BBC58000);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }
  }
}

void ConversationController.startCountdownToRecordVideoMessage(withDuration:countdownTicker:countdownStopped:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_174();
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) == 1)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    type metadata accessor for MainActor();
    v17 = v0;

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v17;
    v19[5] = v10;
    v19[6] = v8;
    v19[7] = v6;
    v19[8] = v4;
    v19[9] = v2;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

LABEL_7:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, &static Logger.videoMessaging);
  v22 = v0;
  v30 = Logger.logObject.getter();
  v23 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v30, v23))
  {
    v24 = OUTLINED_FUNCTION_42();
    v25 = OUTLINED_FUNCTION_23();
    v31 = v25;
    *v24 = 136315138;
    v26 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v31);
    OUTLINED_FUNCTION_366();

    *(v24 + 4) = v8;
    _os_log_impl(&dword_1BBC58000, v30, v23, "Invalid request to prep for video message recording for mode %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_3_83();

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t one-time initialization function for DidChangeIsWaitingOnFirstFrameNotification()
{
  result = MEMORY[0x1BFB209B0](0xD00000000000002ALL, 0x80000001BC522E20);
  static ConversationController.DidChangeIsWaitingOnFirstFrameNotification = result;
  return result;
}

id static ConversationController.DidChangeIsWaitingOnFirstFrameNotification.getter()
{
  if (one-time initialization token for DidChangeIsWaitingOnFirstFrameNotification != -1)
  {
    OUTLINED_FUNCTION_293_1();
  }

  v1 = static ConversationController.DidChangeIsWaitingOnFirstFrameNotification;

  return v1;
}

Swift::Int ConversationController.ControlsMode.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationController.ControlsMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationController.ControlsMode.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t ConversationController.localParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_186();
  return _s15ConversationKit11ParticipantVWOcTm_17(v1 + v3, a1);
}

uint64_t key path getter for ConversationController.remoteParticipants : ConversationController@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t ConversationController.remoteParticipants.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_296_0();
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
  ConversationController.remoteParticipants.didset(v4);
}

uint64_t ConversationController.remoteParticipants.didset(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  result = swift_beginAccess();
  if (*(*(v1 + v3) + 16) != *(a1 + 16))
  {
    v5 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
    OUTLINED_FUNCTION_3_0();
    result = swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {

      v7 = *(ConversationController.visibleParticipants.getter() + 16);

      v6(v7);
      v8 = OUTLINED_FUNCTION_44_0();
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
    }
  }

  return result;
}

uint64_t ConversationController.carPlayDisconnectRequiresLocalVideoEnable.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t ConversationController.screenSharingEndingRequiresLocalVideoEnable.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t ConversationController.showingInMiniWindowRequiresLocalVideoEnable.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

void ConversationController.momentsController.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = a1;
}

void (*ConversationController.momentsController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ConversationController.momentsController.getter();
  return ConversationController.momentsController.modify;
}

void ConversationController.momentsController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = v2;
}

uint64_t ConversationController.conversationState.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for ConversationController.conversationState : ConversationController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t ConversationController.conversationState.modify()
{
  v1 = OUTLINED_FUNCTION_39_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_47(v2) + 32) = v0;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_501();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t ConversationController.conversationLetMeInRequestState.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for ConversationController.conversationLetMeInRequestState : ConversationController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t ConversationController.conversationLetMeInRequestState.modify()
{
  v1 = OUTLINED_FUNCTION_39_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_47(v2) + 32) = v0;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_501();
  return OUTLINED_FUNCTION_28_3();
}

void ConversationController.conversationState.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 24));

  free(v3);
}

uint64_t ConversationController.ignoreLetMeInRequests.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for ConversationController.ignoreLetMeInRequests : ConversationController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t ConversationController.ignoreLetMeInRequests.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 != v2)
  {
    v6 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
    result = swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {

      v7(v5);
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
    }
  }

  return result;
}

uint64_t ConversationController.ignoreLetMeInRequests.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

void ConversationController.shouldShowRTTUpgrade.getter()
{
  OUTLINED_FUNCTION_443();
  v2 = objc_opt_self();
  if ([v2 isRTTSupported])
  {
    v3 = [v2 sharedUtilityProvider];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 currentPreferredTransportMethod];
  }

  v5 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v5 + 8);
  swift_getObjectType();
  OUTLINED_FUNCTION_490();
  v7 = *(v1 + 208);
  swift_unknownObjectRetain();
  v8 = OUTLINED_FUNCTION_33_0();
  v7(v8);
  OUTLINED_FUNCTION_448();
  if (v6 == 1)
  {
    v9 = *(v5 + 8);
    swift_getObjectType();
    v10 = *(v9 + 176);
    swift_unknownObjectRetain();
    v11 = OUTLINED_FUNCTION_1_5();
    v10(v11);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_7_17();
}

uint64_t ConversationController.rejectedParticipantsCount.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for ConversationController.rejectedParticipantsCount : ConversationController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t ConversationController.rejectedParticipantsCount.didset(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 != a1)
  {
    v6 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange);
    result = swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {

      v7(v5);
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
    }
  }

  return result;
}

uint64_t ConversationController.rejectedParticipantsCount.modify()
{
  v1 = OUTLINED_FUNCTION_39_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_47(v2) + 32) = v0;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_501();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t ConversationController.deviceOrientation.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for ConversationController.deviceOrientation : ConversationController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t ConversationController.deviceOrientation.didset(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  result = swift_beginAccess();
  if (*(v1 + v4) != a1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BAA20;
    v26[0] = a1;
    type metadata accessor for CNKDeviceOrientation(0);
    v7 = String.init<A>(reflecting:)();
    v9 = v8;
    v10 = MEMORY[0x1E69E6158];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v11 = lazy protocol witness table accessor for type String and conformance String();
    *(v6 + 64) = v11;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v26[0] = *(v1 + v4);
    v12 = String.init<A>(reflecting:)();
    *(v6 + 96) = v10;
    *(v6 + 104) = v11;
    *(v6 + 72) = v12;
    *(v6 + 80) = v13;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v14 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    if (*(v14 + 16) < 0)
    {
      ConversationController.broadcastingState.setter();
    }

    v15 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    swift_beginAccess();
    v16 = v15[3];
    v17 = v15[4];
    v18 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v19 = *(v16 - 8);
    v20 = MEMORY[0x1EEE9AC00](v18);
    v22 = &v26[-1] - v21;
    (*(v19 + 16))(&v26[-1] - v21, v20);
    (*(v17 + 32))(v26, v16, v17);
    (*(v19 + 8))(v22, v16);
    v23 = v27;
    v24 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v24 + 48))(*(v2 + v4), v23, v24);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t ConversationController.deviceOrientation.modify()
{
  v1 = OUTLINED_FUNCTION_39_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_47(v2) + 32) = v0;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_501();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path getter for ConversationController.localFullBleedVideoOrientation : ConversationController@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t ConversationController.localFullBleedVideoOrientation.setter(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation);
  result = OUTLINED_FUNCTION_3_5();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ConversationController.localFullBleedVideoOrientation.modify()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  *(v3 + 40) = v0;
  *(v3 + 48) = v4;
  v5 = v0 + v4;
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 8);
  *(v1 + 24) = *v5;
  *(v1 + 32) = v6;
  return OUTLINED_FUNCTION_28_3();
}

void ConversationController.localFullBleedVideoOrientation.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 40) + *(v1 + 48);
  v3 = *(v1 + 32);
  *v2 = *(v1 + 24);
  *(v2 + 8) = v3;
  free(v1);
}

uint64_t ConversationController.didDeferStartCameraAction.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for ConversationController.didDeferStartCameraAction : ConversationController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void ConversationController.didDeferStartCameraAction.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    if (*(v1 + v3))
    {
      if (one-time initialization token for conversationController != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.conversationController);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_12;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Deferring start camera action until systemPreferredCamera is initialized";
    }

    else
    {
      if (one-time initialization token for conversationController != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.conversationController);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_12;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Start camera action no longer deferred for systemPreferredCamera initialization";
    }

    _os_log_impl(&dword_1BBC58000, v5, v6, v8, v7, 2u);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
LABEL_12:
  }
}

uint64_t ConversationController.didDeferStartCameraAction.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

void ConversationController.ignoreLetMeInRequests.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

uint64_t ConversationController.isUsingIPadExternalCamera.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for ConversationController.isUsingIPadExternalCamera : ConversationController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t ConversationController.isUsingIPadExternalCamera.didset(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
  result = swift_beginAccess();
  if (v1[v5] != v4)
  {
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationController);
    v8 = v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36[0] = v12;
      *v11 = 136315650;
      LOBYTE(v35[0]) = v8[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v36);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1024;
      *(v11 + 14) = a1 & 1;
      *(v11 + 18) = 1024;
      v16 = v2[v5];

      *(v11 + 20) = v16;
      _os_log_impl(&dword_1BBC58000, v9, v10, "[%s] isUsingIPadExternalCamera changed from %{BOOL}d to %{BOOL}d", v11, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }

    else
    {
    }

    if ((v2[v5] & 1) == 0)
    {
      v17 = &v8[OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation];
      swift_beginAccess();
      v18 = *v17;
      if (*v17)
      {

        v20 = v18(v19);
        v22 = v21;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v18);
        if ((v22 & 1) == 0)
        {
          v23 = v8;
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v35[0] = v27;
            *v26 = 136315394;
            v28 = String.init<A>(reflecting:)();
            v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v35);

            *(v26 + 4) = v30;
            *(v26 + 12) = 2080;
            type metadata accessor for CNKDeviceOrientation(0);
            v31 = String.init<A>(reflecting:)();
            v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v35);

            *(v26 + 14) = v33;
            _os_log_impl(&dword_1BBC58000, v24, v25, "[%s] Returning deviceOrientation to be UI layer orientation now that no longer using external camera %s", v26, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1BFB23DF0](v27, -1, -1);
            MEMORY[0x1BFB23DF0](v26, -1, -1);
          }

          ConversationController.deviceOrientation.setter(v20);
        }
      }
    }

    ConversationController.selectFrontLocalParticipantCamera()();
    v34 = &v8[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    swift_beginAccess();
    return ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(*v34, *(v34 + 1), v34[16], 1);
  }

  return result;
}

Swift::Void __swiftcall ConversationController.selectFrontLocalParticipantCamera()()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v0;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (v3[1] < 0)
  {
    v6 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    ConversationController.broadcastingState.setter();
    v7 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_103_5(v7);
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v8);
    v10 = OUTLINED_FUNCTION_26_53(v9, v20);
    v11(v10);
    OUTLINED_FUNCTION_260_4();
    v12 = OUTLINED_FUNCTION_62_0();
    v13(v12);
    v14 = OUTLINED_FUNCTION_15_14();
    v15(v14);
    v16 = v22;
    v17 = v23;
    __swift_project_boxed_opaque_existential_1(&v20, v22);
    v18 = *(v2 + v6);
    v19 = ConversationController.isOneToOneModeEnabled.getter();
    (*(v17 + 32))(0, v18, (v19 & 1) == 0, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    OUTLINED_FUNCTION_37_22();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BC4BA940;
    v5 = *(v3 + 16);
    v20 = *v3;
    v21 = v5;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_87();
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v4 + 32) = v3;
    *(v4 + 40) = v1;
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)();
  }

  OUTLINED_FUNCTION_49();
}

uint64_t ConversationController.isUsingIPadExternalCamera.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t ConversationController._captionsRecognizerShouldBeRunning.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning;
  OUTLINED_FUNCTION_112_1();
  result = OUTLINED_FUNCTION_3_5();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ConversationController.captionsRecognizerShouldBeRunning.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

void ConversationController.isLocallySharingScreen.getter()
{
  OUTLINED_FUNCTION_11_97();
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_517();
  v1 = OUTLINED_FUNCTION_45_1();
  v0(v1);
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_10_84();
}

uint64_t ConversationController.isOneToOneModeEnabledByCallCenter.didset()
{
  if ((*(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) & 1) == 0)
  {
    return ConversationController.isOneToOneCallCenterUpdateWaitingForNonSquareVideo.setter(0);
  }

  return result;
}

void ConversationController.isOneToOneCallCenterUpdateWaitingForNonSquareVideo.didset(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_443();
  a24 = v26;
  a25 = v28;
  if (v25[*v30] == (v29 & 1))
  {
    goto LABEL_6;
  }

  v31 = v27;
  if (one-time initialization token for conversationController != -1)
  {
    OUTLINED_FUNCTION_8_106();
  }

  v32 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v32, static Logger.conversationController);
  v33 = v25;
  osloga = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(osloga, v34))
  {
    v35 = OUTLINED_FUNCTION_30_1();
    a15 = OUTLINED_FUNCTION_29_7();
    *v35 = 136315394;
    v36 = String.init<A>(reflecting:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &a15);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2080;
    v39 = String.init<A>(reflecting:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &a15);

    *(v35 + 14) = v41;
    _os_log_impl(&dword_1BBC58000, osloga, v34, v31, v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_3_83();

LABEL_6:
    OUTLINED_FUNCTION_7_17();
    return;
  }

  OUTLINED_FUNCTION_7_17();
}

Swift::Void __swiftcall ConversationController.updateShouldShowLastFrameDuringUPlusOneHandoff()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_32_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_83_1();
  if ([*&v0[OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags] uPlusOneFullBleedHandoffEnabled])
  {
    OUTLINED_FUNCTION_287();
    if (v7)
    {
      if ((ConversationController.isOneToOneModeEnabled.getter() & 1) != 0 && (v0[OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff] & 1) == 0 && ((ConversationController.conversationHandoffInProgress.getter() & 1) != 0 || ConversationController.conversationMergedRemoteMembersCount.getter() == 1 && ConversationController.conversationActiveRemoteParticipantsCount.getter() == 2))
      {
        v36 = v4;
        if (one-time initialization token for conversationController != -1)
        {
          OUTLINED_FUNCTION_8_106();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, static Logger.conversationController);
        v9 = v0;
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();

        v12 = v10;
        if (os_log_type_enabled(v10, v11))
        {
          v13 = OUTLINED_FUNCTION_42();
          v33 = OUTLINED_FUNCTION_23();
          v37[0] = v33;
          *v13 = 136315138;
          v14 = String.init<A>(reflecting:)();
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v37);

          *(v13 + 4) = v32;
          _os_log_impl(&dword_1BBC58000, v12, v11, "[%s] U+1 Handoff detected, enabling show last/paused frame", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v33);
          OUTLINED_FUNCTION_3_83();
          OUTLINED_FUNCTION_27();
        }

        ConversationController.shouldShowLastFrameDuringUPlusOneHandoff.setter(1);
        v16 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v34 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v35 = *(v36 + 8);
        v17 = OUTLINED_FUNCTION_2_100();
        v18(v17);
        OUTLINED_FUNCTION_20();
        v19 = swift_allocObject();
        OUTLINED_FUNCTION_278(v19);
        swift_unknownObjectWeakInit();
        v37[4] = partial apply for closure #1 in ConversationController.updateShouldShowLastFrameDuringUPlusOneHandoff();
        v37[5] = v16;
        OUTLINED_FUNCTION_5_73();
        v37[1] = 1107296256;
        OUTLINED_FUNCTION_6_5();
        v37[2] = v20;
        v37[3] = &block_descriptor_54_1;
        v21 = _Block_copy(v37);

        static DispatchQoS.unspecified.getter();
        v37[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_164();
        lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v22, v23);
        v24 = OUTLINED_FUNCTION_334();
        __swift_instantiateConcreteTypeFromMangledNameV2(v24);
        OUTLINED_FUNCTION_9_8();
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v25, v26);
        OUTLINED_FUNCTION_337();
        OUTLINED_FUNCTION_260();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OUTLINED_FUNCTION_142();
        MEMORY[0x1BFB21510]();
        _Block_release(v21);

        v27 = OUTLINED_FUNCTION_15_44();
        v28(v27);
        OUTLINED_FUNCTION_392();
        v29 = OUTLINED_FUNCTION_206();
        v30(v29);
        v31 = OUTLINED_FUNCTION_157();
        v35(v31);
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationController.conversationMergedRemoteMembersCount.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v6)
  {
    outlined init with take of TapInteractionHandler(&v5, v7);
    v0 = v8;
    v1 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v2 = (*(v1 + 96))(v0, v1);
    v3 = specialized Set.count.getter(v2);

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    outlined destroy of CallControlsService?(&v5, &_s15ConversationKit0A0_pSgMd);
    return 0;
  }

  return v3;
}

uint64_t closure #2 in ConversationController.remoteOneToOneParticipant.getter(uint64_t a1, uint64_t a2)
{
  v26[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = v26 - v5;
  v6 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v26 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v26 - v17;
  _s15ConversationKit11ParticipantVWOcTm_17(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v26[0] = v2;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v20 = *(v19 + 48);
    outlined consume of Participant.CopresenceInfo?(*&v8[*(v19 + 64)], *&v8[*(v19 + 64) + 8]);
    v21 = *(v10 + 32);
    v21(v16, v8, v9);
    outlined destroy of Participant.MediaInfo(&v8[v20]);
    v21(v18, v16, v9);
    v22 = v27;
    Participant.broadcastStartDate.getter();
    if (__swift_getEnumTagSinglePayload(v22, 1, v9) == 1)
    {
      (*(v10 + 8))(v18, v9);
      outlined destroy of CallControlsService?(v22, &_s10Foundation4DateVSgMd);
      v23 = 0;
    }

    else
    {
      v21(v13, v22, v9);
      v23 = static Date.< infix(_:_:)();
      v24 = *(v10 + 8);
      v24(v13, v9);
      v24(v18, v9);
    }
  }

  else
  {
    _s15ConversationKit11ParticipantVWOhTm_18(v8, type metadata accessor for Participant.State);
    v23 = 0;
  }

  return v23 & 1;
}

void ConversationController.isConnecting.getter()
{
  OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_447();
  OUTLINED_FUNCTION_490();
  v2 = *(v1 + 104);
  swift_unknownObjectRetain();
  v3 = OUTLINED_FUNCTION_33_0();
  v2(v3);
  OUTLINED_FUNCTION_530();
  if (v0)
  {
    ConversationController.isWaitingOnFirstRemoteFrame.getter();
  }

  OUTLINED_FUNCTION_7_17();
}

BOOL ConversationController.momentsLocallyAvailable.getter()
{
  OUTLINED_FUNCTION_287();
  if (!v0)
  {
    return 0;
  }

  ConversationController.lookupActiveConversation()();
  if (!v11)
  {
    outlined destroy of CallControlsService?(v10, &_s15ConversationKit0A0_pSgMd);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
  if ((OUTLINED_FUNCTION_434() & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)();
    return 0;
  }

  if ([v9 state] == 3)
  {
    v1 = [v9 mergedActiveRemoteParticipants];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
    OUTLINED_FUNCTION_1_65();
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v2, &lazy cache variable for type metadata for TUConversationParticipant);
    OUTLINED_FUNCTION_211();
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = specialized Set.count.getter(v3);

    if (v4 >= 1)
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69D8C68]) initWithConversation_];
      v6 = ConversationController.momentsController.getter();
      v7 = [v6 capabilitiesForProvider_];

      LODWORD(v6) = [v7 availability];
      return v6 == 3;
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)();

  return 0;
}

uint64_t ConversationController.shouldShowDeskViewCameras.getter()
{
  ConversationController.lookupActiveConversation()();
  if (!v13)
  {
    outlined destroy of CallControlsService?(v12, &_s15ConversationKit0A0_pSgMd);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
  if ((OUTLINED_FUNCTION_434() & 1) == 0)
  {
LABEL_6:
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v2, static Logger.conversationKit);
    v0 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v3))
    {
      v4 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v4);
      OUTLINED_FUNCTION_132();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_10;
  }

  v0 = v11;
  if ([v11 state] != 3)
  {
LABEL_10:
    v1 = 0;
    goto LABEL_11;
  }

  v1 = ConversationController.hasAvailableDeskViewCameras.getter();
LABEL_11:

  return v1 & 1;
}

__n128 key path getter for ConversationController.broadcastingState : ConversationController@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t ConversationController.broadcastingState.didset(unint64_t a1, uint64_t a2, int a3)
{
  v7 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
  result = swift_beginAccess();
  v11 = *v9;
  v12 = *(v9 + 16);
  if ((a3 & 0x80) != 0)
  {
    if (v12 < 0)
    {
      v32 = v11 ^ a1;
      if ((v32 & 0xFF00) == 0 && (v32 & 1) == 0 && *(v9 + 1) == a2 && ((v12 ^ a3) & 1) == 0)
      {
        return result;
      }
    }
  }

  else if ((v12 & 0x80000000) == 0 && ((v11 ^ a1) & 1) == 0 && ((a1 >> 8) & 1) != ((*v9 & 0x100) == 0))
  {
    return result;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BC4BAA20;
  v34 = a1;
  *&v36 = a1;
  *(&v36 + 1) = a2;
  v37 = a3;
  v14 = String.init<A>(reflecting:)();
  v16 = v15;
  v17 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 64) = v18;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v19 = *(v9 + 16);
  v36 = *v9;
  v37 = v19;
  v20 = String.init<A>(reflecting:)();
  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  *(v13 + 72) = v20;
  *(v13 + 80) = v21;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v22 = *v9;
  v23 = *(v9 + 1);
  v24 = *(v9 + 16);
  if ((v24 & 0x80000000) != 0 && (a3 & 0x80) != 0 && ((v22 ^ v34) & 0xFF00) != 0)
  {
    *(v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame) = 1;
  }

  ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(v22, v23, v24, 2);
  v25 = (v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  result = swift_beginAccess();
  v26 = *v25;
  if (*v25)
  {
    v27 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    swift_beginAccess();
    v28 = v35;
    _s15ConversationKit11ParticipantVWOcTm_17(v3 + v27, v35);
    v29 = *v9;
    v30 = *(v9 + 1);
    v31 = *(v9 + 16);

    v26(v28, v29, v30, v31);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v26);
    return _s15ConversationKit11ParticipantVWOhTm_18(v28, type metadata accessor for Participant);
  }

  return result;
}

uint64_t ConversationController.broadcastingState.modify()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *(OUTLINED_FUNCTION_47(v2) + 48) = v0;
  v3 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v1 + 24) = *v3;
  *(v1 + 40) = v4;
  return OUTLINED_FUNCTION_28_3();
}

void ConversationController.broadcastingState.modify(void **a1)
{
  v1 = *a1;
  ConversationController.broadcastingState.setter();

  free(v1);
}

uint64_t ConversationController.isCameraMixedWithScreen.getter()
{
  ConversationController.lookupActiveConversation()();
  v0 = v4;
  if (v4)
  {
    v1 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    LOBYTE(v0) = (*(v1 + 336))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    outlined destroy of CallControlsService?(v3, &_s15ConversationKit0A0_pSgMd);
  }

  return v0 & 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationController.OneToOneModeChangeSource(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}