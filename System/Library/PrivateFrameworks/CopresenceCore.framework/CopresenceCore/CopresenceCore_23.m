uint64_t PubSubTopic.Message.data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t PubSubTopic.Message.typeIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PubSubTopic.Message.seqNum.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t PubSubTopic.Message.init(data:participants:typeIdentifier:seqNum:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  return result;
}

CopresenceCore::PubSubTopic::QueueState __swiftcall PubSubTopic.QueueState.init()()
{
  v1 = v0;
  result.messages._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v1->messages._rawValue = result.messages._rawValue;
  return result;
}

Swift::Int PubSubTopic.QueueState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PubSubTopic.QueueState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PubSubTopic.QueueState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t PubSubTopic.Configuration.init(proto:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  if (!v4)
  {
    goto LABEL_6;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 16);
    if (v5)
    {
      while (v5 < 0)
      {
        __break(1u);
LABEL_6:
        v4 = 1000;
        v5 = *(result + 16);
        if (!v5)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v5 = 1000;
    }

    v7 = *(result + 28);
    v6 = *(result + 32);
    v8 = *(result + 24);
    if (v7)
    {
      v9 = v7 / 1000.0;
    }

    else
    {
      v9 = 1.0;
    }

    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = 3;
    }

    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 2;
    }

    if (v3)
    {
      v12 = v3;
    }

    else
    {
      v12 = 0x10000;
    }

    v13 = *(result + 36);
    result = outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(result, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
    v14.i64[0] = v13;
    v14.i64[1] = HIDWORD(v13);
    *a2 = v12;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v10;
    *(a2 + 48) = vbslq_s8(vceqzq_s64(v14), xmmword_1AEE1AE10, vcvtq_f64_u64(v14));
  }

  return result;
}

uint64_t PubSubTopic.ReceivedRecord.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t PubSubTopic.ReceivedRecord.topicName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PubSubTopic.ReceivedRecord.init(from:withDecryptedData:withTopic:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = type metadata accessor for CP_SequenceNumber(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v35 - v20);
  swift_weakInit();
  v22 = *(type metadata accessor for CP_Record(0) + 36);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v22, v13, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v23 = *(v15 + 48);
  if (v23(v13, 1, v14) == 1)
  {
    *v21 = 0;
    v21[1] = 0;
    v24 = v21 + *(v14 + 24);
    UnknownStorage.init()();
    if (v23(v13, 1, v14) != 1)
    {
      outlined destroy of NSObject?(v13, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v13, v21, type metadata accessor for CP_SequenceNumber);
  }

  v25 = *v21;
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v21, type metadata accessor for CP_SequenceNumber);
  *a5 = v25;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v22, v11, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if (v23(v11, 1, v14) == 1)
  {
    *v19 = 0;
    v19[1] = 0;
    v26 = v19 + *(v14 + 24);
    UnknownStorage.init()();
    if (v23(v11, 1, v14) != 1)
    {
      outlined destroy of NSObject?(v11, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v11, v19, type metadata accessor for CP_SequenceNumber);
  }

  v27 = v19[1];
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v19, type metadata accessor for CP_SequenceNumber);
  v28 = v36;
  v29 = v37;
  a5[1] = v27;
  a5[2] = v28;
  v30 = *(v38 + 16);
  v31 = *(v38 + 24);
  a5[3] = v29;
  a5[4] = v30;
  a5[5] = v31;
  v32 = *(a1 + 32);
  if (*(v32 + 16))
  {
    v33 = *(a1 + 32);
  }

  else
  {
    v32 = 0;
  }

  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(a1, type metadata accessor for CP_Record);
  a5[6] = v32;
  swift_weakAssign();
}

Swift::Void __swiftcall PubSubTopic.ReceivedRecord.acknowledge()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25[2] = *(Strong + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
    v26 = v6;
    v12 = Strong;
    outlined init with copy of PubSubTopic.ReceivedRecord(v0, v35);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v25[1] = v12;
    outlined init with take of PubSubTopic.ReceivedRecord(v35, v13 + 24);
    v33 = partial apply for closure #1 in PubSubTopic.ReceivedRecord.acknowledge();
    v34 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v32 = &block_descriptor_36;
    v14 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v28[0] = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v10, v5, v14);
    _Block_release(v14);
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v26);
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, log);
    outlined init with copy of PubSubTopic.ReceivedRecord(v0, v35);
    outlined init with copy of PubSubTopic.ReceivedRecord(v0, &aBlock);
    outlined init with copy of PubSubTopic.ReceivedRecord(v0, v28);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 134218498;
      v20 = v35[0];
      outlined destroy of PubSubTopic.ReceivedRecord(v35);
      *(v18 + 4) = v20;
      *(v18 + 12) = 2048;
      v21 = v30;
      outlined destroy of PubSubTopic.ReceivedRecord(&aBlock);
      *(v18 + 14) = v21;
      *(v18 + 22) = 2080;
      v22 = v28[4];
      v23 = v28[5];

      outlined destroy of PubSubTopic.ReceivedRecord(v28);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

      *(v18 + 24) = v24;
      _os_log_impl(&dword_1AEB26000, v16, v17, "Ignoring ack, topic released publisherID=%llu seqNum=%llu topic=%s", v18, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B27120C0](v19, -1, -1);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    else
    {
      outlined destroy of PubSubTopic.ReceivedRecord(&aBlock);
      outlined destroy of PubSubTopic.ReceivedRecord(v35);

      outlined destroy of PubSubTopic.ReceivedRecord(v28);
    }
  }
}

void PubSubTopic.ack(publisherID:seqNum:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CP_SubscribeRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (*(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) > 3u)
  {
    if (one-time initialization token for log == -1)
    {
LABEL_4:
      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, log);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134218240;
        *(v20 + 4) = a1;
        *(v20 + 12) = 2048;
        *(v20 + 14) = a2;
        _os_log_impl(&dword_1AEB26000, v18, v19, "Ignoring ack, shutting down publisherID=%llu seqNum=%llu", v20, 0x16u);
        MEMORY[0x1B27120C0](v20, -1, -1);
      }

      return;
    }

LABEL_38:
    swift_once();
    goto LABEL_4;
  }

  v21 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + 8 * v23);
    v26 = swift_endAccess();
    if (v25 >= a2)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, log);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v59[0] = v31;
        *v30 = 134218754;
        *(v30 + 4) = a1;
        *(v30 + 12) = 2048;
        *(v30 + 14) = a2;
        *(v30 + 22) = 2048;
        *(v30 + 24) = v25;
        *(v30 + 32) = 2080;
        v32 = PubSubTopic.description.getter();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v59);

        *(v30 + 34) = v34;
        _os_log_impl(&dword_1AEB26000, v28, v29, "Ignoring ack, publisherID=%llu currentSeqNum=%llu <= previousSeqNum=%llu %s", v30, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x1B27120C0](v31, -1, -1);
        MEMORY[0x1B27120C0](v30, -1, -1);
      }

      return;
    }
  }

  else
  {
    v26 = swift_endAccess();
  }

  MEMORY[0x1EEE9AC00](v26);
  *(&v56 - 2) = a1;
  *(&v56 - 1) = a2;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest);
  static Message.with(_:)();
  swift_beginAccess();
  v35 = *(v3 + v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58[0] = *(v3 + v21);
  *(v3 + v21) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + v21) = v58[0];
  swift_endAccess();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, log);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  v40 = os_log_type_enabled(v38, v39);
  v57 = v9;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v59[0] = v42;
    *v41 = 134218498;
    *(v41 + 4) = a1;
    *(v41 + 12) = 2048;
    *(v41 + 14) = a2;
    *(v41 + 22) = 2080;
    *(v41 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 16), *(v3 + 24), v59);
    _os_log_impl(&dword_1AEB26000, v38, v39, "Sending ack publisherID=%llu seqNum=%llu topic=%s", v41, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1B27120C0](v42, -1, -1);
    MEMORY[0x1B27120C0](v41, -1, -1);
  }

  v43 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue;
  swift_beginAccess();
  v56 = v43;
  v44 = *(v3 + v43);
  v45 = *(v44 + 16);

  if (v45)
  {
    v46 = 0;
    v47 = v44 + 32;
    v48 = MEMORY[0x1E69E7CC0];
    while (v46 < *(v44 + 16))
    {
      outlined init with copy of PubSubTopic.ReceivedRecord(v47, v59);
      if (v59[0] != a1 || v59[1] > a2)
      {
        outlined init with take of PubSubTopic.ReceivedRecord(v59, v58);
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v48;
        if ((v50 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 16) + 1, 1);
          v48 = v60;
        }

        v52 = *(v48 + 16);
        v51 = *(v48 + 24);
        if (v52 >= v51 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
          v48 = v60;
        }

        *(v48 + 16) = v52 + 1;
        outlined init with take of PubSubTopic.ReceivedRecord(v58, v48 + (v52 << 6) + 32);
      }

      else
      {
        outlined destroy of PubSubTopic.ReceivedRecord(v59);
      }

      ++v46;
      v47 += 64;
      if (v45 == v46)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_35:

  v53 = *(v3 + v56);
  *(v3 + v56) = v48;

  v54 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput);

  v55 = v57;
  PassthroughSubject.send(_:)();

  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v55, type metadata accessor for CP_SubscribeRequest);
}

uint64_t protocol witness for PubSubTopicRecord.data.getter in conformance PubSubTopic.ReceivedRecord()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t PubSubTopic.SendItem.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t PubSubTopic.SendItem.messageTypeIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PubSubTopic.SendItem.seqNum.getter()
{
  swift_beginAccess();
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t PubSubTopic.SendItem.seqNum.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t PubSubTopic.SendItem.previousSeqNumUnacked.getter()
{
  swift_beginAccess();
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t PubSubTopic.SendItem.previousSeqNumUnacked.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t PubSubTopic.SendItem.__allocating_init(data:to:messageTypeIdentifier:previousSeqNumUnacked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *(v8 + 48);
  v17 = *(v8 + 52);
  v18 = swift_allocObject();
  *(v18 + 56) = 0;
  *(v18 + 64) = 1;
  *(v18 + 72) = 0;
  *(v18 + 80) = 1;
  v19 = OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt;
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  swift_beginAccess();
  *(v18 + 72) = a6;
  *(v18 + 80) = a7 & 1;
  return v18;
}

uint64_t PubSubTopic.SendItem.init(data:to:messageTypeIdentifier:previousSeqNumUnacked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = 0;
  *(v7 + 64) = 1;
  *(v7 + 72) = 0;
  *(v7 + 80) = 1;
  v15 = OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt;
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v7 + v15, 1, 1, v16);
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  swift_beginAccess();
  *(v7 + 72) = a6;
  *(v7 + 80) = a7 & 1;
  return v7;
}

void *PubSubTopic.SendItem.deinit()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[6];

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v0;
}

uint64_t PubSubTopic.SendItem.__deallocating_deinit()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[6];

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PubSubTopic.State.description.getter()
{
  v1 = *v0;
  v2 = 0x676E697472617453;
  v3 = 0x7964616552;
  v4 = 0x676E697474756853;
  if (v1 != 3)
  {
    v4 = 0x6E776F6474756853;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696863746143;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int PubSubTopic.State.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PubSubTopic.State()
{
  v1 = *v0;
  v2 = 0x676E697472617453;
  v3 = 0x7964616552;
  v4 = 0x676E697474756853;
  if (v1 != 3)
  {
    v4 = 0x6E776F6474756853;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696863746143;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t PubSubTopic.PrimaryStreamState.description.getter(unsigned __int8 a1)
{
  v1 = 0x696C616974696E49;
  v2 = 0x7964616552;
  if (a1 != 2)
  {
    v2 = 0x6465736F6C43;
  }

  if (a1)
  {
    v1 = 0x676E697972746552;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int PubSubTopic.PrimaryStreamState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PubSubTopic.PrimaryStreamState()
{
  v1 = 0x696C616974696E49;
  v2 = 0x7964616552;
  if (*v0 != 2)
  {
    v2 = 0x6465736F6C43;
  }

  if (*v0)
  {
    v1 = 0x676E697972746552;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t PubSubTopic.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

__n128 PubSubTopic.config.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
  result = *(v1 + 64);
  v4 = *(v1 + 80);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t PubSubTopic.localParticipantID.getter()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t PubSubTopic.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 144);
  return result;
}

uint64_t PubSubTopic.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 144) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PubSubTopic.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 144);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return PubSubTopic.delegate.modify;
}

void PubSubTopic.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 144) = *(*a1 + 32);
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

uint64_t PubSubTopic.SendItem.publishedAt.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2 + v4, a2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t PubSubTopic.SendItem.publishedAt.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t PubSubTopic.reporterTag.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag + 8);

  return v1;
}

uint64_t PubSubTopic.subscribers.getter()
{
  return PubSubTopic.subscribers.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for PubSubTopic.subscribers : PubSubTopic@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  return key path getter for PubSubTopic.subscribers : PubSubTopic(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for PubSubTopic.subscribers : PubSubTopic(uint64_t *a1, uint64_t *a2)
{
  return key path setter for PubSubTopic.subscribers : PubSubTopic(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t PubSubTopic.subscribers.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*PubSubTopic.subscribers.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  return ConversationManagerClient.activeSessionContainer.modify;
}

uint64_t key path setter for PubSubTopic.$subscribers : PubSubTopic(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t PubSubTopic.$subscribers.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PubSubTopic.$subscribers.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscribers;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySession.$state.modify;
}

uint64_t PubSubTopic.queueState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for PubSubTopic.queueState : PubSubTopic@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for PubSubTopic.queueState : PubSubTopic(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t PubSubTopic.$subscribers.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for PubSubTopic.$subscribers : PubSubTopic(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for PubSubTopic.$queueState : PubSubTopic(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t PubSubTopic.isAvailable.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t PubSubTopic.__allocating_init(name:config:service:dataCryptorProvider:delegate:seqNumWatermark:reporter:reporterTag:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v134 = a8;
  v126 = a7;
  v147 = a6;
  v148 = a5;
  v149 = a4;
  v124 = a3;
  v122 = a2;
  v145 = a1;
  v125 = a11;
  v123 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v143 = *(v12 - 8);
  v144 = v12;
  v13 = *(v143 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v141 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v142 = &v115 - v16;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR);
  v136 = *(v137 - 8);
  v17 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v115 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR);
  v139 = *(v19 - 8);
  v140 = v19;
  v20 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v138 = &v115 - v21;
  v132 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v131 = *(v132 - 8);
  v22 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for OS_dispatch_queue.Attributes();
  v24 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v127 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for UUID();
  v116 = *(v117 - 8);
  v29 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMd, &_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMR);
  v121 = *(v146 - 8);
  v31 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v120 = &v115 - v32;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64VAEGGMd, &_s7Combine9PublishedVySDys6UInt64VAEGGMR);
  v118 = *(v119 - 8);
  v33 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v35 = &v115 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v115 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v115 - v44;
  v46 = *(v11 + 48);
  v47 = *(v11 + 52);
  v48 = swift_allocObject();
  *(v48 + 144) = 0;
  swift_unknownObjectWeakInit();
  v49 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt;
  v50 = type metadata accessor for Date();
  (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
  v51 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscribers;
  v52 = MEMORY[0x1E69E7CC8];
  v152 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
  Published.init(initialValue:)();
  (*(v42 + 32))(v48 + v51, v45, v41);
  v53 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__queueState;
  v54 = MEMORY[0x1E69E7CC0];
  v152 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  Published.init(initialValue:)();
  v55 = *(v37 + 32);
  v133 = v36;
  v55(v48 + v53, v40, v36);
  v56 = v122;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata) = v52;
  v57 = v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason;
  *v57 = 0;
  *(v57 + 8) = -1;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = 0;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 0;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) = 0;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight) = 0;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing) = 0;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = 0;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = 0;
  v58 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscriberSeqNums;
  v152 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64VABGMd, &_sSDys6UInt64VABGMR);
  Published.init(initialValue:)();
  v59 = v48 + v58;
  v60 = v145;
  v61 = v35;
  v62 = v123;
  (*(v118 + 32))(v59, v61, v119);
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked) = v52;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue) = v52;
  v63 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__sendQueue;
  v152 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore11PubSubTopicC8SendItemCGMd, &_sSay14CopresenceCore11PubSubTopicC8SendItemCGMR);
  v64 = v120;
  Published.init(initialValue:)();
  (*(v121 + 32))(v48 + v63, v64, v146);
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue) = v54;
  v65 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMR);
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  *(v48 + v65) = PassthroughSubject.init()();
  v69 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMR);
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  *(v48 + v69) = PassthroughSubject.init()();
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable) = 0;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable) = 0;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable) = 0;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable) = 0;
  v73 = MEMORY[0x1E69E7CD0];
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_upsertMetadataCancellables) = MEMORY[0x1E69E7CD0];
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable) = 0;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorCancellables) = v73;
  *(v48 + 16) = v60;
  *(v48 + 24) = v56;
  v74 = v124;
  v75 = v124[3];
  *(v48 + 64) = v124[2];
  *(v48 + 80) = v75;
  v76 = v74[1];
  *(v48 + 32) = *v74;
  *(v48 + 48) = v76;
  outlined init with copy of UserNotificationCenter(v149, v48 + 96);
  outlined init with copy of UserNotificationCenter(v148, v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
  swift_beginAccess();
  *(v48 + 144) = v126;
  swift_unknownObjectWeakAssign();
  v77 = v125;
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter) = v62;
  if (v77)
  {
    v78 = (v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
    *v78 = a10;
    v78[1] = v77;
  }

  else
  {

    v79 = v115;
    UUID.init()();
    v80 = UUID.uuidString.getter();
    v82 = v81;
    (*(v116 + 8))(v79, v117);
    v83 = (v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
    *v83 = v80;
    v83[1] = v82;
    if (v62)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      __swift_project_value_buffer(v84, log);

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v151[0] = v88;
        *v87 = 136315138;
        v89 = v54;
        v90 = *v83;
        v91 = v83[1];

        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v151);

        *(v87 + 4) = v92;
        v54 = v89;
        _os_log_impl(&dword_1AEB26000, v85, v86, "PubSubTopic initialized with a reporter, but no tag. Assigning random tag=%s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v88);
        MEMORY[0x1B27120C0](v88, -1, -1);
        v93 = v87;
        v60 = v145;
        MEMORY[0x1B27120C0](v93, -1, -1);
      }
    }
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  strcpy(v151, "PubSubTopic.");
  BYTE5(v151[1]) = 0;
  HIWORD(v151[1]) = -5120;
  MEMORY[0x1B2710020](v60, v56);

  static DispatchQoS.unspecified.getter();
  v151[0] = v54;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v131 + 104))(v130, *MEMORY[0x1E69E8090], v132);
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) = 0;
  v94 = v134;
  if (v134)
  {
    v95 = *(v48 + 120);
    v96 = *(v48 + 128);
    __swift_project_boxed_opaque_existential_1((v48 + 96), v95);
    v97 = (*(v96 + 16))(v95, v96);
    if (*(v94 + 16))
    {
      v98 = specialized __RawDictionaryStorage.find<A>(_:)(v97);
      if (v99)
      {
        v100 = *(*(v94 + 56) + 8 * v98);
        *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = v100;
        *(v48 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = v100;
      }
    }

    v101 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked;
    swift_beginAccess();
    v102 = *(v48 + v101);
    *(v48 + v101) = v94;

    v151[0] = v94;
    v103 = *(v48 + 120);
    v104 = *(v48 + 128);
    __swift_project_boxed_opaque_existential_1((v48 + 96), v103);
    v105 = (*(v104 + 16))(v103, v104);
    specialized Dictionary._Variant.removeValue(forKey:)(v105);
    v106 = v151[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v150 = v106;

    static Published.subscript.setter();
  }

  swift_beginAccess();
  v107 = v135;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[PubSubTopic.SendItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR);
  v108 = v138;
  v109 = v137;
  Publisher.map<A>(_:)();
  (*(v136 + 8))(v107, v109);
  swift_beginAccess();
  v110 = v142;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[PubSubTopic.SendItem]>.Publisher, PubSubTopic.QueueState> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR);
  v111 = v140;
  Publisher<>.assign(to:)();
  (*(v139 + 8))(v108, v111);
  v113 = v143;
  v112 = v144;
  (*(v143 + 16))(v141, v110, v144);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v113 + 8))(v110, v112);
  PubSubTopic.bootstrap()();
  __swift_destroy_boxed_opaque_existential_1Tm(v148);
  __swift_destroy_boxed_opaque_existential_1Tm(v149);
  swift_unknownObjectRelease();

  return v48;
}

uint64_t PubSubTopic.init(name:config:service:dataCryptorProvider:delegate:seqNumWatermark:reporter:reporterTag:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = specialized PubSubTopic.init(name:config:service:dataCryptorProvider:delegate:seqNumWatermark:reporter:reporterTag:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  swift_unknownObjectRelease();
  return v11;
}

void *closure #1 in PubSubTopic.init(name:config:service:dataCryptorProvider:delegate:seqNumWatermark:reporter:reporterTag:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (*result >> 62)
  {
    goto LABEL_28;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = MEMORY[0x1E69E7CC8];
      while ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B2710B10](v4, v2);
        v7 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_23;
        }

LABEL_7:
        v9 = *(v6 + 40);
        v8 = *(v6 + 48);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
        v13 = v5[2];
        v14 = (v12 & 1) == 0;
        v15 = __OFADD__(v13, v14);
        v16 = v13 + v14;
        if (v15)
        {
          goto LABEL_25;
        }

        v17 = v12;
        if (v5[3] < v16)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
          v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
          if ((v17 & 1) != (v18 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_12:
          if (v17)
          {
            goto LABEL_13;
          }

          goto LABEL_18;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

        v20 = v11;
        specialized _NativeDictionary.copy()();
        v11 = v20;
        if (v17)
        {
LABEL_13:
          v19 = v11;

          v11 = v19;
          goto LABEL_20;
        }

LABEL_18:
        v5[(v11 >> 6) + 8] |= 1 << v11;
        v21 = (v5[6] + 16 * v11);
        *v21 = v9;
        v21[1] = v8;
        *(v5[7] + 8 * v11) = 0;
        v22 = v5[2];
        v15 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v15)
        {
          goto LABEL_27;
        }

        v5[2] = v23;
LABEL_20:
        v24 = v5[7];
        v25 = *(v24 + 8 * v11);
        v15 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v15)
        {
          goto LABEL_26;
        }

        *(v24 + 8 * v11) = v26;

        ++v4;
        if (v7 == v3)
        {
          goto LABEL_30;
        }
      }

      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = *(v2 + 8 * v4 + 32);

      v7 = (v4 + 1);
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_7;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      result = __CocoaSet.count.getter();
      v3 = result;
    }

    while (result);
  }

  v5 = MEMORY[0x1E69E7CC8];
LABEL_30:
  *a2 = v5;
  return result;
}

uint64_t PubSubTopic.bootstrap()()
{
  v1 = v0;
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
    v11[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), v11);
    _os_log_impl(&dword_1AEB26000, v3, v4, "Bootstrapping topic=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in PubSubTopic.bootstrap();
  *(v8 + 24) = v1;
  v11[4] = _sIg_Ieg_TRTA_0;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_149;
  v9 = _Block_copy(v11);

  dispatch_sync(v7, v9);
  _Block_release(v9);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t PubSubTopic.__allocating_init(name:config:service:dataCryptorProvider:delegate:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v100 = a7;
  v101 = a6;
  v116 = a5;
  v99 = a4;
  v96 = a2;
  v95 = a1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v113 = *(v114 - 8);
  v11 = *(v113 + 64);
  v12 = MEMORY[0x1EEE9AC00](v114);
  v112 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v85 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR);
  v108 = *(v107 - 8);
  v15 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v85 - v16;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR);
  v110 = *(v109 - 8);
  v17 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v105 = &v85 - v18;
  v104 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v103 = *(v104 - 8);
  v19 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for OS_dispatch_queue.Attributes();
  v21 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v94 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for UUID();
  v92 = *(v93 - 8);
  v26 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMd, &_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMR);
  v89 = *(v115 - 8);
  v28 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v88 = &v85 - v29;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64VAEGGMd, &_s7Combine9PublishedVySDys6UInt64VAEGGMR);
  v86 = *(v87 - 8);
  v30 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v32 = &v85 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  v90 = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v85 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v85 - v41;
  v43 = a3[1];
  v121 = *a3;
  v122 = v43;
  v44 = a3[3];
  v123 = a3[2];
  v124 = v44;
  outlined init with copy of UserNotificationCenter(a4, &v120);
  outlined init with copy of UserNotificationCenter(v116, &v119);
  v45 = *(v8 + 48);
  v46 = *(v8 + 52);
  v47 = swift_allocObject();
  *(v47 + 144) = 0;
  swift_unknownObjectWeakInit();
  v48 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt;
  v49 = type metadata accessor for Date();
  (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
  v50 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscribers;
  v51 = MEMORY[0x1E69E7CC8];
  v118 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
  Published.init(initialValue:)();
  (*(v39 + 32))(v47 + v50, v42, v38);
  v52 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__queueState;
  v53 = MEMORY[0x1E69E7CC0];
  v118 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  Published.init(initialValue:)();
  (*(v34 + 32))(v47 + v52, v37, v33);
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata) = v51;
  v54 = v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason;
  *v54 = 0;
  *(v54 + 8) = -1;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = 0;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 0;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) = 0;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight) = 0;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing) = 0;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = 0;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = 0;
  v55 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscriberSeqNums;
  v118 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64VABGMd, &_sSDys6UInt64VABGMR);
  Published.init(initialValue:)();
  (*(v86 + 32))(v47 + v55, v32, v87);
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked) = v51;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue) = v51;
  v56 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__sendQueue;
  v118 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore11PubSubTopicC8SendItemCGMd, &_sSay14CopresenceCore11PubSubTopicC8SendItemCGMR);
  v57 = v88;
  Published.init(initialValue:)();
  (*(v89 + 32))(v47 + v56, v57, v115);
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue) = v53;
  v58 = v53;
  v59 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMR);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  *(v47 + v59) = PassthroughSubject.init()();
  v63 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMR);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  *(v47 + v63) = PassthroughSubject.init()();
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable) = 0;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable) = 0;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable) = 0;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable) = 0;
  v67 = MEMORY[0x1E69E7CD0];
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_upsertMetadataCancellables) = MEMORY[0x1E69E7CD0];
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable) = 0;
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorCancellables) = v67;
  v68 = v95;
  v69 = v96;
  *(v47 + 16) = v95;
  *(v47 + 24) = v69;
  v70 = v124;
  *(v47 + 64) = v123;
  *(v47 + 80) = v70;
  v71 = v122;
  *(v47 + 32) = v121;
  *(v47 + 48) = v71;
  outlined init with copy of UserNotificationCenter(&v120, v47 + 96);
  outlined init with copy of UserNotificationCenter(&v119, v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
  swift_beginAccess();
  *(v47 + 144) = v100;
  swift_unknownObjectWeakAssign();
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter) = 0;

  v72 = v91;
  UUID.init()();
  v73 = UUID.uuidString.getter();
  v75 = v74;
  (*(v92 + 8))(v72, v93);
  v76 = (v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
  *v76 = v73;
  v76[1] = v75;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  strcpy(v117, "PubSubTopic.");
  BYTE5(v117[1]) = 0;
  HIWORD(v117[1]) = -5120;
  MEMORY[0x1B2710020](v68, v69);

  static DispatchQoS.unspecified.getter();
  v117[0] = v58;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v103 + 104))(v102, *MEMORY[0x1E69E8090], v104);
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v47 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) = 0;
  swift_beginAccess();
  v77 = v106;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[PubSubTopic.SendItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR);
  v78 = v105;
  v79 = v107;
  Publisher.map<A>(_:)();
  (*(v108 + 8))(v77, v79);
  swift_beginAccess();
  v80 = v111;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[PubSubTopic.SendItem]>.Publisher, PubSubTopic.QueueState> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR);
  v81 = v109;
  Publisher<>.assign(to:)();
  (*(v110 + 8))(v78, v81);
  v82 = v113;
  v83 = v114;
  (*(v113 + 16))(v112, v80, v114);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v82 + 8))(v80, v83);
  PubSubTopic.bootstrap()();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v116);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  __swift_destroy_boxed_opaque_existential_1Tm(&v119);
  __swift_destroy_boxed_opaque_existential_1Tm(&v120);
  return v47;
}

uint64_t PubSubTopic.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable;
  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable))
  {

    AnyCancellable.cancel()();
  }

  v3 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable;
  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable))
  {
    v4 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable);

    AnyCancellable.cancel()();
  }

  v5 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable;
  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable))
  {
    v6 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable);

    AnyCancellable.cancel()();
  }

  v7 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable;
  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable))
  {
    v8 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable);

    AnyCancellable.cancel()();
  }

  v9 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_upsertMetadataCancellables;
  swift_beginAccess();
  v10 = *(v0 + v9);
  *(v0 + v9) = MEMORY[0x1E69E7CD0];

  v11 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable;
  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable))
  {
    v12 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable);

    AnyCancellable.cancel()();
  }

  v13 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  outlined destroy of weak ActivitySessionManagerProtocol?(v0 + 136);
  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  v14 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter);

  v15 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider));
  v16 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscribers;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  v18 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__queueState;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  (*(*(v19 - 8) + 8))(v1 + v18, v19);
  v20 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata);

  outlined consume of PubSubTopic.ClosedReason?(*(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason), *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason + 8));
  v21 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscriberSeqNums;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64VAEGGMd, &_s7Combine9PublishedVySDys6UInt64VAEGGMR);
  (*(*(v22 - 8) + 8))(v1 + v21, v22);
  v23 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked);

  v24 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue);

  v25 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__sendQueue;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMd, &_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMR);
  (*(*(v26 - 8) + 8))(v1 + v25, v26);
  v27 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue);

  v28 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput);

  v29 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput);

  v30 = *(v1 + v2);

  v31 = *(v1 + v3);

  v32 = *(v1 + v5);

  v33 = *(v1 + v7);

  v34 = *(v1 + v9);

  v35 = *(v1 + v11);

  v36 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorCancellables);

  return v1;
}

uint64_t PubSubTopic.__deallocating_deinit()
{
  PubSubTopic.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void closure #1 in PubSubTopic.bootstrap()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGMR);
  v3 = *(v2 - 8);
  v49 = v2;
  v50 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGGMR);
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR);
  v15 = *(v14 - 8);
  v36 = v14;
  v37 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMR);
  v46 = *(v42 - 8);
  v19 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v21 = &v36 - v20;
  v22 = (a1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
  v23 = *(a1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
  v24 = *(a1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v23);
  v53 = (*(v24 + 16))(v23, v24);
  v54 = *(a1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  v25 = v54;
  v44 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v26 = *(v44 - 8);
  v43 = *(v26 + 56);
  v45 = v26 + 56;
  v43(v13, 1, 1, v44);
  v41 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR);
  v39 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v40 = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<UUID, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR);
  v38 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v13, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UUID, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR);
  v27 = v36;
  Publisher.dropFirst(_:)();
  (*(v37 + 8))(v18, v27);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Drop<Publishers.ReceiveOn<AnyPublisher<UUID, Never>, OS_dispatch_queue>> and conformance Publishers.Drop<A>, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMR);
  v28 = v42;
  Publisher<>.sink(receiveValue:)();

  (*(v46 + 8))(v21, v28);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v29 = v22[3];
  v30 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v29);
  v53 = (*(v30 + 32))(v29, v30);
  v31 = v41;
  v54 = v41;
  v43(v13, 1, 1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR);
  v32 = v47;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v13, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[UUID], Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGMR);
  v34 = v48;
  v33 = v49;
  Publisher.dropFirst(_:)();
  (*(v50 + 8))(v32, v33);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Drop<Publishers.ReceiveOn<AnyPublisher<[UUID], Never>, OS_dispatch_queue>> and conformance Publishers.Drop<A>, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGGMR);
  v35 = v51;
  Publisher<>.sink(receiveValue:)();

  (*(v52 + 8))(v34, v35);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(0, 1);
  PubSubTopic.setupPublishStream()();
}

uint64_t closure #1 in closure #1 in PubSubTopic.bootstrap()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PubSubTopic.onLocalEncryptionIDRotated(encryptionID:)(a1);
  }

  return result;
}

void PubSubTopic.onLocalEncryptionIDRotated(encryptionID:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CP_PublishRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v19 = (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) <= 2u)
  {
    MEMORY[0x1EEE9AC00](v19);
    *(&v36 - 2) = v1;
    *(&v36 - 1) = a1;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_PublishRequest and conformance CP_PublishRequest, type metadata accessor for CP_PublishRequest);
    static Message.with(_:)();
    if (one-time initialization token for log == -1)
    {
LABEL_4:
      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, log);
      (*(v5 + 16))(v8, a1, v4);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v38 = v24;
        *v23 = 136315394;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        (*(v5 + 8))(v8, v4);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v38);

        *(v23 + 4) = v28;
        *(v23 + 12) = 2080;
        *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v38);
        _os_log_impl(&dword_1AEB26000, v21, v22, "[Decrypt] Sending encryptionID, encryptionID=%s topic=%s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v24, -1, -1);
        MEMORY[0x1B27120C0](v23, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }

      v34 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput);

      v35 = v37;
      PassthroughSubject.send(_:)();

      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v35, type metadata accessor for CP_PublishRequest);
      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, log);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v32 = 136315138;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v38);
    _os_log_impl(&dword_1AEB26000, v30, v31, "[Decrypt] Skipping local-encryptionID-update, topic=%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1B27120C0](v33, -1, -1);
    MEMORY[0x1B27120C0](v32, -1, -1);
  }
}

uint64_t closure #2 in closure #1 in PubSubTopic.bootstrap()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PubSubTopic.onEncryptionIDsRefreshed()();
  }

  return result;
}

Swift::Void __swiftcall PubSubTopic.onEncryptionIDsRefreshed()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
    v11 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v10);
    v9 = (*(v11 + 24))(v10, v11);
    if (one-time initialization token for log == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, log);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315394;
    v17 = type metadata accessor for UUID();
    v18 = MEMORY[0x1B2710180](v9, v17);
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v31);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), &v31);
    _os_log_impl(&dword_1AEB26000, v13, v14, "[Decrypt] Refreshed encryptionIDs, encryptionIDs=%s topic=%s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  else
  {
  }

  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state))
  {
    PubSubTopic.processDecryptionQueue()();
  }

  else
  {
    v22 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v25 = os_log_type_enabled(v23, v24);
    if (v22)
    {
      if (v25)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v31 = v27;
        *v26 = 136315138;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), &v31);
        _os_log_impl(&dword_1AEB26000, v23, v24, "[Decrypt] Skipping retry, initialize-in-flight topic=%s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x1B27120C0](v27, -1, -1);
        MEMORY[0x1B27120C0](v26, -1, -1);
      }

      *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing) = 1;
    }

    else
    {
      if (v25)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31 = v29;
        *v28 = 136315138;
        *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), &v31);
        _os_log_impl(&dword_1AEB26000, v23, v24, "[Decrypt] Retrying Subscribe stream, topic=%s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x1B27120C0](v29, -1, -1);
        MEMORY[0x1B27120C0](v28, -1, -1);
      }

      *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 1;
      PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(1, 0);
    }
  }
}

void PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(int a1, int a2)
{
  v3 = v2;
  v129 = a2;
  v127 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v126 = &v115 - v6;
  v131 = type metadata accessor for CP_SubscribeRequest(0);
  v7 = *(*(v131 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v131);
  v128 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v115 - v10;
  v134 = type metadata accessor for UUID();
  v130 = *(v134 - 8);
  v11 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v115 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMR);
  v124 = *(v16 - 8);
  v125 = v16;
  v17 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v123 = &v115 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v118 = *(v121 - 8);
  v19 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v21 = &v115 - v20;
  v22 = type metadata accessor for Publishers.PrefetchStrategy();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGGMR);
  v119 = *(v27 - 8);
  v120 = v27;
  v28 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v115 - v29;
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = (&v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v35 = v36;
  (*(v32 + 104))(v35, *MEMORY[0x1E69E8020], v31);
  v117 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v35, v31);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable);
  *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable) = 0;

  v38 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable);
  *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable) = 0;

  if (*(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) <= 2u)
  {
    if ((v127 & 1) == 0)
    {
      v39 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
      v40 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput);
      LOBYTE(v135) = 1;

      PassthroughSubject.send(completion:)();

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMR);
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      swift_allocObject();
      v44 = PassthroughSubject.init()();
      v45 = *(v3 + v39);
      *(v3 + v39) = v44;

      v135 = v44;
      v46 = *MEMORY[0x1E695BD28];
      v47 = *(v23 + 104);
      v116 = v22;
      v47(v26, v46, v22);
      v48 = v118;
      v49 = v121;
      (*(v118 + 104))(v21, *MEMORY[0x1E695BD40], v121);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<CP_SubscribeRequest, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMR);
      Publisher.buffer(size:prefetch:whenFull:)();
      (*(v48 + 8))(v21, v49);
      (*(v23 + 8))(v26, v116);

      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<PassthroughSubject<CP_SubscribeRequest, Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGGMR);
      v50 = v120;
      v51 = Publisher.eraseToAnyPublisher()();
      (*(v119 + 8))(v30, v50);
      v52 = v3[15];
      v53 = v3[16];
      __swift_project_boxed_opaque_existential_1(v3 + 12, v52);
      v135 = (*(v53 + 48))(v51, v52, v53);
      v54 = v117;
      v137 = v117;
      v55 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v56 = v122;
      (*(*(v55 - 8) + 56))(v122, 1, 1, v55);
      v57 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAD14PluginRpcErrorOGMR);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CP_SubscribeResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAD14PluginRpcErrorOGMR);
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
      v58 = v123;
      Publisher.receive<A>(on:options:)();
      outlined destroy of NSObject?(v56, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<CP_SubscribeResponse, PluginRpcError>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore20CP_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMR);
      swift_retain_n();
      v59 = v125;
      v60 = Publisher.sink(receiveCompletion:receiveValue:)();

      (*(v124 + 8))(v58, v59);
      v61 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable);
      *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable) = v60;
    }

    v62 = (v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
    v63 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
    v64 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v63);
    v65 = v133;
    (*(v64 + 8))(v63, v64);
    v66 = v62[3];
    v67 = v62[4];
    __swift_project_boxed_opaque_existential_1(v62, v66);
    v68 = (*(v67 + 24))(v66, v67);
    v69 = MEMORY[0x1EEE9AC00](v68);
    *(&v115 - 4) = v3;
    *(&v115 - 3) = v69;
    *(&v115 - 2) = v65;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest);
    v22 = v132;
    static Message.with(_:)();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v70 = v135;
    v71 = v3[15];
    v72 = v3[16];
    __swift_project_boxed_opaque_existential_1(v3 + 12, v71);
    v73 = (*(v72 + 16))(v71, v72);
    v74 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135 = v70;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v74, v73, isUniquelyReferenced_nonNull_native);
    v135 = 0;
    v136 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    MEMORY[0x1B2710020](0x7165536E776F6E6BLL, 0xED00003D736D754ELL);
    v76 = Dictionary.description.getter();
    v78 = v77;

    MEMORY[0x1B2710020](v76, v78);

    MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE37A50);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v79 = v134;
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v80);

    MEMORY[0x1B2710020](0x7470797263656420, 0xEF3D7344496E6F69);
    v81 = MEMORY[0x1B2710180](v68, v79);
    v83 = v82;

    MEMORY[0x1B2710020](v81, v83);

    v30 = v135;
    v21 = v136;
    if (one-time initialization token for log == -1)
    {
LABEL_6:
      v84 = type metadata accessor for Logger();
      __swift_project_value_buffer(v84, log);

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v135 = v88;
        *v87 = 136315394;
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v21, &v135);

        *(v87 + 4) = v89;
        *(v87 + 12) = 2080;
        v90 = PubSubTopic.description.getter();
        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v135);

        *(v87 + 14) = v92;
        _os_log_impl(&dword_1AEB26000, v85, v86, "[Subscribe] Initializing, %s %s", v87, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v88, -1, -1);
        v93 = v87;
        v22 = v132;
        MEMORY[0x1B27120C0](v93, -1, -1);
      }

      else
      {
      }

      v102 = v128;
      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v22, v128, type metadata accessor for CP_SubscribeRequest);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v135 = v106;
        *v105 = 136315138;
        v107 = Message.debugDescription.getter();
        v109 = v108;
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v102, type metadata accessor for CP_SubscribeRequest);
        v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, &v135);

        *(v105 + 4) = v110;
        _os_log_impl(&dword_1AEB26000, v103, v104, "[Subscribe] Sending Initialize request=%s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
        MEMORY[0x1B27120C0](v106, -1, -1);
        MEMORY[0x1B27120C0](v105, -1, -1);

        if ((v129 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {

        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v102, type metadata accessor for CP_SubscribeRequest);
        if ((v129 & 1) == 0)
        {
LABEL_19:
          *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight) = 1;
          v114 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput);

          PassthroughSubject.send(_:)();

          outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v22, type metadata accessor for CP_SubscribeRequest);
          (*(v130 + 8))(v133, v134);
          return;
        }
      }

      v111 = v126;
      static Date.now.getter();
      v112 = type metadata accessor for Date();
      (*(*(v112 - 8) + 56))(v111, 0, 1, v112);
      v113 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt;
      swift_beginAccess();
      outlined assign with take of Date?(v111, v3 + v113);
      swift_endAccess();
      goto LABEL_19;
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for Logger();
  __swift_project_value_buffer(v94, log);

  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v135 = v98;
    *v97 = 136315138;
    v99 = PubSubTopic.description.getter();
    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v135);

    *(v97 + 4) = v101;
    _os_log_impl(&dword_1AEB26000, v95, v96, "Skipping Subscribe stream setup, closing, %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    MEMORY[0x1B27120C0](v98, -1, -1);
    MEMORY[0x1B27120C0](v97, -1, -1);
  }
}

void PubSubTopic.setupPublishStream()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v65 = v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMR);
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v66 = v58 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v10 = v58 - v9;
  v11 = type metadata accessor for Publishers.PrefetchStrategy();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGGMR);
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v61 = v58 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8020], v19);
  v62 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v25 = v0;
  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) <= 2u)
  {
    v26 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
    v27 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput);
    LOBYTE(v70) = 1;

    PassthroughSubject.send(completion:)();

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMR);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = PassthroughSubject.init()();
    v32 = *(v25 + v26);
    *(v25 + v26) = v31;

    v70 = v31;
    v58[1] = v25[5];
    v33 = *MEMORY[0x1E695BD28];
    v34 = *(v12 + 104);
    v59 = v11;
    v34(v15, v33, v11);
    v35 = v60;
    (*(v7 + 104))(v10, *MEMORY[0x1E695BD40], v60);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<CP_PublishRequest, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMR);
    v36 = v61;
    Publisher.buffer(size:prefetch:whenFull:)();
    (*(v7 + 8))(v10, v35);
    (*(v12 + 8))(v15, v59);

    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<PassthroughSubject<CP_PublishRequest, Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGGMR);
    v37 = v64;
    v38 = Publisher.eraseToAnyPublisher()();
    (*(v63 + 8))(v36, v37);
    v39 = v25[15];
    v40 = v25[16];
    __swift_project_boxed_opaque_existential_1(v25 + 12, v39);
    v41 = (*(v40 + 56))(v38, v39, v40);
    *(v25 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) = 2;
    PubSubTopic.attemptSendQueueFlush()();
    v42 = v62;
    v69 = v62;
    v70 = v41;
    v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v44 = v65;
    (*(*(v43 - 8) + 56))(v65, 1, 1, v43);
    v45 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAD14PluginRpcErrorOGMR);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CP_PublishResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAD14PluginRpcErrorOGMR);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
    v46 = v66;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSObject?(v44, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<CP_PublishResponse, PluginRpcError>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore18CP_PublishResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMR);
    swift_retain_n();
    v47 = v68;
    v48 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v67 + 8))(v46, v47);
    v49 = *(v25 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable);
    *(v25 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable) = v48;

    return;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, log);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v70 = v54;
    *v53 = 136315138;
    v55 = PubSubTopic.description.getter();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v70);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_1AEB26000, v51, v52, "Skipping Publish stream setup, closing, %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1B27120C0](v54, -1, -1);
    MEMORY[0x1B27120C0](v53, -1, -1);
  }
}

uint64_t PubSubTopic.description.getter()
{
  v1 = v0;
  v2 = 0x7964616552;
  v3 = 0xE500000000000000;
  MEMORY[0x1B2710020](0x3D666C6573, 0xE500000000000000);
  _print_unlocked<A, B>(_:_:)();
  v50[0] = 0x3D656D616ELL;
  v50[1] = 0xE500000000000000;
  MEMORY[0x1B2710020](v0[2], v0[3]);
  v50[0] = 0x3D6574617473;
  v50[1] = 0xE600000000000000;
  v4 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state);
  if (v4 <= 1)
  {
    if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state))
    {
      v3 = 0xEA00000000007055;
      v6 = 0x696863746143;
      goto LABEL_11;
    }

    v3 = 0xE800000000000000;
    v5 = 1918989395;
LABEL_7:
    v6 = v5 & 0xFFFF0000FFFFFFFFLL | 0x697400000000;
LABEL_11:
    v7 = v6 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    goto LABEL_12;
  }

  if (v4 == 2)
  {
    v7 = 0x7964616552;
  }

  else
  {
    if (v4 == 3)
    {
      v3 = 0xEC0000006E776F44;
      v5 = 1953851475;
      goto LABEL_7;
    }

    v3 = 0xE800000000000000;
    v7 = 0x6E776F6474756853;
  }

LABEL_12:
  MEMORY[0x1B2710020](v7, v3);

  v9 = v50[0];
  v8 = v50[1];
  _StringGuts.grow(_:)(23);

  v50[0] = 0xD000000000000015;
  v50[1] = 0x80000001AEE375E0;
  v46 = v8;
  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) > 1u)
  {
    if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) == 2)
    {
      v11 = 0xE500000000000000;
      v10 = 0x7964616552;
    }

    else
    {
      v11 = 0xE600000000000000;
      v10 = 0x6465736F6C43;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState))
  {
    v11 = 0xE800000000000000;
    v10 = 0x676E697972746552;
  }

  else
  {
    v10 = 0x696C616974696E49;
    v11 = 0xEC000000676E697ALL;
  }

  MEMORY[0x1B2710020](v10, v11);

  v13 = v50[0];
  v12 = v50[1];
  _StringGuts.grow(_:)(21);

  v50[0] = 0xD000000000000013;
  v50[1] = 0x80000001AEE37600;
  v45 = v12;
  if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) > 1u)
  {
    if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) == 2)
    {
      v14 = 0xE500000000000000;
    }

    else
    {
      v14 = 0xE600000000000000;
      v2 = 0x6465736F6C43;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState))
  {
    v14 = 0xE800000000000000;
    v2 = 0x676E697972746552;
  }

  else
  {
    v2 = 0x696C616974696E49;
    v14 = 0xEC000000676E697ALL;
  }

  MEMORY[0x1B2710020](v2, v14);

  v43 = v50[0];
  v44 = v50[1];
  _StringGuts.grow(_:)(21);

  v50[0] = 0xD000000000000013;
  v50[1] = 0x80000001AEE36200;
  v15 = v0[15];
  v16 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v15);
  (*(v16 + 16))(v15, v16);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v17);

  strcpy(v50, "seqNum=");
  v50[1] = 0xE700000000000000;
  v48 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v18);

  v42 = v50[0];
  strcpy(v50, "seqNumAcked=");
  HIWORD(v50[1]) = -5120;
  v49 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v19);

  v20 = v50[1];
  v41 = v50[0];
  _StringGuts.grow(_:)(17);

  v50[0] = 0x75657551646E6573;
  v50[1] = 0xEF3D657A69732D65;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v49 >> 62)
  {
LABEL_42:
    __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v22);

  v23 = v50[0];
  v24 = v50[1];
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v25 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue;
  swift_beginAccess();
  v47 = *(*(v1 + v25) + 16);
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v26);

  v27 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue;
  swift_beginAccess();
  v28 = 0;
  v29 = 0;
  v30 = *(v1 + v27);
  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v30 + 64);
  v34 = (v31 + 63) >> 6;
  do
  {
    if (!v33)
    {
      while (1)
      {
        v35 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v35 >= v34)
        {
          goto LABEL_40;
        }

        v33 = *(v30 + 64 + 8 * v35);
        ++v28;
        if (v33)
        {
          v28 = v35;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    v35 = v28;
LABEL_37:
    v36 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v37 = *(*(*(v30 + 56) + ((v35 << 9) | (8 * v36))) + 16);
    v38 = __OFADD__(v29, v37);
    v29 += v37;
  }

  while (!v38);
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(20);

  v39 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v39);

  _StringGuts.grow(_:)(32);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0x3D656D616ELL, 0xE500000000000000);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](v9, v46);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](v13, v45);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](v43, v44);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE36200);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](v42, 0xE700000000000000);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](v41, v20);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](v23, v24);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE37620);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE37640);

  return 0;
}

uint64_t PubSubTopic.seqNumWatermark.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = v17;
    v11 = v1[15];
    v12 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v11);
    v13 = (*(v12 + 16))(v11, v12);
    v14 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v10;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v13, isUniquelyReferenced_nonNull_native);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PubSubTopic.updateState(state:)(unsigned __int8 *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v9 = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    LODWORD(v2) = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state);
    *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) = v10;
    if (one-time initialization token for log == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, log);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35[0] = v17;
    *v16 = 136315650;
    v32 = v2;
    if (v2 <= 1)
    {
      if (v2)
      {
        v18 = 0x676E696863746143;
        v19 = 0xEA00000000007055;
      }

      else
      {
        v19 = 0xE800000000000000;
        v18 = 0x676E697472617453;
      }
    }

    else if (v2 == 2)
    {
      v19 = 0xE500000000000000;
      v18 = 0x7964616552;
    }

    else if (v2 == 3)
    {
      v18 = 0x676E697474756853;
      v19 = 0xEC0000006E776F44;
    }

    else
    {
      v19 = 0xE800000000000000;
      v18 = 0x6E776F6474756853;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v35);

    v21 = 0xE800000000000000;
    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v22 = 0xE500000000000000;
    v23 = 0x7964616552;
    v24 = 0x676E697474756853;
    v25 = 0xEC0000006E776F44;
    if (v10 != 3)
    {
      v24 = 0x6E776F6474756853;
      v25 = 0xE800000000000000;
    }

    if (v10 != 2)
    {
      v23 = v24;
      v22 = v25;
    }

    v26 = 0x676E696863746143;
    if (v10)
    {
      v21 = 0xEA00000000007055;
    }

    else
    {
      v26 = 0x676E697472617453;
    }

    if (v10 <= 1)
    {
      v27 = v26;
    }

    else
    {
      v27 = v23;
    }

    if (v10 <= 1)
    {
      v2 = v21;
    }

    else
    {
      v2 = v22;
    }

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v2, v35);

    *(v16 + 14) = v28;
    *(v16 + 22) = 2080;
    *(v16 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3[2], v3[3], v35);
    _os_log_impl(&dword_1AEB26000, v14, v15, "Updated state old-state=%s new-state=%s topic=%s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v17, -1, -1);
    MEMORY[0x1B27120C0](v16, -1, -1);

    LOBYTE(v2) = v32;
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = v3[18];
    ObjectType = swift_getObjectType();
    v34 = v2;
    v33 = v10;
    (*(v30 + 40))(v3, &v34, &v33, ObjectType, v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

void PubSubTopic._setMetadata(metadata:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CP_KeyValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = *(a1 + 16);
    if (v16)
    {
      v44 = v2;
      v46[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v17 = v46[0];
      v18 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v19 = *(v5 + 72);
      do
      {
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v18, v8, type metadata accessor for CP_KeyValue);
        v20 = *v8;
        v21 = v8[1];
        v22 = v8[2];
        v23 = v8[3];

        outlined copy of Data._Representation(v22, v23);
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v8, type metadata accessor for CP_KeyValue);
        v46[0] = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v43 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
          v26 = v25 + 1;
          v19 = v43;
          v17 = v46[0];
        }

        *(v17 + 16) = v26;
        v27 = (v17 + 32 * v25);
        v27[4] = v20;
        v27[5] = v21;
        v27[6] = v22;
        v27[7] = v23;
        v18 += v19;
        --v16;
      }

      while (v16);
      v2 = v44;
    }

    else if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      v28 = MEMORY[0x1E69E7CC8];
LABEL_10:
      v46[0] = v28;

      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v29, 1, v46);

      v30 = v46[0];
      a1 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata;
      swift_beginAccess();
      v31 = *(v2 + a1);
      *(v2 + a1) = v30;

      if (one-time initialization token for log == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v28 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_10;
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_11:
  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, log);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45 = v36;
    *v35 = 136315138;
    v37 = *(v2 + a1);

    v38 = Dictionary.Keys.description.getter();
    v40 = v39;

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v45);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_1AEB26000, v33, v34, "Setting metadata with keys %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1B27120C0](v36, -1, -1);
    MEMORY[0x1B27120C0](v35, -1, -1);
  }
}

uint64_t PubSubTopic.updateMetadata(metadata:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CP_KeyValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v90 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
    goto LABEL_40;
  }

  v96 = MEMORY[0x1E69E7CD0];
  v15 = *(a1 + 16);
  if (v15)
  {
    v93 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata;
    v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v91 = MEMORY[0x1E69E7CC8];
    v18 = v90;
    v88 = v17;
    v89 = v2;
    while (1)
    {
      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v16, v18, type metadata accessor for CP_KeyValue);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = v22 >> 62;
      if ((v22 >> 62) > 1)
      {
        if (v23 != 2)
        {
          goto LABEL_4;
        }

        v24 = *(v21 + 16);
        v25 = *(v21 + 24);
        v26 = __OFSUB__(v25, v24);
        v27 = v25 - v24;
        if (v26)
        {
          goto LABEL_49;
        }

        if (v27 < 1)
        {
          goto LABEL_4;
        }
      }

      else if (v23)
      {
        if (__OFSUB__(DWORD1(v21), v21))
        {
          goto LABEL_48;
        }

        if (DWORD1(v21) - v21 < 1)
        {
LABEL_4:
          v19 = *v18;
          v20 = *(v18 + 8);
          swift_beginAccess();
          specialized Dictionary._Variant.removeValue(forKey:)(v19, v20, &v94);
          swift_endAccess();
          outlined consume of Data?(v94, *(&v94 + 1));

          specialized Set._Variant.insert(_:)(&v95, v19, v20);

          goto LABEL_5;
        }
      }

      else if (!BYTE6(v22))
      {
        goto LABEL_4;
      }

      v29 = *v18;
      v28 = *(v18 + 8);
      v30 = v93;
      v92 = v21;
      swift_beginAccess();
      v31 = v92;
      outlined copy of Data._Representation(v92, v22);
      v32 = *(v2 + v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v94 = *(v2 + v30);
      v34 = v94;
      *(v2 + v30) = 0x8000000000000000;
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
      v37 = *(v34 + 16);
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v2 = v35;
      if (*(v34 + 24) >= v39)
      {
        v42 = v92;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_22;
        }

        specialized _NativeDictionary.copy()();
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
        if ((v2 & 1) != (v41 & 1))
        {
          goto LABEL_54;
        }

        v36 = v40;
      }

      v42 = v92;
LABEL_22:
      v43 = v94;
      if (v2)
      {
        v44 = (*(v94 + 56) + 16 * v36);
        v45 = *v44;
        v46 = v44[1];
        *v44 = v31;
        v44[1] = v22;
        outlined consume of Data._Representation(v45, v46);
      }

      else
      {
        *(v94 + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v47 = (v43[6] + 16 * v36);
        *v47 = v29;
        v47[1] = v28;
        *(v43[7] + 16 * v36) = v42;
        v48 = v43[2];
        v26 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v26)
        {
          goto LABEL_50;
        }

        v43[2] = v49;
      }

      *(v89 + v93) = v43;
      swift_endAccess();
      v51 = *(v90 + 2);
      v50 = *(v90 + 3);
      outlined copy of Data._Representation(v51, v50);
      v52 = v91;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v95 = v52;
      v54 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
      v56 = *(v52 + 16);
      v57 = (v55 & 1) == 0;
      v26 = __OFADD__(v56, v57);
      v58 = v56 + v57;
      if (v26)
      {
        goto LABEL_47;
      }

      v2 = v55;
      if (*(v52 + 24) >= v58)
      {
        if ((v53 & 1) == 0)
        {
          v68 = v54;
          specialized _NativeDictionary.copy()();
          v54 = v68;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v58, v53);
        v54 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
        if ((v2 & 1) != (v59 & 1))
        {
LABEL_54:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v60 = v95;
      v91 = v95;
      if (v2)
      {
        v61 = (v95[7] + 16 * v54);
        v62 = *v61;
        v63 = v61[1];
        *v61 = v51;
        v61[1] = v50;
        outlined consume of Data._Representation(v62, v63);
      }

      else
      {
        v95[(v54 >> 6) + 8] |= 1 << v54;
        v64 = (v60[6] + 16 * v54);
        *v64 = v29;
        v64[1] = v28;
        v65 = (v60[7] + 16 * v54);
        *v65 = v51;
        v65[1] = v50;
        v66 = v60[2];
        v26 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v26)
        {
          goto LABEL_51;
        }

        v60[2] = v67;
      }

      v2 = v89;
      v18 = v90;
      v17 = v88;
LABEL_5:
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v18, type metadata accessor for CP_KeyValue);
      v16 += v17;
      if (!--v15)
      {
        goto LABEL_39;
      }
    }
  }

  v91 = MEMORY[0x1E69E7CC8];
LABEL_39:
  if (one-time initialization token for log != -1)
  {
    goto LABEL_53;
  }

LABEL_40:
  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, log);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v95 = v73;
    *v72 = 136315394;
    swift_beginAccess();

    v74 = Set.description.getter();
    v76 = v75;

    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v95);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;

    v78 = Dictionary.description.getter();
    v80 = v79;

    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v95);

    *(v72 + 14) = v81;
    _os_log_impl(&dword_1AEB26000, v70, v71, "Updating metadata removedKeys=%s upsertedKeyValues=%s", v72, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v73, -1, -1);
    MEMORY[0x1B27120C0](v72, -1, -1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v82 = *(v2 + 144);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v84 = v96;
    v85 = *(v82 + 16);
    v86 = v91;

    v85(v2, v84, v86, ObjectType, v82);

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t PubSubTopic._publish(_:)(uint64_t a1)
{
  v2 = v1;
  v154[6] = *MEMORY[0x1E69E9840];
  v138 = type metadata accessor for OSSignpostID();
  v137 = *(v138 - 8);
  v4 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v142 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for CP_PublishRequest(0);
  v6 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v146 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v139 = &v136 - v10;
  v145 = type metadata accessor for Date();
  v144 = *(v145 - 8);
  v11 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for CP_SequenceNumber(0);
  v13 = *(*(v147 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v147);
  v140 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v148 = &v136 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = v2;
  v22 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v21 = v22;
  v23 = *MEMORY[0x1E69E8020];
  v24 = v18[13];
  v24(v21, v23, v17);
  v25 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v26 = v18[1];
  v26(v21, v17);
  if ((v22 & 1) == 0)
  {
    goto LABEL_117;
  }

  swift_beginAccess();
  v149 = a1;
  if ((*(a1 + 80) & 1) != 0 || (v27 = *(v149 + 72), *(v150 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) < v27))
  {
    *v21 = v25;
    v24(v21, v23, v17);
    v28 = v25;
    v29 = _dispatchPreconditionTest(_:)();
    v26(v21, v17);
    if ((v29 & 1) == 0)
    {
      goto LABEL_118;
    }

    v30 = v150;
    v31 = *(v150 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum);
    v85 = __CFADD__(v31, 1);
    v32 = v31 + 1;
    if (v85)
    {
      goto LABEL_119;
    }

    *(v150 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = v32;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
    v23 = v148;
    static Message.with(_:)();
    v33 = *(v23 + 8);
    v34 = v149;
    swift_beginAccess();
    *(v34 + 56) = v33;
    *(v34 + 64) = 0;
    v35 = *(v30 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
    v36 = *(v30 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
    __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v35);
    v37 = (*(v36 + 56))(*(v34 + 16), *(v34 + 24), v33, v35, v36);
    if (v38 >> 60 == 15)
    {
      if (one-time initialization token for log != -1)
      {
        goto LABEL_124;
      }

      goto LABEL_8;
    }

    v49 = v37;
    v50 = v38;
    v51 = v143;
    Date.init()();
    v52 = v144;
    v53 = v139;
    v54 = v145;
    (*(v144 + 16))(v139, v51, v145);
    (*(v52 + 56))(v53, 0, 1, v54);
    v55 = OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt;
    swift_beginAccess();
    outlined assign with take of Date?(v53, v34 + v55);
    v56 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v56);
    *(&v136 - 6) = v30;
    *(&v136 - 5) = v23;
    *(&v136 - 4) = v49;
    *(&v136 - 3) = v50;
    *(&v136 - 2) = v34;
    *(&v136 - 1) = v51;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_PublishRequest and conformance CP_PublishRequest, type metadata accessor for CP_PublishRequest);
    static Message.with(_:)();
    if (one-time initialization token for messenger != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v57, static Signposts.messenger);
    v58 = *(v34 + 16);
    v59 = *(v34 + 24);
    v60 = OSSignposter.isEnabled.getter();
    v61 = v142;
    v147 = v49;
    if (v60)
    {
      outlined copy of Data._Representation(v58, v59);
      _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5(v58, v59, v61);
    }

    else
    {
      OSSignpostID.init(_:)();
    }

    lazy protocol witness table accessor for type Int and conformance Int();

    default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v109);
    swift_retain_n();

    v110 = OSSignposter.logHandle.getter();
    v111 = static os_signpost_type_t.event.getter();

    if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
    {

      (*(v137 + 8))(v61, v138);
LABEL_112:
      v133 = *(v30 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput);

      v134 = v146;
      PassthroughSubject.send(_:)();
      outlined consume of Data?(v147, v50);

      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v134, type metadata accessor for CP_PublishRequest);
      (*(v144 + 8))(v143, v145);
      goto LABEL_113;
    }

    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v114 = v34;
    v115 = v113;
    v154[0] = v113;
    *v112 = 134218754;
    v116 = *(v114 + 16);
    v117 = *(v114 + 24);
    v118 = v117 >> 62;
    if ((v117 >> 62) > 1)
    {
      if (v118 == 2)
      {
        v121 = v116 + 16;
        v119 = *(v116 + 16);
        v120 = *(v121 + 8);
        v90 = __OFSUB__(v120, v119);
        v116 = v120 - v119;
        if (v90)
        {
          __break(1u);
LABEL_104:

          swift_getKeyPath();
          swift_getKeyPath();
          v122 = static Published.subscript.modify();
          specialized Array.remove(at:)(v50);

          v122(v152, 0);

          goto LABEL_114;
        }
      }

      else
      {
        v116 = 0;
      }

      goto LABEL_108;
    }

    if (!v118)
    {
      v116 = BYTE6(v117);
LABEL_108:
      *(v112 + 4) = v116;
      *(v112 + 12) = 2080;
      v123 = v150;
      *(v112 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150[2], v150[3], v154);
      *(v112 + 22) = 2048;
      v124 = v123[15];
      v125 = v123[16];
      __swift_project_boxed_opaque_existential_1(v123 + 12, v124);
      v126 = (*(v125 + 16))(v124, v125);

      *(v112 + 24) = v126;

      *(v112 + 32) = 2080;
      if (*(v149 + 64))
      {
        v127 = 0xE300000000000000;
        v128 = 7104878;
      }

      else
      {
        v153 = *(v149 + 56);
        v128 = String.init<A>(reflecting:)();
        v127 = v129;
      }

      v23 = v148;
      v130 = v142;
      v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v127, v154);

      *(v112 + 34) = v131;
      v132 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1AEB26000, v110, v111, v132, "transport-message-sent", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu seqNum=%s", v112, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v115, -1, -1);
      MEMORY[0x1B27120C0](v112, -1, -1);

      (*(v137 + 8))(v130, v138);
      v30 = v150;
      goto LABEL_112;
    }

    v90 = __OFSUB__(HIDWORD(v116), v116);
    LODWORD(v116) = HIDWORD(v116) - v116;
    if (!v90)
    {
      v116 = v116;
      goto LABEL_108;
    }

LABEL_131:
    __break(1u);
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, log);

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  v65 = os_log_type_enabled(v63, v64);
  v66 = v149;
  if (v65)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v152 = v68;
    *v67 = 134218242;
    *(v67 + 4) = v27;
    *(v67 + 12) = 2080;
    v69 = PubSubTopic.description.getter();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v152);

    *(v67 + 14) = v71;
    _os_log_impl(&dword_1AEB26000, v63, v64, "[Publish] Dropping previously sent message with seqNum=%llu %s", v67, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x1B27120C0](v68, -1, -1);
    MEMORY[0x1B27120C0](v67, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v72 = *v152;
  if (*v152 >> 62)
  {
    v73 = __CocoaSet.count.getter();
    if (v73)
    {
      goto LABEL_20;
    }

LABEL_91:

    goto LABEL_114;
  }

  v73 = *((*v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v73)
  {
    goto LABEL_91;
  }

LABEL_20:
  v75 = *(v66 + 16);
  v74 = *(v66 + 24);
  v76 = v72 & 0xC000000000000001;
  swift_beginAccess();
  v50 = 0;
  v145 = 0;
  v147 = v72 & 0xFFFFFFFFFFFFFF8;
  if (v75)
  {
    v77 = 0;
  }

  else
  {
    v77 = v74 == 0xC000000000000000;
  }

  v78 = !v77;
  LODWORD(v148) = v78;
  v79 = v74 >> 62;
  v80 = __OFSUB__(HIDWORD(v75), v75);
  LODWORD(v144) = v80;
  v143 = (HIDWORD(v75) - v75);
  v142 = v74;
  v146 = BYTE6(v74);
  v141 = v72 & 0xC000000000000001;
  v140 = v73;
  while (1)
  {
    if (v76)
    {
      v23 = MEMORY[0x1B2710B10](v50, v72);
    }

    else
    {
      if (v50 >= *(v147 + 16))
      {
        goto LABEL_116;
      }

      v23 = *(v72 + 8 * v50 + 32);
    }

    v81 = *(v23 + 16);
    v82 = *(v23 + 24);
    v83 = v82 >> 62;
    if (v82 >> 62 == 3)
    {
      if (v81)
      {
        v84 = 0;
      }

      else
      {
        v84 = v82 == 0xC000000000000000;
      }

      v85 = v84 && v79 >= 3;
      v86 = !v85;
      if (((v86 | v148) & 1) == 0)
      {
        goto LABEL_83;
      }

LABEL_56:
      v87 = 0;
      if (v79 <= 1)
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }

    if (v83 > 1)
    {
      if (v83 != 2)
      {
        goto LABEL_56;
      }

      v89 = *(v81 + 16);
      v88 = *(v81 + 24);
      v90 = __OFSUB__(v88, v89);
      v87 = v88 - v89;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v79 <= 1)
      {
        goto LABEL_53;
      }
    }

    else if (v83)
    {
      LODWORD(v87) = HIDWORD(v81) - v81;
      if (__OFSUB__(HIDWORD(v81), v81))
      {
        goto LABEL_122;
      }

      v87 = v87;
      if (v79 <= 1)
      {
LABEL_53:
        v91 = v146;
        if (v79)
        {
          v91 = v143;
          if (v144)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_59;
      }
    }

    else
    {
      v87 = BYTE6(v82);
      if (v79 <= 1)
      {
        goto LABEL_53;
      }
    }

LABEL_57:
    if (v79 != 2)
    {
      if (v87)
      {
        goto LABEL_65;
      }

      goto LABEL_83;
    }

    v93 = *(v75 + 16);
    v92 = *(v75 + 24);
    v90 = __OFSUB__(v92, v93);
    v91 = (v92 - v93);
    if (v90)
    {
      goto LABEL_121;
    }

LABEL_59:
    if (v87 != v91)
    {
      goto LABEL_65;
    }

    if (v87 < 1)
    {
      goto LABEL_83;
    }

    if (v83 > 1)
    {
      if (v83 != 2)
      {
        *&v152[6] = 0;
        *v152 = 0;
        goto LABEL_81;
      }

      v94 = v75;
      v96 = *(v81 + 16);
      v95 = *(v81 + 24);
      v97 = __DataStorage._bytes.getter();
      if (v97)
      {
        v98 = __DataStorage._offset.getter();
        if (__OFSUB__(v96, v98))
        {
          goto LABEL_129;
        }

        v97 += v96 - v98;
      }

      if (__OFSUB__(v95, v96))
      {
        goto LABEL_128;
      }

LABEL_79:
      MEMORY[0x1B270E950]();
      v75 = v94;
      v101 = v145;
      closure #1 in static Data.== infix(_:_:)(v97, v94, v142, v152);
      v145 = v101;
      v102 = v152[0];
      v66 = v149;
      v73 = v140;
      goto LABEL_82;
    }

    if (v83)
    {
      v94 = v75;
      v99 = v81;
      if (v81 >> 32 < v81)
      {
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v97 = __DataStorage._bytes.getter();
      if (v97)
      {
        v100 = __DataStorage._offset.getter();
        if (__OFSUB__(v99, v100))
        {
          goto LABEL_130;
        }

        v97 += v99 - v100;
      }

      goto LABEL_79;
    }

    *v152 = *(v23 + 16);
    *&v152[8] = v82;
    v152[10] = BYTE2(v82);
    v152[11] = BYTE3(v82);
    v152[12] = BYTE4(v82);
    v152[13] = BYTE5(v82);
LABEL_81:
    v103 = v145;
    closure #1 in static Data.== infix(_:_:)(v152, v75, v142, &v151);
    v145 = v103;
    v102 = v151;
LABEL_82:
    v76 = v141;
    if ((v102 & 1) == 0)
    {
LABEL_65:

      goto LABEL_89;
    }

LABEL_83:
    swift_beginAccess();
    v104 = *(v23 + 56);
    v105 = *(v23 + 64);

    v106 = *(v66 + 64);
    if (v105)
    {
      if (*(v66 + 64))
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v104 != *(v66 + 56))
      {
        v106 = 1;
      }

      if ((v106 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

LABEL_89:
    v107 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    ++v50;
    if (v107 == v73)
    {
      goto LABEL_91;
    }
  }

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
  swift_once();
LABEL_8:
  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, log);
  v40 = v140;
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v23, v140, type metadata accessor for CP_SequenceNumber);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v154[0] = v44;
    *v43 = 134218242;
    v45 = *(v40 + 8);
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v40, type metadata accessor for CP_SequenceNumber);
    *(v43 + 4) = v45;
    *(v43 + 12) = 2080;
    v46 = PubSubTopic.description.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v154);

    *(v43 + 14) = v48;
    _os_log_impl(&dword_1AEB26000, v41, v42, "Unexpected encryption failure, dropping message seqNum=%llu %s", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1B27120C0](v44, -1, -1);
    MEMORY[0x1B27120C0](v43, -1, -1);
  }

  else
  {
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v40, type metadata accessor for CP_SequenceNumber);
  }

LABEL_113:
  result = outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v23, type metadata accessor for CP_SequenceNumber);
LABEL_114:
  v135 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #2 in PubSubTopic._publish(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for CP_Record(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record);
  static Message.with(_:)();
  outlined destroy of NSObject?(a1, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v17, a1, type metadata accessor for CP_Record);
  v18 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t closure #1 in closure #2 in PubSubTopic._publish(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a5;
  v38 = a7;
  v37 = a6;
  v33 = a3;
  v34 = a4;
  v9 = type metadata accessor for CP_EncryptionID(0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CP_SequenceNumber(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v20 = *(a1 + 1);

  *a1 = v18;
  *(a1 + 1) = v19;
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v33, v17, type metadata accessor for CP_SequenceNumber);
  v21 = type metadata accessor for CP_Record(0);
  v22 = *(v21 + 36);
  outlined destroy of NSObject?(&a1[v22], &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v17, &a1[v22], type metadata accessor for CP_SequenceNumber);
  (*(v14 + 56))(&a1[v22], 0, 1, v13);
  v23 = *(a1 + 2);
  v24 = *(a1 + 3);
  v25 = v34;
  v26 = v35;
  *(a1 + 2) = v34;
  *(a1 + 3) = v26;
  outlined copy of Data._Representation(v25, v26);
  outlined consume of Data._Representation(v23, v24);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);
  static Message.with(_:)();
  v27 = *(v21 + 40);
  outlined destroy of NSObject?(&a1[v27], &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v12, &a1[v27], type metadata accessor for CP_EncryptionID);
  (*(v36 + 56))(&a1[v27], 0, 1, v9);
  if (*(v37 + 32))
  {
    v28 = *(v37 + 32);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v29 = *(a1 + 4);

  *(a1 + 4) = v28;
  result = Date.timeIntervalSince1970.getter();
  v32 = v31 * 1000.0;
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v32 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v32 < 1.84467441e19)
  {
    *(a1 + 5) = v32;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in PubSubTopic._publish(_:)(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
  v10 = *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v9);
  (*(v10 + 8))(v9, v10);
  v18[0] = UUID.uuid.getter();
  v18[1] = v11;
  v12 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v18, &v19);
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v12;
  *(a1 + 8) = v14;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void PubSubTopic.attemptSendQueueFlush()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) != 2 || *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) != 2)
  {
    if (one-time initialization token for log == -1)
    {
LABEL_11:
      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, log);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v37 = v21;
        *v20 = 136315138;
        v22 = PubSubTopic.description.getter();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v37);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_1AEB26000, v18, v19, "[Flush] sendQueue flush ignored %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x1B27120C0](v21, -1, -1);
        MEMORY[0x1B27120C0](v20, -1, -1);
      }

      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v37 >> 62)
  {
    v35 = __CocoaSet.count.getter();

    if (!v35)
    {
      return;
    }
  }

  else
  {
    v9 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v9)
    {
      return;
    }
  }

  v10 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum;
  v11 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked;
  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) >= *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum))
  {
    goto LABEL_17;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, log);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v37 = v16;
      *v15 = 134218498;
      *(v15 + 4) = *(v10 + v1);
      *(v15 + 12) = 2048;
      *(v15 + 14) = *(v1 + v11);

      *(v15 + 22) = 2080;
      *(v15 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), &v37);
      _os_log_impl(&dword_1AEB26000, v13, v14, "[Flush] Rewinding seqNum from=%llu to=%llu topic=%s", v15, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    else
    {
    }

    *(v10 + v1) = *(v1 + v11);
LABEL_17:
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, log);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v37 = v10;
      *v28 = 136315138;
      v29 = PubSubTopic.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v37);

      *(v28 + 4) = v11;
      _os_log_impl(&dword_1AEB26000, v26, v27, "[Flush] Flushing sendQueue %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1B27120C0](v10, -1, -1);
      MEMORY[0x1B27120C0](v28, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v31 = v37;
    if (v37 >> 62)
    {
      v32 = __CocoaSet.count.getter();
      if (!v32)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v32 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_34;
      }
    }

    if (v32 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  for (i = 0; i != v32; ++i)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1B2710B10](i, v31);
    }

    else
    {
      v34 = *(v31 + 8 * i + 32);
    }

    PubSubTopic._publish(_:)(v34);
  }

LABEL_34:
}

uint64_t closure #1 in PubSubTopic.ack(publisherID:seqNum:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a2;
  v14 = a3;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck);
  static Message.with(_:)();
  outlined destroy of NSObject?(a1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v9, a1, type metadata accessor for CP_SubscribeRequest.RecordAck);
  v10 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
}

uint64_t closure #1 in closure #1 in PubSubTopic.ack(publisherID:seqNum:)(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore17CP_SequenceNumberVGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore17CP_SequenceNumberVGMR);
  v2 = *(type metadata accessor for CP_SequenceNumber(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AEE07B20;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
  static Message.with(_:)();
  v6 = *a1;

  *a1 = v5;
  return result;
}

char *PubSubTopic.close(reason:description:)(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v52 = a2;
  v51 = a1;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v5 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_6;
  }

  if (*(v5 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) == 4)
  {
    return result;
  }

  LOBYTE(v56[0]) = 4;
  PubSubTopic.updateState(state:)(v56);
  if (*(v5 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable))
  {
    v17 = *(v5 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable);

    AnyCancellable.cancel()();
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_26;
  }

LABEL_6:
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, log);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v56[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v56);
    *(v21 + 12) = 2080;
    v23 = PubSubTopic.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v56);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_1AEB26000, v19, v20, "Shutdown reason='%s' %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v22, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = v56[0];
  if (v56[0] >> 62)
  {
    v49 = v56[0];
    v27 = __CocoaSet.count.getter();
    v26 = v49;
  }

  else
  {
    v27 = *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v29 = v26;
    v56[0] = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v50 = v5;
    v30 = 0;
    v31 = v56[0];
    v32 = v29;
    v53 = v29 & 0xC000000000000001;
    v33 = v29;
    v34 = v27;
    do
    {
      if (v53)
      {
        v35 = MEMORY[0x1B2710B10](v30, v32);
      }

      else
      {
        v35 = *(v32 + 8 * v30 + 32);
      }

      v36 = *(v35 + 16);
      v54 = *(v35 + 32);
      v55 = v36;
      v37 = *(v35 + 48);
      swift_beginAccess();
      v38 = *(v35 + 56);
      v39 = *(v35 + 64);
      outlined copy of Data._Representation(v55, *(&v55 + 1));

      v56[0] = v31;
      v41 = *(v31 + 16);
      v40 = *(v31 + 24);
      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v31 = v56[0];
      }

      ++v30;
      *(v31 + 16) = v41 + 1;
      v42 = v31 + 56 * v41;
      v43 = v54;
      *(v42 + 32) = v55;
      *(v42 + 48) = v43;
      *(v42 + 64) = v37;
      *(v42 + 72) = v38;
      *(v42 + 80) = v39;
      v32 = v33;
    }

    while (v34 != v30);

    v5 = v50;
    v28 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v44 = static Published.subscript.modify();
  v46 = *v45;
  *v45 = v28;

  v44(v56, 0);

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v47 = *(v5 + 144);
  ObjectType = swift_getObjectType();
  (*(v47 + 56))(v5, v51, v52, v31, ObjectType, v47);

  return swift_unknownObjectRelease();
}

uint64_t CP_Record.decodedEncryptionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for CP_EncryptionID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - v14;
  v16 = type metadata accessor for CP_Record(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v16 + 40), v6, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v17 = *(v8 + 48);
  if (v17(v6, 1, v7) == 1)
  {
    *v11 = xmmword_1AEE0C200;
    v18 = v11 + *(v7 + 20);
    UnknownStorage.init()();
    if (v17(v6, 1, v7) != 1)
    {
      outlined destroy of NSObject?(v6, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v6, v11, type metadata accessor for CP_EncryptionID);
  }

  v19 = *v11;
  v20 = v11[1];
  outlined copy of Data._Representation(*v11, v20);
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v11, type metadata accessor for CP_EncryptionID);
  UUID.init(data:)(v19, v20, v15);
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v15, 1, v21) == 1)
  {
    outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v23 = 1;
  }

  else
  {
    (*(v22 + 32))(a1, v15, v21);
    v23 = 0;
  }

  return (*(v22 + 56))(a1, v23, 1, v21);
}

uint64_t CP_EncryptionID.toUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v8 = *v1;
  v7 = v1[1];
  outlined copy of Data._Representation(v8, v7);
  UUID.init(data:)(v8, v7, v6);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v11 = 1;
  }

  else
  {
    (*(v10 + 32))(a1, v6, v9);
    v11 = 0;
  }

  return (*(v10 + 56))(a1, v11, 1, v9);
}

uint64_t PubSubTopic.processDecryptionQueue()()
{
  i = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v126 = &v114 - v4;
  v125 = type metadata accessor for CP_EncryptionID(0);
  v5 = *(v125 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v127 = (&v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v118 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v124 = &v114 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v114 - v14;
  v130 = type metadata accessor for UUID();
  v15 = *(v130 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v117 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for CP_Record(0);
  v144 = *(v122 - 8);
  v18 = v144[8];
  v19 = MEMORY[0x1EEE9AC00](v122);
  v129 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v145 = &v114 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v141 = &v114 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v114 - v25;
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = (&v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(i + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x1E69E8020], v27);
  v33 = v32;
  v34 = _dispatchPreconditionTest(_:)();
  v36 = *(v28 + 8);
  v35 = v28 + 8;
  v36(v31, v27);
  if (v34)
  {
    v132 = MEMORY[0x1E69E7CC8];
    v148 = MEMORY[0x1E69E7CC8];
    v37 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue;
    swift_beginAccess();
    v131 = v37;
    v38 = *(i + v37);
    v39 = v38 + 64;
    v40 = 1 << *(v38 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v38 + 64);
    v43 = (v40 + 63) >> 6;
    v35 = v5 + 48;
    v128 = (v15 + 48);
    v121 = (v15 + 32);
    v116 = (v15 + 16);
    v115 = (v15 + 8);
    v138 = v38;

    v133 = 0;
    v44 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    *&v46 = 134218754;
    v135 = v46;
    v114 = xmmword_1AEE0C200;
    v142 = i;
    v136 = v43;
    v137 = v39;
    v119 = (v5 + 48);
    v120 = (v15 + 56);
LABEL_5:
    v47 = v44;
    if (!v42)
    {
      goto LABEL_7;
    }

    do
    {
      v48 = v47;
LABEL_10:
      v139 = v48;
      v140 = v42;
      v49 = (v48 << 9) | (8 * __clz(__rbit64(v42)));
      v50 = *(*(v138 + 48) + v49);
      v51 = *(*(v138 + 56) + v49);
      v147 = v45;
      v52 = *(v51 + 16);
      v143 = v50;
      if (v52)
      {
        v53 = (*(v144 + 80) + 32) & ~*(v144 + 80);

        v134 = (v52 - 1);
        for (i = 0; ; ++i)
        {
          while (1)
          {
            if (i >= *(v51 + 16))
            {
              __break(1u);
              goto LABEL_65;
            }

            v35 = v144[9];
            _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v51 + v53 + v35 * i, v26, type metadata accessor for CP_Record);
            v56 = v45[2];
            if (!v56)
            {
              break;
            }

            _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v26, v145, type metadata accessor for CP_Record);
            swift_beginAccess();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56 + 1, 1, v45);
            }

            v58 = v45[2];
            v57 = v45[3];
            if (v58 >= v57 >> 1)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1, v45);
            }

            v45[2] = v58 + 1;
            v54 = v45 + v53 + v58 * v35;
            v55 = v145;
LABEL_13:
            _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v55, v54, type metadata accessor for CP_Record);
            v147 = v45;
            swift_endAccess();
            v50 = v143;
LABEL_14:
            ++i;
            outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v26, type metadata accessor for CP_Record);
            if (v52 == i)
            {
              goto LABEL_31;
            }
          }

          v59 = PubSubTopic.decryptAndMarkReady(record:)(v26);
          if (v59 == 1)
          {
            _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v26, v141, type metadata accessor for CP_Record);
            swift_beginAccess();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45[2] + 1, 1, v45);
            }

            v61 = v45[2];
            v60 = v45[3];
            if (v61 >= v60 >> 1)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60 > 1, v61 + 1, 1, v45);
            }

            v45[2] = v61 + 1;
            v54 = v45 + v53 + v61 * v35;
            v55 = v141;
            goto LABEL_13;
          }

          if (v59)
          {
            goto LABEL_14;
          }

          outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v26, type metadata accessor for CP_Record);
          v133 = 1;
          if (v134 == i)
          {
            goto LABEL_31;
          }
        }
      }

LABEL_31:
      v35 = *(v51 + 16);
      v62 = v45[2];
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, log);
      i = v142;

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v35 -= v62;
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v146 = v67;
        *v66 = v135;
        *(v66 + 4) = v50;
        *(v66 + 12) = 2048;
        *(v66 + 14) = v35;
        *(v66 + 22) = 2048;
        *(v66 + 24) = v45[2];
        *(v66 + 32) = 2080;
        *(v66 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(i + 16), *(i + 24), &v146);
        _os_log_impl(&dword_1AEB26000, v64, v65, "[Decrypt] Processed decrypt-queue, publisherID=%llu decrypted-count=%ld remaining-count=%ld topic=%s", v66, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x1B27120C0](v67, -1, -1);
        MEMORY[0x1B27120C0](v66, -1, -1);
      }

      v42 = (v140 - 1) & v140;
      if (v45[2])
      {

        if (!v45[2])
        {
          goto LABEL_69;
        }

        v69 = v129;
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v45 + ((*(v144 + 80) + 32) & ~*(v144 + 80)), v129, type metadata accessor for CP_Record);

        v70 = v126;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v69 + *(v122 + 40), v126, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
        v71 = *v119;
        v72 = v125;
        v73 = (*v119)(v70, 1, v125);
        v43 = v136;
        v39 = v137;
        v140 = v42;
        if (v73 == 1)
        {
          v74 = v127;
          *v127 = v114;
          v75 = v74 + *(v72 + 20);
          UnknownStorage.init()();
          v76 = v71(v70, 1, v72);
          v77 = v74;
          v78 = v120;
          if (v76 != 1)
          {
            outlined destroy of NSObject?(v70, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
          }
        }

        else
        {
          v77 = v127;
          _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v70, v127, type metadata accessor for CP_EncryptionID);
          v78 = v120;
        }

        v79 = *v77;
        v80 = v77[1];
        outlined copy of Data._Representation(*v77, v80);
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v77, type metadata accessor for CP_EncryptionID);
        v81 = v79;
        v82 = v124;
        UUID.init(data:)(v81, v80, v124);
        v83 = *v128;
        v84 = v130;
        v85 = (*v128)(v82, 1, v130);
        v86 = v123;
        if (v85 == 1)
        {
          outlined destroy of NSObject?(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v87 = 1;
        }

        else
        {
          (*v121)(v123, v82, v84);
          v87 = 0;
        }

        v88 = *v78;
        (*v78)(v86, v87, 1, v84);
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v129, type metadata accessor for CP_Record);
        if (v83(v86, 1, v84) == 1)
        {
          outlined destroy of NSObject?(v86, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v42 = v140;
          v89 = v143;
        }

        else
        {
          v90 = v86;
          v91 = v117;
          (*v121)(v117, v90, v84);
          v92 = v118;
          (*v116)(v118, v91, v84);
          v88(v92, 0, 1, v84);
          v93 = v92;
          v94 = v143;
          specialized Dictionary.subscript.setter(v93, v143);
          v95 = v84;
          v89 = v94;
          (*v115)(v91, v95);
          v42 = v140;
        }

        v35 = v132;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v146 = v35;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v89, isUniquelyReferenced_nonNull_native);

        v132 = v146;
        v45 = MEMORY[0x1E69E7CC0];
        v44 = v139;
        goto LABEL_5;
      }

      v47 = v139;
      v43 = v136;
      v39 = v137;
      v45 = MEMORY[0x1E69E7CC0];
    }

    while (v42);
LABEL_7:
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v43)
      {

        v97 = *(i + v131);
        *(i + v131) = v132;

        v35 = v148;
        if (!*(v148 + 16))
        {
          goto LABEL_59;
        }

        if (one-time initialization token for log != -1)
        {
          goto LABEL_67;
        }

        goto LABEL_52;
      }

      v42 = *(v39 + 8 * v48);
      ++v47;
      if (v42)
      {
        goto LABEL_10;
      }
    }

LABEL_65:
    __break(1u);
  }

  __break(1u);
LABEL_67:
  swift_once();
LABEL_52:
  v98 = type metadata accessor for Logger();
  __swift_project_value_buffer(v98, log);

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v146 = v102;
    *v101 = 136315394;

    v103 = Dictionary.description.getter();
    v105 = v104;

    v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, &v146);

    *(v101 + 4) = v106;
    *(v101 + 12) = 2080;
    *(v101 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(i + 16), *(i + 24), &v146);
    _os_log_impl(&dword_1AEB26000, v99, v100, "[Decrypt] Requesting encryptionIDs, missingPublisherEncryptionIDs=%s topic=%s", v101, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v102, -1, -1);
    MEMORY[0x1B27120C0](v101, -1, -1);
  }

  v107 = *(i + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
  v108 = *(i + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
  v109 = __swift_project_boxed_opaque_existential_1((i + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v107);
  v110 = *(v35 + 16);
  if (!v110)
  {
    v111 = MEMORY[0x1E69E7CC0];
LABEL_58:
    (*(v108 + 72))(v111, v107, v108);

LABEL_59:
    if ((v133 & 1) == 0)
    {
    }

    if (*(i + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) != 2)
    {
    }

    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
    }

    v112 = *(i + 144);
    ObjectType = swift_getObjectType();
    (*(v112 + 8))(i, ObjectType, v112);

    return swift_unknownObjectRelease();
  }

  v144 = v109;
  v111 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5(v110, 0);
  v145 = specialized Sequence._copySequenceContents(initializing:)(&v146, v111 + 4, v110, v35);

  result = outlined consume of Set<String>.Iterator._Variant();
  if (v145 == v110)
  {
    i = v142;
    goto LABEL_58;
  }

  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t closure #1 in PubSubTopic.onLocalEncryptionIDRotated(encryptionID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a2;
  v14 = a3;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_PublishRequest.UpdatedEncryptionID and conformance CP_PublishRequest.UpdatedEncryptionID, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  static Message.with(_:)();
  outlined destroy of NSObject?(a1, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v9, a1, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  v10 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
}

uint64_t closure #1 in closure #1 in PubSubTopic.onLocalEncryptionIDRotated(encryptionID:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CP_EncryptionID(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a1 + 1);

  *a1 = v12;
  *(a1 + 1) = v11;
  v17 = a3;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);
  static Message.with(_:)();
  v14 = *(type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0) + 24);
  outlined destroy of NSObject?(&a1[v14], &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v10, &a1[v14], type metadata accessor for CP_EncryptionID);
  return (*(v7 + 56))(&a1[v14], 0, 1, v6);
}

uint64_t PubSubTopic.decryptAndMarkReady(record:)(unint64_t a1)
{
  v100 = a1;
  v103 = type metadata accessor for CP_Record(0);
  v2 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v96 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v105 = *(v4 - 8);
  v5 = *(v105 + 8);
  MEMORY[0x1EEE9AC00](v4);
  v102 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v95 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v94 = &v92 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v92 - v13;
  v104 = type metadata accessor for CP_SequenceNumber(0);
  v106 = *(v104 - 8);
  v15 = *(v106 + 64);
  v16 = MEMORY[0x1EEE9AC00](v104);
  v93 = (&v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v92 = (&v92 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v92 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v92 - v27;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = (&v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = v1;
  v34 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v33 = v34;
  (*(v30 + 104))(v33, *MEMORY[0x1E69E8020], v29);
  v35 = v34;
  v36 = _dispatchPreconditionTest(_:)();
  v38 = *(v30 + 8);
  v37 = (v30 + 8);
  v38(v33, v29);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v1 = v100;
  CP_Record.decodedEncryptionID.getter(v28);
  v36 = v105 + 48;
  v37 = *(v105 + 6);
  v33 = v37(v28, 1, v4);
  outlined destroy of NSObject?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v33 == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v40 = v4;
  v41 = v1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v103 + 36), v14, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v42 = v106 + 48;
  v43 = *(v106 + 48);
  v44 = v104;
  v45 = v43(v14, 1, v104);
  v106 = v42;
  v97 = v43;
  if (v45 == 1)
  {
    *v21 = 0;
    v21[1] = 0;
    v46 = v21 + *(v44 + 24);
    UnknownStorage.init()();
    if (v43(v14, 1, v44) != 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v14, v21, type metadata accessor for CP_SequenceNumber);
  }

  v98 = v21[1];
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v21, type metadata accessor for CP_SequenceNumber);
  v47 = v41;
  CP_Record.decodedEncryptionID.getter(v26);
  result = v37(v26, 1, v40);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v37 = v105;
  v49 = *(v105 + 4);
  v50 = v102;
  v101 = v40;
  v49(v102, v26, v40);
  v51 = *(v41 + 32);
  v26 = v99;
  if (!*(v51 + 16))
  {
LABEL_12:
    v60 = *&v26[OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24];
    v61 = *&v26[OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v26[OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider], v60);
    v1 = (*(v61 + 64))(*(v47 + 16), *(v47 + 24), v50, v98, v60, v61);
    v100 = v62;
    v63 = v96;
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v47, v96, type metadata accessor for CP_Record);
    v64 = v44;
    swift_weakInit();
    v65 = *(v103 + 36);
    v66 = v94;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v63 + v65, v94, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    v67 = v44;
    v68 = v97;
    v69 = v97(v66, 1, v67);
    if (v69 == 1)
    {
      v70 = v1;
      v71 = v92;
      *v92 = 0;
      v71[1] = 0;
      v72 = *(v64 + 24);
      outlined copy of Data._Representation(v70, v100);
      UnknownStorage.init()();
      v73 = v68(v66, 1, v64);
      v74 = v71;
      v1 = v70;
      v37 = v105;
      if (v73 != 1)
      {
        outlined destroy of NSObject?(v66, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
      }
    }

    else
    {
      v74 = v92;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v66, v92, type metadata accessor for CP_SequenceNumber);
      outlined copy of Data._Representation(v1, v100);
    }

    v75 = *v74;
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v74, type metadata accessor for CP_SequenceNumber);
    v107[0] = v75;
    v76 = v63 + v65;
    v77 = v95;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v76, v95, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    v78 = v104;
    v79 = v97;
    if (v97(v77, 1, v104) == 1)
    {
      v80 = v93;
      *v93 = 0;
      v80[1] = 0;
      v81 = v80 + *(v78 + 24);
      UnknownStorage.init()();
      v82 = v79(v77, 1, v78);
      v21 = v102;
      v36 = v100;
      if (v82 != 1)
      {
        outlined destroy of NSObject?(v77, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
      }
    }

    else
    {
      v80 = v93;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v77, v93, type metadata accessor for CP_SequenceNumber);
      v21 = v102;
      v36 = v100;
    }

    v83 = v80[1];
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v80, type metadata accessor for CP_SequenceNumber);
    v107[1] = v83;
    v107[2] = v1;
    v84 = *(v26 + 2);
    v85 = *(v26 + 3);
    v107[3] = v36;
    v107[4] = v84;
    v107[5] = v85;
    v86 = *(v63 + 32);
    if (*(v86 + 16))
    {
      v87 = *(v63 + 32);
    }

    else
    {
      v86 = 0;
    }

    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v63, type metadata accessor for CP_Record);
    v107[6] = v86;
    swift_weakAssign();
    outlined init with take of PubSubTopic.ReceivedRecord(v107, v108);
    outlined init with copy of PubSubTopic.ReceivedRecord(v108, v107);
    v29 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue;
    swift_beginAccess();
    v33 = *&v26[v29];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26[v29] = v33;
    v39 = &v109;
    if (isUniquelyReferenced_nonNull_native)
    {
      v89 = v101;
LABEL_27:
      v91 = v33[2];
      v90 = v33[3];
      if (v91 >= v90 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v33);
      }

      v33[2] = v91 + 1;
      outlined init with take of PubSubTopic.ReceivedRecord(v107, &v33[8 * v91 + 4]);
      *&v26[v29] = v33;
      swift_endAccess();
      outlined consume of Data._Representation(v1, v36);
      outlined destroy of PubSubTopic.ReceivedRecord(v108);
      (*(v37 + 1))(v21, v89);
      return 0;
    }

LABEL_32:
    v89 = *(v39 - 32);
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
    *&v26[v29] = v33;
    goto LABEL_27;
  }

  v52 = *(v99 + 15);
  v53 = *(v99 + 16);
  __swift_project_boxed_opaque_existential_1(v99 + 12, v52);
  v54 = *(v53 + 16);
  v55 = v53;
  v47 = v41;
  v56 = v54(v52, v55);
  v57 = *(v51 + 16);
  v58 = (v51 + 32);
  while (v57)
  {
    v59 = *v58++;
    --v57;
    if (v59 == v56)
    {
      goto LABEL_12;
    }
  }

  (*(v37 + 1))(v50, v101);
  return 4;
}

uint64_t PubSubTopic.queueRecordForDecryption(_:)(uint64_t a1)
{
  v107 = a1;
  v99 = type metadata accessor for CP_Record(0);
  v97 = *(v99 - 8);
  v2 = *(v97 + 64);
  v3 = MEMORY[0x1EEE9AC00](v99);
  v96 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v95 = &v94 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v105 = v6;
  v106 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v102 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v94 - v14;
  v16 = type metadata accessor for CP_SequenceNumber(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v101 = (&v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v94 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v100 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v94 - v27;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = (&v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = v1;
  v34 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v33 = v34;
  (*(v30 + 104))(v33, *MEMORY[0x1E69E8020], v29);
  v35 = v34;
  v36 = _dispatchPreconditionTest(_:)();
  v38 = *(v30 + 8);
  v37 = (v30 + 8);
  v38(v33, v29);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  CP_Record.decodedEncryptionID.getter(v28);
  v29 = v105;
  v36 = v106 + 48;
  v39 = *(v106 + 48);
  v40 = v39(v28, 1, v105);
  outlined destroy of NSObject?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v40 == 1)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v41 = *(v99 + 36);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v107 + v41, v15, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v42 = *(v17 + 48);
  v43 = v42(v15, 1, v16);
  v98 = v39;
  if (v43 == 1)
  {
    *v22 = 0;
    v22[1] = 0;
    v44 = v22 + *(v16 + 24);
    UnknownStorage.init()();
    if (v42(v15, 1, v16) != 1)
    {
      outlined destroy of NSObject?(v15, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v15, v22, type metadata accessor for CP_SequenceNumber);
  }

  v45 = *v22;
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v22, type metadata accessor for CP_SequenceNumber);
  v46 = v102;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v107 + v41, v102, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if (v42(v46, 1, v16) == 1)
  {
    v47 = v101;
    *v101 = 0;
    v47[1] = 0;
    v48 = v47 + *(v16 + 24);
    UnknownStorage.init()();
    v49 = v42(v46, 1, v16);
    v16 = v103;
    v50 = v106;
    if (v49 != 1)
    {
      outlined destroy of NSObject?(v46, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    v47 = v101;
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v46, v101, type metadata accessor for CP_SequenceNumber);
    v16 = v103;
    v50 = v106;
  }

  v51 = v47[1];
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v47, type metadata accessor for CP_SequenceNumber);
  v52 = v100;
  CP_Record.decodedEncryptionID.getter(v100);
  result = v98(v52, 1, v29);
  if (result != 1)
  {
    (*(v50 + 32))(v104, v52, v29);
    v108[0] = 0;
    v108[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    strcpy(v108, "publisherID=");
    BYTE5(v108[1]) = 0;
    HIWORD(v108[1]) = -5120;
    v109 = v45;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v54);

    MEMORY[0x1B2710020](0x3D6D754E71657320, 0xE800000000000000);
    v109 = v51;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v55);

    MEMORY[0x1B2710020](0x74707972636E6520, 0xEE003D44496E6F69);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v56);

    MEMORY[0x1B2710020](0x3D6369706F7420, 0xE700000000000000);
    MEMORY[0x1B2710020](*(v16 + 16), *(v16 + 24));
    v29 = v108[0];
    v17 = v108[1];
    v57 = v45;
    v28 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue;
    swift_beginAccess();
    v58 = *&v28[v16];
    if (*(v58 + 16))
    {
      v36 = v57;
      v59 = specialized __RawDictionaryStorage.find<A>(_:)(v57);
      if (v60)
      {
        v37 = *(*(v58 + 56) + 8 * v59);

        goto LABEL_17;
      }
    }

    else
    {
      v36 = v57;
    }

    v37 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v61 = v107;
    swift_endAccess();
    v62 = v37[2];
    if (v62)
    {
      if (*(v16 + 48) <= v62)
      {

        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        __swift_project_value_buffer(v77, log);

        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.error.getter();

        v80 = os_log_type_enabled(v78, v79);
        v81 = v106;
        if (v80)
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v108[0] = v83;
          *v82 = 136315138;
          v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v17, v108);

          *(v82 + 4) = v84;
          _os_log_impl(&dword_1AEB26000, v78, v79, "[Decrypt] Decrypt-queue max capacity exceeded, closing streams, %s", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v83);
          MEMORY[0x1B27120C0](v83, -1, -1);
          MEMORY[0x1B27120C0](v82, -1, -1);
        }

        else
        {
        }

        v85 = v105;
        PubSubTopic.closeStreams(reason:)(4, 2);
        return (*(v81 + 8))(v104, v85);
      }

      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v61, v96, type metadata accessor for CP_Record);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62 + 1, 1, v37);
      }

      v64 = v37[2];
      v63 = v37[3];
      if (v64 >= v63 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v63 > 1, v64 + 1, 1, v37);
      }

      v37[2] = v64 + 1;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v96, v37 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v64, type metadata accessor for CP_Record);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, log);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v108[0] = v69;
        *v68 = 134218242;
        *(v68 + 4) = v37[2];

        *(v68 + 12) = 2080;
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v17, v108);

        *(v68 + 14) = v70;
        _os_log_impl(&dword_1AEB26000, v66, v67, "[Decrypt] Decrypt-queue found, count=%ld %s", v68, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x1B27120C0](v69, -1, -1);
        MEMORY[0x1B27120C0](v68, -1, -1);
      }

      else
      {
      }

      v85 = v105;
LABEL_42:
      swift_beginAccess();
      v92 = *&v28[v16];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = *&v28[v16];
      *&v28[v16] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, v36, isUniquelyReferenced_nonNull_native);
      *&v28[v16] = v109;
      swift_endAccess();
      v81 = v106;
      return (*(v81 + 8))(v104, v85);
    }

    if (one-time initialization token for log == -1)
    {
LABEL_28:
      v71 = type metadata accessor for Logger();
      __swift_project_value_buffer(v71, log);

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v108[0] = v75;
        *v74 = 136315138;
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v17, v108);

        *(v74 + 4) = v76;
        _os_log_impl(&dword_1AEB26000, v72, v73, "[Decrypt] Decrypt-queue created, %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x1B27120C0](v75, -1, -1);
        MEMORY[0x1B27120C0](v74, -1, -1);
      }

      else
      {
      }

      v85 = v105;
      v86 = v97;
      v87 = v95;
      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v107, v95, type metadata accessor for CP_Record);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
      }

      v89 = v37[2];
      v88 = v37[3];
      if (v89 >= v88 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v88 > 1, v89 + 1, 1, v37);
      }

      v37[2] = v89 + 1;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v87, v37 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v89, type metadata accessor for CP_Record);
      v90 = *(v16 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
      __swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), *(v16 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_1AEE07B20;
      *(v91 + 32) = v36;
      (*(v90 + 72))();

      goto LABEL_42;
    }

LABEL_48:
    swift_once();
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t PubSubTopic.closeStreams(reason:)(uint64_t a1, int a2)
{
  v57 = a2;
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMR);
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMR);
  v54 = *(v15 - 8);
  v55 = v15;
  v16 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8020], v19);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  result = (*(v20 + 8))(v23, v19);
  if (v26)
  {
    if (*(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) != 4)
    {
      LOBYTE(v59) = 3;
      v28 = v2;
      PubSubTopic.updateState(state:)(&v59);
      v29 = v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason;
      v30 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason);
      v31 = v56;
      *v29 = v56;
      v32 = *(v29 + 8);
      v33 = v57;
      *(v29 + 8) = v57;
      outlined consume of PubSubTopic.ClosedReason?(v30, v32);
      v34 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput);
      LOBYTE(v59) = 1;
      outlined copy of PubSubTopic.ClosedReason(v31, v33);

      PassthroughSubject.send(completion:)();

      v35 = *(v28 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput);
      LOBYTE(v59) = 1;

      PassthroughSubject.send(completion:)();

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer, 0x1E695DFF0);
      v36 = *(v28 + 88);
      v37 = [objc_opt_self() mainRunLoop];
      v38 = *MEMORY[0x1E695D918];
      v39 = type metadata accessor for NSRunLoop.SchedulerOptions();
      (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
      v40 = static NSTimer.publish(every:tolerance:on:in:options:)();

      outlined destroy of NSObject?(v10, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
      v59 = v40;
      type metadata accessor for NSTimer.TimerPublisher();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x1E6969F70]);
      v41 = ConnectablePublisher.autoconnect()();

      v58 = v25;
      v59 = v41;
      v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v42 - 8) + 56))(v6, 1, 1, v42);
      v43 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
      Publisher.receive<A>(on:options:)();
      outlined destroy of NSObject?(v6, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Autoconnect<NSTimer.TimerPublisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMR);
      v44 = v53;
      Publisher.first()();
      (*(v52 + 8))(v14, v44);
      v45 = swift_allocObject();
      swift_weakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      v47 = v56;
      *(v46 + 24) = v56;
      v48 = v57;
      *(v46 + 32) = v57;
      outlined copy of PubSubTopic.ClosedReason(v47, v48);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.ReceiveOn<Publishers.Autoconnect<NSTimer.TimerPublisher>, OS_dispatch_queue>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMR);
      v49 = v55;
      v50 = Publisher<>.sink(receiveValue:)();

      (*(v54 + 8))(v18, v49);
      v51 = *(v28 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable);
      *(v28 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable) = v50;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PubSubTopic.publish(message:to:messageTypeIdentifier:previousSeqNumUnacked:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *, void), uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v58 = a7;
  v55 = a5;
  v56 = a6;
  v54 = a4;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v7 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v57[0] >> 62))
    {
      v19 = *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  v19 = __CocoaSet.count.getter();
LABEL_4:

  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  if (*(v8 + 40) < v19 + 1)
  {
    goto LABEL_26;
  }

  v20 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(a2);
      if (!BYTE6(a2))
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    LODWORD(v21) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v21 = v21;
      if (v21 < 1)
      {
        goto LABEL_17;
      }

LABEL_16:
      if (*(v8 + 32) >= v21)
      {
        goto LABEL_17;
      }

LABEL_26:
      type metadata accessor for PubSubTopicError(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type PubSubTopicError and conformance PubSubTopicError, type metadata accessor for PubSubTopicError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_24;
  }

  if (v20 != 2)
  {
    goto LABEL_17;
  }

  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v24 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v21 >= 1)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (*(v8 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) > 2u)
  {
    goto LABEL_26;
  }

  v53 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state;
  v25 = type metadata accessor for PubSubTopic.SendItem(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v19 = swift_allocObject();
  *(v19 + 56) = 0;
  *(v19 + 64) = 1;
  *(v19 + 72) = 0;
  *(v19 + 80) = 1;
  v28 = OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt;
  v29 = type metadata accessor for Date();
  (*(*(v29 - 8) + 56))(v19 + v28, 1, 1, v29);
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v30 = v54;
  *(v19 + 32) = a3;
  *(v19 + 40) = v30;
  *(v19 + 48) = v55;
  swift_beginAccess();
  *(v19 + 72) = v56;
  *(v19 + 80) = v58 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined copy of Data._Representation(a1, a2);

  a3 = static Published.subscript.modify();
  v32 = v31;
  MEMORY[0x1B2710150]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_38:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  a3(v57, 0);

  if (*(v8 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) == 2 && *(v8 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) == 2 && *(v8 + v53) != 1)
  {
    PubSubTopic._publish(_:)(v19);
  }

  if ((v58 & 1) == 0)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, log);

    v34 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v34, v48))
    {
      goto LABEL_32;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v57[0] = v37;
    *v36 = 134218242;
    *(v36 + 4) = v56;
    *(v36 + 12) = 2080;
    v49 = PubSubTopic.description.getter();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v57);

    *(v36 + 14) = v51;
    v41 = "[Publish] Queueing message, previousSeqNumUnacked=%llu %s";
    v42 = v48;
    v43 = v34;
    v44 = v36;
    v45 = 22;
    goto LABEL_31;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_41;
  }

LABEL_24:
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, log);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v57[0] = v37;
    *v36 = 136315138;
    v38 = PubSubTopic.description.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v57);

    *(v36 + 4) = v40;
    v41 = "[Publish] Queueing message %s";
    v42 = v35;
    v43 = v34;
    v44 = v36;
    v45 = 12;
LABEL_31:
    _os_log_impl(&dword_1AEB26000, v43, v42, v41, v44, v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x1B27120C0](v37, -1, -1);
    MEMORY[0x1B27120C0](v36, -1, -1);
  }

LABEL_32:
}

uint64_t PubSubTopic.publishQueueCount.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11 >> 62)
  {
LABEL_6:
    v8 = __CocoaSet.count.getter();
    goto LABEL_4;
  }

  v8 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  return v8;
}

uint64_t PubSubTopic.retrieveNextMessage()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue;
    result = swift_beginAccess();
    v12 = *(v1 + v11);
    if (*(v12 + 16) && *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) >= 2u)
    {
      swift_beginAccess();
      *(a1 + 24) = &type metadata for PubSubTopic.ReceivedRecord;
      *(a1 + 32) = &protocol witness table for PubSubTopic.ReceivedRecord;
      v13 = swift_allocObject();
      *a1 = v13;
      outlined init with copy of PubSubTopic.ReceivedRecord(v12 + 32, v13 + 16);
      specialized Array.replaceSubrange<A>(_:with:)(0, 1);
      return swift_endAccess();
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PubSubTopic.retrieveQueueCount.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) >= 2u)
    {
      v9 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue;
      swift_beginAccess();
      return *(*(v0 + v9) + 16);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PubSubTopic.topicMetadata.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t PubSubTopic.upsertMetadata(_:completion:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v92 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMd, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v84 - v8;
  v88 = type metadata accessor for CP_UpsertTopicMetadataRequest(0);
  v10 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    goto LABEL_35;
  }

  if (*(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) > 2u)
  {
    type metadata accessor for PubSubTopicError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a2(v9);
    return outlined destroy of NSObject?(v9, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMd, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMR);
  }

  v20 = v3;
  v85 = a2;
  v86 = a3;
  v87 = v12;
  v21 = v92 + 64;
  v22 = 1 << *(v92 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v92 + 64);
  v25 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata;
  v26 = (v22 + 63) >> 6;

  v27 = 0;
  v91 = v25;
  v89 = v3;
  while (v24)
  {
LABEL_14:
    v32 = (v27 << 10) | (16 * __clz(__rbit64(v24)));
    v33 = *(v92 + 56);
    v34 = (*(v92 + 48) + v32);
    v35 = *v34;
    v36 = v34[1];
    v37 = *(v33 + v32);
    v38 = *(v33 + v32 + 8);
    v93 = v38;
    v94 = v37;
    if (v38 >> 60 == 15)
    {
      swift_beginAccess();
      v39 = *(v20 + v25);

      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v36);
      v41 = v20;
      if (v42)
      {
        v43 = v40;
        v44 = *(v41 + v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = *(v41 + v25);
        v95 = v46;
        *(v41 + v25) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v46 = v95;
        }

        v47 = *(*(v46 + 48) + 16 * v43 + 8);

        v48 = (*(v46 + 56) + 16 * v43);
        v28 = *v48;
        v29 = v48[1];
        specialized _NativeDictionary._delete(at:)(v43, v46);
        *(v41 + v91) = v46;
      }

      else
      {
        v28 = 0;
        v29 = 0xF000000000000000;
      }

      v20 = v41;
      swift_endAccess();
      outlined consume of Data?(v28, v29);
      v25 = v91;
      v30 = v93;
      goto LABEL_8;
    }

    swift_beginAccess();
    v49 = v94;
    outlined copy of Data?(v94, v38);
    outlined copy of Data?(v49, v38);

    v90 = v49;
    outlined copy of Data?(v49, v38);

    v50 = *(v20 + v25);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v35;
    v53 = v51;
    v95 = *(v20 + v25);
    v54 = v95;
    *(v20 + v25) = 0x8000000000000000;
    v55 = v52;
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v36);
    v58 = v54[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_34;
    }

    v61 = v56;
    if (v54[3] >= v60)
    {
      v64 = v94;
      if (v53)
      {
        goto LABEL_25;
      }

      specialized _NativeDictionary.copy()();
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60, v53);
      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v36);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_37;
      }

      v57 = v62;
    }

    v64 = v94;
LABEL_25:
    v65 = v95;
    if (v61)
    {
      v66 = (v95[7] + 16 * v57);
      v67 = *v66;
      v68 = v66[1];
      *v66 = v64;
      outlined consume of Data._Representation(v67, v68);
    }

    else
    {
      v95[(v57 >> 6) + 8] |= 1 << v57;
      v69 = (v65[6] + 16 * v57);
      *v69 = v55;
      v69[1] = v36;
      *(v65[7] + 16 * v57) = v64;
      v70 = v65[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_36;
      }

      v65[2] = v72;
    }

    v20 = v89;
    v25 = v91;
    *(v89 + v91) = v65;
    swift_endAccess();
    v30 = v93;
    outlined consume of Data?(v90, v93);
LABEL_8:
    v24 &= v24 - 1;

    outlined consume of Data?(v94, v30);
  }

  while (1)
  {
    v31 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v31 >= v26)
    {
      v74 = v92;

      MEMORY[0x1EEE9AC00](v75);
      *(&v84 - 2) = v20;
      *(&v84 - 1) = v74;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataRequest and conformance CP_UpsertTopicMetadataRequest, type metadata accessor for CP_UpsertTopicMetadataRequest);
      v76 = v87;
      static Message.with(_:)();
      v77 = v20;
      v78 = *(v20 + 120);
      v79 = *(v20 + 128);
      __swift_project_boxed_opaque_existential_1((v77 + 96), v78);
      v96 = (*(v79 + 72))(v76, v78, v79);
      v80 = swift_allocObject();
      v82 = v85;
      v81 = v86;
      v80[2] = v77;
      v80[3] = v82;
      v80[4] = v81;
      v83 = swift_allocObject();
      v83[2] = v82;
      v83[3] = v81;
      v83[4] = v77;
      v83[5] = v74;
      swift_retain_n();
      swift_retain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore30CP_UpsertTopicMetadataResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore30CP_UpsertTopicMetadataResponseVAD14PluginRpcErrorOGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CP_UpsertTopicMetadataResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore30CP_UpsertTopicMetadataResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore30CP_UpsertTopicMetadataResponseVAD14PluginRpcErrorOGMR);
      Publisher.sink(receiveCompletion:receiveValue:)();

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v76, type metadata accessor for CP_UpsertTopicMetadataRequest);
    }

    v24 = *(v21 + 8 * v31);
    ++v27;
    if (v24)
    {
      v27 = v31;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_34:
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

uint64_t closure #2 in PubSubTopic.upsertMetadata(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = a1[1];

  *a1 = v6;
  a1[1] = v5;
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation4DataVSgG_14CopresenceCore11CP_KeyValueVs5NeverOTg5017_sSS10Foundation4e5VSg14f6Core11h1_ij27VIgggr_SS3key_AD5valuetAGs5k20OIegnrzr_TR04_s14c66p45PubSubTopicC14upsertMetadata_10completionySDym39Foundation4b40VSgG_ys6ResultOyytAA0cdE5C70OGctFyAA09e31_UpserteG7RequestVzXEfU0_AA0M9_fG12VSS_AItXEfU_Tf3nnnpf_nTf1cn_n(a3);
  v9 = a1[2];

  a1[2] = v8;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in PubSubTopic.upsertMetadata(_:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  if (a5 >> 60 != 15)
  {
    v12 = a1[2];
    v13 = a1[3];
    outlined copy of Data._Representation(a4, a5);
    result = outlined consume of Data._Representation(v12, v13);
    a1[2] = a4;
    a1[3] = a5;
  }

  return result;
}

uint64_t closure #3 in PubSubTopic.upsertMetadata(_:completion:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMd, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v40 - v13);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v40 - v13, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v15 = type metadata accessor for PluginRpcError();
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    v16 = &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd;
    v17 = &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR;
    v18 = v14;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v14, type metadata accessor for PluginRpcError);
    }

    v45 = a4;
    v46 = a3;
    LODWORD(v19) = *v14;
    v20 = v14[1];
    v44 = v14[2];
    v21 = v14[3];
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, log);
    v23 = v20;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v43 = v19;
      v19 = v26;
      v42 = swift_slowAlloc();
      v50 = v21;
      v51 = v42;
      *v19 = 136315394;
      v47 = v43;
      v27 = v44;
      v48 = v20;
      v49 = v44;
      v41 = v25;
      v28 = PluginRpcStatus.description.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v51);
      v40 = v24;
      v31 = v30;

      *(v19 + 4) = v31;
      *(v19 + 12) = 2080;
      v32 = PubSubTopic.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v51);

      *(v19 + 14) = v34;
      v35 = v40;
      _os_log_impl(&dword_1AEB26000, v40, v41, "[UpsertMetadata] Failed, error=%s %s", v19, 0x16u);
      v36 = v42;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v36, -1, -1);
      v37 = v19;
      LOBYTE(v19) = v43;
      MEMORY[0x1B27120C0](v37, -1, -1);
    }

    else
    {

      v27 = v44;
    }

    *v10 = v19;
    *(v10 + 1) = v20;
    *(v10 + 2) = v27;
    *(v10 + 3) = v21;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PubSubTopicError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v39 = v20;

    v46(v10);

    v16 = &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMd;
    v17 = &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMR;
    v18 = v10;
  }

  return outlined destroy of NSObject?(v18, v16, v17);
}

uint64_t closure #4 in PubSubTopic.upsertMetadata(_:completion:)(uint64_t a1, void (*a2)(void *), void (*a3)(void, void), void *a4, uint64_t a5)
{
  v85 = a5;
  v90 = a2;
  v91 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v7 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v86 = *(v11 - 8);
  v87 = v11;
  v12 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  v89 = *(v15 - 8);
  v16 = *(v89 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v81 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMd, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v81 - v25);
  v27 = *a1;
  if (*(a1 + 8) != 1)
  {
    v89 = v24;
    goto LABEL_7;
  }

  if (v27 <= 4)
  {
    if (v27 <= 2)
    {
      v89 = v24;
      if (v27 >= 2)
      {
        v27 = 3;
      }

      goto LABEL_7;
    }

    if (v27 == 3)
    {
      v53 = *(a1 + 16);
      v52 = *(a1 + 24);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, log);

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        aBlock = v58;
        *v57 = 136315394;
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, &aBlock);

        *(v57 + 4) = v59;
        *(v57 + 12) = 2080;
        *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4[2], a4[3], &aBlock);
        _os_log_impl(&dword_1AEB26000, v55, v56, "[UpsertMetadata] Failed, unknown-topic, error=%s topic=%s", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v58, -1, -1);
        MEMORY[0x1B27120C0](v57, -1, -1);
LABEL_40:

        type metadata accessor for PubSubTopicError(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v40 = v26;
        goto LABEL_13;
      }

      goto LABEL_39;
    }

    v89 = v24;
    v27 = 5;
LABEL_7:
    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, log);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock = v34;
      *v33 = 134218498;
      *(v33 + 4) = v27;
      *(v33 + 12) = 2080;
      *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &aBlock);
      *(v33 + 22) = 2080;
      v35 = PubSubTopic.description.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &aBlock);

      *(v33 + 24) = v37;
      _os_log_impl(&dword_1AEB26000, v31, v32, "[UpsertMetadata] Failed, unexpected response-status, code=%ld error=%s %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v34, -1, -1);
      MEMORY[0x1B27120C0](v33, -1, -1);
    }

    aBlock = 0;
    v93 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    aBlock = 0x3D65646F63;
    v93 = 0xE500000000000000;
    v98 = v27;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v38);

    MEMORY[0x1B2710020](0x3D726F72726520, 0xE700000000000000);
    MEMORY[0x1B2710020](v29, v28);
    v39 = v93;
    *v26 = aBlock;
    v26[1] = v39;
    type metadata accessor for PubSubTopicError(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_12;
  }

  if (v27 > 6)
  {
    if (v27 != 7)
    {
LABEL_12:
      swift_storeEnumTagMultiPayload();
      v40 = v26;
LABEL_13:
      v90(v40);
      return outlined destroy of NSObject?(v26, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMd, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMR);
    }

    v89 = v24;
    v27 = 8;
    goto LABEL_7;
  }

  if (v27 != 5)
  {
    v61 = *(a1 + 16);
    v60 = *(a1 + 24);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, log);

    v55 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136315394;
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v60, &aBlock);

      *(v64 + 4) = v66;
      *(v64 + 12) = 2080;
      *(v64 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4[2], a4[3], &aBlock);
      _os_log_impl(&dword_1AEB26000, v55, v63, "[UpsertMetadata] Failed, topic metadata exceeded size, error=%s topic=%s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v65, -1, -1);
      MEMORY[0x1B27120C0](v64, -1, -1);
      goto LABEL_40;
    }

LABEL_39:

    goto LABEL_40;
  }

  v42 = *(a1 + 24);
  v83 = *(a1 + 16);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  v44 = __swift_project_value_buffer(v43, log);

  v84 = v44;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v81 = v45;
    v48 = v47;
    v82 = swift_slowAlloc();
    aBlock = v82;
    *v48 = 136315394;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v42, &aBlock);
    *(v48 + 12) = 2080;
    *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4[2], a4[3], &aBlock);
    v49 = v46;
    v50 = v81;
    _os_log_impl(&dword_1AEB26000, v81, v49, "[UpsertMetadata] Failed, not-authorized, error=%s topic=%s", v48, 0x16u);
    v51 = v82;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v51, -1, -1);
    MEMORY[0x1B27120C0](v48, -1, -1);
  }

  else
  {
  }

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v84 = v67;
    v71 = v70;
    aBlock = v70;
    *v69 = 134218242;
    *(v69 + 4) = a4[8];
    *(v69 + 12) = 2080;
    *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4[2], a4[3], &aBlock);
    v72 = v68;
    v73 = v84;
    _os_log_impl(&dword_1AEB26000, v84, v72, "Will retry UpsertMetadata in %f seconds topic=%s", v69, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x1B27120C0](v71, -1, -1);
    MEMORY[0x1B27120C0](v69, -1, -1);
  }

  else
  {
  }

  v74 = v91;
  static DispatchTime.now()();
  v75 = a4[8];
  + infix(_:_:)();
  v76 = *(v89 + 8);
  v89 += 8;
  v91 = v76;
  v76(v19, v15);
  v84 = *(a4 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  v77 = swift_allocObject();
  swift_weakInit();
  v78 = swift_allocObject();
  v83 = v77;
  v79 = v85;
  v78[2] = v77;
  v78[3] = v79;
  v78[4] = v90;
  v78[5] = v74;
  v96 = partial apply for closure #1 in closure #4 in PubSubTopic.upsertMetadata(_:completion:);
  v97 = v78;
  aBlock = MEMORY[0x1E69E9820];
  v93 = 1107296256;
  v94 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v95 = &block_descriptor_124_0;
  v80 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v98 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2710670](v21, v14, v10, v80);
  _Block_release(v80);
  (*(v88 + 8))(v10, v7);
  (*(v86 + 8))(v14, v87);
  v91(v21, v15);
}

uint64_t closure #1 in closure #4 in PubSubTopic.upsertMetadata(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PubSubTopic.upsertMetadata(_:completion:)(a2, a3, a4);
  }

  return result;
}

uint64_t PubSubTopic.refreshDataCryptorProvider(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, log);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), aBlock);
    _os_log_impl(&dword_1AEB26000, v13, v14, "Refreshing data-cryptor-provider topic=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  v17 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  outlined init with copy of Any(a1, v26);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  outlined init with take of Any(v26, (v18 + 24));
  aBlock[4] = partial apply for closure #1 in PubSubTopic.refreshDataCryptorProvider(with:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41_0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v7, v19);
  _Block_release(v19);
  (*(v23 + 8))(v7, v4);
  (*(v8 + 8))(v11, v22);
}

Swift::Void __swiftcall PubSubTopic.unsubscribe(force:)(Swift::Bool force)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) <= 2u)
  {
    if (one-time initialization token for log == -1)
    {
LABEL_4:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, log);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v24 = v15;
        *v14 = 67109378;
        *(v14 + 4) = force;
        *(v14 + 8) = 2080;
        *(v14 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v24);
        _os_log_impl(&dword_1AEB26000, v12, v13, "[Unsubscribe] Shutting down, forced=%{BOOL}d topic=%s", v14, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1B27120C0](v15, -1, -1);
        MEMORY[0x1B27120C0](v14, -1, -1);
      }

      LOBYTE(v24) = 3;
      PubSubTopic.updateState(state:)(&v24);
      if (force)
      {
        v16 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput);
        LOBYTE(v24) = 1;

        PassthroughSubject.send(completion:)();

        v17 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput);
        LOBYTE(v24) = 1;

        PassthroughSubject.send(completion:)();

        PubSubTopic.close(reason:description:)(5, 2u, 0xD000000000000012, 0x80000001AEE37660);
      }

      else
      {
        PubSubTopic.closeStreams(reason:)(5, 2);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, log);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v24);
    _os_log_impl(&dword_1AEB26000, v19, v20, "[Unsubscribe] Ignored, already shutting down, topic=%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1B27120C0](v22, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }
}

uint64_t PubSubTopic.PrimaryStream.description.getter(char a1)
{
  if (a1)
  {
    return 0x6873696C627550;
  }

  else
  {
    return 0x6269726373627553;
  }
}

CopresenceCore::PubSubTopic::PrimaryStream_optional __swiftcall PubSubTopic.PrimaryStream.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PubSubTopic.PrimaryStream.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CopresenceCore_PubSubTopic_PrimaryStream_publish;
  }

  else
  {
    v4.value = CopresenceCore_PubSubTopic_PrimaryStream_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t PubSubTopic.PrimaryStream.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6873696C627570;
  }

  else
  {
    return 0x6269726373627573;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PubSubTopic.PrimaryStream(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6873696C627570;
  }

  else
  {
    v4 = 0x6269726373627573;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x6873696C627570;
  }

  else
  {
    v6 = 0x6269726373627573;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PubSubTopic.PrimaryStream()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PubSubTopic.PrimaryStream()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PubSubTopic.PrimaryStream()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PubSubTopic.PrimaryStream@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PubSubTopic.PrimaryStream.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PubSubTopic.PrimaryStream(uint64_t *a1@<X8>)
{
  v2 = 0x6269726373627573;
  if (*v1)
  {
    v2 = 0x6873696C627570;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PubSubTopic.PrimaryStream()
{
  if (*v0)
  {
    result = 0x6873696C627550;
  }

  else
  {
    result = 0x6269726373627553;
  }

  *v0;
  return result;
}

void closure #1 in PubSubTopic.closeStreams(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) == 3)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, log);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v23 = v11;
        *v10 = 136315138;
        v12 = PubSubTopic.description.getter();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1AEB26000, v8, v9, "Shutdown failsafe triggered, %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x1B27120C0](v11, -1, -1);
        MEMORY[0x1B27120C0](v10, -1, -1);
      }

      PubSubTopic.close(reason:description:)(a3, a4, 0xD00000000000001BLL, 0x80000001AEE37A30);
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, log);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v23 = v19;
        *v18 = 136315138;
        v20 = PubSubTopic.description.getter();
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v23);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1AEB26000, v16, v17, "Shutdown failsafe timer fired but already shutdown, %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1B27120C0](v19, -1, -1);
        MEMORY[0x1B27120C0](v18, -1, -1);
      }
    }
  }
}

uint64_t PubSubTopic.handlePrimaryStreamClosed(stream:completedWith:)(unsigned int a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v213 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v221 = &v200 - v9;
  v214 = type metadata accessor for PluginConnectError();
  v212 = *(v214 - 8);
  v10 = v212[8];
  v11 = MEMORY[0x1EEE9AC00](v214);
  v201 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v202 = &v200 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v220 = &v200 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v200 - v17;
  v209 = type metadata accessor for DispatchWorkItemFlags();
  v208 = *(v209 - 8);
  v19 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v206 = &v200 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for DispatchQoS();
  v205 = *(v207 - 8);
  v21 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v204 = &v200 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchTime();
  v24 = *(v23 - 8);
  v216 = v23;
  v217 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v203 = &v200 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v215 = &v200 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v218 = &v200 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v219 = &v200 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v200 - v36;
  v38 = type metadata accessor for PluginRpcError();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v210 = &v200 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v211 = &v200 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v200 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = (&v200 - v49);
  MEMORY[0x1EEE9AC00](v48);
  v222 = &v200 - v51;
  v223 = v2;
  v224 = a1;
  if (a1)
  {
    v52 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
  }

  else
  {
    v52 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
  }

  v53 = *(v2 + v52);
  LOBYTE(aBlock) = 1;

  PassthroughSubject.send(completion:)();

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, v37, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v54 = *(v39 + 48);
  if (v54(v37, 1, v38) == 1)
  {
    outlined destroy of NSObject?(v37, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    v55 = v223;
    v56 = *(v223 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason);
    v57 = *(v223 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason + 8);
    v58 = v224;
    if (v57 == 255)
    {
      goto LABEL_48;
    }

    if (v57 == 2)
    {
      if (v56 <= 2)
      {
        if (v56)
        {
          if (v56 != 1)
          {
            if (v56 == 2)
            {
              aBlock = 0;
              v226 = 0xE000000000000000;
              outlined copy of PubSubTopic.ClosedReason(2, 2u);
              _StringGuts.grow(_:)(38);

              aBlock = 0xD000000000000014;
              v226 = 0x80000001AEE37B80;
              if (v58)
              {
                v59 = 0x6873696C627550;
              }

              else
              {
                v59 = 0x6269726373627553;
              }

              if (v58)
              {
                v60 = 0xE700000000000000;
              }

              else
              {
                v60 = 0xE900000000000065;
              }

              MEMORY[0x1B2710020](v59, v60);

              MEMORY[0x1B2710020](0x206D616572747320, 0xEE003D6369706F74);
              MEMORY[0x1B2710020](*(v55 + 16), *(v55 + 24));
              v61 = aBlock;
              v62 = v226;

              v57 = 2;
              goto LABEL_127;
            }

            goto LABEL_55;
          }

          aBlock = 0;
          v226 = 0xE000000000000000;
          v57 = 2;
          outlined copy of PubSubTopic.ClosedReason(1, 2u);
          _StringGuts.grow(_:)(38);

          v171 = 0x80000001AEE37BA0;
          v172 = 0xD000000000000014;
        }

        else
        {
          aBlock = 0;
          v226 = 0xE000000000000000;
          v57 = 2;
          outlined copy of PubSubTopic.ClosedReason(0, 2u);
          _StringGuts.grow(_:)(46);

          v171 = 0x80000001AEE37BC0;
          v172 = 0xD00000000000001CLL;
        }

        aBlock = v172;
        v226 = v171;
        if (v58)
        {
          v173 = 0x6873696C627550;
        }

        else
        {
          v173 = 0x6269726373627553;
        }

        if (v58)
        {
          v174 = 0xE700000000000000;
        }

        else
        {
          v174 = 0xE900000000000065;
        }

        MEMORY[0x1B2710020](v173, v174);

        v105 = 0x206D616572747320;
        v106 = 0xEE003D6369706F74;
        goto LABEL_126;
      }

      switch(v56)
      {
        case 3:
          v61 = 0xD000000000000014;
          v62 = 0x80000001AEE37B10;
          v57 = 2;
          outlined copy of PubSubTopic.ClosedReason(3, 2u);
LABEL_127:
          if (one-time initialization token for log != -1)
          {
            swift_once();
          }

          v175 = type metadata accessor for Logger();
          __swift_project_value_buffer(v175, log);

          v176 = Logger.logObject.getter();
          v177 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            v180 = v58;
            v181 = v179;
            aBlock = v179;
            *v178 = 136315650;
            if (v180)
            {
              v182 = 0x6873696C627550;
            }

            else
            {
              v182 = 0x6269726373627553;
            }

            if (v180)
            {
              v183 = 0xE700000000000000;
            }

            else
            {
              v183 = 0xE900000000000065;
            }

            v184 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v183, &aBlock);
            v224 = v57;
            v185 = v184;

            *(v178 + 4) = v185;
            *(v178 + 12) = 2080;
            v186 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &aBlock);

            *(v178 + 14) = v186;
            *(v178 + 22) = 2080;
            v187 = PubSubTopic.description.getter();
            v189 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v188, &aBlock);

            *(v178 + 24) = v189;
            v57 = v224;
            _os_log_impl(&dword_1AEB26000, v176, v177, "Service closed %s stream, reason='%s', %s", v178, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1B27120C0](v181, -1, -1);
            MEMORY[0x1B27120C0](v178, -1, -1);
          }

          else
          {
          }

          PubSubTopic.close(reason:description:)(v56, v57, v61, v62);
          outlined consume of PubSubTopic.ClosedReason(v56, v57);

        case 4:
          aBlock = 0;
          v226 = 0xE000000000000000;
          v57 = 2;
          outlined copy of PubSubTopic.ClosedReason(4, 2u);
          _StringGuts.grow(_:)(76);
          v105 = 0xD00000000000004ALL;
          v106 = 0x80000001AEE37B30;
LABEL_126:
          MEMORY[0x1B2710020](v105, v106);
          MEMORY[0x1B2710020](*(v55 + 16), *(v55 + 24));
          v61 = aBlock;
          v62 = v226;

          goto LABEL_127;
        case 5:
LABEL_48:
          aBlock = 0;
          v226 = 0xE000000000000000;
          outlined copy of PubSubTopic.ClosedReason?(v56, v57);
          _StringGuts.grow(_:)(27);
          if (v58)
          {
            v101 = 0x6873696C627550;
          }

          else
          {
            v101 = 0x6269726373627553;
          }

          if (v58)
          {
            v102 = 0xE700000000000000;
          }

          else
          {
            v102 = 0xE900000000000065;
          }

          MEMORY[0x1B2710020](v101, v102);

          MEMORY[0x1B2710020](0xD000000000000019, 0x80000001AEE37AD0);
          v61 = aBlock;
          v62 = v226;

          v57 = 2;
          v56 = 5;
          goto LABEL_127;
      }
    }

LABEL_55:
    aBlock = 0;
    v226 = 0xE000000000000000;
    outlined copy of PubSubTopic.ClosedReason(v56, v57);
    _StringGuts.grow(_:)(42);
    MEMORY[0x1B2710020](0x7463657078656E55, 0xEC000000202C6465);
    if (v58)
    {
      v103 = 0x6873696C627550;
    }

    else
    {
      v103 = 0x6269726373627553;
    }

    if (v58)
    {
      v104 = 0xE700000000000000;
    }

    else
    {
      v104 = 0xE900000000000065;
    }

    MEMORY[0x1B2710020](v103, v104);

    MEMORY[0x1B2710020](0xD000000000000010, 0x80000001AEE37AF0);
    v231 = v56;
    LOBYTE(v232) = v57;
    _print_unlocked<A, B>(_:_:)();
    v105 = 0x3D6369706F74202CLL;
    v106 = 0xE800000000000000;
    goto LABEL_126;
  }

  v63 = v222;
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v37, v222, type metadata accessor for PluginRpcError);
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v63, v50, type metadata accessor for PluginRpcError);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v50, v18, type metadata accessor for PluginConnectError);
    v82 = v223;
    if (*(v223 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) != 4)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for Logger();
      __swift_project_value_buffer(v83, log);
      v84 = v220;
      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v18, v220, type metadata accessor for PluginConnectError);

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        aBlock = v88;
        *v87 = 136315906;
        if (v224)
        {
          v89 = 0x6873696C627550;
        }

        else
        {
          v89 = 0x6269726373627553;
        }

        if (v224)
        {
          v90 = 0xE700000000000000;
        }

        else
        {
          v90 = 0xE900000000000065;
        }

        v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &aBlock);

        *(v87 + 4) = v91;
        *(v87 + 12) = 2080;
        v92 = v221;
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v84, v221, type metadata accessor for PluginConnectError);
        v93 = v212;
        v94 = v214;
        (v212[7])(v92, 0, 1, v214);
        v95 = v92;
        v96 = v213;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v95, v213, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
        if ((v93[6])(v96, 1, v94) == 1)
        {
          v97 = 7104878;
          v98 = 0xE300000000000000;
        }

        else
        {
          v147 = v202;
          _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v96, v202, type metadata accessor for PluginConnectError);
          _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v147, v201, type metadata accessor for PluginConnectError);
          v97 = String.init<A>(reflecting:)();
          v98 = v148;
          outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v147, type metadata accessor for PluginConnectError);
        }

        outlined destroy of NSObject?(v221, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v84, type metadata accessor for PluginConnectError);
        v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &aBlock);

        *(v87 + 14) = v149;
        *(v87 + 22) = 2080;
        PubSubTopic.seqNumWatermark.getter();
        v150 = Dictionary.description.getter();
        v152 = v151;

        v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v152, &aBlock);

        *(v87 + 24) = v153;
        *(v87 + 32) = 2080;
        v154 = PubSubTopic.description.getter();
        v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v155, &aBlock);

        *(v87 + 34) = v156;
        _os_log_impl(&dword_1AEB26000, v85, v86, "%s stream failed with connection error, error=%s seqNumWatermark=%s %s", v87, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v88, -1, -1);
        MEMORY[0x1B27120C0](v87, -1, -1);
      }

      else
      {

        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v84, type metadata accessor for PluginConnectError);
      }
    }

    v157 = PubSubTopic.seqNumWatermark.getter();
    aBlock = 0;
    v226 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v158 = v224;
    if (v224)
    {
      v159 = 0x6873696C627550;
    }

    else
    {
      v159 = 0x6269726373627553;
    }

    if (v224)
    {
      v160 = 0xE700000000000000;
    }

    else
    {
      v160 = 0xE900000000000065;
    }

    MEMORY[0x1B2710020](v159, v160);

    MEMORY[0x1B2710020](0xD000000000000024, 0x80000001AEE37BE0);
    v162 = aBlock;
    v161 = v226;
    if (v158)
    {
      v163 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
    }

    else
    {
      v163 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
    }

    v164 = *(v82 + v163);
    LOBYTE(aBlock) = 1;

    PassthroughSubject.send(completion:)();

    PubSubTopic.close(reason:description:)(v157, 0, v162, v161);

    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v18, type metadata accessor for PluginConnectError);
    return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v222, type metadata accessor for PluginRpcError);
  }

  LODWORD(v220) = *v50;
  v64 = v50[2];
  v221 = v50[1];
  v214 = v64;
  v65 = v50[3];
  v66 = &OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt;
  v67 = v224;
  if ((v224 & 1) == 0)
  {
    v66 = &OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt;
  }

  v68 = *(v223 + *v66);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  v70 = __swift_project_value_buffer(v69, log);
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v222, v47, type metadata accessor for PluginRpcError);
  v213 = v70;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();
  v73 = os_log_type_enabled(v71, v72);
  v202 = v68;
  if (v73)
  {
    LODWORD(v201) = v72;
    v212 = v65;
    v74 = swift_slowAlloc();
    v200 = swift_slowAlloc();
    aBlock = v200;
    *v74 = 136315650;
    if (v67)
    {
      v75 = 0x6873696C627550;
    }

    else
    {
      v75 = 0x6269726373627553;
    }

    if (v67)
    {
      v76 = 0xE700000000000000;
    }

    else
    {
      v76 = 0xE900000000000065;
    }

    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &aBlock);

    *(v74 + 4) = v77;
    *(v74 + 12) = 2048;
    *(v74 + 14) = v68;
    *(v74 + 22) = 2080;
    v78 = v219;
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v47, v219, type metadata accessor for PluginRpcError);
    (*(v39 + 56))(v78, 0, 1, v38);
    v79 = v218;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v78, v218, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
    if (v54(v79, 1, v38) == 1)
    {
      v80 = 7104878;
      v81 = 0xE300000000000000;
    }

    else
    {
      v107 = v211;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v79, v211, type metadata accessor for PluginRpcError);
      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v107, v210, type metadata accessor for PluginRpcError);
      v80 = String.init<A>(reflecting:)();
      v81 = v108;
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v107, type metadata accessor for PluginRpcError);
    }

    v99 = v223;
    v100 = v221;
    outlined destroy of NSObject?(v78, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v47, type metadata accessor for PluginRpcError);
    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &aBlock);

    *(v74 + 24) = v109;
    _os_log_impl(&dword_1AEB26000, v71, v201, "%s stream attempt #%ld failed, error=%s", v74, 0x20u);
    v110 = v200;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v110, -1, -1);
    MEMORY[0x1B27120C0](v74, -1, -1);

    v65 = v212;
  }

  else
  {

    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v47, type metadata accessor for PluginRpcError);
    v99 = v223;
    v100 = v221;
  }

  if (*(v99 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) > 2u)
  {
    aBlock = 0;
    v226 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v231 = aBlock;
    v232 = v226;
    v124 = v224;
    if (v224)
    {
      v125 = 0x6873696C627550;
    }

    else
    {
      v125 = 0x6269726373627553;
    }

    if (v224)
    {
      v126 = 0xE700000000000000;
    }

    else
    {
      v126 = 0xE900000000000065;
    }

    MEMORY[0x1B2710020](v125, v126);

    MEMORY[0x1B2710020](0xD000000000000028, 0x80000001AEE37C10);
    LOBYTE(aBlock) = v220;
    v226 = v100;
    v227 = v214;
    v228 = v65;
    v127 = PluginRpcStatus.description.getter();
    MEMORY[0x1B2710020](v127);

    MEMORY[0x1B2710020](39, 0xE100000000000000);
    v129 = v231;
    v128 = v232;
    if (v124)
    {
      v130 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
    }

    else
    {
      v130 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
    }

    v142 = *(v99 + v130);
    LOBYTE(aBlock) = 1;

    PassthroughSubject.send(completion:)();

    v143 = 5;
    goto LABEL_90;
  }

  if (v220 == 14)
  {

    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      aBlock = v114;
      *v113 = 136315394;
      PubSubTopic.seqNumWatermark.getter();
      v115 = Dictionary.description.getter();
      v117 = v116;

      v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v117, &aBlock);

      *(v113 + 4) = v118;
      *(v113 + 12) = 2080;
      v119 = PubSubTopic.description.getter();
      v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, &aBlock);

      *(v113 + 14) = v121;
      _os_log_impl(&dword_1AEB26000, v111, v112, "Server bouncing, seqNum-watermark=%s %s", v113, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v114, -1, -1);
      MEMORY[0x1B27120C0](v113, -1, -1);
    }

    v122 = PubSubTopic.seqNumWatermark.getter();
    if (v224)
    {
      v123 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
    }

    else
    {
      v123 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
    }

    v165 = *(v99 + v123);
    LOBYTE(aBlock) = 1;

    PassthroughSubject.send(completion:)();

    v145 = 0x6220726576726553;
    v146 = 0xEF676E69636E756FLL;
    v143 = v122;
    v144 = 1;
    goto LABEL_105;
  }

  if (v202 >= *(v99 + 56))
  {
    aBlock = 0;
    v226 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    v167 = v224;
    if (v224)
    {
      v168 = 0x6873696C627550;
    }

    else
    {
      v168 = 0x6269726373627553;
    }

    if (v224)
    {
      v169 = 0xE700000000000000;
    }

    else
    {
      v169 = 0xE900000000000065;
    }

    MEMORY[0x1B2710020](v168, v169);

    MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE37C40);
    v129 = aBlock;
    v128 = v226;
    if (v167)
    {
      v170 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
    }

    else
    {
      v170 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
    }

    v199 = *(v99 + v170);
    LOBYTE(aBlock) = 1;

    PassthroughSubject.send(completion:)();

    v143 = 0;
LABEL_90:
    v144 = 2;
    v145 = v129;
    v146 = v128;
LABEL_105:
    PubSubTopic.close(reason:description:)(v143, v144, v145, v146);

    return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v222, type metadata accessor for PluginRpcError);
  }

  v212 = v65;
  v131 = v203;
  static DispatchTime.now()();
  v132 = *(v99 + 64);
  + infix(_:_:)();
  v133 = *(v217 + 8);
  v217 += 8;
  v133(v131, v216);

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    aBlock = v137;
    *v136 = 136315394;
    v138 = v224;
    if (v224)
    {
      v139 = 0x6873696C627550;
    }

    else
    {
      v139 = 0x6269726373627553;
    }

    if (v224)
    {
      v140 = 0xE700000000000000;
    }

    else
    {
      v140 = 0xE900000000000065;
    }

    v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, &aBlock);

    *(v136 + 4) = v141;
    *(v136 + 12) = 2048;
    *(v136 + 14) = v132;
    _os_log_impl(&dword_1AEB26000, v134, v135, "Will retry %s stream in %f seconds", v136, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v137);
    MEMORY[0x1B27120C0](v137, -1, -1);
    MEMORY[0x1B27120C0](v136, -1, -1);
  }

  else
  {

    v138 = v224;
  }

  v190 = &OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState;
  if ((v138 & 1) == 0)
  {
    v190 = &OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState;
  }

  *(v99 + *v190) = 1;
  v191 = *(v99 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  v192 = swift_allocObject();
  swift_weakInit();
  v193 = swift_allocObject();
  *(v193 + 16) = v192;
  *(v193 + 24) = v138 & 1;
  v229 = partial apply for closure #1 in PubSubTopic.handlePrimaryStreamClosed(stream:completedWith:);
  v230 = v193;
  aBlock = MEMORY[0x1E69E9820];
  v226 = 1107296256;
  v227 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v228 = &block_descriptor_142_0;
  v194 = _Block_copy(&aBlock);

  v195 = v204;
  static DispatchQoS.unspecified.getter();
  v231 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v196 = v206;
  v197 = v209;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v198 = v215;
  MEMORY[0x1B2710670](v215, v195, v196, v194);
  _Block_release(v194);

  (*(v208 + 8))(v196, v197);
  (*(v205 + 8))(v195, v207);
  v133(v198, v216);
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v222, type metadata accessor for PluginRpcError);
}

uint64_t closure #1 in PubSubTopic.handlePrimaryStreamClosed(stream:completedWith:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v4 = *(result + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt);
      v5 = __OFADD__(v4, 1);
      v6 = v4 + 1;
      if (!v5)
      {
        *(result + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = v6;
        PubSubTopic.setupPublishStream()();
      }

      __break(1u);
    }

    else
    {
      v7 = *(result + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt);
      v5 = __OFADD__(v7, 1);
      v8 = v7 + 1;
      if (!v5)
      {
        *(result + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = v8;
        PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(0, 0);
      }
    }

    __break(1u);
  }

  return result;
}

void closure #2 in PubSubTopic.setupPublishStream()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v124 = &v122 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v122 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMR);
  v125 = *(v11 - 8);
  v126 = v11;
  v12 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v122 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMR);
  isa = v14[-1].isa;
  v129 = v14;
  v15 = isa[8];
  MEMORY[0x1EEE9AC00](v14);
  v127 = &v122 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v122 - v19;
  v21 = type metadata accessor for CP_SequenceNumber(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for CP_PublishResponse(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  if (*(a1 + 8) != 1)
  {
    goto LABEL_22;
  }

  if (v30 <= 3)
  {
    if (v30 > 1)
    {
      if (v30 != 2)
      {
        *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v67 = type metadata accessor for Logger();
        __swift_project_value_buffer(v67, log);

        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v131[0] = v71;
          *v70 = 136315138;
          v72 = PubSubTopic.description.getter();
          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v131);

          *(v70 + 4) = v74;
          _os_log_impl(&dword_1AEB26000, v68, v69, "[Publish] Failed, unknown-topic, %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v71);
          MEMORY[0x1B27120C0](v71, -1, -1);
          MEMORY[0x1B27120C0](v70, -1, -1);
        }

        PubSubTopic.closeStreams(reason:)(2, 2);
        return;
      }

      *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
      if (one-time initialization token for log == -1)
      {
LABEL_18:
        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, log);

        v129 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v129, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v131[0] = v44;
          *v43 = 136315138;
          v45 = PubSubTopic.description.getter();
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v131);

          *(v43 + 4) = v47;
          v48 = "[Publish] Rejected, upcoming server-bounce, %s";
LABEL_51:
          _os_log_impl(&dword_1AEB26000, v129, v42, v48, v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v44);
          MEMORY[0x1B27120C0](v44, -1, -1);
          v59 = v43;
          goto LABEL_26;
        }

LABEL_28:
        v60 = v129;

        return;
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_22;
      }

      *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
      dequeue #1 () in closure #2 in PubSubTopic.setupPublishStream()(a1, a2);
      v32 = *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked);
      v33 = __CFADD__(v32, 1);
      v34 = v32 + 1;
      if (!v33)
      {
        *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = v34;
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, log);
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a1, v29, type metadata accessor for CP_PublishResponse);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v36, v37))
        {
          LODWORD(v129) = v37;
          v38 = swift_slowAlloc();
          isa = swift_slowAlloc();
          v131[0] = isa;
          *v38 = 134218242;
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v29[*(v26 + 28)], v20, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
          v39 = *(v22 + 48);
          if (v39(v20, 1, v21) == 1)
          {
            *v25 = 0;
            v25[1] = 0;
            v40 = v25 + *(v21 + 24);
            UnknownStorage.init()();
            if (v39(v20, 1, v21) != 1)
            {
              outlined destroy of NSObject?(v20, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
            }
          }

          else
          {
            _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v20, v25, type metadata accessor for CP_SequenceNumber);
          }

          v108 = v25[1];
          outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v25, type metadata accessor for CP_SequenceNumber);
          outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v29, type metadata accessor for CP_PublishResponse);
          *(v38 + 4) = v108;
          *(v38 + 12) = 2080;
          v109 = PubSubTopic.description.getter();
          v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, v131);

          *(v38 + 14) = v111;
          _os_log_impl(&dword_1AEB26000, v36, v129, "[Publish] Ignored, responseSeqNum=%llu %s", v38, 0x16u);
          v112 = isa;
          __swift_destroy_boxed_opaque_existential_1Tm(isa);
          MEMORY[0x1B27120C0](v112, -1, -1);
          MEMORY[0x1B27120C0](v38, -1, -1);
        }

        else
        {
          outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v29, type metadata accessor for CP_PublishResponse);
        }

        return;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_18;
  }

  v31 = a2;
  if (v30 <= 5)
  {
    if (v30 == 4)
    {
      v30 = 5;
      goto LABEL_22;
    }

    v30 = *(a1 + 16);
    v26 = *(a1 + 24);
    *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
    if (one-time initialization token for log == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_71;
  }

  if (v30 == 6)
  {
    v62 = *(a1 + 16);
    v61 = *(a1 + 24);
    *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v63 = v131[0];
    if (v131[0] >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_33:
        if ((v63 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x1B2710B10](0, v63);
        }

        else
        {
          if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v64 = *(v63 + 32);
        }

        swift_beginAccess();
        v65 = *(v64 + 56);
        v66 = *(v64 + 64);

        if (v66 != 1)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }
    }

    else if (*((v131[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

LABEL_61:
    v65 = 0;
LABEL_62:
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    __swift_project_value_buffer(v113, log);

    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v130 = v117;
      *v116 = 134218498;
      *(v116 + 4) = v65;
      *(v116 + 12) = 2080;
      v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v61, &v130);

      *(v116 + 14) = v118;
      *(v116 + 22) = 2080;
      v119 = PubSubTopic.description.getter();
      v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, &v130);

      *(v116 + 24) = v121;
      _os_log_impl(&dword_1AEB26000, v114, v115, "[Publish] Failed, quota-exceeded, seqNumRejected=%llu error=%s %s", v116, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v117, -1, -1);
      MEMORY[0x1B27120C0](v116, -1, -1);
    }

    else
    {
    }

    PubSubTopic.closeStreams(reason:)(3, 2);
    return;
  }

  if (v30 == 7)
  {
    v30 = 8;
LABEL_22:
    v50 = *(a1 + 16);
    v49 = *(a1 + 24);
    *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, log);

    v129 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v129, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v131[0] = v54;
      *v53 = 134218498;
      *(v53 + 4) = v30;
      *(v53 + 12) = 2080;
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, v131);

      *(v53 + 14) = v55;
      *(v53 + 22) = 2080;
      v56 = PubSubTopic.description.getter();
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v131);

      *(v53 + 24) = v58;
      _os_log_impl(&dword_1AEB26000, v129, v52, "[Publish] Failed, unexpected response-status, code=%ld error=%s %s", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v54, -1, -1);
      v59 = v53;
LABEL_26:
      MEMORY[0x1B27120C0](v59, -1, -1);

      return;
    }

    goto LABEL_28;
  }

  *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
  dequeue #1 () in closure #2 in PubSubTopic.setupPublishStream()(a1, a2);
  v75 = *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked);
  v33 = __CFADD__(v75, 1);
  v76 = v75 + 1;
  if (!v33)
  {
    *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = v76;
    return;
  }

  __break(1u);
LABEL_71:
  swift_once();
LABEL_46:
  v77 = type metadata accessor for Logger();
  __swift_project_value_buffer(v77, log);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v131[0] = v81;
    *v80 = 136315394;
    *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v26, v131);
    *(v80 + 12) = 2080;
    v82 = PubSubTopic.description.getter();
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v131);

    *(v80 + 14) = v84;
    _os_log_impl(&dword_1AEB26000, v78, v79, "[Publish] Failed, not-authorized, error=%s %s", v80, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v81, -1, -1);
    v85 = v80;
    v31 = a2;
    MEMORY[0x1B27120C0](v85, -1, -1);
  }

  if (*(v31 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) == 1)
  {

    v129 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v129, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v131[0] = v44;
      *v43 = 136315138;
      v86 = PubSubTopic.description.getter();
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v131);

      *(v43 + 4) = v88;
      v48 = "[Publish] Already retrying subscribe stream, %s";
      goto LABEL_51;
    }

    goto LABEL_28;
  }

  *(v31 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 1;

  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 134217984;
    *(v91 + 4) = v31[8];
    _os_log_impl(&dword_1AEB26000, v89, v90, "Will retry Subscribe stream in %f seconds", v91, 0xCu);
    MEMORY[0x1B27120C0](v91, -1, -1);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer, 0x1E695DFF0);
  v92 = v31[8];
  v93 = [objc_opt_self() mainRunLoop];
  v94 = *MEMORY[0x1E695D918];
  v95 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v95 - 8) + 56))(v10, 1, 1, v95);
  v96 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of NSObject?(v10, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v131[0] = v96;
  type metadata accessor for NSTimer.TimerPublisher();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x1E6969F70]);
  v97 = ConnectablePublisher.autoconnect()();

  v130 = *(v31 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  v98 = v130;
  v131[0] = v97;
  v99 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v100 = v124;
  (*(*(v99 - 8) + 56))(v124, 1, 1, v99);
  v101 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v102 = v123;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v100, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Autoconnect<NSTimer.TimerPublisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMR);
  v103 = v126;
  v104 = v127;
  Publisher.first()();
  (*(v125 + 8))(v102, v103);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.ReceiveOn<Publishers.Autoconnect<NSTimer.TimerPublisher>, OS_dispatch_queue>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMR);
  v105 = v129;
  v106 = Publisher<>.sink(receiveValue:)();

  (isa[1])(v104, v105);
  v107 = *(v31 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable);
  *(v31 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable) = v106;
}

uint64_t dequeue #1 () in closure #2 in PubSubTopic.setupPublishStream()(uint64_t a1, void *a2)
{
  v110 = a2;
  v3 = type metadata accessor for CP_PublishResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v103 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v108 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v99 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v106 = v13;
  v107 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v99 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v100 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v99 - v24;
  v26 = type metadata accessor for CP_SequenceNumber(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v99 = (&v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v99 - v31);
  v101 = v3;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v3 + 28), v25, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v33 = *(v27 + 48);
  v34 = v33(v25, 1, v26);
  v109 = v32;
  if (v34 == 1)
  {
    *v32 = 0;
    v32[1] = 0;
    v35 = v32 + *(v26 + 24);
    UnknownStorage.init()();
    if (v33(v25, 1, v26) != 1)
    {
      outlined destroy of NSObject?(v25, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v25, v32, type metadata accessor for CP_SequenceNumber);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v113[0] >> 62))
  {
    v36 = *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v36)
    {
      goto LABEL_7;
    }

LABEL_40:
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, log);
    v83 = a1;
    v84 = v103;
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v83, v103, type metadata accessor for CP_PublishResponse);

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = v84;
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v113[0] = v89;
      *v88 = 134218242;
      v90 = v87 + *(v101 + 28);
      v91 = v100;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v90, v100, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
      if (v33(v91, 1, v26) == 1)
      {
        v92 = v99;
        *v99 = 0;
        v92[1] = 0;
        v93 = v92 + *(v26 + 24);
        UnknownStorage.init()();
        v94 = v92;
        if (v33(v91, 1, v26) != 1)
        {
          outlined destroy of NSObject?(v91, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
        }
      }

      else
      {
        v94 = v99;
        _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v91, v99, type metadata accessor for CP_SequenceNumber);
      }

      v95 = v94[1];
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v94, type metadata accessor for CP_SequenceNumber);
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v103, type metadata accessor for CP_PublishResponse);
      *(v88 + 4) = v95;
      *(v88 + 12) = 2080;
      v96 = PubSubTopic.description.getter();
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, v113);

      *(v88 + 14) = v98;
      _os_log_impl(&dword_1AEB26000, v85, v86, "[Publish] Unexpected, queue empty, seqNumAck=%llu %s", v88, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x1B27120C0](v89, -1, -1);
      MEMORY[0x1B27120C0](v88, -1, -1);

      v80 = v109;
    }

    else
    {
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v84, type metadata accessor for CP_PublishResponse);

      v80 = v109;
    }

    return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v80, type metadata accessor for CP_SequenceNumber);
  }

  v81 = __CocoaSet.count.getter();

  if (!v81)
  {
    goto LABEL_40;
  }

LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = static Published.subscript.modify();
  specialized RangeReplaceableCollection.removeFirst()();
  v39 = v38;
  v37(v113, 0);

  v40 = OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v39 + v40, v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v42 = v106;
  v41 = v107;
  if ((*(v107 + 48))(v12, 1, v106) == 1)
  {
    outlined destroy of NSObject?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v44 = v109;
    v43 = v110;
    goto LABEL_18;
  }

  v45 = v102;
  (*(v41 + 32))(v102, v12, v42);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v47 = v46;
  v48 = *(v41 + 8);
  result = v48(v18, v42);
  v44 = v109;
  if (v47 <= 0.0)
  {
    v51 = 0;
    v43 = v110;
    goto LABEL_15;
  }

  v50 = v47 * 1000.0;
  v43 = v110;
  if (COERCE_UNSIGNED_INT64(v47 * 1000.0) >> 52 > 0x7FE)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v50 <= -1.0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v50 >= 1.84467441e19)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v51 = v50;
LABEL_15:
  v52 = *(v43 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter);
  if (v52)
  {
    (*(*v52 + 152))(v51, *(v43 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag), *(v43 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag + 8), v43[2], v43[3]);
  }

  v48(v45, v42);
LABEL_18:
  v53 = v108;
  if (one-time initialization token for messenger != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v54, static Signposts.messenger);
  v55 = *(v39 + 16);
  v56 = *(v39 + 24);
  outlined copy of Data._Representation(v55, v56);
  if (OSSignposter.isEnabled.getter())
  {
    _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5(v55, v56, v53);
  }

  else
  {
    OSSignpostID.init(_:)();
    outlined consume of Data._Representation(v55, v56);
  }

  lazy protocol witness table accessor for type Int and conformance Int();

  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v57);

  v58 = OSSignposter.logHandle.getter();
  v59 = static os_signpost_type_t.event.getter();

  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    (*(v104 + 8))(v53, v105);
LABEL_38:
    v80 = v44;
    return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v80, type metadata accessor for CP_SequenceNumber);
  }

  v60 = swift_slowAlloc();
  result = swift_slowAlloc();
  v61 = result;
  v112 = result;
  *v60 = 134218754;
  v62 = *(v39 + 16);
  v63 = *(v39 + 24);
  v64 = v63 >> 62;
  LODWORD(v110) = v59;
  if ((v63 >> 62) > 1)
  {
    if (v64 != 2)
    {
      v65 = v44;
      v62 = 0;
      goto LABEL_34;
    }

    v68 = v62 + 16;
    v66 = *(v62 + 16);
    v67 = *(v68 + 8);
    v69 = __OFSUB__(v67, v66);
    v62 = v67 - v66;
    if (!v69)
    {
      v65 = v44;
      goto LABEL_34;
    }

    goto LABEL_53;
  }

  if (!v64)
  {
    v65 = v44;
    v62 = BYTE6(v63);
LABEL_34:
    *(v60 + 4) = v62;
    *(v60 + 12) = 2080;
    *(v60 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43[2], v43[3], &v112);
    *(v60 + 22) = 2048;
    v71 = v43[15];
    v70 = v43[16];
    __swift_project_boxed_opaque_existential_1(v43 + 12, v71);
    *(v60 + 24) = (*(v70 + 16))(v71, v70);

    *(v60 + 32) = 2080;
    swift_beginAccess();
    if (*(v39 + 64))
    {
      v72 = 0xE300000000000000;
      v73 = 7104878;
    }

    else
    {
      v111 = *(v39 + 56);
      v73 = String.init<A>(reflecting:)();
      v72 = v74;
    }

    v75 = v105;
    v44 = v65;
    v76 = v110;
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v72, &v112);

    *(v60 + 34) = v77;
    v78 = v108;
    v79 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1AEB26000, v58, v76, v79, "plugin-ack-received", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu seqNum=%s", v60, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v61, -1, -1);
    MEMORY[0x1B27120C0](v60, -1, -1);

    (*(v104 + 8))(v78, v75);
    goto LABEL_38;
  }

  v69 = __OFSUB__(HIDWORD(v62), v62);
  LODWORD(v62) = HIDWORD(v62) - v62;
  if (!v69)
  {
    v65 = v44;
    v62 = v62;
    goto LABEL_34;
  }

LABEL_54:
  __break(1u);
  return result;
}

void closure #1 in closure #2 in PubSubTopic.setupPublishStream()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) == 2)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, log);

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v9 = v5;
        *v4 = 136315138;
        v6 = PubSubTopic.description.getter();
        v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v9);

        *(v4 + 4) = v8;
        _os_log_impl(&dword_1AEB26000, v2, v3, "Skipping Subscribe stream setup, already ready, %s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v5);
        MEMORY[0x1B27120C0](v5, -1, -1);
        MEMORY[0x1B27120C0](v4, -1, -1);
      }
    }

    else
    {
      PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(0, 0);
    }
  }
}

uint64_t closure #1 in PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v11 - v6, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v8 = type metadata accessor for PluginRpcError();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  result = outlined destroy of NSObject?(v7, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  if (v9 == 1 && *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) == 1 && *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) <= 2u)
  {
    *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 3;
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 3;
    return PubSubTopic.handlePrimaryStreamClosed(stream:completedWith:)(0, a1);
  }

  return result;
}

uint64_t closure #2 in PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CP_Record(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - v16;
  v18 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v31 - v24;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v17, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return outlined destroy of NSObject?(v17, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v17, v25, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v25, v23, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v23, v9, type metadata accessor for CP_Record);
      PubSubTopic.processRecord(_:)(v9);
      v28 = type metadata accessor for CP_Record;
      v29 = v9;
    }

    else
    {
      v30 = v31;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v23, v31, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
      PubSubTopic.processTopicUpdate(_:)(v30);
      v28 = type metadata accessor for CP_SubscribeResponse.TopicUpdate;
      v29 = v30;
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v23, v13, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    *(v32 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight) = 0;
    PubSubTopic.processInitializeAck(_:)(v13);
    v28 = type metadata accessor for CP_SubscribeResponse.InitializeAck;
    v29 = v13;
  }

  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v29, v28);
  return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v25, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
}

void PubSubTopic.processInitializeAck(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v309 = &v294 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v307 = &v294 - v9;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMR);
  v310 = *(v311 - 8);
  v10 = *(v310 + 64);
  MEMORY[0x1EEE9AC00](v311);
  v308 = &v294 - v11;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMR);
  v313 = *(v314 - 8);
  v12 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v314);
  v312 = &v294 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtSgMd, &_ss6UInt64V_10Foundation4UUIDVtSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v330 = &v294 - v16;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
  v329 = *(v332 - 8);
  v17 = *(v329 + 64);
  v18 = MEMORY[0x1EEE9AC00](v332);
  v331 = &v294 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v327 = &v294 - v20;
  v21 = type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v321 = *(v21 - 8);
  v22 = *(v321 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v322 = &v294 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v328 = &v294 - v25;
  v318 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v324 = *(v318 - 8);
  v26 = *(v324 + 64);
  v27 = MEMORY[0x1EEE9AC00](v318);
  MEMORY[0x1EEE9AC00](v27);
  v319 = (&v294 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v303 = &v294 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v317 = &v294 - v33;
  v316 = type metadata accessor for CP_SequenceNumber(0);
  v323 = *(v316 - 8);
  v34 = *(v323 + 64);
  v35 = MEMORY[0x1EEE9AC00](v316);
  v298 = &v294 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v302 = &v294 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v300 = (&v294 - v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v301 = &v294 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v299 = &v294 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v315 = &v294 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v304 = &v294 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v335 = &v294 - v51;
  v325 = type metadata accessor for Date();
  *&v336 = *(v325 - 8);
  v52 = *(v336 + 64);
  v53 = MEMORY[0x1EEE9AC00](v325);
  v305 = &v294 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v320 = &v294 - v55;
  v333 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v56 = *(*(v333 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v333);
  v334 = (&v294 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v294 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v294 - v62;
  v64 = type metadata accessor for DispatchPredicate();
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v68 = (&v294 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v68 = v69;
  (*(v65 + 104))(v68, *MEMORY[0x1E69E8020], v64);
  v306 = v69;
  LOBYTE(v69) = _dispatchPreconditionTest(_:)();
  (*(v65 + 8))(v68, v64);
  if (v69)
  {
    v297 = &v294 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (one-time initialization token for log == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v70 = type metadata accessor for Logger();
  v71 = __swift_project_value_buffer(v70, log);
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a1, v63, type metadata accessor for CP_SubscribeResponse.InitializeAck);

  v72 = Logger.logObject.getter();
  KeyPath = static os_log_type_t.default.getter();

  v74 = os_log_type_enabled(v72, KeyPath);
  v296 = v26;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v326 = a1;
    v76 = v75;
    v77 = v71;
    v78 = v2;
    v79 = swift_slowAlloc();
    v338[0] = v79;
    *v76 = 136315394;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck and conformance CP_SubscribeResponse.InitializeAck, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    v80 = Message.debugDescription.getter();
    v82 = v81;
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v63, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v338);

    *(v76 + 4) = v83;
    *(v76 + 12) = 2080;
    *(v76 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78[2], v78[3], v338);
    _os_log_impl(&dword_1AEB26000, v72, KeyPath, "[Subscribe] Received InitializeAck response=%s topic=%s", v76, 0x16u);
    swift_arrayDestroy();
    v84 = v79;
    v2 = v78;
    v71 = v77;
    MEMORY[0x1B27120C0](v84, -1, -1);
    v85 = v76;
    a1 = v326;
    MEMORY[0x1B27120C0](v85, -1, -1);
  }

  else
  {

    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v63, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  }

  v86 = v335;
  v87 = v336;
  if (*(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) > 2u)
  {

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v101, v102))
    {
LABEL_26:

      return;
    }

    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v338[0] = v104;
    *v103 = 136315138;
    v105 = PubSubTopic.description.getter();
    v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, v338);

    *(v103 + 4) = v107;
    v108 = "[Subscribe] Ignoring InitializeAck, unsubscribed while initializing %s";
    goto LABEL_19;
  }

  v88 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing);
  *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing) = 0;
  if (*(a1 + 8) != 1)
  {
    goto LABEL_21;
  }

  v89 = *a1;
  if (*a1 <= 3)
  {
    if (*a1 >= 3uLL)
    {

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v338[0] = v127;
        *v126 = 136315138;
        v128 = PubSubTopic.description.getter();
        v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, v338);

        *(v126 + 4) = v130;
        _os_log_impl(&dword_1AEB26000, v124, v125, "[Subscribe] InitializeAck failed, topic not found, %s", v126, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v127);
        MEMORY[0x1B27120C0](v127, -1, -1);
        MEMORY[0x1B27120C0](v126, -1, -1);
      }

      v131 = 2;
      goto LABEL_51;
    }

    goto LABEL_21;
  }

  if ((v89 - 4) < 3)
  {
LABEL_21:
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a1, v61, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    v110 = v334;
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a1, v334, type metadata accessor for CP_SubscribeResponse.InitializeAck);

    v101 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v101, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v338[0] = v113;
      *v112 = 134218498;
      v114 = *v61;
      if (v61[8] == 1)
      {
        v114 = qword_1AEE1B9C0[v114];
      }

      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v61, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      *(v112 + 4) = v114;
      *(v112 + 12) = 2080;
      v115 = v334;
      v116 = v334[2];
      v117 = v334[3];

      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v115, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v338);

      *(v112 + 14) = v118;
      *(v112 + 22) = 2080;
      v119 = PubSubTopic.description.getter();
      v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, v338);

      *(v112 + 24) = v121;
      _os_log_impl(&dword_1AEB26000, v101, v111, "[Subscribe] InitializeAck failed, unexpected response-status, code=%ld error=%s %s", v112, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v113, -1, -1);
      v109 = v112;
      goto LABEL_25;
    }

    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v61, type metadata accessor for CP_SubscribeResponse.InitializeAck);

    v122 = v110;
    v123 = type metadata accessor for CP_SubscribeResponse.InitializeAck;
    goto LABEL_28;
  }

  if (v89 == 7)
  {
    v90 = *(a1 + 48);
    v91 = *(v90 + 16);
    if (v91)
    {
      LODWORD(v335) = v88;
      v295 = v2;
      v338[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91, 0);
      v92 = v338[0];
      v93 = *(v321 + 80);
      *&v336 = v90;
      v94 = v90 + ((v93 + 32) & ~v93);
      v95 = *(v321 + 72);
      v96 = v94;
      v97 = v322;
      do
      {
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v96, v97, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
        v98 = *v97;
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v97, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
        v338[0] = v92;
        v100 = *(v92 + 16);
        v99 = *(v92 + 24);
        if (v100 >= v99 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1);
          v97 = v322;
          v92 = v338[0];
        }

        *(v92 + 16) = v100 + 1;
        *(v92 + 8 * v100 + 32) = v98;
        v96 += v95;
        --v91;
      }

      while (v91);
      v322 = v71;
      v136 = *(v336 + 16);
      if (!v136)
      {
        v141 = MEMORY[0x1E69E7CC0];
LABEL_58:
        if (v141[2])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCys6UInt64V10Foundation4UUIDVGMR);
          v160 = static _DictionaryStorage.allocate(capacity:)();
        }

        else
        {
          v160 = MEMORY[0x1E69E7CC8];
        }

        v161 = v295;
        v338[0] = v160;

        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v162, 1, v338);

        v163 = Logger.logObject.getter();
        v164 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          v338[0] = v166;
          *v165 = 136315138;
          type metadata accessor for UUID();
          v167 = Dictionary.description.getter();
          v169 = v168;

          v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v169, v338);

          *(v165 + 4) = v170;
          _os_log_impl(&dword_1AEB26000, v163, v164, "[Subscribe] Missing encryptionIDs publisherIDToEncryptionIDs=%s", v165, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v166);
          MEMORY[0x1B27120C0](v166, -1, -1);
          MEMORY[0x1B27120C0](v165, -1, -1);
        }

        else
        {
        }

        if (v335)
        {

          v171 = Logger.logObject.getter();
          v172 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            v174 = swift_slowAlloc();
            v338[0] = v174;
            *v173 = 136315138;
            v175 = PubSubTopic.description.getter();
            v177 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v176, v338);

            *(v173 + 4) = v177;
            _os_log_impl(&dword_1AEB26000, v171, v172, "[Subscribe] Retrying, dataCryptorProvider updated while Initialize was in flight %s", v173, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v174);
            MEMORY[0x1B27120C0](v174, -1, -1);
            MEMORY[0x1B27120C0](v173, -1, -1);
          }

          *(v161 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 1;
          PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(1, 0);
        }

        else
        {
          v178 = *(v161 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
          v179 = *(v161 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
          __swift_project_boxed_opaque_existential_1((v161 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v178);
          (*(v179 + 72))(v92, v178, v179);

          *(v161 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 1;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer, 0x1E695DFF0);
          v180 = *(v161 + 80);
          v181 = [objc_opt_self() mainRunLoop];
          v182 = *MEMORY[0x1E695D918];
          v183 = type metadata accessor for NSRunLoop.SchedulerOptions();
          v184 = v307;
          (*(*(v183 - 8) + 56))(v307, 1, 1, v183);
          v185 = static NSTimer.publish(every:tolerance:on:in:options:)();

          outlined destroy of NSObject?(v184, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
          v338[0] = v185;
          type metadata accessor for NSTimer.TimerPublisher();
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x1E6969F70]);
          v186 = ConnectablePublisher.autoconnect()();

          v338[0] = v186;
          v187 = v306;
          v338[4] = v306;
          v188 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v189 = v309;
          (*(*(v188 - 8) + 56))(v309, 1, 1, v188);
          v190 = v187;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
          lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
          v191 = v308;
          Publisher.receive<A>(on:options:)();
          outlined destroy of NSObject?(v189, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Autoconnect<NSTimer.TimerPublisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMR);
          v192 = v312;
          v193 = v311;
          Publisher.first()();
          (*(v310 + 8))(v191, v193);
          swift_allocObject();
          swift_weakInit();
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.ReceiveOn<Publishers.Autoconnect<NSTimer.TimerPublisher>, OS_dispatch_queue>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMR);
          v194 = v314;
          v195 = Publisher<>.sink(receiveValue:)();

          (*(v313 + 8))(v192, v194);
          v196 = *(v161 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable);
          *(v161 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable) = v195;
        }

        return;
      }

      v137 = 0;
      v138 = 0;
      v139 = v330;
      v140 = (v329 + 48);
      v141 = MEMORY[0x1E69E7CC0];
      KeyPath = v328;
      while (v137 < *(v336 + 16))
      {
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v94, KeyPath, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
        closure #4 in PubSubTopic.processInitializeAck(_:)(KeyPath, v295, v139);
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(KeyPath, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
        if ((*v140)(v139, 1, v332) == 1)
        {
          outlined destroy of NSObject?(v139, &_ss6UInt64V_10Foundation4UUIDVtSgMd, &_ss6UInt64V_10Foundation4UUIDVtSgMR);
        }

        else
        {
          v142 = v139;
          v143 = v327;
          outlined init with take of (UInt64, UUID)(v142, v327);
          outlined init with take of (UInt64, UUID)(v143, v331);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v141[2] + 1, 1, v141);
          }

          v145 = v141[2];
          v144 = v141[3];
          if (v145 >= v144 >> 1)
          {
            v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v144 > 1, v145 + 1, 1, v141);
          }

          v141[2] = v145 + 1;
          outlined init with take of (UInt64, UUID)(v331, v141 + ((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v145);
          v139 = v330;
          KeyPath = v328;
        }

        ++v137;
        v94 += v95;
        if (v136 == v137)
        {
          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v338[0] = v150;
      *v149 = 136315138;
      v151 = PubSubTopic.description.getter();
      v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v152, v338);

      *(v149 + 4) = v153;
      _os_log_impl(&dword_1AEB26000, v147, v148, "[Subscribe] Missing encryptionIDs, empty response from server, %s", v149, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v150);
      MEMORY[0x1B27120C0](v150, -1, -1);
      MEMORY[0x1B27120C0](v149, -1, -1);
    }

    v131 = 1;
LABEL_51:
    PubSubTopic.closeStreams(reason:)(v131, 2);
    return;
  }

  v132 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState;
  if (*(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) == 2)
  {

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v101, v102))
    {
      goto LABEL_26;
    }

    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v338[0] = v104;
    *v103 = 136315138;
    v133 = PubSubTopic.description.getter();
    v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, v338);

    *(v103 + 4) = v135;
    v108 = "[Subscribe] Skipping InitializeAck processing, already ready %s";
LABEL_19:
    _os_log_impl(&dword_1AEB26000, v101, v102, v108, v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v104);
    MEMORY[0x1B27120C0](v104, -1, -1);
    v109 = v103;
LABEL_25:
    MEMORY[0x1B27120C0](v109, -1, -1);
    goto LABEL_26;
  }

  v322 = v71;
  v138 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2 + v138, v86, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v146 = v325;
  if ((*(v87 + 48))(v86, 1, v325) == 1)
  {
    outlined destroy of NSObject?(v86, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_73:
    *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = 0;
    *(v2 + v132) = 2;
    v200 = *(a1 + 56);
    v338[0] = *(a1 + 32);
    v332 = v338[0];

    specialized Array.append<A>(contentsOf:)(v201);
    v202 = v338[0];
    v203 = *(v338[0] + 16);
    if (v203)
    {
      v138 = 0;
      KeyPath = (v338[0] + 32);
      v295 = v2;
      v326 = a1;
      v335 = v203;
      *&v336 = v338[0];
      v334 = (v338[0] + 32);
      do
      {
        if (v138 >= *(v202 + 16))
        {
          goto LABEL_131;
        }

        v205 = KeyPath[v138];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (*(v338[0] + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v205);
          v207 = v206;

          if (v207)
          {
            goto LABEL_77;
          }
        }

        else
        {
        }

        v208 = v2[15];
        v209 = v2[16];
        __swift_project_boxed_opaque_existential_1(v2 + 12, v208);
        if (v205 == (*(v209 + 16))(v208, v209))
        {
          goto LABEL_77;
        }

        swift_getKeyPath();
        KeyPath = swift_getKeyPath();
        v210 = static Published.subscript.modify();
        v212 = v211;
        v213 = *v211;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v337 = *v212;
        v215 = v337;
        *v212 = 0x8000000000000000;
        v217 = specialized __RawDictionaryStorage.find<A>(_:)(v205);
        v218 = v215[2];
        v219 = (v216 & 1) == 0;
        v220 = v218 + v219;
        if (__OFADD__(v218, v219))
        {
          goto LABEL_132;
        }

        v221 = v216;
        if (v215[3] >= v220)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v224 = v337;
            if ((v216 & 1) == 0)
            {
              goto LABEL_91;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v224 = v337;
            if ((v221 & 1) == 0)
            {
              goto LABEL_91;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v220, isUniquelyReferenced_nonNull_native);
          v222 = specialized __RawDictionaryStorage.find<A>(_:)(v205);
          if ((v221 & 1) != (v223 & 1))
          {
            goto LABEL_137;
          }

          v217 = v222;
          v224 = v337;
          if ((v221 & 1) == 0)
          {
LABEL_91:
            v224[(v217 >> 6) + 8] |= 1 << v217;
            *(v224[6] + 8 * v217) = v205;
            *(v224[7] + 8 * v217) = 0;
            v225 = v224[2];
            v226 = __OFADD__(v225, 1);
            v227 = v225 + 1;
            if (v226)
            {
              goto LABEL_133;
            }

            v224[2] = v227;
            goto LABEL_76;
          }
        }

        *(v224[7] + 8 * v217) = 0;
LABEL_76:
        v204 = *v212;
        *v212 = v224;

        v210(v338, 0);

        v2 = v295;
        a1 = v326;
        v203 = v335;
        v202 = v336;
        KeyPath = v334;
LABEL_77:
        ++v138;
      }

      while (v203 != v138);
    }

    MEMORY[0x1EEE9AC00](v228);
    *(&v294 - 2) = a1;
    v229 = specialized Sequence.reduce<A>(into:_:)(MEMORY[0x1E69E7CC8], closure #1 in CP_SubscribeResponse.InitializeAck.otherParticipants.getterpartial apply, (&v294 - 4), v332);
    v230 = v2[15];
    v231 = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v230);
    v232 = (*(v231 + 16))(v230, v231);
    v233 = v2[15];
    v234 = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v233);
    v235 = (*(v234 + 16))(v233, v234);
    v236 = swift_isUniquelyReferenced_nonNull_native();
    v338[0] = v229;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v235, 0, v232, v236);
    v237 = v338[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v338[0] = v237;

    v335 = v237;

    static Published.subscript.setter();
    v238 = *(v333 + 48);
    v239 = v315;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v238, v315, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    v240 = *(v323 + 48);
    v241 = v316;
    LODWORD(v235) = v240(v239, 1, v316);
    outlined destroy of NSObject?(v239, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    if (v235 != 1)
    {
      v242 = v299;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v238, v299, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
      if (v240(v242, 1, v241) == 1)
      {
        v243 = v300;
        *v300 = 0;
        v243[1] = 0;
        v244 = v243 + *(v241 + 24);
        UnknownStorage.init()();
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v243, type metadata accessor for CP_SequenceNumber);
        v245 = v240(v242, 1, v241);
        v246 = v302;
        v247 = v301;
        if (v245 != 1)
        {
          outlined destroy of NSObject?(v242, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
        }
      }

      else
      {
        v248 = v300;
        _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v242, v300, type metadata accessor for CP_SequenceNumber);
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v248, type metadata accessor for CP_SequenceNumber);
        v246 = v302;
        v247 = v301;
      }

      outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v238, v247, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
      if (v240(v247, 1, v241) == 1)
      {
        *v246 = 0;
        v246[1] = 0;
        v249 = v246 + *(v241 + 24);
        UnknownStorage.init()();
        if (v240(v247, 1, v241) != 1)
        {
          outlined destroy of NSObject?(v247, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
        }
      }

      else
      {
        _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v247, v246, type metadata accessor for CP_SequenceNumber);
      }

      v250 = v246[1];
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v246, type metadata accessor for CP_SequenceNumber);
      if (v250)
      {
        *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = v250;
        *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = v250;

        v251 = Logger.logObject.getter();
        v252 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v251, v252))
        {
          v253 = swift_slowAlloc();
          v254 = swift_slowAlloc();
          v338[0] = v254;
          *v253 = 134218242;
          *(v253 + 4) = v250;
          *(v253 + 12) = 2080;
          v255 = PubSubTopic.description.getter();
          v257 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v255, v256, v338);

          *(v253 + 14) = v257;
          _os_log_impl(&dword_1AEB26000, v251, v252, "[Subscribe] Updated selfSeqNum, responseSeqNum=%llu %s", v253, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v254);
          MEMORY[0x1B27120C0](v254, -1, -1);
          MEMORY[0x1B27120C0](v253, -1, -1);
        }
      }
    }

    v258 = *(a1 + 40);
    if (*(v258 + 16))
    {
      PubSubTopic._setMetadata(metadata:)(v258);
    }

    v259 = *(v333 + 44);
    v260 = v317;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v259, v317, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
    v261 = *(v324 + 48);
    v262 = v318;
    v263 = v261(v260, 1, v318);
    outlined destroy of NSObject?(v260, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
    if (v263 == 1)
    {

      LOBYTE(v338[0]) = 2;
      PubSubTopic.updateState(state:)(v338);
      PubSubTopic.attemptSendQueueFlush()();
      return;
    }

    v264 = v303;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v259, v303, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
    v265 = v261(v264, 1, v262);
    v266 = MEMORY[0x1E69E7CC0];
    if (v265 == 1)
    {
      v267 = v319;
      *v319 = 0;
      v267[1] = v266;
      v268 = v267 + *(v262 + 24);
      UnknownStorage.init()();
      if (v261(v264, 1, v262) != 1)
      {
        outlined destroy of NSObject?(v264, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
      }
    }

    else
    {
      v267 = v319;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v264, v319, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
    }

    v269 = *v267;
    v270 = v267[1];
    v271 = *(v270 + 16);
    if (v271)
    {
      v338[0] = v266;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v271, 0);
      v272 = v338[0];
      v273 = v270 + ((*(v323 + 80) + 32) & ~*(v323 + 80));
      v274 = *(v323 + 72);
      v275 = v298;
      do
      {
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v273, v275, type metadata accessor for CP_SequenceNumber);
        v336 = *v275;
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v275, type metadata accessor for CP_SequenceNumber);
        v338[0] = v272;
        v277 = *(v272 + 16);
        v276 = *(v272 + 24);
        if (v277 >= v276 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v276 > 1), v277 + 1, 1);
          v275 = v298;
          v272 = v338[0];
        }

        *(v272 + 16) = v277 + 1;
        *(v272 + 16 * v277 + 32) = v336;
        v273 += v274;
        --v271;
      }

      while (v271);
    }

    else
    {

      v272 = MEMORY[0x1E69E7CC0];
    }

    v278 = Logger.logObject.getter();
    v279 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v278, v279))
    {
      v280 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      v338[0] = v281;
      *v280 = 134218498;
      *(v280 + 4) = v269;
      *(v280 + 12) = 2080;
      v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_ABtMd, &_ss6UInt64V_ABtMR);
      v283 = MEMORY[0x1B2710180](v272, v282);
      v285 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v283, v284, v338);

      *(v280 + 14) = v285;
      *(v280 + 22) = 2080;
      *(v280 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v338);
      _os_log_impl(&dword_1AEB26000, v278, v279, "[Subscribe] Catchup required, fromParticipantID=%llu seqNums=%s topic=%s", v280, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v281, -1, -1);
      MEMORY[0x1B27120C0](v280, -1, -1);
    }

    LOBYTE(v338[0]) = 1;
    PubSubTopic.updateState(state:)(v338);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v286 = v2[18];
      ObjectType = swift_getObjectType();
      v288 = v319;
      v289 = v297;
      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v319, v297, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
      v290 = (*(v324 + 80) + 32) & ~*(v324 + 80);
      v291 = swift_allocObject();
      *(v291 + 16) = v2;
      *(v291 + 24) = v272;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v289, v291 + v290, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
      v292 = *(v286 + 48);

      v292(v293, v269, partial apply for closure #2 in PubSubTopic.processInitializeAck(_:), v291, ObjectType, v286);
      swift_unknownObjectRelease();

      v123 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary;
      v122 = v288;
    }

    else
    {

      v123 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary;
      v122 = v319;
    }

LABEL_28:
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v122, v123);
    return;
  }

  (*(v87 + 32))(v320, v86, v146);
  v154 = v305;
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v156 = v155;
  v157 = *(v87 + 8);
  v157(v154, v146);
  if (v156 <= 0.0)
  {
    v159 = 0;
LABEL_70:
    v197 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter);
    if (v197)
    {
      (*(*v197 + 144))(v159, *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag), *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag + 8), v2[2], v2[3]);
    }

    v198 = v325;
    v157(v320, v325);
    v199 = v304;
    (*(v87 + 56))(v304, 1, 1, v198);
    swift_beginAccess();
    outlined assign with take of Date?(v199, v2 + v138);
    swift_endAccess();
    goto LABEL_73;
  }

  v158 = v156 * 1000.0;
  if (COERCE_UNSIGNED_INT64(v156 * 1000.0) >> 52 > 0x7FE)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v158 > -1.0)
  {
    if (v158 >= 1.84467441e19)
    {
      goto LABEL_136;
    }

    v159 = v158;
    goto LABEL_70;
  }

LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);

  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(KeyPath, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);

  __break(1u);
LABEL_137:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}