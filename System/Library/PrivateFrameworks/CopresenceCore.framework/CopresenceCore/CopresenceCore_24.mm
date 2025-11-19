uint64_t PubSubTopic.processRecord(_:)(unint64_t a1)
{
  v2 = v1;
  v146 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v139 = &v129 - v5;
  v6 = type metadata accessor for CP_EncryptionID(0);
  v136 = *(v6 - 8);
  v137 = v6;
  v7 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v138 = (&v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = type metadata accessor for CP_Record(0);
  v9 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  v140 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v134 = *(v11 - 8);
  v135 = v11;
  v12 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v144 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v129 - v16;
  v18 = type metadata accessor for CP_SequenceNumber(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v141 = v23;
  v142 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = (&v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v32 = v33;
  (*(v29 + 104))(v32, *MEMORY[0x1E69E8020], v28);
  v34 = v33;
  v35 = _dispatchPreconditionTest(_:)();
  v37 = *(v29 + 8);
  v36 = (v29 + 8);
  v37(v32, v28);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v39 = v38 * 1000.0;
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v39 <= -1.0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v39 < 1.84467441e19)
  {
    v36 = v27;
    v35 = v146;
    v40 = *(v146 + 40);
    v27 = v22;
    v22 = v143;
    if (v40 > v39)
    {
      goto LABEL_12;
    }

    Date.timeIntervalSince1970.getter();
    v42 = v41 * 1000.0;
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v42 > -1.0)
    {
      if (v42 < 1.84467441e19)
      {
        if (v42 >= v40)
        {
          v43 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter);
          if (v43)
          {
            (*(*v43 + 160))(v42 - v40, *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag), *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag + 8), v2[2], v2[3]);
          }

LABEL_12:
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(v35 + *(v22 + 9), v17, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
          v44 = *(v19 + 48);
          if (v44(v17, 1, v18) == 1)
          {
            *v27 = 0;
            v27[1] = 0;
            v45 = v27 + *(v18 + 24);
            UnknownStorage.init()();
            if (v44(v17, 1, v18) != 1)
            {
              outlined destroy of NSObject?(v17, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
            }
          }

          else
          {
            _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v17, v27, type metadata accessor for CP_SequenceNumber);
          }

          v46 = *v27;
          v19 = v27[1];
          v47 = v2[15];
          v48 = v2[16];
          __swift_project_boxed_opaque_existential_1(v2 + 12, v47);
          v49 = (*(v48 + 16))(v47, v48);
          v145 = v46;
          if (v46 == v49)
          {
            goto LABEL_17;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v61 = v148[0];
          if (*(v148[0] + 16))
          {
            v62 = specialized __RawDictionaryStorage.find<A>(_:)(v145);
            if (v63)
            {
              v64 = *(*(v61 + 56) + 8 * v62);

              if (v64 >= v19)
              {
LABEL_42:
                v99 = v19;
                if (one-time initialization token for log != -1)
                {
                  swift_once();
                }

                v100 = type metadata accessor for Logger();
                __swift_project_value_buffer(v100, log);

                v72 = Logger.logObject.getter();
                v101 = static os_log_type_t.error.getter();

                if (!os_log_type_enabled(v72, v101))
                {
                  goto LABEL_61;
                }

                v74 = swift_slowAlloc();
                v75 = swift_slowAlloc();
                v148[0] = v75;
                *v74 = 134218754;
                *(v74 + 4) = v145;
                *(v74 + 12) = 2048;
                *(v74 + 14) = v99;
                *(v74 + 22) = 2048;
                *(v74 + 24) = v64;
                *(v74 + 32) = 2080;
                v102 = PubSubTopic.description.getter();
                v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v148);

                *(v74 + 34) = v104;
                v79 = "Skipping old record, participantID=%llu, recordSeqNum=%llu <= currentSeqNum=%llu %s";
                v80 = v101;
                v81 = v72;
                v82 = v74;
                v83 = 42;
                goto LABEL_31;
              }

              swift_getKeyPath();
              swift_getKeyPath();
              v65 = static Published.subscript.modify();
              v67 = v66;
              v68 = *v66;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v147 = *v67;
              *v67 = 0x8000000000000000;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v145, isUniquelyReferenced_nonNull_native);
              v70 = *v67;
              *v67 = v147;
              v35 = v146;

              v65(v148, 0);

LABEL_17:
              if (one-time initialization token for log == -1)
              {
                goto LABEL_18;
              }

              goto LABEL_73;
            }
          }

          v40 = v19;

          if (one-time initialization token for log == -1)
          {
LABEL_29:
            v71 = type metadata accessor for Logger();
            __swift_project_value_buffer(v71, log);

            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v72, v73))
            {
              goto LABEL_61;
            }

            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v148[0] = v75;
            *v74 = 134218498;
            *(v74 + 4) = v145;
            *(v74 + 12) = 2048;
            *(v74 + 14) = v40;
            *(v74 + 22) = 2080;
            v76 = PubSubTopic.description.getter();
            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v148);

            *(v74 + 24) = v78;
            v79 = "Skipping record from unknown publisher participantID=%llu seqNum=%llu %s";
            v80 = v73;
            v81 = v72;
            v82 = v74;
            v83 = 32;
LABEL_31:
            _os_log_impl(&dword_1AEB26000, v81, v80, v79, v82, v83);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
            MEMORY[0x1B27120C0](v75, -1, -1);
            v84 = v74;
LABEL_60:
            MEMORY[0x1B27120C0](v84, -1, -1);
            goto LABEL_61;
          }

LABEL_78:
          swift_once();
          goto LABEL_29;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    __break(1u);
    goto LABEL_76;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  swift_once();
LABEL_18:
  v50 = type metadata accessor for Logger();
  v51 = __swift_project_value_buffer(v50, log);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  v54 = os_log_type_enabled(v52, v53);
  v131 = v51;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v148[0] = v56;
    *v55 = 134218498;
    *(v55 + 4) = v145;
    *(v55 + 12) = 2048;
    *(v55 + 14) = v19;
    *(v55 + 22) = 2080;
    *(v55 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v148);
    _os_log_impl(&dword_1AEB26000, v52, v53, "Received record fromParticipantID=%llu seqNum=%llu topic=%s", v55, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x1B27120C0](v56, -1, -1);
    MEMORY[0x1B27120C0](v55, -1, -1);
  }

  v57 = v140;
  if (one-time initialization token for messenger != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v58, static Signposts.messenger);
  v59 = *(v35 + 16);
  v60 = *(v35 + 24);
  if (OSSignposter.isEnabled.getter())
  {
    outlined copy of Data._Representation(v59, v60);
    _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5(v59, v60, v144);
  }

  else
  {
    OSSignpostID.init(_:)();
  }

  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v35, v57, type metadata accessor for CP_Record);
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v85);

  v86 = OSSignposter.logHandle.getter();
  v87 = static os_signpost_type_t.event.getter();

  v88 = OS_os_log.signpostsEnabled.getter();
  v132 = v36;
  v133 = v27;
  v130 = v19;
  if ((v88 & 1) == 0)
  {

    (*(v134 + 8))(v144, v135);
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v57, type metadata accessor for CP_Record);
    goto LABEL_50;
  }

  v89 = swift_slowAlloc();
  result = swift_slowAlloc();
  v91 = v57;
  v64 = result;
  v148[0] = result;
  *v89 = 134218754;
  v92 = *(v91 + 16);
  v93 = *(v91 + 24);
  v94 = v93 >> 62;
  if ((v93 >> 62) > 1)
  {
    if (v94 != 2)
    {
      v92 = 0;
      goto LABEL_49;
    }

    v97 = v92 + 16;
    v95 = *(v92 + 16);
    v96 = *(v97 + 8);
    v98 = __OFSUB__(v96, v95);
    v92 = v96 - v95;
    if (!v98)
    {
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (!v94)
  {
    v92 = BYTE6(v93);
LABEL_49:
    *(v89 + 4) = v92;
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v140, type metadata accessor for CP_Record);
    *(v89 + 12) = 2080;
    *(v89 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v148);
    *(v89 + 22) = 2048;
    v105 = v144;
    *(v89 + 24) = v145;
    *(v89 + 32) = 2048;
    *(v89 + 34) = v19;
    v106 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1AEB26000, v86, v87, v106, "transport-message-received", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu seqNum=%llu", v89, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x1B27120C0](v64, -1, -1);
    MEMORY[0x1B27120C0](v89, -1, -1);

    (*(v134 + 8))(v105, v135);
LABEL_50:
    v107 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
    v108 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v107);
    v109 = *(v22 + 10);
    v110 = v146;
    v111 = v139;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v146 + v109, v139, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    v112 = v137;
    v113 = *(v136 + 48);
    v114 = v113(v111, 1, v137);
    v115 = v138;
    if (v114 == 1)
    {
      *v138 = xmmword_1AEE0C200;
      v116 = v115 + *(v112 + 20);
      UnknownStorage.init()();
      v117 = v113(v111, 1, v112);
      v36 = v132;
      if (v117 != 1)
      {
        outlined destroy of NSObject?(v111, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
      }
    }

    else
    {
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v111, v138, type metadata accessor for CP_EncryptionID);
      v36 = v132;
    }

    v118 = *v115;
    v119 = v115[1];
    outlined copy of Data._Representation(*v115, v119);
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v115, type metadata accessor for CP_EncryptionID);
    v120 = (*(v108 + 40))(v118, v119, v107, v108);
    outlined consume of Data._Representation(v118, v119);
    v27 = v133;
    if (v120)
    {
      v121 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue;
      swift_beginAccess();
      if (*(*(v2 + v121) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v145), (v122 & 1) != 0))
      {
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v126 = PubSubTopic.decryptAndMarkReady(record:)(v110);
        if (v126 != 1)
        {
          if (!v126 && *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) >= 2u)
          {
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v127 = v2[18];
              ObjectType = swift_getObjectType();
              (*(v127 + 8))(v2, ObjectType, v127);
              swift_unknownObjectRelease();
            }
          }

          goto LABEL_62;
        }
      }

      PubSubTopic.queueRecordForDecryption(_:)(v110);
LABEL_62:
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v27, type metadata accessor for CP_SequenceNumber);
      return (*(v142 + 8))(v36, v141);
    }

    v72 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v148[0] = v125;
      *v124 = 134218242;
      *(v124 + 4) = v130;
      *(v124 + 12) = 2080;
      *(v124 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v148);
      _os_log_impl(&dword_1AEB26000, v72, v123, "Record has invalid encryptionID, dropping, seqNum=%llu topic=%s", v124, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v125);
      MEMORY[0x1B27120C0](v125, -1, -1);
      v84 = v124;
      goto LABEL_60;
    }

LABEL_61:

    goto LABEL_62;
  }

  v98 = __OFSUB__(HIDWORD(v92), v92);
  LODWORD(v92) = HIDWORD(v92) - v92;
  if (!v98)
  {
    v92 = v92;
    goto LABEL_49;
  }

  __break(1u);
  return result;
}

void PubSubTopic.processTopicUpdate(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = v89 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
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
  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, log);
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a1, v10, type metadata accessor for CP_SubscribeResponse.TopicUpdate);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v89[1] = v19;
    v23 = v8;
    v24 = v2;
    v25 = v22;
    v26 = swift_slowAlloc();
    v91 = v26;
    *v25 = 136315394;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate and conformance CP_SubscribeResponse.TopicUpdate, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    v27 = Message.debugDescription.getter();
    v29 = v28;
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v10, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v91);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = v24[2];
    v32 = v24[3];
    v33 = v24;
    v8 = v23;
    *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v91);
    _os_log_impl(&dword_1AEB26000, v20, v21, "[TopicUpdate] Received message=%s topic=%s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v26, -1, -1);
    MEMORY[0x1B27120C0](v25, -1, -1);
  }

  else
  {
    v33 = v2;

    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v10, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  }

  if (*(a1 + 8) == 1)
  {
    v34 = *(a1 + 24);
    v35 = *(a1 + 32);
    v36 = v33;
    if (*a1)
    {
      if (*a1 == 1)
      {

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v90[0] = v40;
          *v39 = 136315394;
          v91 = v34;
          v92 = v35;
          v41 = PubSubTopic.Participant.description.getter();
          v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v90);

          *(v39 + 4) = v43;
          *(v39 + 12) = 2080;
          *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36[2], v36[3], v90);
          _os_log_impl(&dword_1AEB26000, v37, v38, "[TopicUpdate] Subscriber removed participant=%s topic=%s", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v40, -1, -1);
          MEMORY[0x1B27120C0](v39, -1, -1);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v44 = static Published.subscript.modify();
        specialized Dictionary._Variant.removeValue(forKey:)(v34);
        v44(&v91, 0);

        swift_getKeyPath();
        swift_getKeyPath();
        v45 = static Published.subscript.modify();
        specialized Dictionary.removeValue(forKey:)(v34, v90);
        v45(&v91, 0);

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v46 = v36[18];
          ObjectType = swift_getObjectType();
          (*(v46 + 32))(v36, v34, ObjectType, v46);
LABEL_30:
          swift_unknownObjectRelease();
        }
      }

      else
      {

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v91 = v67;
          *v66 = 136315138;
          *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[2], v33[3], &v91);
          _os_log_impl(&dword_1AEB26000, v64, v65, "[TopicUpdate] Metadata changed topic=%s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v67);
          MEMORY[0x1B27120C0](v67, -1, -1);
          MEMORY[0x1B27120C0](v66, -1, -1);
        }

        PubSubTopic.updateMetadata(metadata:)(*(a1 + 16));
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v53 = v91;
      if (*(v91 + 16) && (v54 = specialized __RawDictionaryStorage.find<A>(_:)(v34), (v55 & 1) != 0))
      {
        v56 = *(*(v53 + 56) + 8 * v54);

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v90[0] = v60;
          *v59 = 136315650;
          v91 = v34;
          v92 = v35;
          v61 = PubSubTopic.Participant.description.getter();
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v90);

          *(v59 + 4) = v63;
          *(v59 + 12) = 2048;
          *(v59 + 14) = v56;
          *(v59 + 22) = 2080;
          *(v59 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36[2], v36[3], v90);
          _os_log_impl(&dword_1AEB26000, v57, v58, "[TopicUpdate] Subscriber re-added participant=%s seqNum=%llu topic=%s", v59, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v60, -1, -1);
          MEMORY[0x1B27120C0](v59, -1, -1);
        }
      }

      else
      {

        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v90[0] = v71;
          *v70 = 136315394;
          v91 = v34;
          v92 = v35;
          v72 = PubSubTopic.Participant.description.getter();
          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v90);

          *(v70 + 4) = v74;
          *(v70 + 12) = 2080;
          *(v70 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36[2], v36[3], v90);
          _os_log_impl(&dword_1AEB26000, v68, v69, "[TopicUpdate] Subscriber added participant=%s topic=%s", v70, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v71, -1, -1);
          MEMORY[0x1B27120C0](v70, -1, -1);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v75 = static Published.subscript.modify();
        v77 = v76;
        v78 = *v76;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90[0] = *v77;
        *v77 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v34, isUniquelyReferenced_nonNull_native);
        v80 = *v77;
        *v77 = v90[0];

        v75(&v91, 0);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v81 = static Published.subscript.modify();
      v83 = v82;
      v84 = *v82;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      v90[0] = *v83;
      *v83 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, v34, v85);
      v86 = *v83;
      *v83 = v90[0];

      v81(&v91, 0);

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v87 = v36[18];
        v88 = swift_getObjectType();
        (*(v87 + 24))(v36, v34, v88, v87);
        goto LABEL_30;
      }
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a1, v8, type metadata accessor for CP_SubscribeResponse.TopicUpdate);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v91 = v51;
      *v50 = 134218242;
      v52 = *v8;
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v8, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
      *(v50 + 4) = v52;
      *(v50 + 12) = 2080;
      *(v50 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[2], v33[3], &v91);
      _os_log_impl(&dword_1AEB26000, v48, v49, "[TopicUpdate] Unexpected event-type, event=%ld topic=%s", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1B27120C0](v51, -1, -1);
      MEMORY[0x1B27120C0](v50, -1, -1);
    }

    else
    {
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v8, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    }
  }
}

uint64_t closure #3 in PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeRequest.Initialize and conformance CP_SubscribeRequest.Initialize, type metadata accessor for CP_SubscribeRequest.Initialize);
  static Message.with(_:)();
  outlined destroy of NSObject?(a1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v11, a1, type metadata accessor for CP_SubscribeRequest.Initialize);
  v12 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
}

uint64_t closure #1 in closure #3 in PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a4;
  v53 = a3;
  v56 = type metadata accessor for UUID();
  v59 = *(v56 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CP_EncryptionID(0);
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v51 = v48 - v15;
  v16 = type metadata accessor for CP_SequenceNumber(0);
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2[2];
  v21 = a2[3];
  v22 = a1[1];

  *a1 = v20;
  a1[1] = v21;
  v24 = a2[15];
  v23 = a2[16];
  __swift_project_boxed_opaque_existential_1(a2 + 12, v24);
  a1[4] = (*(v23 + 16))(v24, v23);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  AttemptySb_SbtFyAA03d47_G7RequestVzXEfU1_yAI10InitializeVzXEfU_AA0T15_ef3Vs6A10V_AOtXEfU_Tf3nnnpf_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDys6UInt64VAGG_14CopresenceCore17CP_SequenceNumberVs5NeverOTg504_ss6d5VAB14e6Core17g1_hi27VIgyyr_AB3key_AB5valuetAEs5J215OIegnrzr_TR04_s14b115Core11PubSubTopicC20setupSubscribeStream33_6FF60077F0B19FDD9659960D5DD0DECCLL05reuseH014isFirstAttemptySb_SbtFyAA03d47_G7RequestVzXEfU1_yAI10InitializeVzXEfU_AA0T15_ef3Vs6A10V_AOtXEfU_Tf3nnnpf_nTf1cn_n(v61);

  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
  v26 = AttemptySb_SbtFyAA03d47_G7RequestVzXEfU1_yAI10InitializeVzXEfU_AA0T15_ef3Vs6A10V_AOtXEfU_Tf3nnnpf_nTf1cn_n;
  static Message.with(_:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, AttemptySb_SbtFyAA03d47_G7RequestVzXEfU1_yAI10InitializeVzXEfU_AA0T15_ef3Vs6A10V_AOtXEfU_Tf3nnnpf_nTf1cn_n[2] + 1, 1, AttemptySb_SbtFyAA03d47_G7RequestVzXEfU1_yAI10InitializeVzXEfU_AA0T15_ef3Vs6A10V_AOtXEfU_Tf3nnnpf_nTf1cn_n);
  }

  v28 = v26[2];
  v27 = v26[3];
  v29 = v53;
  if (v28 >= v27 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1, v26);
  }

  v26[2] = v28 + 1;
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v19, v26 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v28, type metadata accessor for CP_SequenceNumber);
  v30 = a1[2];

  a1[2] = v26;
  v31 = *(v29 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    v60 = v5;
    v48[1] = v26;
    v49 = v14;
    v50 = a1;
    v61 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v32 = v61;
    v33 = *(v59 + 16);
    v34 = v29 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v53 = *(v59 + 72);
    v54 = v33;
    v59 += 16;
    v35 = (v59 - 8);
    v36 = v51;
    do
    {
      v38 = v55;
      v37 = v56;
      v39 = v54(v55, v34, v56);
      MEMORY[0x1EEE9AC00](v39);
      v48[-2] = v38;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);
      v40 = v60;
      static Message.with(_:)();
      v60 = v40;
      (*v35)(v38, v37);
      v61 = v32;
      v42 = *(v32 + 16);
      v41 = *(v32 + 24);
      if (v42 >= v41 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1);
        v32 = v61;
      }

      *(v32 + 16) = v42 + 1;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v36, v32 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v42, type metadata accessor for CP_EncryptionID);
      v34 += v53;
      --v31;
    }

    while (v31);
    v14 = v49;
    a1 = v50;
  }

  if (*(v32 + 16))
  {
    v43 = a1[3];

    a1[3] = v32;
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v44);
  v48[-2] = v52;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);
  v45 = v58;
  static Message.with(_:)();

  v46 = *(type metadata accessor for CP_SubscribeRequest.Initialize(0) + 40);
  outlined destroy of NSObject?(a1 + v46, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v14, a1 + v46, type metadata accessor for CP_EncryptionID);
  return (*(v57 + 56))(a1 + v46, 0, 1, v45);
}

uint64_t closure #2 in PubSubTopic.processInitializeAck(_:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v24 = *(v12 - 8);
  v25 = v12;
  v13 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  LOBYTE(a1) = *a1;
  v23[1] = *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a4, v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  v19 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  aBlock[4] = partial apply for closure #1 in closure #2 in PubSubTopic.processInitializeAck(_:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_135;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v15, v11, v21);
  _Block_release(v21);
  (*(v26 + 8))(v11, v8);
  (*(v24 + 8))(v15, v25);
}

void closure #1 in closure #2 in PubSubTopic.processInitializeAck(_:)(char a1, void *KeyPath, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CP_SubscribeRequest(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  if (a1)
  {
    if (one-time initialization token for log != -1)
    {
LABEL_90:
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
      v107[0] = v16;
      *v15 = 136315394;
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v107);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(KeyPath[2], KeyPath[3], v107);
      _os_log_impl(&dword_1AEB26000, v13, v14, "[Subscribe] Catchup failed, retrying subscription error=%s topic=%s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    v20 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state;
    if (*(KeyPath + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) == 1)
    {
      *(KeyPath + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 1;
      PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(1, 0);
      return;
    }

    v105 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v105, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v107[0] = v82;
      *v81 = 136315394;
      v83 = *(KeyPath + v20);
      if (v83 <= 1)
      {
        if (*(KeyPath + v20))
        {
          v84 = 0x676E696863746143;
          v85 = 0xEA00000000007055;
        }

        else
        {
          v84 = 0x676E697472617453;
          v85 = 0xE800000000000000;
        }
      }

      else if (v83 == 2)
      {
        v85 = 0xE500000000000000;
        v84 = 0x7964616552;
      }

      else if (v83 == 3)
      {
        v84 = 0x676E697474756853;
        v85 = 0xEC0000006E776F44;
      }

      else
      {
        v85 = 0xE800000000000000;
        v84 = 0x6E776F6474756853;
      }

      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v107);

      *(v81 + 4) = v95;
      *(v81 + 12) = 2080;
      *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(KeyPath[2], KeyPath[3], v107);
      v96 = "[Subscribe] Re-subscribe aborted, state=%s topic=%s";
LABEL_82:
      _os_log_impl(&dword_1AEB26000, v105, v80, v96, v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v82, -1, -1);
      MEMORY[0x1B27120C0](v81, -1, -1);

      return;
    }

LABEL_63:
    v89 = v105;

    return;
  }

  v100 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v10;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, log);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v102 = KeyPath;
  v99 = a4;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v107[0] = v26;
    *v25 = 136315138;
    v27 = PubSubTopic.description.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v107);

    *(v25 + 4) = v29;
    KeyPath = v102;
    _os_log_impl(&dword_1AEB26000, v22, v23, "[Subscribe] Catchup completed successfully, %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1B27120C0](v26, -1, -1);
    MEMORY[0x1B27120C0](v25, -1, -1);
  }

  v30 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state;
  if (*(KeyPath + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) != 1)
  {

    v105 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v105, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v107[0] = v82;
      *v81 = 136315394;
      v86 = *(KeyPath + v30);
      if (v86 <= 1)
      {
        if (*(KeyPath + v30))
        {
          v87 = 0x676E696863746143;
          v88 = 0xEA00000000007055;
        }

        else
        {
          v87 = 0x676E697472617453;
          v88 = 0xE800000000000000;
        }
      }

      else if (v86 == 2)
      {
        v88 = 0xE500000000000000;
        v87 = 0x7964616552;
      }

      else if (v86 == 3)
      {
        v87 = 0x676E697474756853;
        v88 = 0xEC0000006E776F44;
      }

      else
      {
        v88 = 0xE800000000000000;
        v87 = 0x6E776F6474756853;
      }

      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v107);

      *(v81 + 4) = v97;
      *(v81 + 12) = 2080;
      *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(KeyPath[2], KeyPath[3], v107);
      v96 = "[Subscribe] Post-catchup work aborted, state=%s topic=%s";
      goto LABEL_82;
    }

    goto LABEL_63;
  }

  LOBYTE(v107[0]) = 2;
  v31 = PubSubTopic.updateState(state:)(v107);
  v32 = *(a3 + 16);
  if (v32)
  {
    v33 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked;
    v34 = (a3 + 40);
    while (1)
    {
      v35 = *(v34 - 1);
      v105 = *v34;
      v36 = KeyPath[15];
      v37 = KeyPath[16];
      __swift_project_boxed_opaque_existential_1(KeyPath + 12, v36);
      if ((*(v37 + 16))(v36, v37) == v35)
      {
        goto LABEL_37;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (!*(v107[0] + 16))
      {
        break;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v35);
      v39 = v38;

      if ((v39 & 1) == 0)
      {
        goto LABEL_25;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v40 = v107[0];
      if (!*(v107[0] + 16))
      {
        goto LABEL_88;
      }

      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
      if ((v42 & 1) == 0)
      {
        goto LABEL_89;
      }

      v43 = *(*(v40 + 56) + 8 * v41);

      if (v43 < v105)
      {
        goto LABEL_25;
      }

LABEL_37:
      swift_beginAccess();
      v62 = *(KeyPath + v33);
      if (!*(v62 + 16))
      {
        swift_endAccess();
LABEL_43:
        swift_beginAccess();
        v66 = *(KeyPath + v33);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106 = *(KeyPath + v33);
        v68 = v106;
        *(KeyPath + v33) = 0x8000000000000000;
        v69 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
        v71 = v68[2];
        v72 = (v70 & 1) == 0;
        v59 = __OFADD__(v71, v72);
        v73 = v71 + v72;
        if (v59)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        v74 = v70;
        if (v68[3] >= v73)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_48;
          }

          v79 = v69;
          specialized _NativeDictionary.copy()();
          v69 = v79;
          v76 = v106;
          if (v74)
          {
            goto LABEL_14;
          }

LABEL_49:
          v76[(v69 >> 6) + 8] |= 1 << v69;
          *(v76[6] + 8 * v69) = v35;
          *(v76[7] + 8 * v69) = v105;
          v77 = v76[2];
          v59 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v59)
          {
            goto LABEL_85;
          }

          v76[2] = v78;
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v73, isUniquelyReferenced_nonNull_native);
          v69 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
          if ((v74 & 1) != (v75 & 1))
          {
LABEL_91:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

LABEL_48:
          v76 = v106;
          if ((v74 & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_14:
          *(v76[7] + 8 * v69) = v105;
        }

        *(KeyPath + v33) = v76;
        v31 = swift_endAccess();
        goto LABEL_16;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v35);
      v64 = v63;
      swift_endAccess();
      if ((v64 & 1) == 0)
      {
        goto LABEL_43;
      }

      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
      if ((v65 & 1) == 0)
      {
        goto LABEL_86;
      }

      if (*(*(v62 + 56) + 8 * v31) < v105)
      {
        goto LABEL_43;
      }

LABEL_16:
      v34 += 2;
      if (!--v32)
      {
        goto LABEL_66;
      }
    }

LABEL_25:
    v104 = v32;
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    v103 = static Published.subscript.modify();
    v45 = v44;
    v46 = *v44;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v106 = *v45;
    v48 = v106;
    *v45 = 0x8000000000000000;
    v50 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
    v51 = v48[2];
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_84;
    }

    v54 = v49;
    if (v48[3] < v53)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v53, v47);
      v55 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_91;
      }

      v50 = v55;
      v57 = v106;
      if ((v54 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_32:
      *(v57[7] + 8 * v50) = v105;
LABEL_36:
      v61 = *v45;
      *v45 = v57;

      v103(v107, 0);

      KeyPath = v102;
      v32 = v104;
      goto LABEL_37;
    }

    if (v47)
    {
      v57 = v106;
      if (v49)
      {
        goto LABEL_32;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v57 = v106;
      if (v54)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    v57[(v50 >> 6) + 8] |= 1 << v50;
    *(v57[6] + 8 * v50) = v35;
    *(v57[7] + 8 * v50) = v105;
    v58 = v57[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_87;
    }

    v57[2] = v60;
    goto LABEL_36;
  }

LABEL_66:
  MEMORY[0x1EEE9AC00](v31);
  *(&v98 - 2) = v99;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest);
  v90 = v100;
  static Message.with(_:)();
  v91 = *(KeyPath + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput);

  PassthroughSubject.send(_:)();

  PubSubTopic.attemptSendQueueFlush()();
  v92 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue;
  swift_beginAccess();
  if (*(*(KeyPath + v92) + 16))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v93 = KeyPath[18];
      ObjectType = swift_getObjectType();
      (*(v93 + 8))(KeyPath, ObjectType, v93);
      swift_unknownObjectRelease();
    }
  }

  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v90, type metadata accessor for CP_SubscribeRequest);
}

uint64_t closure #1 in closure #1 in closure #2 in PubSubTopic.processInitializeAck(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck);
  static Message.with(_:)();
  outlined destroy of NSObject?(a1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v7, a1, type metadata accessor for CP_SubscribeRequest.RecordAck);
  v8 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
}

uint64_t closure #4 in PubSubTopic.processInitializeAck(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v51 = a3;
  v49 = a2;
  v4 = type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v47 - v14;
  v16 = type metadata accessor for CP_EncryptionID(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v47 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v5 + 32);
  v50 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v25, v15, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v26 = *(v17 + 48);
  if (v26(v15, 1, v16) == 1)
  {
    *v20 = xmmword_1AEE0C200;
    v27 = v20 + *(v16 + 20);
    UnknownStorage.init()();
    if (v26(v15, 1, v16) != 1)
    {
      outlined destroy of NSObject?(v15, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v15, v20, type metadata accessor for CP_EncryptionID);
  }

  v28 = *v20;
  v29 = v20[1];
  outlined copy of Data._Representation(*v20, v29);
  UUID.init(data:)(v28, v29, v11);
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v20, type metadata accessor for CP_EncryptionID);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, log);
    v31 = v48;
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v50, v48, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52 = v35;
      *v34 = 134218242;
      v36 = *v31;
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v31, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
      *(v34 + 4) = v36;
      *(v34 + 12) = 2080;
      v37 = PubSubTopic.description.getter();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v52);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_1AEB26000, v32, v33, "[Subscribe] Unexpected, malformed encryptionID, participantID=%llu %s", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1B27120C0](v35, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    else
    {
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v31, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
    return (*(*(v46 - 8) + 56))(v51, 1, 1, v46);
  }

  else
  {
    v40 = *(v22 + 32);
    v41 = v47;
    v40(v47, v11, v21);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
    v43 = *(v42 + 48);
    v44 = v51;
    *v51 = *v50;
    v40(&v44[v43], v41, v21);
    return (*(*(v42 - 8) + 56))(v44, 0, 1, v42);
  }
}

uint64_t closure #5 in PubSubTopic.processInitializeAck(_:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
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
      v18 = v6;
      *v5 = 134218242;
      *(v5 + 4) = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt);

      *(v5 + 12) = 2080;
      v7 = PubSubTopic.description.getter();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v18);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_1AEB26000, v3, v4, "[Subscribe] EncryptionID refresh timed out, retrying attempt=%ld %s", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1B27120C0](v6, -1, -1);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    else
    {
    }

    v10 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt);
    if (v10 >= *(v1 + 72))
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v18 = v14;
        *v13 = 136315138;
        v15 = PubSubTopic.description.getter();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v18);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_1AEB26000, v11, v12, "[Subscribe] Failed to refresh encryptionIDs, closing topic %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        MEMORY[0x1B27120C0](v14, -1, -1);
        MEMORY[0x1B27120C0](v13, -1, -1);
      }

      *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 3;
      PubSubTopic.closeStreams(reason:)(1, 2);
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = v10 + 1;
      PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(1, 0);
    }
  }

  return result;
}

void CP_SubscribeResponse.TopicUpdate.participant.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t CP_SubscribeResponse.TopicUpdate.participant.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t (*CP_SubscribeResponse.TopicUpdate.participant.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  return CP_SubscribeResponse.TopicUpdate.participant.modify;
}

uint64_t CP_SubscribeResponse.TopicUpdate.participant.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

unint64_t closure #1 in CP_SubscribeResponse.InitializeAck.otherParticipants.getter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a3 + 56);
  v6 = *(v5 + 16);
  v7 = (v5 + 32);
  do
  {
    v8 = v6;
    if (v6-- == 0)
    {
      break;
    }

    v10 = *v7++;
  }

  while (v10 != v4);
  v11 = v8 != 0;
  v12 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a1;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v11, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v15;
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v45 = a1[2];
  if (!v45)
  {
    goto LABEL_24;
  }

  v6 = a1[6];
  v5 = a1[7];
  v8 = a1[4];
  v7 = a1[5];

  outlined copy of Data._Representation(v6, v5);
  if (!v7)
  {
    goto LABEL_24;
  }

  v9 = *a3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      outlined consume of Data._Representation(v6, v5);

      return;
    }

    goto LABEL_30;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
  v16 = *a3;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_29:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_30:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1B2710020](0xD00000000000001BLL, 0x80000001AEE37AB0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1B2710020](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v11 = v17;
  if (v15)
  {
    goto LABEL_10;
  }

LABEL_13:
  v21 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = v8;
  v22[1] = v7;
  v23 = (v21[7] + 16 * v11);
  *v23 = v6;
  v23[1] = v5;
  v24 = v21[2];
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21[2] = v26;
  if (v45 != 1)
  {
    v27 = a1 + 11;
    v28 = 1;
    while (v28 < a1[2])
    {
      v6 = *(v27 - 1);
      v5 = *v27;
      v30 = *(v27 - 3);
      v29 = *(v27 - 2);

      outlined copy of Data._Representation(v6, v5);
      if (!v29)
      {
        goto LABEL_24;
      }

      v31 = *a3;
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v25 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v25)
      {
        goto LABEL_26;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
        v38 = *a3;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_29;
        }
      }

      if (v37)
      {
        goto LABEL_10;
      }

      v40 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v41 = (v40[6] + 16 * v32);
      *v41 = v30;
      v41[1] = v29;
      v42 = (v40[7] + 16 * v32);
      *v42 = v6;
      v42[1] = v5;
      v43 = v40[2];
      v25 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v25)
      {
        goto LABEL_27;
      }

      ++v28;
      v40[2] = v44;
      v27 += 4;
      if (v45 == v28)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_28;
  }

LABEL_24:
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v57 - v16);
  v64 = *(a1 + 16);
  if (!v64)
  {
    goto LABEL_22;
  }

  v59 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v63 = *(v15 + 72);
  v65 = a1;
  v58 = v19;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v19, &v57 - v16, &_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
  v60 = v8;
  v20 = *(v8 + 32);
  v71 = *v17;
  v21 = v71;
  v62 = v18;
  v66 = v7;
  v67 = v11;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
  v25 = v22[2];
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v24;
  if (v22[3] < v28)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, a2 & 1);
    v30 = *a3;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
    if ((v29 & 1) != (v31 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v29)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v34 = v23;
  specialized _NativeDictionary.copy()();
  v23 = v34;
  if (v29)
  {
LABEL_9:
    v32 = swift_allocError();
    swift_willThrow();
    v70 = v32;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v60 + 8))(v67, v66);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v35 = *a3;
  *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
  *(v35[6] + 8 * v23) = v21;
  v36 = v35[7];
  v61 = *(v60 + 72);
  v37 = v66;
  v20((v36 + v61 * v23), v67, v66);
  v38 = v35[2];
  v27 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (!v27)
  {
    v35[2] = v39;
    v40 = v65;
    if (v64 == 1)
    {
LABEL_22:

      return;
    }

    v41 = v65 + v63 + v58;
    v42 = 1;
    while (v42 < *(v40 + 16))
    {
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v41, v17, &_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
      v43 = v37;
      v71 = *v17;
      v44 = v71;
      v20(v67, v17 + v62, v43);
      v45 = *a3;
      v46 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v27 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v27)
      {
        goto LABEL_23;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, 1);
        v52 = *a3;
        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v51)
      {
        goto LABEL_9;
      }

      v54 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      *(v54[6] + 8 * v46) = v44;
      v37 = v66;
      v20((v54[7] + v61 * v46), v67, v66);
      v55 = v54[2];
      v27 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v27)
      {
        goto LABEL_24;
      }

      ++v42;
      v54[2] = v56;
      v41 += v63;
      v40 = v65;
      if (v64 == v42)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1B2710020](0xD00000000000001BLL, 0x80000001AEE37AB0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized Dictionary<>.hash(into:)(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    v7 &= v7 - 1;
    v20 = a1[2];
    v21 = a1[3];
    v22 = *(a1 + 8);
    v18 = *a1;
    v19 = a1[1];

    String.hash(into:)();

    MEMORY[0x1B27111E0](v17);
    result = Hasher._finalize()();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1B27111E0](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized static PubSubTopic.ClosedReason.== infix(_:_:)(int64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_ADTt1g5(a1, a3);
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_ADTt1g5(a1, a3);
    }

    return 0;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return a4 == 2 && a3 == 3;
    }

    else if (a1 == 4)
    {
      return a4 == 2 && a3 == 4;
    }

    else
    {
      return a4 == 2 && a3 == 5;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return a4 == 2 && a3 == 1;
    }

    return a4 == 2 && a3 == 2;
  }

  else
  {
    return a4 == 2 && !a3;
  }
}

uint64_t specialized static PubSubTopic.SendItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  swift_beginAccess();
  result = *(a2 + 64);
  if ((v5 & 1) == 0)
  {
    return (v4 == *(a2 + 56)) & ~result;
  }

  return result;
}

void partial apply for closure #1 in PubSubTopic.ReceivedRecord.acknowledge()()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  PubSubTopic.ack(publisherID:seqNum:)(v1, v2);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized PubSubTopic.init(name:config:service:dataCryptorProvider:delegate:seqNumWatermark:reporter:reporterTag:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v136 = a8;
  v127 = a7;
  v128 = a6;
  v147 = a5;
  v148 = a4;
  v124 = a2;
  v123 = a1;
  v126 = a11;
  v125 = a9;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v145 = *(v146 - 8);
  v14 = *(v145 + 64);
  v15 = MEMORY[0x1EEE9AC00](v146);
  v143 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v144 = &v115 - v17;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR);
  v138 = *(v139 - 8);
  v18 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v115 - v19;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR);
  v141 = *(v142 - 8);
  v20 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v115 - v21;
  v134 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v133 = *(v134 - 8);
  v22 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for OS_dispatch_queue.Attributes();
  v24 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v129 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for UUID();
  v116 = *(v117 - 8);
  v29 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMd, &_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMR);
  v121 = *(v122 - 8);
  v31 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
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
  v46 = a3[1];
  v152 = *a3;
  v153 = v46;
  v47 = a3[3];
  v154 = a3[2];
  v155 = v47;
  *(v12 + 144) = 0;
  swift_unknownObjectWeakInit();
  v48 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt;
  v49 = type metadata accessor for Date();
  (*(*(v49 - 8) + 56))(v12 + v48, 1, 1, v49);
  v50 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscribers;
  v51 = MEMORY[0x1E69E7CC8];
  v151 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
  Published.init(initialValue:)();
  v52 = v45;
  v53 = v123;
  (*(v42 + 32))(v12 + v50, v52, v41);
  v54 = v124;
  v55 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__queueState;
  v56 = MEMORY[0x1E69E7CC0];
  v151 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  Published.init(initialValue:)();
  v57 = *(v37 + 32);
  v58 = v40;
  v59 = v56;
  v135 = v36;
  v60 = v36;
  v61 = v125;
  v57(v12 + v55, v58, v60);
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata) = v51;
  v62 = v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason;
  *v62 = 0;
  *(v62 + 8) = -1;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = 0;
  v63 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscriberSeqNums;
  v151 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64VABGMd, &_sSDys6UInt64VABGMR);
  Published.init(initialValue:)();
  (*(v118 + 32))(v12 + v63, v35, v119);
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked) = v51;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue) = v51;
  v64 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__sendQueue;
  v151 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore11PubSubTopicC8SendItemCGMd, &_sSay14CopresenceCore11PubSubTopicC8SendItemCGMR);
  v65 = v120;
  Published.init(initialValue:)();
  (*(v121 + 32))(v12 + v64, v65);
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue) = v56;
  v66 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMR);
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  *(v12 + v66) = PassthroughSubject.init()();
  v70 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMR);
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  *(v12 + v70) = PassthroughSubject.init()();
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable) = 0;
  v74 = MEMORY[0x1E69E7CD0];
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_upsertMetadataCancellables) = MEMORY[0x1E69E7CD0];
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorCancellables) = v74;
  *(v12 + 16) = v53;
  *(v12 + 24) = v54;
  v75 = v153;
  *(v12 + 32) = v152;
  *(v12 + 48) = v75;
  v76 = v155;
  *(v12 + 64) = v154;
  *(v12 + 80) = v76;
  outlined init with copy of UserNotificationCenter(v148, v12 + 96);
  outlined init with copy of UserNotificationCenter(v147, v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
  swift_beginAccess();
  *(v12 + 144) = v127;
  swift_unknownObjectWeakAssign();
  v77 = v126;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter) = v61;
  if (v77)
  {
    v78 = (v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
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
    v83 = (v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
    *v83 = v80;
    v83[1] = v82;
    if (v61)
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
        v88 = v53;
        v89 = swift_slowAlloc();
        v150[0] = v89;
        *v87 = 136315138;
        v90 = *v83;
        v91 = v83[1];

        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v150);

        *(v87 + 4) = v92;
        v59 = MEMORY[0x1E69E7CC0];
        _os_log_impl(&dword_1AEB26000, v85, v86, "PubSubTopic initialized with a reporter, but no tag. Assigning random tag=%s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        v93 = v89;
        v53 = v88;
        MEMORY[0x1B27120C0](v93, -1, -1);
        MEMORY[0x1B27120C0](v87, -1, -1);
      }
    }
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  strcpy(v150, "PubSubTopic.");
  BYTE5(v150[1]) = 0;
  HIWORD(v150[1]) = -5120;
  MEMORY[0x1B2710020](v53, v54);

  static DispatchQoS.unspecified.getter();
  v150[0] = v59;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v133 + 104))(v132, *MEMORY[0x1E69E8090], v134);
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) = 0;
  v94 = v136;
  if (v136)
  {
    v95 = *(v12 + 120);
    v96 = *(v12 + 128);
    __swift_project_boxed_opaque_existential_1((v12 + 96), v95);
    v97 = (*(v96 + 16))(v95, v96);
    if (*(v94 + 16))
    {
      v98 = specialized __RawDictionaryStorage.find<A>(_:)(v97);
      if (v99)
      {
        v100 = *(*(v94 + 56) + 8 * v98);
        *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = v100;
        *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = v100;
      }
    }

    v101 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked;
    swift_beginAccess();
    v102 = *(v12 + v101);
    *(v12 + v101) = v94;

    v150[0] = v94;
    v103 = *(v12 + 120);
    v104 = *(v12 + 128);
    __swift_project_boxed_opaque_existential_1((v12 + 96), v103);
    v105 = (*(v104 + 16))(v103, v104);
    specialized Dictionary._Variant.removeValue(forKey:)(v105);
    v106 = v150[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v149 = v106;

    static Published.subscript.setter();
  }

  swift_beginAccess();
  v107 = v137;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[PubSubTopic.SendItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR);
  v108 = v140;
  v109 = v139;
  Publisher.map<A>(_:)();
  (*(v138 + 8))(v107, v109);
  swift_beginAccess();
  v110 = v144;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[PubSubTopic.SendItem]>.Publisher, PubSubTopic.QueueState> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR);
  v111 = v142;
  Publisher<>.assign(to:)();
  (*(v141 + 8))(v108, v111);
  v112 = v145;
  v113 = v146;
  (*(v145 + 16))(v143, v110, v146);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v112 + 8))(v110, v113);
  PubSubTopic.bootstrap()();
  __swift_destroy_boxed_opaque_existential_1Tm(v147);
  __swift_destroy_boxed_opaque_existential_1Tm(v148);
  return v12;
}

uint64_t outlined consume of PubSubTopic.ClosedReason?(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined consume of PubSubTopic.ClosedReason(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of PubSubTopic.ClosedReason(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in PubSubTopic.refreshDataCryptorProvider(with:)()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 48))(v0 + 24, v2, v3);
}

unint64_t lazy protocol witness table accessor for type TopicCatchupError and conformance TopicCatchupError()
{
  result = lazy protocol witness table cache variable for type TopicCatchupError and conformance TopicCatchupError;
  if (!lazy protocol witness table cache variable for type TopicCatchupError and conformance TopicCatchupError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopicCatchupError and conformance TopicCatchupError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState()
{
  result = lazy protocol witness table cache variable for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState;
  if (!lazy protocol witness table cache variable for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PubSubTopic.State and conformance PubSubTopic.State()
{
  result = lazy protocol witness table cache variable for type PubSubTopic.State and conformance PubSubTopic.State;
  if (!lazy protocol witness table cache variable for type PubSubTopic.State and conformance PubSubTopic.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubTopic.State and conformance PubSubTopic.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PubSubTopic.PrimaryStreamState and conformance PubSubTopic.PrimaryStreamState()
{
  result = lazy protocol witness table cache variable for type PubSubTopic.PrimaryStreamState and conformance PubSubTopic.PrimaryStreamState;
  if (!lazy protocol witness table cache variable for type PubSubTopic.PrimaryStreamState and conformance PubSubTopic.PrimaryStreamState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubTopic.PrimaryStreamState and conformance PubSubTopic.PrimaryStreamState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PubSubTopic.PrimaryStream and conformance PubSubTopic.PrimaryStream()
{
  result = lazy protocol witness table cache variable for type PubSubTopic.PrimaryStream and conformance PubSubTopic.PrimaryStream;
  if (!lazy protocol witness table cache variable for type PubSubTopic.PrimaryStream and conformance PubSubTopic.PrimaryStream)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubTopic.PrimaryStream and conformance PubSubTopic.PrimaryStream);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PubSubTopic.Participant(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PubSubTopic.Participant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PubSubTopic.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PubSubTopic.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PubSubTopic.Message(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PubSubTopic.Message(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CopresenceCore11PubSubTopicC12ClosedReasonO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for PubSubTopic.ClosedReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PubSubTopic.ClosedReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PubSubTopic.ClosedReason(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PubSubTopic.ReceivedRecord(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PubSubTopic.ReceivedRecord(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for PubSubTopic.SendItem()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

void type metadata completion function for PubSubTopic()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    type metadata accessor for Published<[UInt64 : PubSubTopic.Participant]>(319, &lazy cache variable for type metadata for Published<[UInt64 : PubSubTopic.Participant]>, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Published<PubSubTopic.QueueState>, &type metadata for PubSubTopic.QueueState, MEMORY[0x1E695C070]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        type metadata accessor for Published<[UInt64 : PubSubTopic.Participant]>(319, &lazy cache variable for type metadata for Published<[UInt64 : UInt64]>, &_sSDys6UInt64VABGMd, &_sSDys6UInt64VABGMR);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          type metadata accessor for Published<[UInt64 : PubSubTopic.Participant]>(319, &lazy cache variable for type metadata for Published<[PubSubTopic.SendItem]>, &_sSay14CopresenceCore11PubSubTopicC8SendItemCGMd, &_sSay14CopresenceCore11PubSubTopicC8SendItemCGMR);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined copy of PubSubTopic.ClosedReason(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

uint64_t partial apply for closure #1 in PubSubTopic.nextSeqNum()(uint64_t *a1)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum);
  v3 = v1[15];
  v4 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v3);
  result = (*(v4 + 16))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #2 in closure #1 in closure #3 in PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(uint64_t *a1)
{
  v3 = v1[15];
  v4 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v3);
  result = (*(v4 + 16))(v3, v4);
  *a1 = result;
  a1[1] = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked);
  return result;
}

__n128 partial apply for closure #1 in closure #1 in closure #1 in closure #3 in PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t outlined init with take of (UInt64, UUID)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in PubSubTopic.processInitializeAck(_:)(_BYTE *a1)
{
  v3 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #2 in PubSubTopic.processInitializeAck(_:)(a1, v4, v5, v6);
}

void partial apply for closure #1 in closure #2 in PubSubTopic.processInitializeAck(_:)()
{
  v1 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  closure #1 in closure #2 in PubSubTopic.processInitializeAck(_:)(v2, v3, v4, v5);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #2 in PubSubTopic.processInitializeAck(_:)(uint64_t *a1)
{
  v3 = *(*(v1 + 16) + 8);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t outlined copy of PubSubTopic.ClosedReason?(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined copy of PubSubTopic.ClosedReason(a1, a2);
  }

  return a1;
}

uint64_t _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14CopresenceCore17CP_SequenceNumberVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in PubSubTopic.ack(publisherID:seqNum:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in closure #1 in PubSubTopic.ack(publisherID:seqNum:)(a1);
}

uint64_t PresenceHostSession.updateSuspensionController(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_sessionSuspensionController;
  swift_beginAccess();
  outlined init with copy of SessionSuspensionControllerProtocol?(v1 + v3, v6);
  v4 = v7;
  result = outlined destroy of NSObject?(v6, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of UserNotificationCenter(a1, v6);
    swift_beginAccess();
    outlined assign with take of SessionSuspensionControllerProtocol?(v6, v1 + v3);
    return swift_endAccess();
  }

  return result;
}

id PresenceHostSession.connectionInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_endpoint);
  v2 = type metadata accessor for PresenceSessionConnectionInfo();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint] = v1;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall PresenceHostSession.resetSession()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in PresenceHostSession.resetSession(), v6);
}

uint64_t PresenceHostSession.join()()
{
  v1[12] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.join(), 0, 0);
}

{
  v15 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Received request to join session.", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v10 = v0[12];

  v0[16] = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_workQueue;
  v14 = 1;
  AsyncSerialQueue.precondition(_:)(&v14);
  v11 = swift_allocObject();
  v0[17] = v11;
  *(v11 + 16) = v10;
  v12 = v10;

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.join(), 0, 0);
}

{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[12] + v0[16];
  v0[2] = v0;
  v0[3] = PresenceHostSession.join();
  v6 = swift_continuation_init();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &async function pointer to partial apply for closure #1 in PresenceHostSession.join();
  v7[4] = v1;
  LODWORD(v6) = *(type metadata accessor for AsyncSerialQueue() + 20);
  v8 = swift_allocObject();
  *(v8 + 16) = &async function pointer to partial apply for specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  *(v8 + 24) = v7;
  v0[10] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  v0[11] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 144) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](PresenceHostSession.join(), 0, 0);
  }

  else
  {
    v4 = *(v1 + 136);
    v5 = *(v1 + 120);

    v6 = *(v2 + 8);

    return v6();
  }
}

{
  v1 = v0[17];
  v2 = v0[15];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t PresenceHostSession.leave()()
{
  v1[12] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.leave(), 0, 0);
}

{
  v15 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Received request to leave session.", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v10 = v0[12];

  v0[16] = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_workQueue;
  v14 = 1;
  AsyncSerialQueue.precondition(_:)(&v14);
  v11 = swift_allocObject();
  v0[17] = v11;
  *(v11 + 16) = v10;
  v12 = v10;

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.leave(), 0, 0);
}

{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[12] + v0[16];
  v0[2] = v0;
  v0[3] = PresenceHostSession.leave();
  v6 = swift_continuation_init();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &async function pointer to partial apply for closure #1 in PresenceHostSession.leave();
  v7[4] = v1;
  LODWORD(v6) = *(type metadata accessor for AsyncSerialQueue() + 20);
  v8 = swift_allocObject();
  *(v8 + 16) = &closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)specialized partial apply;
  *(v8 + 24) = v7;
  v0[10] = &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply;
  v0[11] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 144) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](PresenceHostSession.leave(), 0, 0);
  }

  else
  {
    v4 = *(v1 + 136);
    v5 = *(v1 + 120);

    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t PresenceHostSession.updateMembers(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](PresenceHostSession.updateMembers(_:), 0, 0);
}

uint64_t PresenceHostSession.updateMembers(_:)()
{
  v24 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.host);
  v4 = v2;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    type metadata accessor for AddressableMember();
    _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember);
    v12 = v8;
    v13 = Set.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, v5, v6, "%@ Received request to update members to: %s.", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v16 = v0[2];
  v17 = v0[3];
  v22 = 1;
  AsyncSerialQueue.precondition(_:)(&v22);
  v18 = *(**(v17 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presenceController) + 112);

  v18(v19);
  v20 = v0[1];

  return v20();
}

uint64_t PresenceHostSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Int PresenceHostSession.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

Swift::Int PresenceHostSession.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t PresenceHostSession.state.didset()
{
  v17 = 0;
  AsyncSerialQueue.precondition(_:)(&v17);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v2;
    *v8 = v2;
    *(v7 + 12) = 2080;
    v10 = *((*v6 & *v2) + 0xB8);
    v11 = v2;
    v10();
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v7 + 14) = v14;
    v6 = MEMORY[0x1E69E7D40];
    _os_log_impl(&dword_1AEB26000, v3, v4, "%@ updated state to: %s", v7, 0x16u);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  else
  {
  }

  result = (*((*v6 & *v2) + 0xB8))();
  if (result == 4)
  {
    return (*((*v6 & *v2) + 0x128))(0);
  }

  return result;
}

uint64_t PresenceHostSession.state.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession__state);

  CurrentValueSubject.value.getter();

  return v3;
}

uint64_t PresenceHostSession.state.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession__state);

  CurrentValueSubject.send(_:)();

  return PresenceHostSession.state.didset();
}

uint64_t (*PresenceHostSession.state.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession__state;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  CurrentValueSubject.value.getter();

  *(a1 + 16) = *(a1 + 17);
  return PresenceHostSession.state.modify;
}

uint64_t PresenceHostSession.state.modify(uint64_t a1)
{
  v1 = *(*a1 + *(a1 + 8));
  *(a1 + 17) = *(a1 + 16);

  CurrentValueSubject.send(_:)();

  return PresenceHostSession.state.didset();
}

uint64_t PresenceHostSession.suspensionAssertions.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_suspensionAssertions;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

void PresenceHostSession.suspensionAssertions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_suspensionAssertions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  v5 = 0;
  AsyncSerialQueue.precondition(_:)(&v5);
}

void (*PresenceHostSession.suspensionAssertions.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PresenceHostSession.suspensionAssertions.modify;
}

void PresenceHostSession.suspensionAssertions.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = 0;
    AsyncSerialQueue.precondition(_:)(&v5);
  }
}

uint64_t PresenceHostSession.reporter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_reporter;
  swift_beginAccess();
  return outlined init with copy of UserNotificationCenter(v1 + v3, a1);
}

uint64_t PresenceHostSession.reporter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_reporter;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(a1, v1 + v3);
  return swift_endAccess();
}

void PresenceHostSession.connection.willset(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.host);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = static CP_Record._protobuf_nameMap;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31[0] = v11;
    *v9 = 138412802;
    *(v9 + 4) = v5;
    *v10 = v5;
    *(v9 + 12) = 2080;
    v12 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_connection;
    swift_beginAccess();
    v13 = *&v5[v12];
    if (v13)
    {
      type metadata accessor for PresenceSessionHostConnection();
      v14 = v5;
      v15 = v13;
      v16 = String.init<A>(reflecting:)();
      v18 = v17;
    }

    else
    {
      v19 = v5;
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v31);

    *(v9 + 14) = v20;
    *(v9 + 22) = 2080;
    if (a1)
    {
      type metadata accessor for PresenceSessionHostConnection();
      v21 = v4;
      v22 = String.init<A>(reflecting:)();
      v24 = v23;
      v8 = static CP_Record._protobuf_nameMap;
    }

    else
    {
      v24 = 0xE300000000000000;
      v8 = static CP_Record._protobuf_nameMap;
      v22 = 7104878;
    }

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v31);

    *(v9 + 24) = v25;
    _os_log_impl(&dword_1AEB26000, v6, v7, "%@ updated oldConnection: %s newConnection: %s", v9, 0x20u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v26 = v8[203];
  swift_beginAccess();
  v27 = *&v5[v26];
  if (v27)
  {
    v28 = direct field offset for XPCHostConnection.connection;
    v29 = *&v27[direct field offset for XPCHostConnection.connection];
    v30 = v27;
    [v29 setExportedObject_];
    [*&v27[v28] setInvalidationHandler_];
    [*&v27[v28] setInterruptionHandler_];
    [*&v27[v28] invalidate];
  }
}

void *PresenceHostSession.connection.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PresenceHostSession.connection.setter(void *a1)
{
  PresenceHostSession.connection.willset(a1);
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*PresenceHostSession.connection.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_connection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return PresenceHostSession.connection.modify;
}

void PresenceHostSession.connection.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    v7 = v3;
    PresenceHostSession.connection.willset(v3);
    v8 = *(v5 + v6);
    *(v5 + v6) = v3;

    v9 = *v4;
  }

  else
  {
    PresenceHostSession.connection.willset(*(*a1 + 24));
    v9 = *(v5 + v6);
    *(v5 + v6) = v3;
  }

  free(v2);
}

uint64_t PresenceHostSession.presentDeviceListener.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presentDeviceListener;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t PresenceHostSession.presentDeviceListener.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presentDeviceListener;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *PresenceHostSession.init(id:presenceController:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v89 = a2;
  v91 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v84 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v87 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v74 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v74 - v26;
  v28 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession__state;
  LOBYTE(v93) = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGMR);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *&v2[v28] = CurrentValueSubject.init(_:)();
  v32 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_workQueue;
  v77 = type metadata accessor for TaskPriority();
  v33 = *(v77 - 8);
  v76 = *(v33 + 56);
  v78 = v33 + 56;
  v75 = v27;
  v76(v27, 1, 1, v77);
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8650], v19);
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v27, v23, &v3[v32]);
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_suspensionAssertions] = MEMORY[0x1E69E7CD0];
  v34 = &v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_reporter];
  *(v34 + 3) = &type metadata for FastSyncAnalyticsReporter;
  *(v34 + 4) = &protocol witness table for FastSyncAnalyticsReporter;
  *v34 = 0;
  v35 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_abcReporter;
  type metadata accessor for ABCReporter();
  v36 = swift_allocObject();
  v36[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v36[3] = 0x636E795374736146;
  v36[4] = 0xE800000000000000;
  v36[5] = 0x65636E6573657250;
  v36[6] = 0xEF6E6F6973736553;
  *&v3[v35] = v36;
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_connection] = 0;
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presentDeviceListener] = 0;
  v37 = &v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_sessionSuspensionController];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  *(v37 + 4) = 0;
  v38 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_id;
  v39 = v13[2];
  v39(&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_id], v91, v12);
  v40 = [objc_opt_self() anonymousListener];
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_listener] = v40;
  v41 = [v40 endpoint];
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_endpoint] = v41;
  v74[1] = type metadata accessor for OS_dispatch_queue();
  v93 = 0;
  v94 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v93 = 0xD000000000000014;
  v94 = 0x80000001AEE37C60;
  v80 = v39;
  v39(v18, &v3[v38], v12);
  v74[0] = _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v42);

  v43 = v13[1];
  v90 = v12;
  v88 = v13 + 1;
  v81 = v43;
  v43(v18, v12);
  static DispatchQoS.unspecified.getter();
  v93 = MEMORY[0x1E69E7CC0];
  _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v85 + 104))(v84, *MEMORY[0x1E69E8090], v86);
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presenceController] = v89;
  v44 = type metadata accessor for PresenceHostSession(0);
  v95.receiver = v3;
  v95.super_class = v44;

  v45 = objc_msgSendSuper2(&v95, sel_init);
  v46 = v75;
  v76(v75, 1, 1, v77);
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = v45;
  v48 = v45;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v46, &async function pointer to partial apply for closure #1 in PresenceHostSession.init(id:presenceController:), v47);
  v49 = type metadata accessor for AnyCancellable();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();

  v52 = AnyCancellable.init(_:)();
  v53 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presentDeviceListener;
  swift_beginAccess();
  v54 = *&v48[v53];
  *&v48[v53] = v52;

  v55 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_listener;
  v56 = *&v48[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_listener];
  [v56 setDelegate_];

  [*&v48[v55] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  __swift_project_value_buffer(v57, static Log.host);
  v58 = v87;
  v59 = v91;
  v80(v87, v91, v90);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v92 = v63;
    *v62 = 136315138;
    v64 = v90;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v58;
    v68 = v67;
    v69 = v81;
    v81(v66, v64);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v68, &v92);

    *(v62 + 4) = v70;
    _os_log_impl(&dword_1AEB26000, v60, v61, "Initialized PresenceHostSession with identifier: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x1B27120C0](v63, -1, -1);
    MEMORY[0x1B27120C0](v62, -1, -1);

    v69(v91, v90);
  }

  else
  {

    v71 = v90;
    v72 = v81;
    v81(v59, v90);
    v72(v58, v71);
  }

  return v48;
}

uint64_t outlined init with copy of SessionSuspensionControllerProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of SessionSuspensionControllerProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in PresenceHostSession.init(id:presenceController:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x158);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v9();
}

uint64_t PresenceHostSession.listenForUpdatedDevices()()
{
  v1[25] = v0;
  v2 = type metadata accessor for UUID();
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v1[29] = v5;
  v6 = *(v5 - 8);
  v1[30] = v6;
  v7 = *(v6 + 64) + 15;
  v1[31] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v1[32] = v8;
  v9 = *(v8 - 8);
  v1[33] = v9;
  v10 = *(v9 + 64) + 15;
  v1[34] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGGMR);
  v1[35] = v11;
  v12 = *(v11 - 8);
  v1[36] = v12;
  v13 = *(v12 + 64) + 15;
  v1[37] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR);
  v1[38] = v14;
  v15 = *(v14 - 8);
  v1[39] = v15;
  v16 = *(v15 + 64) + 15;
  v1[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.listenForUpdatedDevices(), 0, 0);
}

{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[41] = __swift_project_value_buffer(v1, static Log.host);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Waiting for presenceController to provide updated devices.", v4, 2u);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v5 = v0[40];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];
  v9 = v0[25];

  v0[19] = (*(**(v9 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presenceController) + 152))();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMR);
  v11 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[PresentDevice], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMR);
  MEMORY[0x1B270F520](v10, v11);

  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v6, v8);
  v12 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[PresentDevice], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR);
  v13 = *(MEMORY[0x1E69E85A8] + 4);
  v14 = swift_task_alloc();
  v0[42] = v14;
  *v14 = v0;
  v14[1] = PresenceHostSession.listenForUpdatedDevices();
  v15 = v0[40];
  v16 = v0[38];

  return MEMORY[0x1EEE6D8C8](v0 + 20, v16, v12);
}

{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = PresenceHostSession.listenForUpdatedDevices();
  }

  else
  {
    v3 = PresenceHostSession.listenForUpdatedDevices();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  *(v0 + 352) = *(v0 + 160);
  return MEMORY[0x1EEE6DFA0](PresenceHostSession.listenForUpdatedDevices(), 0, 0);
}

{
  v78 = v0;
  v1 = v0[44];
  v2 = v0[41];
  if (v1)
  {
    v3 = v0[44];

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v77 = v7;
      *v6 = 136315138;
      v0[24] = v1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore13PresentDevice_pGMd, &_sSay14CopresenceCore13PresentDevice_pGMR);
      v8 = String.init<A>(reflecting:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v77);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1AEB26000, v4, v5, "Received updated present devices: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1B27120C0](v7, -1, -1);
      MEMORY[0x1B27120C0](v6, -1, -1);
    }

    v11 = MEMORY[0x1E69E7D40];
    v12 = (*((*MEMORY[0x1E69E7D40] & *v0[25]) + 0x108))();
    if (v12)
    {
      v13 = v12;
      v14 = *(v1 + 16);
      v15 = (*((*v11 & *v0[25]) + 0x100))(v0 + 13);
      v16 = v1;
      v18 = *(v17 + 24);
      v19 = *(v17 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      (*(v19 + 16))(v14, v18, v19);
      v15(v0 + 13, 0);
      v20 = MEMORY[0x1E69E7CC0];
      if (v14)
      {
        v70 = v13;
        v0[22] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v21 = v16 + 32;
        do
        {
          v22 = v0[27];
          v23 = v0[28];
          v73 = v0[26];
          v75 = v14;
          outlined init with copy of UserNotificationCenter(v21, (v0 + 8));
          v25 = v0[11];
          v24 = v0[12];
          __swift_project_boxed_opaque_existential_1(v0 + 8, v25);
          (*(v24 + 16))(v25, v24);
          v26 = v0[11];
          v27 = v0[12];
          __swift_project_boxed_opaque_existential_1(v0 + 8, v26);
          v28 = (*(v27 + 24))(v26, v27);
          v30 = v29;
          v32 = v0[11];
          v31 = v0[12];
          __swift_project_boxed_opaque_existential_1(v0 + 8, v32);
          LOBYTE(v31) = (*(v31 + 32))(v32, v31);
          v33 = type metadata accessor for PresenceSessionParticipant();
          v34 = objc_allocWithZone(v33);
          *&v34[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id] = UUID._bridgeToObjectiveC()();
          v35 = MEMORY[0x1B270FF70](v28, v30);

          *&v34[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle] = v35;
          v34[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice] = v31 & 1;
          v0[17] = v34;
          v0[18] = v33;
          objc_msgSendSuper2((v0 + 17), sel_init);
          (*(v22 + 8))(v23, v73);
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v36 = *(v0[22] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v21 += 40;
          v14 = v75 - 1;
        }

        while (v75 != 1);

        v37 = v0[22];
        v13 = v70;
        v20 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v37 = MEMORY[0x1E69E7CC0];
      }

      v57 = v0[34];
      v58 = v0[31];
      v74 = v0[33];
      v76 = v0[32];
      v59 = v0[29];
      v71 = v0[30];
      v60 = *&v13[direct field offset for XPCHostConnection.queue];
      v61 = swift_allocObject();
      *(v61 + 16) = v13;
      *(v61 + 24) = v37;
      v0[6] = partial apply for closure #2 in PresenceHostSession.listenForUpdatedDevices();
      v0[7] = v61;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v0[5] = &block_descriptor_37;
      v62 = _Block_copy(v0 + 2);
      v63 = v60;
      aBlock = v13;
      static DispatchQoS.unspecified.getter();
      v0[23] = v20;
      _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1B27106E0](0, v57, v58, v62);
      _Block_release(v62);

      (*(v71 + 8))(v58, v59);
      (*(v74 + 8))(v57, v76);
      v64 = v0[7];
    }

    else
    {
      v48 = v0[41];
      v49 = v0[25];

      v50 = v49;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = v0[25];
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        *(v54 + 4) = v53;
        *v55 = v53;
        v56 = v53;
        _os_log_impl(&dword_1AEB26000, v51, v52, "%@ Ignoring updated devices because there is no XPC connection to the client.", v54, 0xCu);
        outlined destroy of NSObject?(v55, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27120C0](v55, -1, -1);
        MEMORY[0x1B27120C0](v54, -1, -1);
      }
    }

    v65 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[PresentDevice], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR);
    v66 = *(MEMORY[0x1E69E85A8] + 4);
    v67 = swift_task_alloc();
    v0[42] = v67;
    *v67 = v0;
    v67[1] = PresenceHostSession.listenForUpdatedDevices();
    v68 = v0[40];
    v69 = v0[38];

    return MEMORY[0x1EEE6D8C8](v0 + 20, v69, v65);
  }

  else
  {
    (*(v0[39] + 8))(v0[40], v0[38]);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1AEB26000, v38, v39, "PresenceController finished providing devices. ", v40, 2u);
      MEMORY[0x1B27120C0](v40, -1, -1);
    }

    v41 = v0[40];
    v42 = v0[37];
    v43 = v0[34];
    v44 = v0[31];
    v45 = v0[28];

    v46 = v0[1];

    return v46();
  }
}

{
  *(v0 + 168) = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void closure #2 in PresenceHostSession.listenForUpdatedDevices()(uint64_t a1)
{
  v1 = [*(a1 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24PresenceSessionXPCClient_pMd, &_s14CopresenceCore24PresenceSessionXPCClient_pMR);
  if (swift_dynamicCast())
  {
    type metadata accessor for PresenceSessionParticipant();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v3 updatePresentDevicesWithDevices_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t PresenceHostSession.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(32);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1B2710020](v1);

  MEMORY[0x1B2710020](0x203A666C6573283ELL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](0x203A6469202CLL, 0xE600000000000000);
  type metadata accessor for UUID();
  _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v2);

  v3 = MEMORY[0x1B2710020](0x3A6574617473202CLL, 0xE900000000000020);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v3);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

id PresenceHostSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresenceHostSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenceHostSession(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Identifiable.id.getter in conformance PresenceHostSession@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t protocol witness for SessionSuspensionControllerTarget.acquireSuspensionAssertion() in conformance PresenceHostSession()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SessionSuspensionControllerTarget.acquireSuspensionAssertion() in conformance PresenceHostSession;

  return PresenceHostSession.acquireSuspensionAssertion()();
}

uint64_t protocol witness for SessionSuspensionControllerTarget.acquireSuspensionAssertion() in conformance PresenceHostSession(uint64_t a1)
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

uint64_t PresenceHostSession.acquireSuspensionAssertion()()
{
  v1[13] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0);
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v1[19] = *(v6 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.acquireSuspensionAssertion(), 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[13];
  UUID.init()();
  v7 = *(v5 + 20);
  swift_unknownObjectWeakInit();
  v0[22] = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_workQueue;
  outlined init with copy of AsyncSerialQueue(v2, v1, type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion());
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[23] = v9;
  *(v9 + 16) = v6;
  outlined init with take of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(v1, v9 + v8);
  v10 = v6;

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.acquireSuspensionAssertion(), 0, 0);
}

{
  v1 = v0[23];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[13] + v0[22];
  v0[2] = v0;
  v0[7] = v0 + 12;
  v0[3] = PresenceHostSession.acquireSuspensionAssertion();
  v6 = swift_continuation_init();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &async function pointer to partial apply for closure #1 in PresenceHostSession.acquireSuspensionAssertion();
  v7[4] = v1;
  LODWORD(v6) = *(type metadata accessor for AsyncSerialQueue() + 20);
  v8 = swift_allocObject();
  *(v8 + 16) = &async function pointer to partial apply for specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  *(v8 + 24) = v7;
  v0[10] = &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply;
  v0[11] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = PresenceHostSession.acquireSuspensionAssertion();
  }

  else
  {
    v5 = v1[23];

    v1[25] = v1[12];
    v4 = PresenceHostSession.acquireSuspensionAssertion();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[16];
  outlined destroy of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(v0[21], type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion());

  v3 = v0[1];
  v4 = v0[25];

  return v3(v4);
}

{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[16];

  outlined destroy of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(v3, type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion());

  v5 = v0[1];
  v6 = v0[24];

  return v5();
}

uint64_t closure #1 in PresenceHostSession.join()()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = closure #1 in PresenceHostSession.join();
  v3 = *(v0 + 16);

  return specialized PresenceHostSession.invalidation(block:)(v3);
}

{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t PresenceHostSession._join()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceHostSession._join(), 0, 0);
}

{
  v15 = v0;
  v1 = *(v0 + 16);
  v14 = 0;
  AsyncSerialQueue.precondition(_:)(&v14);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.host);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 16);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_1AEB26000, v5, v6, "%@ processing request to join", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v11 = swift_task_alloc();
  *(v0 + 24) = v11;
  *v11 = v0;
  v11[1] = PersonalPresenceDataSource.assertPresence(using:);
  v12 = *(v0 + 16);

  return PresenceHostSession.assertPresence()();
}

uint64_t PresenceHostSession.invalidation(block:)(int *a1)
{
  *(v2 + 24) = v1;
  v6 = (a1 + *a1);
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = PresenceHostSession.invalidation(block:);

  return v6();
}

uint64_t PresenceHostSession.invalidation(block:)()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PresenceHostSession.invalidation(block:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v28 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.service);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v0[2] = v8;
    v13 = v9;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v27);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Invalidating %@ due to invalidation block throwing error. %s", v10, 0x16u);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  else
  {
    v18 = v0[3];
  }

  v19 = v0[3];
  v20 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v19) + 0xC0))(4);
  (*((*v20 & *v19) + 0x110))(0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1AEB26000, v21, v22, "Releasing presence assertion due to invalidation.", v23, 2u);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  v24 = swift_task_alloc();
  v0[6] = v24;
  *v24 = v0;
  v24[1] = PresenceHostSession.invalidation(block:);
  v25 = v0[3];

  return PresenceHostSession.releasePresence()();
}

{
  v2 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.invalidation(block:), 0, 0);
}

uint64_t PresenceHostSession.assertPresence()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.assertPresence(), 0, 0);
}

{
  v33 = v0;
  v1 = *(v0 + 16);
  v32 = 0;
  AsyncSerialQueue.precondition(_:)(&v32);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  *(v0 + 32) = __swift_project_value_buffer(v3, static Log.service);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 16);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&dword_1AEB26000, v5, v6, "%@ Received request to assert presence", v9, 0xCu);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  *(v0 + 40) = v8;
  v12 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0xB8))();
  if (v12 <= 1)
  {
    if (v12)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Failing to assert presence because we're already asserted.";
        goto LABEL_20;
      }

      goto LABEL_21;
    }
  }

  else if (v12 != 2)
  {
    if (v12 == 3)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Failing to assert presence because session is currently leaving and shouldn't have been able to re-enter.";
LABEL_20:
        _os_log_impl(&dword_1AEB26000, v13, v14, v16, v15, 2u);
        MEMORY[0x1B27120C0](v15, -1, -1);
      }
    }

    else
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Failing to assert presence because we're in the invalidated state.";
        goto LABEL_20;
      }
    }

LABEL_21:

    lazy protocol witness table accessor for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors();
    swift_allocError();
    swift_willThrow();
    v29 = *(v0 + 24);

    v30 = *(v0 + 8);

    return v30();
  }

  v17 = *(v0 + 16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 16);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v20;
    *v22 = v8;
    v23 = v20;
    _os_log_impl(&dword_1AEB26000, v18, v19, "%@ asserting presence", v21, 0xCu);
    outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v22, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  v24 = *(v0 + 16);

  v25 = *(**(v24 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presenceController) + 192);
  v31 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 48) = v27;
  *v27 = v0;
  v27[1] = PresenceHostSession.assertPresence();

  return v31();
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 24);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](PresenceHostSession.assertPresence(), 0, 0);
  }
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v5;
    v9 = v6;
    _os_log_impl(&dword_1AEB26000, v3, v4, "%@ Asserted presence", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 16);

  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0xC0))(1);
  if ((*((*v12 & *v11) + 0x120))(v13))
  {
  }

  else
  {
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    static TaskPriority.background.getter();
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;
    v18 = v15;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in PresenceHostSession.assertPresence(), v17);

    outlined destroy of NSObject?(v14, &_sScPSgMd, &_sScPSgMR);
  }

  v19 = *(v0 + 24);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t closure #1 in PresenceHostSession.leave()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return PresenceHostSession._leave(endState:)(4);
}

uint64_t PresenceHostSession._leave(endState:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 50) = a1;
  return MEMORY[0x1EEE6DFA0](PresenceHostSession._leave(endState:), 0, 0);
}

uint64_t PresenceHostSession._leave(endState:)()
{
  v44 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = *(v0 + 50);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43[0] = v11;
    *v9 = 138412546;
    *(v9 + 4) = v7;
    *v10 = v7;
    *(v9 + 12) = 2080;
    *(v0 + 49) = v8;
    v12 = v7;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v43);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Received request to leave current session with an end-desired state of: %s", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  *(v0 + 24) = v7;
  v16 = *(v0 + 16);
  v17 = *(v0 + 50);
  LOBYTE(v43[0]) = 0;
  AsyncSerialQueue.precondition(_:)(v43);
  v18 = MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & *v16) + 0xB8);
  if (v17 == v19())
  {
    v20 = *(v0 + 16);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 16);
      v24 = *(v0 + 50);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43[0] = v27;
      *v25 = 138412546;
      *(v25 + 4) = v23;
      *v26 = v7;
      *(v25 + 12) = 2080;
      *(v0 + 48) = v24;
      v28 = v23;
      v29 = String.init<A>(reflecting:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v43);

      *(v25 + 14) = v31;
      _os_log_impl(&dword_1AEB26000, v21, v22, "%@ is already in desired end-state: %s", v25, 0x16u);
      outlined destroy of NSObject?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1B27120C0](v27, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

LABEL_9:
    specialized $defer #1 () in PresenceHostSession._leave(endState:)(*(v0 + 16));
    v32 = *(v0 + 8);
LABEL_25:

    return v32();
  }

  v33 = v19();
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      v38 = *(v0 + 50);
      if (v38 == 4)
      {
        (*((*v18 & **(v0 + 16)) + 0xC0))(3);
        v38 = *(v0 + 50);
      }

      v39 = *(v0 + 24);
      (*((*v18 & **(v0 + 16)) + 0xC0))(v38);
      goto LABEL_9;
    }

    if (v33 == 3)
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "Session is currently leaving and shouldn't have been able to re-enter.";
LABEL_23:
        _os_log_impl(&dword_1AEB26000, v34, v35, v37, v36, 2u);
        MEMORY[0x1B27120C0](v36, -1, -1);
        goto LABEL_24;
      }
    }

    else
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "Session is currently invalidated. Can't leave.";
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

  if (!v33)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "Session is currently idle in .waiting state. Can't leave.";
      goto LABEL_23;
    }

LABEL_24:

    lazy protocol witness table accessor for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors();
    swift_allocError();
    swift_willThrow();
    specialized $defer #1 () in PresenceHostSession._leave(endState:)(*(v0 + 16));
    v32 = *(v0 + 8);
    goto LABEL_25;
  }

  if (*(v0 + 50) == 4)
  {
    (*((*v18 & **(v0 + 16)) + 0xC0))(3);
  }

  v41 = swift_task_alloc();
  *(v0 + 32) = v41;
  *v41 = v0;
  v41[1] = PresenceHostSession._leave(endState:);
  v42 = *(v0 + 16);

  return PresenceHostSession.releasePresence()();
}

{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = PresenceHostSession._leave(endState:);
  }

  else
  {
    v3 = PresenceHostSession._leave(endState:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 24);
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0xC0))(*(v0 + 50));
  specialized $defer #1 () in PresenceHostSession._leave(endState:)(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 24);
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0xC0))(*(v0 + 50));
  v2 = *(v0 + 40);
  specialized $defer #1 () in PresenceHostSession._leave(endState:)(*(v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t PresenceHostSession.releasePresence()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceHostSession.releasePresence(), 0, 0);
}

{
  v8 = v0;
  v1 = *(v0 + 24);
  v7 = 0;
  AsyncSerialQueue.precondition(_:)(&v7);
  v2 = *(**(v1 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presenceController) + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = PresenceHostSession.releasePresence();

  return v6();
}

{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](BackgroundSession.releasePresence(), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t closure #1 in PresenceHostSession.assertPresence()()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_abcReporter);
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0x80000001AEE31310;
    v4 = 0xD00000000000001DLL;
  }

  v7 = (*(*v1 + 112))(0xD000000000000011, 0x80000001AEE37D60, 0xD00000000000002FLL, 0x80000001AEE37D80, v4, v6);
  v0[3] = v7;

  if (v7)
  {
    v8 = *(*v1 + 120);
    v18 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[4] = v10;
    *v10 = v0;
    v10[1] = closure #2 in IDSGroupSessionProvider.requestParticipant(for:);
    v11.n128_u64[0] = 0;

    return v18(v7, v11);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.abcReporter);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1AEB26000, v14, v15, "Failed to generate signature for session unsuspend failure", v16, 2u);
      MEMORY[0x1B27120C0](v16, -1, -1);
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t closure #1 in PresenceHostSession.resetSession()()
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Resetting session", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = closure #1 in PresenceHostSession.resetSession();
  v11 = v0[3];

  return PresenceHostSession.leave()();
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in PresenceHostSession.resetSession(), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v17 = v0;
  v1 = v0[6];
  v2 = v0[4];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Failed to reset session, error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  else
  {
    v13 = v0[6];
  }

  v14 = v0[1];

  return v14();
}

uint64_t partial apply for closure #1 in PresenceHostSession.resetSession()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.resetSession()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in PresenceHostSession.join()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.join()(a1, v4);
}

uint64_t PresenceHostSession.suspend()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceHostSession.suspend(), 0, 0);
}

{
  v45 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  *(v0 + 24) = __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Handling request to suspend", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  *(v0 + 32) = v7;
  v11 = *(v0 + 16);
  v44 = 0;
  AsyncSerialQueue.precondition(_:)(&v44);
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*((*MEMORY[0x1E69E7D40] & *v11) + 0xD8))() + 16);

  v15 = *(v0 + 16);
  if (!v13)
  {
    v25 = v15;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = "%@ Not suspending because we have no suspension assertions";
LABEL_18:
      v33 = *(v0 + 16);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v33;
      *v35 = v7;
      v36 = v33;
      _os_log_impl(&dword_1AEB26000, v26, v27, v28, v34, 0xCu);
      outlined destroy of NSObject?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v35, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

LABEL_19:

    v37 = *(v0 + 8);
LABEL_24:

    return v37();
  }

  v16 = (*((*v12 & *v15) + 0xB8))(v14);
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      if (v16 == 3)
      {
        v17 = *(v0 + 16);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = *(v0 + 16);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v20;
          *v22 = v7;
          v23 = v20;
          v24 = "%@ Session is currently leaving and shouldn't have been able to re-enter.";
LABEL_22:
          _os_log_impl(&dword_1AEB26000, v18, v19, v24, v21, 0xCu);
          outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B27120C0](v22, -1, -1);
          MEMORY[0x1B27120C0](v21, -1, -1);
          goto LABEL_23;
        }
      }

      else
      {
        v38 = *(v0 + 16);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v39 = *(v0 + 16);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v39;
          *v22 = v7;
          v40 = v39;
          v24 = "%@ Session is currently invalidated. Can't suspend.";
          goto LABEL_22;
        }
      }

      goto LABEL_23;
    }

    v32 = *(v0 + 16);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = "%@ already suspended.";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (!v16)
  {
    v29 = *(v0 + 16);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v30 = *(v0 + 16);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v30;
      *v22 = v7;
      v31 = v30;
      v24 = "%@ can't suspend without an idle session";
      goto LABEL_22;
    }

LABEL_23:

    lazy protocol witness table accessor for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors();
    swift_allocError();
    swift_willThrow();
    v37 = *(v0 + 8);
    goto LABEL_24;
  }

  v42 = swift_task_alloc();
  *(v0 + 40) = v42;
  *v42 = v0;
  v42[1] = PresenceHostSession.suspend();
  v43 = *(v0 + 16);

  return PresenceHostSession._leave(endState:)(2);
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PresenceHostSession.suspend(), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 32);
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v8;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_1AEB26000, v5, v6, "%@ Suspend's leave failed, reason: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  v15 = *(v0 + 48);
  swift_willThrow();
  v16 = *(v0 + 8);

  return v16();
}

uint64_t PresenceHostSession.unsuspend()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceHostSession.unsuspend(), 0, 0);
}

{
  v33 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.service);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Handling request to unsuspend", v4, 2u);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  LOBYTE(v32[0]) = 0;
  AsyncSerialQueue.precondition(_:)(v32);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xD8);
  v8 = *(v7() + 16);

  v10 = *(v0 + 16);
  if (v8)
  {
    v11 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 16);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32[0] = v16;
      *v15 = 136315138;
      v7();
      type metadata accessor for UUID();
      _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v17 = Set.description.getter();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v32);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1AEB26000, v12, v13, "Not unsuspending due to active suspension assertions: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    v21 = *(v0 + 8);
LABEL_16:

    return v21();
  }

  if ((*((*v6 & *v10) + 0xB8))(v9) != 2)
  {
    v25 = *(v0 + 16);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 16);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v28;
      *v30 = v5;
      v31 = v28;
      _os_log_impl(&dword_1AEB26000, v26, v27, "%@ Can't unsuspend without a suspended session.", v29, 0xCu);
      outlined destroy of NSObject?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v30, -1, -1);
      MEMORY[0x1B27120C0](v29, -1, -1);
    }

    lazy protocol witness table accessor for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors();
    swift_allocError();
    swift_willThrow();
    v21 = *(v0 + 8);
    goto LABEL_16;
  }

  v22 = swift_task_alloc();
  *(v0 + 24) = v22;
  *v22 = v0;
  v22[1] = PersonalPresenceDataSource.assertPresence(using:);
  v23 = *(v0 + 16);

  return PresenceHostSession._join()();
}

uint64_t PresenceHostSession.releaseSuspensionAssertion(_:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v2[19] = *(v7 + 64);
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.releaseSuspensionAssertion(_:), 0, 0);
}

uint64_t PresenceHostSession.releaseSuspensionAssertion(_:)()
{
  v12 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[13];
  v0[21] = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_workQueue;
  v11 = 1;
  AsyncSerialQueue.precondition(_:)(&v11);
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[22] = v8;
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = v6;

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.releaseSuspensionAssertion(_:), 0, 0);
}

{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[13] + v0[21];
  v0[2] = v0;
  v0[3] = PersonalPresenceController.assertPresence(for:);
  v6 = swift_continuation_init();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &async function pointer to partial apply for closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:);
  v7[4] = v1;
  LODWORD(v6) = *(type metadata accessor for AsyncSerialQueue() + 20);
  v8 = swift_allocObject();
  *(v8 + 16) = &closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)specialized partial apply;
  *(v8 + 24) = v7;
  v0[10] = &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply;
  v0[11] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:), 0, 0);
}

uint64_t closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 56)) + 0xE8))(v0 + 16);
  specialized Set._Variant.remove(_:)(v2, v1);
  outlined destroy of NSObject?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3(v0 + 16, 0);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:);
  v5 = *(v0 + 56);

  return PresenceHostSession.unsuspend()();
}

{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:), 0, 0);
  }

  else
  {
    v5 = v3[9];
    v4 = v3[10];

    v6 = v3[1];

    return v6();
  }
}

{
  v27 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  static TaskPriority.background.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;
  v6 = v1;
  v7 = v3;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:), v5);

  outlined destroy of NSObject?(v2, &_sScPSgMd, &_sScPSgMR);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v8 = v0[12];
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.service);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[12];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    v0[6] = v13;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v26);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v11, v12, "Failed to unsuspend: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v20 = v0[12];
  v21 = v0[9];
  v22 = v0[10];
  swift_willThrow();

  v23 = v0[1];
  v24 = v0[12];

  return v23();
}

uint64_t closure #1 in closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)()
{
  v1 = v0[4];
  v2 = *(v0[3] + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_abcReporter);
  _StringGuts.grow(_:)(43);

  v0[2] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v4);

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0x80000001AEE31310;
    v7 = 0xD00000000000001DLL;
  }

  v10 = (*(*v2 + 112))(0xD000000000000011, 0x80000001AEE37D40, 0xD000000000000029, 0x80000001AEE37D10, v7, v9);
  v0[5] = v10;

  if (v10)
  {
    v11 = *(*v2 + 120);
    v21 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[6] = v13;
    *v13 = v0;
    v13[1] = closure #2 in BackgroundSession.reset();
    v14.n128_u64[0] = 0;

    return v21(v10, v14);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.abcReporter);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1AEB26000, v17, v18, "Failed to generate signature for session unsuspend failure", v19, 2u);
      MEMORY[0x1B27120C0](v19, -1, -1);
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[14] = v6;
  v7 = *(v6 - 8);
  v3[15] = v7;
  v8 = *(v7 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PresenceHostSession.acquireSuspensionAssertion(), 0, 0);
}

uint64_t closure #1 in PresenceHostSession.acquireSuspensionAssertion()()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[8];
  (*(v4 + 16))(v2, v0[9], v3);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0xE8))(v0 + 2);
  specialized Set._Variant.insert(_:)(v1, v2);
  (*(v4 + 8))(v1, v3);
  v6(v0 + 2, 0);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = closure #1 in PresenceHostSession.acquireSuspensionAssertion();
  v8 = v0[8];

  return PresenceHostSession.suspend()();
}

{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = closure #1 in PresenceHostSession.acquireSuspensionAssertion();
  }

  else
  {
    v3 = closure #1 in PresenceHostSession.acquireSuspensionAssertion();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[7];
  outlined init with copy of AsyncSerialQueue(v0[9], v3, type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion());
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(v3, v8 + v7);
  v9 = type metadata accessor for AnyCancellable();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *v6 = AnyCancellable.init(_:)();

  v12 = v0[1];

  return v12();
}

{
  v29 = v0;
  v1 = v0[19];
  v2 = v0[10];
  v3 = v0[8];
  static TaskPriority.background.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;
  v6 = v1;
  v7 = v3;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in closure #1 in PresenceHostSession.acquireSuspensionAssertion(), v5);

  outlined destroy of NSObject?(v2, &_sScPSgMd, &_sScPSgMR);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v8 = v0[19];
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.service);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[19];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    v0[6] = v13;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v11, v12, "Failed to suspend: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v20 = v0[19];
  v21 = v0[16];
  v22 = v0[17];
  v23 = v0[13];
  v24 = v0[10];
  swift_willThrow();

  v25 = v0[1];
  v26 = v0[19];

  return v25();
}

uint64_t closure #1 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PresenceHostSession.acquireSuspensionAssertion(), 0, 0);
}

uint64_t closure #1 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()()
{
  v1 = 0xD00000000000001DLL;
  v2 = v0[4];
  v3 = *(v0[3] + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_abcReporter);
  _StringGuts.grow(_:)(41);

  v0[2] = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v5);

  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0x80000001AEE31310;
  }

  v10 = (*(*v3 + 112))(0x206E6F6973736553, 0xEF646E6570737553, 0xD000000000000027, 0x80000001AEE37DB0, v1, v9);
  v0[5] = v10;

  if (v10)
  {
    v11 = *(*v3 + 120);
    v21 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[6] = v13;
    *v13 = v0;
    v13[1] = closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:);
    v14.n128_u64[0] = 0;

    return v21(v10, v14);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.abcReporter);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1AEB26000, v17, v18, "Failed to generate signature for session suspend failure", v19, 2u);
      MEMORY[0x1B27120C0](v19, -1, -1);
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v2 = type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  outlined init with copy of AsyncSerialQueue(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion());
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  outlined init with take of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCytSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion(), v11);
}

uint64_t closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion(), 0, 0);
}

uint64_t closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()()
{
  v1 = *(v0 + 24);
  v2 = *(type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) + 20);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion();
    v5 = *(v0 + 24);

    return PresenceHostSession.releaseSuspensionAssertion(_:)(v5);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion();
  }

  else
  {

    v4 = closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  **(v0 + 16) = *(v0 + 32) == 0;
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t partial apply for closure #1 in PresenceHostSession.leave()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.leave()();
}

uint64_t partial apply for closure #1 in PresenceHostSession.init(id:presenceController:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.init(id:presenceController:)(a1, v4, v5, v6);
}

uint64_t outlined init with copy of AsyncSerialQueue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v4 = *(type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.acquireSuspensionAssertion()(a1, v6, v1 + v5);
}

unint64_t lazy protocol witness table accessor for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors()
{
  result = lazy protocol witness table cache variable for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors;
  if (!lazy protocol witness table cache variable for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors;
  if (!lazy protocol witness table cache variable for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors);
  }

  return result;
}

uint64_t specialized PresenceHostSession.invalidation(block:)(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = specialized PresenceHostSession.invalidation(block:);

  return PresenceHostSession._join()();
}

uint64_t specialized PresenceHostSession.invalidation(block:)()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized PresenceHostSession.invalidation(block:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v28 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.service);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v0[2] = v8;
    v13 = v9;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v27);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Invalidating %@ due to invalidation block throwing error. %s", v10, 0x16u);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  else
  {
    v18 = v0[3];
  }

  v19 = v0[3];
  v20 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v19) + 0xC0))(4);
  (*((*v20 & *v19) + 0x110))(0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1AEB26000, v21, v22, "Releasing presence assertion due to invalidation.", v23, 2u);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  v24 = swift_task_alloc();
  v0[6] = v24;
  *v24 = v0;
  v24[1] = specialized PresenceHostSession.invalidation(block:);
  v25 = v0[3];

  return PresenceHostSession.releasePresence()();
}

{
  v2 = *(*v1 + 48);
  v5 = *v1;

  if (v0)
  {

    v3 = PresenceHostSession.invalidation(block:);
  }

  else
  {
    v3 = specialized PresenceHostSession.invalidation(block:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 40);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 40);

  return v2();
}

uint64_t specialized $defer #1 () in PresenceHostSession._leave(endState:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x108))();
  if (result)
  {
    v4 = *(result + direct field offset for XPCHostConnection.bundleIdentifier + 8);
    v19 = *(result + direct field offset for XPCHostConnection.bundleIdentifier);
    v5 = result;

    v6 = *((*v2 & *a1) + 0xF0);
    v6(v26);
    v7 = v27;
    v8 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v18 = UUID.uuidString.getter();
    v10 = v9;
    v6(v23);
    v12 = v24;
    v11 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = (*(v11 + 8))(v12, v11);
    v14 = __swift_destroy_boxed_opaque_existential_1Tm(v23);
    (v6)(v20, v14);
    v15 = v21;
    v16 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v17 = (*(v16 + 8))(v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    (*(v8 + 32))(v18, v10, v19, v4, v13, v17 == 33, v7, v8);

    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  return result;
}

uint64_t partial apply for closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(a1, v6, v1 + v5);
}

uint64_t specialized PresenceHostSession.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Asked to accept new connection from: %@", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xB8))())
  {
    v11 = v5;
    v12 = v2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v13, v14))
    {
LABEL_9:

      return 0;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v11;
    v16[1] = v2;
    v17 = v11;
    v18 = v12;
    _os_log_impl(&dword_1AEB26000, v13, v14, "PresenceSessionHostConnection for connection: %@ rejected for invalid state. %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v16, -1, -1);
    v19 = v15;
LABEL_8:
    MEMORY[0x1B27120C0](v19, -1, -1);
    goto LABEL_9;
  }

  v21 = *(v2 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_queue);
  v22 = objc_allocWithZone(type metadata accessor for PresenceSessionHostConnection());
  v23 = v5;
  v24 = v21;
  v25 = PresenceSessionHostConnection.init(connection:queue:)(v23, v24);
  if (!v25)
  {
    v33 = v23;
    v13 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v34))
    {

      v13 = v33;
      goto LABEL_9;
    }

    v35 = swift_slowAlloc();
    *v35 = 67109120;
    *(v35 + 4) = [v33 processIdentifier];

    _os_log_impl(&dword_1AEB26000, v13, v34, "PresenceSessionHostConnection could not be created; rejecting connection from PID: %d", v35, 8u);
    v19 = v35;
    goto LABEL_8;
  }

  v20 = 1;
  v26 = v25;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  *(v27 + 24) = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #1 in PresenceHostSession.listener(_:shouldAcceptNewConnection:);
  *(v28 + 24) = v27;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_106_0;
  v29 = _Block_copy(aBlock);
  v30 = v2;
  v31 = v26;

  dispatch_sync(v24, v29);

  _Block_release(v29);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if ((v31 & 1) == 0)
  {
    return v20;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PresenceHostSession.State and conformance PresenceHostSession.State()
{
  result = lazy protocol witness table cache variable for type PresenceHostSession.State and conformance PresenceHostSession.State;
  if (!lazy protocol witness table cache variable for type PresenceHostSession.State and conformance PresenceHostSession.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceHostSession.State and conformance PresenceHostSession.State);
  }

  return result;
}

uint64_t _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for PresenceHostSession()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for AsyncSerialQueue();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of PresenceHostSession.listenForUpdatedDevices()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

uint64_t type metadata completion function for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined destroy of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in PresenceHostSession.listener(_:shouldAcceptNewConnection:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x110);
  v4 = v2;
  return v3(v2);
}

uint64_t partial apply for closure #1 in closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in PresenceHostSession.assertPresence()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.assertPresence()(a1, v4, v5, v6);
}

uint64_t objectdestroy_108Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()()
{
  v1 = *(type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(v2);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v4 = *(type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(a1, v6, v7, v1 + v5);
}

uint64_t NWProtocolFramer.Message.init(header:)(uint64_t a1)
{
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  v2 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
  v5[3] = type metadata accessor for PluginProtocolHeader();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  outlined init with copy of PluginProtocolHeader(a1, boxed_opaque_existential_1);

  dispatch thunk of NWProtocolFramer.Message.subscript.setter();

  outlined destroy of PluginProtocolHeader(a1);
  return v2;
}

uint64_t *PluginProtocolFramer.definition.unsafeMutableAddressor()
{
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  return &static PluginProtocolFramer.definition;
}

uint64_t NWProtocolFramer.Message.header.getter@<X0>(uint64_t a1@<X8>)
{
  dispatch thunk of NWProtocolFramer.Message.subscript.getter();
  if (v6[3])
  {
    v2 = type metadata accessor for PluginProtocolHeader();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    outlined destroy of NSObject?(v6, &_sypSgMd, &_sypSgMR);
    v5 = type metadata accessor for PluginProtocolHeader();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t one-time initialization function for definition()
{
  type metadata accessor for PluginProtocolFramer();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PluginProtocolFramer and conformance PluginProtocolFramer, v0, type metadata accessor for PluginProtocolFramer);
  v1 = type metadata accessor for NWProtocolFramer.Definition();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = NWProtocolFramer.Definition.init(implementation:)();
  static PluginProtocolFramer.definition = result;
  return result;
}

uint64_t type metadata accessor for PluginProtocolHeader()
{
  result = type metadata singleton initialization cache for PluginProtocolHeader;
  if (!type metadata singleton initialization cache for PluginProtocolHeader)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PluginProtocolHeader(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginProtocolHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PluginProtocolHeader(uint64_t a1)
{
  v2 = type metadata accessor for PluginProtocolHeader();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PluginProtocolFramer.definition.getter()
{
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }
}

uint64_t PluginProtocolFramer.__allocating_init(framer:)()
{
  v0 = swift_allocObject();
  PluginProtocolFramer.init(framer:)();
  return v0;
}

uint64_t PluginProtocolFramer.init(framer:)()
{
  NWProtocolFramer.Instance.options.getter();
  dispatch thunk of NWProtocolFramer.Options.subscript.getter();

  if (!v5)
  {
    outlined destroy of NSObject?(v4, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = 0x7FFFFFFFLL;
    goto LABEL_6;
  }

  v1 = v3;
LABEL_6:
  *(v0 + 16) = v1;
  return v0;
}

uint64_t PluginProtocolFramer.start(framer:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6977CC8];
  started = type metadata accessor for NWProtocolFramer.StartResult();
  v4 = *(*(started - 8) + 104);

  return v4(a1, v2, started);
}

uint64_t PluginProtocolFramer.handleInput(framer:)(unsigned int (**a1)(char *, uint64_t, uint64_t))
{
  v30 = *v1;
  v3 = type metadata accessor for PluginProtocolHeader();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v26 - v16);
  v18 = *(v4 + 56);
  v27 = v1[2];
  v28 = v18;
  v29 = v4 + 56;
  v26 = (v4 + 48);
  while (1)
  {
    v28(v17, 1, 1, v3);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = MEMORY[0x1EEE9AC00](v19);
    *(&v26 - 6) = v27;
    *(&v26 - 5) = a1;
    *(&v26 - 4) = v17;
    *(&v26 - 3) = v20;
    *(&v26 - 2) = v30;
    if ((NWProtocolFramer.Instance.parseInput(minimumIncompleteLength:maximumLength:parse:)() & 1) == 0)
    {
      goto LABEL_9;
    }

    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v15, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
    if ((*v26)(v15, 1, v3) == 1)
    {
      outlined destroy of NSObject?(v15, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
LABEL_9:

      v24 = 4;
      goto LABEL_11;
    }

    outlined init with take of PluginProtocolHeader(v15, v10);
    type metadata accessor for NWProtocolFramer.Message();
    outlined init with copy of PluginProtocolHeader(v10, v8);
    if (one-time initialization token for definition != -1)
    {
      swift_once();
    }

    dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
    v31[3] = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    outlined init with copy of PluginProtocolHeader(v8, boxed_opaque_existential_1);
    dispatch thunk of NWProtocolFramer.Message.subscript.setter();
    outlined destroy of PluginProtocolHeader(v8);
    swift_beginAccess();
    v22 = *(v19 + 16);
    v23 = NWProtocolFramer.Instance.deliverInputNoCopy(length:message:isComplete:)();

    outlined destroy of PluginProtocolHeader(v10);

    if ((v23 & 1) == 0)
    {
      break;
    }

    outlined destroy of NSObject?(v17, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
  }

  v24 = 0;
LABEL_11:
  outlined destroy of NSObject?(v17, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
  return v24;
}

uint64_t closure #1 in PluginProtocolFramer.handleInput(framer:)(unsigned int *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v37 = *MEMORY[0x1E69E9840];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v35 - v16);
  result = 0;
  if ((a3 & 1) != 0 || !a1 || a2 - a1 < 4)
  {
    goto LABEL_21;
  }

  v19 = bswap32(*a1);
  if ((v19 & 0x80000000) != 0)
  {
    PluginRpcStatusCode.init(rawValue:)(WORD1(v19) & 0x7FFF);
    if (v36 == 17)
    {
      v27 = 2;
    }

    else
    {
      v27 = v36;
    }

    outlined destroy of NSObject?(a7, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
    *a7 = v27;
    v28 = type metadata accessor for PluginProtocolHeader();
    swift_storeEnumTagMultiPayload();
    (*(*(v28 - 8) + 56))(a7, 0, 1, v28);
    swift_beginAccess();
    *(a8 + 16) = v19;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, log);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 33554944;
      *(v32 + 4) = v27;
      *(v32 + 6) = 2048;
      swift_beginAccess();
      *(v32 + 8) = *(a8 + 16);

      _os_log_impl(&dword_1AEB26000, v30, v31, "Parsed status %hu, len=%ld", v32, 0x10u);
      MEMORY[0x1B27120C0](v32, -1, -1);
    }

    else
    {
    }

    goto LABEL_20;
  }

  if (v19 <= a5)
  {
    outlined destroy of NSObject?(a7, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
    v33 = type metadata accessor for PluginProtocolHeader();
    swift_storeEnumTagMultiPayload();
    (*(*(v33 - 8) + 56))(a7, 0, 1, v33);
    swift_beginAccess();
    *(a8 + 16) = v19;
LABEL_20:
    result = 4;
    goto LABEL_21;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, log);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v21, v22, "Message is too large (length %u)", v23, 8u);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  *v17 = 22;
  v24 = *MEMORY[0x1E6977D68];
  v25 = type metadata accessor for NWError();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v17, v24, v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  NWProtocolFramer.Instance.markFailed(error:)();
  outlined destroy of NSObject?(v17, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  result = 0;
LABEL_21:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

void PluginProtocolFramer.handleOutput(framer:message:messageLength:isComplete:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v60[1] = a1;
  v61 = a3;
  v64[2] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for UUID();
  v60[0] = *(v3 - 8);
  v4 = *(v60[0] + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v60 - v16;
  v18 = type metadata accessor for PluginProtocolHeader();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v60 - v24;
  dispatch thunk of NWProtocolFramer.Message.subscript.getter();
  if (v64[1])
  {
    v26 = swift_dynamicCast();
    (*(v19 + 56))(v17, v26 ^ 1u, 1, v18);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      outlined init with take of PluginProtocolHeader(v17, v25);
      outlined init with copy of PluginProtocolHeader(v25, v23);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v28 = v61;
        if (EnumCaseMultiPayload != 1)
        {
          if ((v61 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v61))
            {
              v29 = bswap32(v61);
              goto LABEL_23;
            }

            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if ((v61 & 0x8000000000000000) == 0)
        {
          if (!(v61 >> 16))
          {
            v29 = bswap32(v61 | 0x80000000);
LABEL_23:
            LODWORD(v63[0]) = v29;
            v40 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v63, v63 + 4);
            v42 = v41;
            NWProtocolFramer.Instance.writeOutput(data:)();
            outlined consume of Data._Representation(v40, v42);
LABEL_24:
            NWProtocolFramer.Instance.writeOutputNoCopy(length:)(v28);
            if (v43)
            {
              if (one-time initialization token for log != -1)
              {
                swift_once();
              }

              v44 = type metadata accessor for Logger();
              __swift_project_value_buffer(v44, log);
              v45 = v43;
              v46 = Logger.logObject.getter();
              v47 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v46, v47))
              {
                v48 = swift_slowAlloc();
                v49 = swift_slowAlloc();
                v63[0] = v49;
                *v48 = 136315138;
                v62 = v43;
                v50 = v43;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
                v51 = String.init<A>(reflecting:)();
                v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v63);

                *(v48 + 4) = v53;
                _os_log_impl(&dword_1AEB26000, v46, v47, "Exception in handleOutput(): %s", v48, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v49);
                MEMORY[0x1B27120C0](v49, -1, -1);
                MEMORY[0x1B27120C0](v48, -1, -1);
              }

              else
              {
              }
            }

            outlined destroy of PluginProtocolHeader(v25);
            goto LABEL_31;
          }

          goto LABEL_36;
        }

        __break(1u);
      }

      else
      {
        outlined init with take of UUID?(v23, v13);
        v34 = v61;
        if ((v61 & 0x8000000000000000) == 0)
        {
          if (!(v61 >> 16))
          {
            v35 = *(v60[0] + 48);
            v36 = ((v35(v13, 1, v3) != 1) << 15) + v34;
            if ((v36 & 0x10000) == 0)
            {
              LOWORD(v63[0]) = bswap32(v36) >> 16;
              v37 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v63, v63 + 2);
              v39 = v38;
              NWProtocolFramer.Instance.writeOutput(data:)();
              outlined consume of Data._Representation(v37, v39);
              outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              if (v35(v11, 1, v3) == 1)
              {
                outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v55 = v60[0];
                (*(v60[0] + 32))(v6, v11, v3);
                v63[0] = UUID.uuid.getter();
                v63[1] = v56;
                v57 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v63, v64);
                v59 = v58;
                NWProtocolFramer.Instance.writeOutput(data:)();
                outlined consume of Data._Representation(v57, v59);
                (*(v55 + 8))(v6, v3);
                outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              v28 = v61;
              goto LABEL_24;
            }

LABEL_39:
            __break(1u);
          }

          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  else
  {
    outlined destroy of NSObject?(v63, &_sypSgMd, &_sypSgMR);
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  outlined destroy of NSObject?(v17, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
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
    *v33 = 0;
    _os_log_impl(&dword_1AEB26000, v31, v32, "Header missing", v33, 2u);
    MEMORY[0x1B27120C0](v33, -1, -1);
  }

LABEL_31:
  v54 = *MEMORY[0x1E69E9840];
}

uint64_t specialized static PluginProtocolHeader.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v2 = type metadata accessor for UUID();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = type metadata accessor for PluginProtocolHeader();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20PluginProtocolHeaderO_ACtMd, &_s14CopresenceCore20PluginProtocolHeaderO_ACtMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v37 - v24;
  v26 = *(v23 + 56);
  outlined init with copy of PluginProtocolHeader(v39, &v37 - v24);
  outlined init with copy of PluginProtocolHeader(v40, &v25[v26]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v40 = v9;
    v30 = v13;
    v31 = v38;
    outlined init with copy of PluginProtocolHeader(v25, v20);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of NSObject?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_9;
    }

    v32 = *(v10 + 48);
    outlined init with take of UUID?(v20, v30);
    outlined init with take of UUID?(&v25[v26], v30 + v32);
    v33 = *(v31 + 48);
    if (v33(v30, 1, v2) == 1)
    {
      if (v33(v30 + v32, 1, v2) == 1)
      {
        outlined destroy of NSObject?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_8;
      }
    }

    else
    {
      v34 = v40;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v30, v40, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v33(v30 + v32, 1, v2) != 1)
      {
        (*(v31 + 32))(v5, v30 + v32, v2);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        v36 = *(v31 + 8);
        v36(v5, v2);
        v36(v34, v2);
        outlined destroy of NSObject?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (v35)
        {
          goto LABEL_8;
        }

LABEL_17:
        outlined destroy of PluginProtocolHeader(v25);
        return 0;
      }

      (*(v31 + 8))(v34, v2);
    }

    outlined destroy of NSObject?(v30, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of PluginProtocolHeader(v25, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *v18 == v25[v26];
      outlined destroy of PluginProtocolHeader(v25);
      return v28;
    }

    goto LABEL_9;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
LABEL_8:
    outlined destroy of PluginProtocolHeader(v25);
    return 1;
  }

LABEL_9:
  outlined destroy of NSObject?(v25, &_s14CopresenceCore20PluginProtocolHeaderO_ACtMd, &_s14CopresenceCore20PluginProtocolHeaderO_ACtMR);
  return 0;
}

uint64_t outlined init with take of PluginProtocolHeader(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginProtocolHeader();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for PluginProtocolHeader()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
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

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

char *ConversationManagerHostConnection.__allocating_init(connection:queue:featureFlags:serverBag:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return specialized ConversationManagerHostConnection.__allocating_init(connection:queue:featureFlags:serverBag:)(a1, a2, a3, a4);
}

uint64_t ConversationManagerHostConnection.delegate.getter()
{
  v1 = v0 + direct field offset for ConversationManagerHostConnection.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t ConversationManagerHostConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for ConversationManagerHostConnection.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationManagerHostConnection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for ConversationManagerHostConnection.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

uint64_t ConversationManagerHostConnection.protectedStorage.getter@<X0>(void *a1@<X8>)
{
  v3 = direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage;
  swift_beginAccess();
  outlined init with copy of ProtectedStorage?(v1 + v3, v8);
  if (v9)
  {
    return outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v8, a1);
  }

  outlined destroy of NSObject?(v8, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
  v5 = *MEMORY[0x1E69D8DD0];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSUserDefaults.classProtectedStorage(suiteName:)(v6, v7, a1);

  outlined init with copy of UserNotificationCenter(a1, v8);
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(v8, v1 + v3);
  return swift_endAccess();
}

uint64_t ConversationManagerHostConnection.protectedStorage.setter(uint64_t a1)
{
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(a1, v4);
  v2 = direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage;
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(v4, v1 + v2);
  return swift_endAccess();
}

void (*ConversationManagerHostConnection.protectedStorage.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  ConversationManagerHostConnection.protectedStorage.getter(v3);
  return ConversationManagerHostConnection.protectedStorage.modify;
}

void ConversationManagerHostConnection.protectedStorage.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of UserNotificationCenter(*a1, (v2 + 5));
    v4 = direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v4);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(*a1, v2 + 5);
    v5 = direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v5);
    swift_endAccess();
  }

  free(v2);
}

char *ConversationManagerHostConnection.init(connection:queue:featureFlags:serverBag:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return specialized ConversationManagerHostConnection.init(connection:queue:featureFlags:serverBag:)(a1, a2, a3, a4, v4);
}

Swift::Void __swiftcall ConversationManagerHostConnection.handleHostConnectionInvalidated()()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 80))(v0, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t ConversationManagerHostConnection.__ivar_destroyer()
{
  outlined destroy of weak ActivitySessionManagerProtocol?(v0 + direct field offset for ConversationManagerHostConnection.delegate);
  v1 = *(v0 + direct field offset for ConversationManagerHostConnection.featureFlags);
  swift_unknownObjectRelease();
  v2 = *(v0 + direct field offset for ConversationManagerHostConnection.serverBag);
  swift_unknownObjectRelease();
  v3 = *(v0 + direct field offset for ConversationManagerHostConnection.aliasedConversationContainers);

  outlined destroy of NSObject?(v0 + direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  v4 = *(v0 + direct field offset for ConversationManagerHostConnection.identifiersForCustomEndpoints);
}

id ConversationManagerHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationManagerHostConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc ConversationManagerHostConnection.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of weak ActivitySessionManagerProtocol?(a1 + direct field offset for ConversationManagerHostConnection.delegate);
  v2 = *(a1 + direct field offset for ConversationManagerHostConnection.featureFlags);
  swift_unknownObjectRelease();
  v3 = *(a1 + direct field offset for ConversationManagerHostConnection.serverBag);
  swift_unknownObjectRelease();
  v4 = *(a1 + direct field offset for ConversationManagerHostConnection.aliasedConversationContainers);

  outlined destroy of NSObject?(a1 + direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  v5 = *(a1 + direct field offset for ConversationManagerHostConnection.identifiersForCustomEndpoints);
}

Swift::Void __swiftcall ConversationManagerHostConnection.updateConversationContainers(conversationContainersByGroupUUID:)(Swift::OpaquePointer conversationContainersByGroupUUID)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + direct field offset for XPCHostConnection.queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = swift_allocObject();
    v10[2]._rawValue = v1;
    v10[3]._rawValue = conversationContainersByGroupUUID._rawValue;
    v11 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x148);
    v12 = v1;

    v11(0xD000000000000040, 0x80000001AEE37E80, partial apply for closure #1 in ConversationManagerHostConnection.updateConversationContainers(conversationContainersByGroupUUID:), v10);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in ConversationManagerHostConnection.updateConversationContainers(conversationContainersByGroupUUID:)(void *a1)
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
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 138412546;
    *(v6 + 4) = v3;
    *v7 = v3;
    *(v6 + 12) = 2080;
    type metadata accessor for UUID();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v9 = v3;
    v10 = Dictionary.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Updating client: %@ with containers: %s", v6, 0x16u);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v13 = [*&v3[direct field offset for XPCHostConnection.connection] remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore28ConversationManagerXPCClient_pMd, &_s14CopresenceCore28ConversationManagerXPCClient_pMR);
  if (swift_dynamicCast())
  {
    type metadata accessor for UUID();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v15 updateConversationContainersWithConversationContainersByGroupUUID_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void ConversationManagerHostConnection.requestEndpoint(with:activitySessionUUID:activity:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v26 = a4;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v6 + direct field offset for XPCHostConnection.queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v18 = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (*(v6 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) == 1)
  {
    v19 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x1D0))(v18);
    v20 = specialized Set.contains(_:)(a1, a2, v19);

    if (v20)
    {
      v21 = [*(v6 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore28ConversationManagerXPCClient_pMd, &_s14CopresenceCore28ConversationManagerXPCClient_pMR);
      if (swift_dynamicCast())
      {
        v22 = aBlock[6];
        v23 = MEMORY[0x1B270FF70](a1, a2);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        aBlock[4] = a5;
        aBlock[5] = a6;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
        aBlock[3] = &block_descriptor_38;
        v25 = _Block_copy(aBlock);

        [v22 requestEndpointWith:v23 activitySessionUUID:isa activity:v26 completion:v25];
        _Block_release(v25);
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_9;
    }
  }

  a5(0);
}

Swift::Void __swiftcall ConversationManagerHostConnection.requestConversationContainersUpdate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[direct field offset for XPCHostConnection.queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.requestConversationContainersUpdate();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_7;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  static DispatchQoS.unspecified.getter();
  v15[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v10, v5, v13);
  _Block_release(v13);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t closure #1 in ConversationManagerHostConnection.requestConversationContainersUpdate()(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001AEE37F60, &v17);
    *(v6 + 12) = 2080;
    type metadata accessor for ConversationManagerHostConnection();
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%s called for %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x188))(v12);
  if (result)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 16))(v3, ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in ConversationManagerHostConnection.advertiseGroupActivity(_:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    type metadata accessor for ConversationManagerHostConnection();
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEB26000, v10, v11, "advertiseGroupActivity called for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x188))(v18, v19);
  if (result)
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a4;
    v25 = *(v22 + 88);

    v25(v9, a2, partial apply for closure #1 in closure #1 in ConversationManagerHostConnection.advertiseGroupActivity(_:reply:), v24, ObjectType, v22);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ConversationManagerHostConnection.advertiseGroupActivity(_:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v26 = a4;
  v27 = a2;
  v28 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v29 = *&v6[direct field offset for XPCHostConnection.queue];
  (*(v17 + 16))(&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v19 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  (*(v17 + 32))(v20 + v19, &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v21 = (v20 + ((v18 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v27;
  v21[1] = v22;
  aBlock[4] = v30;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v31;
  v23 = _Block_copy(aBlock);
  v24 = v6;

  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v15, v11, v23);
  _Block_release(v23);
  (*(v34 + 8))(v11, v8);
  (*(v32 + 8))(v15, v33);
}

uint64_t closure #1 in ConversationManagerHostConnection.stopAdvertisingGroupActivity(_:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    type metadata accessor for ConversationManagerHostConnection();
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEB26000, v10, v11, "stop advertising group activity called for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x188))(v18, v19);
  if (result)
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a4;
    v25 = *(v22 + 96);

    v25(v9, a2, partial apply for closure #1 in closure #1 in ConversationManagerHostConnection.stopAdvertisingGroupActivity(_:reply:), v24, ObjectType, v22);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc ConversationManagerHostConnection.advertiseGroupActivity(_:reply:)(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = a1;
  a7(v15, a6, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t ConversationManagerHostConnection.prepareForGroupActivity(overrides:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.prepareForGroupActivity(overrides:completionHandler:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_24_1;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  v20 = v3;
  static DispatchQoS.unspecified.getter();
  v22[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

void closure #1 in ConversationManagerHostConnection.prepareForGroupActivity(overrides:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v8 = MEMORY[0x1E69E7D40];
  if (*(a1 + direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI) == 1)
  {
    a1 = a2;
  }

  else if (a2)
  {
    v9 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x80);
    v10 = a2;
    v9(&v21);
    if (v21 == 1)
    {
      v11 = type metadata accessor for AuthorizationRequestOverrides();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
      *v13 = 0;
      v13[1] = 0;
      v14 = &v12[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
      *v14 = 0;
      v14[1] = 0;
      v15 = &v12[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
      *v15 = 0;
      v15[1] = 0;
      v16 = &v12[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
      *v16 = 0;
      v16[1] = 0;
      v12[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = 1;
      v12[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = 1;
      v20.receiver = v12;
      v20.super_class = v11;
      v6 = objc_msgSendSuper2(&v20, sel_init);
    }

    else
    {

      v6 = 0;
    }
  }

  if ((*((*v8 & *v7) + 0x188))(a1))
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(v18 + 32))(v7, v6, a3, a4, ObjectType, v18);
    swift_unknownObjectRelease();
  }
}

uint64_t ConversationManagerHostConnection.createActivitySession(with:onConversationWithUUID:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v52 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v48 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v46 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x188))(v17);
  if (v18)
  {
    v20 = v19;
    v45[1] = *&v5[direct field offset for XPCHostConnection.queue];
    v21 = v18;
    (*(v15 + 16))(v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14);
    v22 = *(v15 + 80);
    v45[0] = a4;
    v23 = (v22 + 48) & ~v22;
    v24 = swift_allocObject();
    *(v24 + 2) = v21;
    *(v24 + 3) = v20;
    v25 = v52;
    *(v24 + 4) = v5;
    *(v24 + 5) = v25;
    (*(v15 + 32))(&v24[v23], v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    v26 = &v24[(v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
    v27 = v45[0];
    *v26 = a3;
    *(v26 + 1) = v27;
    aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.createActivitySession(with:onConversationWithUUID:completion:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_30_1;
    v28 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v29 = v5;
    v30 = v25;

    v31 = v46;
    static DispatchQoS.unspecified.getter();
    v53 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v32 = v48;
    v33 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v31, v32, v28);
    _Block_release(v28);
    swift_unknownObjectRelease();
    (*(v50 + 8))(v32, v33);
    (*(v47 + 8))(v31, v49);
  }

  else
  {
    v35 = v52;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Log.default);
    v37 = v4;
    v38 = v35;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *(v41 + 12) = 2112;
      *(v41 + 14) = v37;
      *v42 = v38;
      v42[1] = v5;
      v43 = v37;
      v44 = v38;
      _os_log_impl(&dword_1AEB26000, v39, v40, "Failed to create activitySession for request %@ because delegate is nil on %@", v41, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v42, -1, -1);
      MEMORY[0x1B27120C0](v41, -1, -1);
    }

    return a3(0);
  }
}

void ConversationManagerHostConnection.addRemoteMembers(_:toConversationWithUUID:)(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - v17;
  if (v2[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] == 1)
  {
    v39 = *&v2[direct field offset for XPCHostConnection.queue];
    (*(v13 + 16))(&v39 - v17, a2, v12);
    v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v20 = swift_allocObject();
    v21 = v43;
    *(v20 + 16) = v2;
    *(v20 + 24) = v21;
    (*(v13 + 32))(v20 + v19, v18, v12);
    aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.addRemoteMembers(_:toConversationWithUUID:);
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_36;
    v22 = _Block_copy(aBlock);
    v23 = v2;

    static DispatchQoS.unspecified.getter();
    v44 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v11, v7, v22);
    _Block_release(v22);
    (*(v42 + 8))(v7, v4);
    (*(v40 + 8))(v11, v41);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.host);
    (*(v13 + 16))(v16, a2, v12);
    v25 = v2;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v28 = 136315650;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
      v30 = Set.description.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, aBlock);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v13 + 8))(v16, v12);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, aBlock);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2112;
      *(v28 + 24) = v25;
      *v29 = v25;
      v37 = v25;
      _os_log_impl(&dword_1AEB26000, v26, v27, "Process is not entitled to addRemoteMembers %s toConversationWithUUID %s, connection=%@", v28, 0x20u);
      outlined destroy of NSObject?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v29, -1, -1);
      v38 = v42;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v38, -1, -1);
      MEMORY[0x1B27120C0](v28, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }
  }
}

uint64_t closure #1 in ConversationManagerHostConnection.addRemoteMembers(_:toConversationWithUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ConversationManagerHostConnection.setActivityAuthorization(_:forBundleIdentifier:)(Swift::Bool _, Swift::String forBundleIdentifier)
{
  object = forBundleIdentifier._object;
  countAndFlagsBits = forBundleIdentifier._countAndFlagsBits;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] == 1)
  {
    v27[0] = *&v2[direct field offset for XPCHostConnection.queue];
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = _;
    *(v16 + 32) = countAndFlagsBits;
    *(v16 + 40) = object;
    aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.setActivityAuthorization(_:forBundleIdentifier:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_42_0;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    static DispatchQoS.unspecified.getter();
    v27[1] = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v15, v10, v17);
    _Block_release(v17);
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.host);
    v20 = v2;

    v27[0] = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27[0], v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v22 = 67109634;
      *(v22 + 4) = _;
      *(v22 + 8) = 2080;
      *(v22 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, aBlock);
      *(v22 + 18) = 2112;
      *(v22 + 20) = v20;
      *v23 = v20;
      v25 = v20;
      _os_log_impl(&dword_1AEB26000, v27[0], v21, "Process is not entitled to setActivityAuthorization %{BOOL}d forBundleIdentifier %s, connection=%@", v22, 0x1Cu);
      outlined destroy of NSObject?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1B27120C0](v24, -1, -1);
      MEMORY[0x1B27120C0](v22, -1, -1);
    }

    else
    {
      v26 = v27[0];
    }
  }
}

uint64_t closure #1 in ConversationManagerHostConnection.setActivityAuthorization(_:forBundleIdentifier:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(a1, a2 & 1, a3, a4, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in ConversationManagerHostConnection.buzzMember(_:conversationUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void ConversationManagerHostConnection.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(int a1, uint64_t a2)
{
  v37 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  if (v2[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] == 1)
  {
    v33 = *&v2[direct field offset for XPCHostConnection.queue];
    (*(v13 + 16))(&v33 - v17, a2, v12);
    v19 = (*(v13 + 80) + 25) & ~*(v13 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v37 & 1;
    (*(v13 + 32))(v20 + v19, v18, v12);
    aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:);
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_54;
    v21 = _Block_copy(aBlock);
    v22 = v2;
    static DispatchQoS.unspecified.getter();
    v38 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v11, v7, v21);
    _Block_release(v21);
    (*(v36 + 8))(v7, v4);
    (*(v34 + 8))(v11, v35);
  }

  else
  {
    v23 = v37;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.host);
    (*(v13 + 16))(v16, a2, v12);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 67109378;
      *(v27 + 4) = v23 & 1;
      *(v27 + 8) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v13 + 8))(v16, v12);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, aBlock);

      *(v27 + 10) = v32;
      _os_log_impl(&dword_1AEB26000, v25, v26, "Process is not entitled to setDownlinkMuted %{BOOL}d forRemoteParticipantsInConversationWithUUID %s", v27, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B27120C0](v28, -1, -1);
      MEMORY[0x1B27120C0](v27, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }
  }
}

uint64_t closure #1 in ConversationManagerHostConnection.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(void *a1, char a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 64))(a1, a2 & 1, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void ConversationManagerHostConnection.buzzMember(_:conversationUUID:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v47 = a6;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v54 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v8 - 8);
  isa = v53[8].isa;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  if (v6[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] == 1)
  {
    v47 = *&v6[direct field offset for XPCHostConnection.queue];
    (*(v17 + 16))(&v46 - v21, a2, v16);
    v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v24 = swift_allocObject();
    v25 = v54;
    *(v24 + 16) = v6;
    *(v24 + 24) = v25;
    (*(v17 + 32))(v24 + v23, v22, v16);
    aBlock[4] = v49;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = v50;
    v26 = _Block_copy(aBlock);
    v27 = v6;
    v28 = v25;
    static DispatchQoS.unspecified.getter();
    v55 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v15, v11, v26);
    _Block_release(v26);
    (v53[1].isa)(v11, v8);
    (*(v51 + 8))(v15, v52);
  }

  else
  {
    v29 = v54;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.host);
    (*(v17 + 16))(v20, a2, v16);
    v31 = v6;
    v32 = v29;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v53 = v33;
      v36 = v35;
      v37 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v36 = 138412802;
      *(v36 + 4) = v32;
      *v37 = v32;
      *(v36 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v38 = v32;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v17 + 8))(v20, v16);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, aBlock);

      *(v36 + 14) = v42;
      *(v36 + 22) = 2112;
      *(v36 + 24) = v31;
      v37[1] = v31;
      v43 = v31;
      v44 = v53;
      _os_log_impl(&dword_1AEB26000, v53, v34, v47, v36, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v37, -1, -1);
      v45 = v54;
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1B27120C0](v45, -1, -1);
      MEMORY[0x1B27120C0](v36, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v20, v16);
    }
  }
}

uint64_t closure #1 in ConversationManagerHostConnection.kickMember(_:conversationUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 72))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc ConversationManagerHostConnection.buzzMember(_:conversationUUID:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a1;
  a5(v13, v12);

  return (*(v9 + 8))(v12, v8);
}

void ConversationManagerHostConnection.updateConversation(with:participantPresentationContexts:)(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  if (v2[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] == 1)
  {
    v40 = *&v2[direct field offset for XPCHostConnection.queue];
    (*(v13 + 16))(&v40 - v17, a1, v12);
    v19 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    (*(v13 + 32))(v21 + v19, v18, v12);
    *(v21 + v20) = v44;
    aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.updateConversation(with:participantPresentationContexts:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_66_0;
    v22 = _Block_copy(aBlock);
    v23 = v2;

    static DispatchQoS.unspecified.getter();
    v45 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v11, v7, v22);
    _Block_release(v22);
    (*(v43 + 8))(v7, v4);
    (*(v41 + 8))(v11, v42);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.host);
    (*(v13 + 16))(v16, a1, v12);
    v25 = v2;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v28 = 136315650;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v13 + 8))(v16, v12);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, aBlock);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      v34 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantPresentationContext, 0x1E69D8BA0);
      v35 = MEMORY[0x1B2710180](v44, v34);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, aBlock);

      *(v28 + 14) = v37;
      *(v28 + 22) = 2112;
      *(v28 + 24) = v25;
      *v29 = v25;
      v38 = v25;
      _os_log_impl(&dword_1AEB26000, v26, v27, "Process is not entitled to updateConversation %s participantPresentationContexts %s, connection=%@", v28, 0x20u);
      outlined destroy of NSObject?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v29, -1, -1);
      v39 = v43;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v39, -1, -1);
      MEMORY[0x1B27120C0](v28, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }
  }
}

uint64_t closure #1 in ConversationManagerHostConnection.updateConversation(with:participantPresentationContexts:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ConversationManagerHostConnection.includeMetricsReport(_:onConversationWithUUID:)(uint64_t a1, uint64_t a2)
{
  v22[0] = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v2[direct field offset for XPCHostConnection.queue];
  (*(v13 + 16))(v15, a2, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = v22[0];
  *(v17 + 16) = v2;
  *(v17 + 24) = v18;
  (*(v13 + 32))(v17 + v16, v15, v12);
  aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.includeMetricsReport(_:onConversationWithUUID:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_72;
  v19 = _Block_copy(aBlock);
  v20 = v2;

  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v7, v19);
  _Block_release(v19);
  (*(v25 + 8))(v7, v4);
  (*(v23 + 8))(v11, v24);
}

uint64_t closure #1 in ConversationManagerHostConnection.includeMetricsReport(_:onConversationWithUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 104))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in ConversationManagerHostConnection.registerIdentifierForCustomEndpoint(_:)(void *a1, Swift::Int a2, Swift::Int a3)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1E0);

  v8 = v7(v14);
  specialized Set._Variant.insert(_:)(&v15, a2, a3);

  v9 = v8(v14, 0);
  result = (*((*v6 & *a1) + 0x188))(v9);
  if (result)
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 112))(a1, a2, a3, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

void ConversationManagerHostConnection.registerIdentifierForCustomEndpoint(_:)(NSObject *a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a5;
  v50 = a6;
  v47 = a3;
  v48 = a4;
  v7 = v6;
  v52 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.host);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v45 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v46 = v15;
    v24 = v13;
    v25 = v14;
    v26 = v9;
    v27 = v10;
    v28 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, a2, aBlock);
    _os_log_impl(&dword_1AEB26000, v19, v20, v47, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v29 = v28;
    v10 = v27;
    v9 = v26;
    v14 = v25;
    v13 = v24;
    v15 = v46;
    MEMORY[0x1B27120C0](v29, -1, -1);
    v30 = v22;
    v7 = v45;
    MEMORY[0x1B27120C0](v30, -1, -1);
  }

  if (v7[direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint] == 1)
  {
    v31 = v7;
    v32 = *&v7[direct field offset for XPCHostConnection.queue];
    v33 = swift_allocObject();
    v34 = v52;
    v33[2] = v31;
    v33[3] = v34;
    v33[4] = a2;
    aBlock[4] = v49;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = v50;
    v35 = _Block_copy(aBlock);

    v36 = v31;
    v37 = v51;
    static DispatchQoS.unspecified.getter();
    v53 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v37, v13, v35);
    _Block_release(v35);
    (*(v10 + 8))(v13, v9);
    (*(v15 + 8))(v37, v14);
  }

  else
  {
    v38 = v7;
    v52 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v38;
      *v41 = v38;
      v42 = v38;
      _os_log_impl(&dword_1AEB26000, v52, v39, "Process is not entitled to provide custom endpoints, connection=%@", v40, 0xCu);
      outlined destroy of NSObject?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v41, -1, -1);
      MEMORY[0x1B27120C0](v40, -1, -1);
    }

    v43 = v52;
  }
}

uint64_t closure #1 in ConversationManagerHostConnection.unregisterIdentifierForCustomEndpoint(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1E0))(v7);
  specialized Set._Variant.remove(_:)(a2, a3);

  return v5(v7, 0);
}

uint64_t @objc ConversationManagerHostConnection.registerIdentifierForCustomEndpoint(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t ConversationManagerHostConnection.fetchEndpoint(with:activitySessionUUID:activity:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v60 = a5;
  v62 = a4;
  v63 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = type metadata accessor for DispatchQoS();
  v65 = *(v67 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v56 = v18;
  v57 = &v51[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v51[-v19];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.host);
  v22 = *(v15 + 16);
  v58 = a3;
  v22(v20, a3, v14);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v55 = a2;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v54 = v22;
    v27 = v26;
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v27 = 136315394;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    *(v27 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v52 = v24;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v9;
    v31 = v30;
    v32 = v20;
    v33 = a1;
    (*(v15 + 8))(v32, v14);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v31, aBlock);
    v9 = v29;

    *(v27 + 14) = v34;
    _os_log_impl(&dword_1AEB26000, v23, v52, "fetchEndpoint %s activitySessionUUID %s", v27, 0x16u);
    v35 = v53;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v35, -1, -1);
    v36 = v27;
    v22 = v54;
    MEMORY[0x1B27120C0](v36, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v20, v14);
    v33 = a1;
  }

  v37 = v61;
  v54 = *&v61[direct field offset for XPCHostConnection.queue];
  v38 = v57;
  v22(v57, v58, v14);
  v39 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v40 = (v56 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 2) = v37;
  *(v41 + 3) = v33;
  *(v41 + 4) = v55;
  (*(v15 + 32))(&v41[v39], v38, v14);
  v43 = v62;
  v42 = v63;
  *&v41[v40] = v62;
  v44 = &v41[(v40 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v44 = v60;
  *(v44 + 1) = v42;
  aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.fetchEndpoint(with:activitySessionUUID:activity:completion:);
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_90_0;
  v45 = _Block_copy(aBlock);

  v46 = v37;
  v47 = v43;

  v48 = v64;
  static DispatchQoS.unspecified.getter();
  v68 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v49 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v48, v49, v45);
  _Block_release(v45);
  (*(v59 + 8))(v49, v9);
  (*(v65 + 8))(v48, v67);
}

uint64_t closure #1 in ConversationManagerHostConnection.fetchEndpoint(with:activitySessionUUID:activity:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 120))(a1, a2, a3, a4, a5, a6, a7, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *specialized ConversationManagerHostConnection.__allocating_init(connection:queue:featureFlags:serverBag:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for ConversationManagerHostConnection());

  return specialized ConversationManagerHostConnection.init(connection:queue:featureFlags:serverBag:)(a1, a2, a3, a4, v8);
}

uint64_t outlined init with copy of ProtectedStorage?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *specialized ConversationManagerHostConnection.init(connection:queue:featureFlags:serverBag:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + direct field offset for ConversationManagerHostConnection.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + direct field offset for ConversationManagerHostConnection.aliasedConversationContainers) = MEMORY[0x1E69E7CC8];
  v10 = a5 + direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  *(a5 + direct field offset for ConversationManagerHostConnection.identifiersForCustomEndpoints) = MEMORY[0x1E69E7CD0];
  *(a5 + direct field offset for ConversationManagerHostConnection.featureFlags) = a3;
  *(a5 + direct field offset for ConversationManagerHostConnection.serverBag) = a4;
  swift_unknownObjectRetain();
  v11 = specialized XPCHostConnection.init(connection:queue:)(a1, a2);
  v12 = v11;
  swift_unknownObjectRelease();
  if (v11)
  {
  }

  return v11;
}

uint64_t type metadata accessor for ConversationManagerHostConnection()
{
  result = type metadata singleton initialization cache for ConversationManagerHostConnection;
  if (!type metadata singleton initialization cache for ConversationManagerHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in ConversationManagerHostConnection.advertiseGroupActivity(_:reply:)(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

unint64_t lazy protocol witness table accessor for type TUConversationMember and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #1 in ConversationManagerHostConnection.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  return closure #1 in ConversationManagerHostConnection.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(v2, v3, v4);
}

uint64_t partial apply for closure #1 in ConversationManagerHostConnection.updateConversation(with:participantPresentationContexts:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in ConversationManagerHostConnection.updateConversation(with:participantPresentationContexts:)(v3, v0 + v2, v4);
}

uint64_t partial apply for closure #1 in ConversationManagerHostConnection.addRemoteMembers(_:toConversationWithUUID:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_74Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in ConversationManagerHostConnection.fetchEndpoint(with:activitySessionUUID:activity:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return closure #1 in ConversationManagerHostConnection.fetchEndpoint(with:activitySessionUUID:activity:completion:)(v4, v5, v6, v0 + v2, v7, v9, v10);
}

void specialized ConversationManagerHostConnection.requestEndpoint(with:activitySessionUUID:activity:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (**a6)(void, void))
{
  v26 = a4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  v16 = *(a5 + direct field offset for XPCHostConnection.queue);
  *v14 = v16;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  _Block_copy(a6);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v18 = (*(v11 + 8))(v14, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    _Block_release(a6);
    __break(1u);
    return;
  }

  if (*(a5 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) == 1)
  {
    v19 = (*((*MEMORY[0x1E69E7D40] & *a5) + 0x1D0))(v18);
    v20 = specialized Set.contains(_:)(a1, a2, v19);

    if (v20)
    {
      v21 = [*(a5 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore28ConversationManagerXPCClient_pMd, &_s14CopresenceCore28ConversationManagerXPCClient_pMR);
      if (swift_dynamicCast())
      {
        v22 = aBlock[6];
        v23 = MEMORY[0x1B270FF70](a1, a2);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        aBlock[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSXPCListenerEndpoint?) -> ()partial apply;
        aBlock[5] = v15;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
        aBlock[3] = &block_descriptor_133;
        v25 = _Block_copy(aBlock);

        [v22 requestEndpointWith:v23 activitySessionUUID:isa activity:v26 completion:v25];
        _Block_release(v25);

        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_9;
    }
  }

  a6[2](a6, 0);
}

uint64_t specialized ConversationManagerHostConnection.createActivitySession(with:onConversationWithUUID:completion:)(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v46 = a2;
  v53 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  v16 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x188);
  v17 = _Block_copy(a4);
  v18 = v16(v17);
  if (v18)
  {
    v20 = v18;
    v21 = v19;
    v45 = *(a3 + direct field offset for XPCHostConnection.queue);
    (*(v12 + 16))(&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v46, v11);
    v22 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 2) = v20;
    *(v24 + 3) = v21;
    v25 = v53;
    *(v24 + 4) = a3;
    *(v24 + 5) = v25;
    (*(v12 + 32))(&v24[v22], v14, v11);
    v26 = &v24[v23];
    *v26 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
    v26[1] = v15;
    aBlock[4] = closure #1 in ConversationManagerHostConnection.createActivitySession(with:onConversationWithUUID:completion:)partial apply;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_116;
    v27 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v28 = a3;
    v29 = v25;

    v30 = v47;
    static DispatchQoS.unspecified.getter();
    v54 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v31 = v49;
    v32 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v30, v31, v27);
    _Block_release(v27);
    swift_unknownObjectRelease();
    (*(v51 + 8))(v31, v32);
    (*(v48 + 8))(v30, v50);
  }

  else
  {
    v34 = v53;
    v35 = a4;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Log.default);
    v37 = a3;
    v38 = v34;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *(v41 + 12) = 2112;
      *(v41 + 14) = v37;
      *v42 = v38;
      v42[1] = a3;
      v43 = v37;
      v44 = v38;
      _os_log_impl(&dword_1AEB26000, v39, v40, "Failed to create activitySession for request %@ because delegate is nil on %@", v41, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v42, -1, -1);
      MEMORY[0x1B27120C0](v41, -1, -1);
    }

    v35[2](v35, 0);
  }
}

uint64_t partial apply for closure #1 in ConversationManagerHostConnection.createActivitySession(with:onConversationWithUUID:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = &v0[(*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8];
  v8 = *v7;
  v9 = *(v7 + 1);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(v5, v6, &v0[v2], v8, v9, ObjectType, v4);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationManagerHostConnection.advertiseGroupActivity(_:reply:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t RunningBoardAppVisibilityMonitor.__allocating_init(appPolicyManager:applicationController:nearbyOption:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:)(a1, a2, a3, a4);
  return v8;
}

uint64_t specialized AppVisibilityMonitor.applicationType(forBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v5);
  if (((*(v6 + 8))(a1, a2, v5, v6) & 1) == 0)
  {
    return 2;
  }

  v7 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x98))();
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);

    v11 = [v10 BOOLValue];

    return v11;
  }

  else
  {

    return 0;
  }
}

id specialized AppVisibilityMonitor.handleAppVisibilityUpdate(forBundleIdentifier:applicationType:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v57 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v57 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v60 = &v57 - v24;
  (*(*v3 + 144))(v23);
  v58 = a1;
  v59 = a3;
  if (v25)
  {

    v26 = objc_opt_self();
    v27 = MEMORY[0x1B270FF70](a1, a2);
    v28 = [v26 nearbyUpdateForegroundAppURLForBundleIdentifier:v27 applicationType:a3];

    v29 = a2;
    if (v28)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v8 + 56))(v22, 0, 1, v7);
    }

    else
    {
      (*(v8 + 56))(v22, 1, 1, v7);
    }
  }

  else
  {
    v30 = objc_opt_self();
    v31 = MEMORY[0x1B270FF70](a1, a2);
    v32 = [v30 faceTimeUpdateForegroundAppURLForBundleIdentifier:v31 applicationType:a3];

    v29 = a2;
    if (v32)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v8 + 56))(v19, 0, 1, v7);
    }

    else
    {
      (*(v8 + 56))(v19, 1, 1, v7);
    }

    v22 = v19;
  }

  v33 = v11;
  v34 = v60;
  outlined init with take of URL?(v22, v60);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v34, v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Log.default);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v29;
    v41 = v58;
    v40 = v59;
    if (v38)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v62 = v43;
      *v42 = 136315394;
      *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v39, &v62);
      *(v42 + 12) = 2080;
      v61 = v40;
      type metadata accessor for CPApplicationType(0);
      v44 = String.init<A>(reflecting:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v62);

      *(v42 + 14) = v46;
      _os_log_impl(&dword_1AEB26000, v36, v37, "AppVisibilityMonitor: Unable to create update foreground app URL for bundle identifier: %s with type: %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v43, -1, -1);
      MEMORY[0x1B27120C0](v42, -1, -1);
    }

    return outlined destroy of NSObject?(v60, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  (*(v8 + 32))(v11, v16, v7);
  v47 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B20;
  v49 = *MEMORY[0x1E699F8E8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v50;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v47 setFrontBoardOptions_];

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v54 = result;
    URL._bridgeToObjectiveC()(v53);
    v56 = v55;
    [v54 openURL:v55 configuration:v47 completionHandler:0];

    (*(v8 + 8))(v33, v7);
    return outlined destroy of NSObject?(v60, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  __break(1u);
  return result;
}

{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  v21 = objc_opt_self();
  v43 = a1;
  v22 = MEMORY[0x1B270FF70](a1, a2);
  v44 = a3;
  v23 = [v21 faceTimeUpdateForegroundAppURLForBundleIdentifier:v22 applicationType:a3];

  if (v23)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 56))(v18, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v18, 1, 1, v6);
  }

  v24 = v20;
  outlined init with take of URL?(v18, v20);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v20, v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    outlined destroy of NSObject?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.default);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46 = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, a2, &v46);
      *(v28 + 12) = 2080;
      v45 = v44;
      type metadata accessor for CPApplicationType(0);
      v30 = String.init<A>(reflecting:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v46);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1AEB26000, v26, v27, "AppVisibilityMonitor: Unable to create update foreground app URL for bundle identifier: %s with type: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v28, -1, -1);
    }

    return outlined destroy of NSObject?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  (*(v7 + 32))(v10, v15, v6);
  v33 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B20;
  v35 = *MEMORY[0x1E699F8E8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v36;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v33 setFrontBoardOptions_];

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v40 = result;
    URL._bridgeToObjectiveC()(v39);
    v42 = v41;
    [v40 openURL:v41 configuration:v33 completionHandler:0];

    (*(v7 + 8))(v10, v6);
    return outlined destroy of NSObject?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  __break(1u);
  return result;
}