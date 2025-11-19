uint64_t PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(uint64_t a1)
{
  v2 = v1;
  v110 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v4 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v115 = v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v109 = v106 - v8;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v117 = *(v9 - 8);
  v10 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
  v116 = *(v113 - 8);
  v13 = *(v116 + 64);
  v14 = MEMORY[0x1EEE9AC00](v113);
  v112 = v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v111 = v106 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = (v106 - v18);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x1E69E8020], v20);
  v26 = v25;
  v27 = _dispatchPreconditionTest(_:)();
  v28 = (*(v21 + 8))(v24, v20);
  if ((v27 & 1) == 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
LABEL_18:
    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Log.attachmentLedgerTopic);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v124 = v43;
      *v42 = 136315138;
      v44 = PluginAttachmentLedgerTopic.description.getter();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v124);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_1AEB26000, v40, v41, "Received & tried processing initializeACK while not in the starting||retrying state. %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1B27120C0](v43, -1, -1);
      MEMORY[0x1B27120C0](v42, -1, -1);
    }

    goto LABEL_20;
  }

  (*(*v2 + 344))(&v118, v28);
  v30 = *(&v118 + 1);
  v29 = v118;
  if (*(&v120 + 1) >> 62)
  {
    if (*(&v120 + 1) >> 62 != 2 || *(&v120 + 1) != 0x8000000000000000 || *(&v118 + 1) | v118 | v119 | *(&v119 + 1) | v120 | v121)
    {
      outlined consume of PluginAttachmentLedgerTopic.State(v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1));
      if (one-time initialization token for attachmentLedgerTopic == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_57;
    }

    v30 = 0;
    v29 = 0;
  }

  v31 = *a1;
  if (*(a1 + 8) == 1)
  {
    if (v31 >= 8)
    {
      goto LABEL_9;
    }

LABEL_22:
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Log.attachmentLedgerTopic);
    v48 = v115;
    outlined init with copy of Attachment.MMCSMetadata(a1, v115, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v118 = v52;
      *v51 = 136315138;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      v53 = Message.debugDescription.getter();
      v55 = v54;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v48, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v118);

      *(v51 + 4) = v56;
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x1B27120C0](v52, -1, -1);
      MEMORY[0x1B27120C0](v51, -1, -1);
    }

    else
    {

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v48, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    v58 = 1;
    goto LABEL_45;
  }

  if (v31 != 8)
  {
    goto LABEL_22;
  }

LABEL_9:
  v107 = v29;
  v110 = v30;
  v108 = v2;
  v32 = *(a1 + 24);
  v33 = *(v32 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    *&v118 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
    v35 = 0;
    v34 = v118;
    v115 = v32 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
    v36 = v114;
    while (v35 < *(v32 + 16))
    {
      outlined init with copy of Attachment.MMCSMetadata(v115 + *(v117 + 72) * v35, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
      closure #1 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(v12, &v124, v19);
      if (v36)
      {
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
      }

      v36 = 0;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
      *&v118 = v34;
      v38 = *(v34 + 16);
      v37 = *(v34 + 24);
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1);
        v36 = 0;
        v34 = v118;
      }

      ++v35;
      *(v34 + 16) = v38 + 1;
      outlined init with take of UUID?(v19, v34 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v38, &_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
      if (v33 == v35)
      {
        v114 = 0;
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

LABEL_29:
  if (one-time initialization token for attachment != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  __swift_project_value_buffer(v59, static Log.attachment);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v118 = v63;
    *v62 = 136315138;
    v64 = MEMORY[0x1B2710180](v34, v113);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v118);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_1AEB26000, v60, v61, "[Subscribe] Missing encryptionIDs: %s, performing recovery!", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x1B27120C0](v63, -1, -1);
    MEMORY[0x1B27120C0](v62, -1, -1);
  }

  v67 = v108;
  v68 = (*v108 + 392);
  v69 = *v68;
  (*v68)(&v118);
  if (v107 >= v119)
  {

    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v59, static Log.attachmentLedgerTopic);

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v118 = v79;
      *v78 = 136315138;
      v80 = PluginAttachmentLedgerTopic.description.getter();
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v118);

      *(v78 + 4) = v82;
      _os_log_impl(&dword_1AEB26000, v76, v77, "Exceeded retry attempts. Failing %s.", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x1B27120C0](v79, -1, -1);
      MEMORY[0x1B27120C0](v78, -1, -1);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    v58 = 3;
LABEL_45:
    *v57 = v58;
    swift_willThrow();
  }

  if (v110)
  {

    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v59, static Log.attachmentLedgerTopic);

    v40 = Logger.logObject.getter();
    v70 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v40, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v118 = v72;
      *v71 = 136315138;
      v73 = PluginAttachmentLedgerTopic.description.getter();
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v118);

      *(v71 + 4) = v75;
      _os_log_impl(&dword_1AEB26000, v40, v70, "%s reached invalid state where we have an ongoing task while we receiving back missingEncryptionIDs.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x1B27120C0](v72, -1, -1);
      MEMORY[0x1B27120C0](v71, -1, -1);
    }

LABEL_20:
  }

  v115 = v107 + 1;
  v84 = type metadata accessor for TaskPriority();
  v85 = v109;
  (*(*(v84 - 8) + 56))(v109, 1, 1, v84);
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = v67[29];
  v88 = v67[30];
  __swift_project_boxed_opaque_existential_1(v67 + 26, v87);
  v89 = (*(v88 + 24))(v87, v88);
  v69(v122);
  outlined init with copy of UserNotificationCenter((v67 + 26), &v118);
  v90 = swift_allocObject();
  *(v90 + 16) = 0;
  *(v90 + 24) = 0;
  v91 = v122[1];
  *(v90 + 32) = v122[0];
  *(v90 + 48) = v91;
  *(v90 + 64) = v123;
  outlined init with take of ContiguousBytes(&v118, v90 + 72);
  *(v90 + 112) = v89;
  *(v90 + 120) = v86;
  v110 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(0, 0, v85, &async function pointer to partial apply for closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:), v90);
  outlined init with copy of UserNotificationCenter((v67 + 26), &v118);
  v92 = *(&v119 + 1);
  v93 = v120;
  v94 = __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
  v95 = *(v34 + 16);
  if (v95)
  {
    v106[1] = v94;
    v107 = v93;
    v109 = v92;
    v124 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95, 0);
    v96 = v124;
    v97 = v34 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v117 = *(v116 + 72);
    do
    {
      v98 = v111;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v97, v111, &_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
      v99 = v112;
      outlined init with take of UUID?(v98, v112, &_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
      v100 = *v99;
      v101 = *(v113 + 48);
      v102 = type metadata accessor for UUID();
      (*(*(v102 - 8) + 8))(&v99[v101], v102);
      v124 = v96;
      v104 = *(v96 + 16);
      v103 = *(v96 + 24);
      if (v104 >= v103 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1);
        v96 = v124;
      }

      *(v96 + 16) = v104 + 1;
      *(v96 + 8 * v104 + 32) = v100;
      v97 += v117;
      --v95;
    }

    while (v95);

    v67 = v108;
    v92 = v109;
    v93 = v107;
  }

  else
  {

    v96 = MEMORY[0x1E69E7CC0];
  }

  (*(v93 + 72))(v96, v92, v93);

  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  *&v118 = v115;
  *(&v118 + 1) = v110;
  v119 = 0u;
  v120 = 0u;
  v121 = 0;
  v105 = *(*v67 + 352);

  v105(&v118);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v100 = a3;
  v123[5] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v114 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v90 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v115 = (&v90 - v12);
  v13 = type metadata accessor for UUID();
  v112 = *(v13 - 8);
  v14 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v16 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v18 = &v90 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v101 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v116 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v102 = &v90 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = (&v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v90 - v31;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v90 - v31, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v33 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) != 1)
  {
    v94 = v32;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v32, v30, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = v115;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v30, v115, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined init with copy of Attachment.MMCSMetadata(v37, v11, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v38 = outlined init with copy of UserNotificationCenter((a2 + 26), v123);
      v39 = a2[13];
      (*(*a2 + 392))(&v119, v38);
      v117[0] = v119;
      v117[1] = v120;
      v117[2] = v121;
      v118 = v122;
      v40 = v99;
      v41 = specialized Attachment.__allocating_init(attachment:dataCryptor:localEncryptionID:config:)(v11, v123, v39, v117);
      if (v40)
      {
        if (one-time initialization token for attachmentLedgerTopic != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Log.attachmentLedgerTopic);
        v43 = v114;
        outlined init with copy of Attachment.MMCSMetadata(v37, v114, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        v44 = v40;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v123[0] = v48;
          *v47 = 136315394;
          v49 = *v43;
          v50 = v43[1];
          v51 = Data.description.getter();
          v53 = v52;
          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v43, type metadata accessor for AttachmentLedger_AttachmentMetadata);
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v123);

          *(v47 + 4) = v54;
          *(v47 + 12) = 2080;
          v119 = v40;
          v55 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v56 = String.init<A>(reflecting:)();
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v123);

          *(v47 + 14) = v58;
          _os_log_impl(&dword_1AEB26000, v45, v46, "Failed to get attachment %s, reason: %s", v47, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v48, -1, -1);
          MEMORY[0x1B27120C0](v47, -1, -1);
        }

        else
        {

          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v43, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        }

        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v37, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        v34 = 0;
      }

      else
      {
        v34 = v41;
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v37, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      }

      v35 = v100;
LABEL_48:
      v36 = v94;
      goto LABEL_49;
    }

    v59 = v30[1];
    v113 = *v30;
    v111 = v59;
    v109 = (*(*a2 + 632))();
    if (v109 >> 62)
    {
      goto LABEL_53;
    }

    v60 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
    v61 = v102;
    if (!v60)
    {
LABEL_40:

      v34 = 0;
LABEL_47:
      outlined consume of Data._Representation(v113, v111);
      v35 = v100;
      goto LABEL_48;
    }

    v62 = 0;
    v108 = v109 & 0xC000000000000001;
    v107 = v109 & 0xFFFFFFFFFFFFFF8;
    v106 = (v112 + 16);
    v115 = (v112 + 56);
    v105 = v111 >> 62;
    v63 = __OFSUB__(HIDWORD(v113), v113);
    v93 = v63;
    v92 = HIDWORD(v113) - v113;
    v97 = BYTE6(v111);
    v91 = (v112 + 32);
    v96 = (v112 + 8);
    v64 = &_s10Foundation4UUIDVSgMR;
    v103 = v60;
    v104 = (v112 + 48);
    while (1)
    {
      if (v108)
      {
        v67 = MEMORY[0x1B2710B10](v62, v109);
        v68 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
        if (v62 >= *(v107 + 16))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v60 = __CocoaSet.count.getter();
          goto LABEL_11;
        }

        v66 = *(v109 + 8 * v62 + 32);

        v68 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_39;
        }
      }

      v69 = *v106;
      v114 = v67;
      v69(v61, v67 + OBJC_IVAR____TtC14CopresenceCore10Attachment_id, v13);
      v70 = *v115;
      (*v115)(v61, 0, 1, v13);
      v112 = v68;
      if (v105 > 1)
      {
        if (v105 != 2)
        {
          goto LABEL_31;
        }

        v73 = *(v113 + 16);
        v72 = *(v113 + 24);
        v71 = v72 - v73;
        if (__OFSUB__(v72, v73))
        {
          goto LABEL_52;
        }
      }

      else
      {
        v71 = v97;
        if (!v105)
        {
          goto LABEL_29;
        }

        v71 = v92;
        if (v93)
        {
          goto LABEL_51;
        }
      }

      outlined copy of Data._Representation(v113, v111);
LABEL_29:
      if (v71 == 16)
      {
        v123[0] = 0;
        v123[1] = 0;
        v74 = v61;
        v75 = v113;
        v76 = v64;
        v77 = v111;
        v119 = v113;
        v120 = v111;
        lazy protocol witness table accessor for type Data and conformance Data();
        DataProtocol.copyBytes(to:)();
        UUID.init(uuid:)();
        v78 = v75;
        v61 = v74;
        v79 = v77;
        v64 = v76;
        outlined consume of Data._Representation(v78, v79);
        v80 = 0;
        goto LABEL_32;
      }

LABEL_31:
      outlined consume of Data._Representation(v113, v111);
      v80 = 1;
LABEL_32:
      v81 = v116;
      v70(v116, v80, 1, v13);
      v82 = *(v110 + 48);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v61, v18, &_s10Foundation4UUIDVSgMd, v64);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v81, &v18[v82], &_s10Foundation4UUIDVSgMd, v64);
      v83 = v64;
      v84 = *v104;
      if ((*v104)(v18, 1, v13) == 1)
      {
        outlined destroy of NSObject?(v116, &_s10Foundation4UUIDVSgMd, v64);
        outlined destroy of NSObject?(v61, &_s10Foundation4UUIDVSgMd, v64);
        v65 = v84(&v18[v82], 1, v13);
        v34 = v114;
        if (v65 == 1)
        {
          outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_46:

          goto LABEL_47;
        }

        goto LABEL_17;
      }

      v85 = v101;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v18, v101, &_s10Foundation4UUIDVSgMd, v64);
      if (v84(&v18[v82], 1, v13) == 1)
      {
        outlined destroy of NSObject?(v116, &_s10Foundation4UUIDVSgMd, v64);
        v61 = v102;
        outlined destroy of NSObject?(v102, &_s10Foundation4UUIDVSgMd, v64);
        (*v96)(v85, v13);
LABEL_17:
        outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
        goto LABEL_18;
      }

      v86 = v98;
      (*v91)(v98, &v18[v82], v13);
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v95 = dispatch thunk of static Equatable.== infix(_:_:)();
      v87 = *v96;
      (*v96)(v86, v13);
      outlined destroy of NSObject?(v116, &_s10Foundation4UUIDVSgMd, v83);
      v61 = v102;
      outlined destroy of NSObject?(v102, &_s10Foundation4UUIDVSgMd, v83);
      v87(v85, v13);
      outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, v83);
      v34 = v114;
      v64 = v83;
      if (v95)
      {
        goto LABEL_46;
      }

LABEL_18:

      ++v62;
      if (v112 == v103)
      {
        goto LABEL_40;
      }
    }
  }

  v34 = 0;
  v35 = v100;
  v36 = v32;
LABEL_49:
  *v35 = v34;
  result = outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v89 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), 0, 0);
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)()
{
  outlined init with copy of Attachment.MMCSMetadata(v0[3], v0[2], type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v1 = v0[1];

  return v1();
}

void PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v78 = a3;
  v76 = a2;
  v92 = a1;
  v5 = type metadata accessor for UUID();
  v93 = *(v5 - 8);
  v94 = v5;
  v6 = *(v93 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = &v73 - v12;
  v13 = type metadata accessor for ContinuousClock.Instant();
  v90 = *(v13 - 8);
  v91 = v13;
  v14 = *(v90 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v81 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v73 - v16;
  v89 = type metadata accessor for ContinuousClock();
  v77 = *(v89 - 8);
  v17 = *(v77 + 64);
  v18 = MEMORY[0x1EEE9AC00](v89);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v73 - v19;
  v86 = type metadata accessor for Date();
  v84 = *(v86 - 8);
  v20 = *(v84 + 64);
  v21 = MEMORY[0x1EEE9AC00](v86);
  v79 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v73 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v4 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x1E69E8020], v23);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v30 = (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_7;
  }

  (*(*v4 + 288))(&v95, v30);
  if ((v100 & 0x8000000000000000) != 0 && ((v31 = v97 | v96, v32 = v99 | v101, v100 != 0x8000000000000000) || v31 | v95 | v98 | v32))
  {
    v75 = v95;
    v74 = v98;
    v47 = v100;
    outlined consume of PluginAttachmentLedgerTopic.State(v95, v96, v97, v98, v99, v100);
    if (v47 == 0x8000000000000000 && v75 == 1 && !(v31 | v74 | v32))
    {
      v48 = v82;
      static Date.now.getter();
      v49 = v85;
      ContinuousClock.init()();
      v50 = v88;
      ContinuousClock.now.getter();
      v51 = type metadata accessor for TaskPriority();
      (*(*(v51 - 8) + 56))(v87, 1, 1, v51);
      v52 = v93;
      (*(v93 + 16))(v83, v92, v94);
      v53 = v90;
      (*(v90 + 16))(v81, v50, v91);
      v54 = v77;
      (*(v77 + 16))(v80, v49, v89);
      v55 = v84;
      (*(v84 + 16))(v79, v48, v86);
      v56 = (*(v52 + 80) + 48) & ~*(v52 + 80);
      v92 = (v6 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = (*(v53 + 80) + v92 + 8) & ~*(v53 + 80);
      v58 = (v14 + *(v54 + 80) + v57) & ~*(v54 + 80);
      v59 = (v17 + *(v55 + 80) + v58) & ~*(v55 + 80);
      v60 = swift_allocObject();
      *(v60 + 2) = 0;
      *(v60 + 3) = 0;
      v61 = v78;
      *(v60 + 4) = v76;
      *(v60 + 5) = v61;
      (*(v52 + 32))(&v60[v56], v83, v94);
      *&v60[v92] = v4;
      v62 = v90;
      v63 = &v60[v57];
      v64 = v91;
      (*(v90 + 32))(v63, v81, v91);
      v65 = v54;
      v66 = &v60[v58];
      v67 = v89;
      (*(v54 + 32))(v66, v80, v89);
      v68 = v84;
      v69 = &v60[v59];
      v70 = v86;
      (*(v84 + 32))(v69, v79, v86);

      v71 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14CopresenceCore11UploadTokenV_Tt2g5Tm(0, 0, v87, &async function pointer to partial apply for closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:), v60, type metadata accessor for UploadToken);
      swift_beginAccess();
      v72 = v4[12];
      v4[12] = v71;

      PluginAttachmentLedgerTopic.uploadToken.didset();

      (*(v62 + 8))(v88, v64);
      (*(v65 + 8))(v85, v67);
      (*(v68 + 8))(v82, v70);
      return;
    }
  }

  else
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v95, v96, v97, v98, v99, v100);
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    goto LABEL_15;
  }

LABEL_7:
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Log.attachmentLedgerTopic);
  v34 = v93;
  v35 = v94;
  (*(v93 + 16))(v8, v92, v94);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v95 = v39;
    *v38 = 136315394;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    (*(v34 + 8))(v8, v35);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v95);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v44 = PluginAttachmentLedgerTopic.description.getter();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v95);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_1AEB26000, v36, v37, "[%s] Received request to refresh uploadToken without being subscribed on %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v39, -1, -1);
    MEMORY[0x1B27120C0](v38, -1, -1);
  }

  else
  {

    (*(v34 + 8))(v8, v35);
  }
}

uint64_t closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), 0, 0);
}

uint64_t closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
    v4 = v0[5];

    return PluginAttachmentLedgerTopic.requestUploadToken()(v4);
  }

  else
  {
    v6 = v0[5];
    v7 = type metadata accessor for UploadToken(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for UploadToken(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t PluginAttachmentLedgerTopic.requestUploadToken()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.requestUploadToken(), 0, 0);
}

uint64_t PluginAttachmentLedgerTopic.requestUploadToken()()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy14CopresenceCore11UploadTokenVs5Error_pGSgMd, &_sScTy14CopresenceCore11UploadTokenVs5Error_pGSgMR);
  OS_dispatch_queue.sync<A>(execute:)();

  v2 = v0[2];
  v0[5] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x1E69E86A8] + 4);

    v4 = swift_task_alloc();
    v0[6] = v4;
    v5 = type metadata accessor for UploadToken(0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v4 = v0;
    v4[1] = PluginAttachmentLedgerTopic.requestUploadToken();
    v7 = v0[3];
    v8 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v7, v2, v5, v6, v8);
  }

  else
  {
    v9 = *(MEMORY[0x1E69E8920] + 4);
    v10 = swift_task_alloc();
    v0[8] = v10;
    v11 = type metadata accessor for UploadToken(0);
    *v10 = v0;
    v10[1] = PluginAttachmentLedgerTopic.requestUploadToken();
    v12 = v0[3];
    v13 = v0[4];

    return MEMORY[0x1EEE6DE38](v12, 0, 0, 0xD000000000000014, 0x80000001AEE324A0, partial apply for closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken(), v13, v11);
  }
}

{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = PluginAttachmentLedgerTopic.requestUploadToken();
  }

  else
  {
    v3 = PluginAttachmentLedgerTopic.requestUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.requestUploadToken(), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 72);
  return (*(v0 + 8))();
}

{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZ14CopresenceCore11UploadTokenVSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11UploadTokenVSgMd, &_s14CopresenceCore11UploadTokenVSgMR);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11UploadTokenVSgMd, &_s14CopresenceCore11UploadTokenVSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
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

uint64_t sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v4[12] = updated;
  v10 = *(*(updated - 8) + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), 0, 0);
}

uint64_t sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)()
{
  v1 = v0[5];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  v5 = v0[13];
  v6 = v0[3];

  return AttachmentLedgerServiceProvider.updateAttachment(input:)(v5, v6, v3, v2);
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  else
  {
    v3 = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(v0[12] + 24);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v5, v2, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v6 = *(v4 + 48);
  LODWORD(v3) = v6(v2, 1, v3);
  outlined destroy of NSObject?(v2, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v3 == 1)
  {
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v0[13], v0[2], type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
    v7 = v0[13];
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[10];
    v15 = v0[6];
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v5, v14, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    v16 = v6(v14, 1, v15);
    v17 = v0[10];
    v18 = v0[8];
    if (v16 == 1)
    {
      v19 = v0[6];
      *v18 = 0;
      v18[1] = 0xE000000000000000;
      v18[2] = 0;
      v18[3] = 0;
      v20 = v18 + *(v19 + 28);
      UnknownStorage.init()();
      if (v6(v17, 1, v19) != 1)
      {
        outlined destroy of NSObject?(v0[10], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
      }
    }

    else
    {
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v0[10], v18, type metadata accessor for AttachmentLedger_ErrorResponse);
    }

    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
    v22 = v0[8];
    v23 = v0[4];

    return AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:)(v23);
  }
}

{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  else
  {
    v3 = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  outlined init with copy of Attachment.MMCSMetadata(v0[8], v1, type metadata accessor for AttachmentLedger_ErrorResponse);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(v7, v8, v5, v6);
}

{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 152) = v0;

  outlined destroy of NSObject?(v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v0)
  {
    v4 = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  else
  {
    v4 = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[13];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[8], type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[13];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[8], type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
  v2 = v0[17];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[13];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[8], type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
  v2 = v0[19];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:), 0, 0);
}

uint64_t AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:)()
{
  v1 = v0[3];
  if (v1[2])
  {
    v2 = v0[8];
    v3 = v0[9];
    v4 = v0[7];
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0[2], v4, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      outlined destroy of NSObject?(v0[7], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
LABEL_6:
      v7 = v0[6];
      v8 = *(v0[3] + 24);
      v9 = 1000000000000000 * v8;
      v10 = (v8 * 0x38D7EA4C68000uLL) >> 64;
      static Clock<>.continuous.getter();
      v11 = swift_task_alloc();
      v0[11] = v11;
      *v11 = v0;
      v11[1] = AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:);
      v12 = v0[6];

      return specialized Clock.sleep(for:tolerance:)(v9, v10, 0, 0, 1);
    }

    v5 = v0[10];
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v0[7], v5, type metadata accessor for AttachmentLedger_ErrorResponse);
    v6 = *(v5 + 16);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, type metadata accessor for AttachmentLedger_ErrorResponse);
    if (v6)
    {
      v1[2] = v6 - 1;
      if (v6 != 1)
      {
        goto LABEL_6;
      }

      if (one-time initialization token for attachmentLedgerTopic == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_10:
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.attachmentLedgerTopic);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1AEB26000, v15, v16, "Exceeded max retry attempts", v17, 2u);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    v1 = v0[3];
  }

  v19 = *v1;
  v18 = v1[1];
  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.ServerError and conformance PluginAttachmentLedgerTopic.ServerError();
  swift_allocError();
  *v20 = v19;
  v20[1] = v18;
  swift_willThrow();

  v21 = v0[10];
  v23 = v0[6];
  v22 = v0[7];

  v24 = v0[1];

  return v24();
}

{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:), 0, 0);
  }

  else
  {
    v7 = v6[10];
    v8 = v6[6];
    v9 = v6[7];

    v10 = v6[1];

    return v10();
  }
}

{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v6[23] = updated;
  v9 = *(*(updated - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore023AttachmentLedger_UpdateC8ResponseVs5Error_pGMd, &_sScCy14CopresenceCore023AttachmentLedger_UpdateC8ResponseVs5Error_pGMR);
  v6[27] = v10;
  v11 = *(v10 - 8);
  v6[28] = v11;
  v12 = *(v11 + 64) + 15;
  v6[29] = swift_task_alloc();
  v13 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  v6[30] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtSgMR) - 8) + 64) + 15;
  v6[33] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMd, &_sScS8IteratorVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMR);
  v6[34] = v16;
  v17 = *(v16 - 8);
  v6[35] = v17;
  v18 = *(v17 + 64) + 15;
  v6[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), 0, 0);
}

uint64_t closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)()
{
  v1 = v0[36];
  v2 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMd, &_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMR);
  AsyncStream.makeAsyncIterator()();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[34];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v7);
}

{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), 0, 0);
}

{
  v1 = v0[33];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[31];
    v3 = v0[32];
    v5 = v0[29];
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[24];
    v9 = v0[22];
    (*(v0[35] + 8))(v0[36], v0[34]);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v13 = v0[28];
    v12 = v0[29];
    v14 = v0[27];
    v15 = *(v2 + 48);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v1, v0[32], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
    (*(v13 + 32))(v12, v1 + v15, v14);
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v16 = v0[31];
    v17 = v0[32];
    v18 = v0[20];
    v19 = type metadata accessor for Logger();
    v0[38] = __swift_project_value_buffer(v19, static Log.attachmentLedgerTopic);
    outlined init with copy of Attachment.MMCSMetadata(v17, v16, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[20];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v0[17] = v24;
      *v23 = 136315394;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v0[18] = Strong;
        type metadata accessor for PluginAttachmentLedgerTopic(0);
        v26 = String.init<A>(reflecting:)();
        v28 = v27;
      }

      else
      {
        v28 = 0xE300000000000000;
        v26 = 7104878;
      }

      v31 = v0[30];
      v30 = v0[31];
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v0 + 17);

      *(v23 + 4) = v32;
      *(v23 + 12) = 2080;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
      v33 = Message.debugDescription.getter();
      v35 = v34;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v30, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v0 + 17);

      *(v23 + 14) = v36;
      _os_log_impl(&dword_1AEB26000, v20, v21, "%s Attempting to drain operation %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v24, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    else
    {
      v29 = v0[31];

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v29, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
    }

    v37 = v0[22];
    v38 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    v39 = swift_task_alloc();
    v0[39] = v39;
    *v39 = v0;
    v39[1] = closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
    v40 = v0[32];
    v41 = v0[26];
    v43 = v0[21];
    v42 = v0[22];

    return sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(v41, v40, v42, v43);
  }
}

{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 320) = v0;

  outlined destroy of NSObject?(v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v0)
  {
    v4 = closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  else
  {
    v4 = closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[38];
  v2 = v0[20];
  outlined init with copy of Attachment.MMCSMetadata(v0[26], v0[25], type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v0[15] = v7;
    *v6 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v0[16] = Strong;
      type metadata accessor for PluginAttachmentLedgerTopic(0);
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v13 = v0[25];
    v14 = v0[23];
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v0 + 15);

    *(v6 + 4) = v15;
    *(v6 + 12) = 2080;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentResponse and conformance AttachmentLedger_UpdateAttachmentResponse, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
    v16 = Message.debugDescription.getter();
    v18 = v17;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v13, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v0 + 15);

    *(v6 + 14) = v19;
    _os_log_impl(&dword_1AEB26000, v3, v4, "%s Finished operation: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  else
  {
    v12 = v0[25];

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
  }

  v20 = v0[32];
  v22 = v0[28];
  v21 = v0[29];
  v24 = v0[26];
  v23 = v0[27];
  outlined init with copy of Attachment.MMCSMetadata(v24, v0[24], type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
  CheckedContinuation.resume(returning:)();
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v24, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
  (*(v22 + 8))(v21, v23);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v25 = *(MEMORY[0x1E69E8678] + 4);
  v26 = swift_task_alloc();
  v0[37] = v26;
  *v26 = v0;
  v26[1] = closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  v27 = v0[36];
  v28 = v0[33];
  v29 = v0[34];

  return MEMORY[0x1EEE6D9C8](v28, 0, 0, v29);
}

{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[20];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[20];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v0[12] = v9;
    *v8 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v0[14] = Strong;
      type metadata accessor for PluginAttachmentLedgerTopic(0);
      v11 = String.init<A>(reflecting:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = v0[40];
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v0 + 12);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2080;
    v0[13] = v14;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v0 + 12);

    *(v8 + 14) = v19;
    _os_log_impl(&dword_1AEB26000, v5, v6, "%s Failed operation, error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v20 = v0[32];
  v22 = v0[28];
  v21 = v0[29];
  v23 = v0[27];
  v0[11] = v0[40];
  CheckedContinuation.resume(throwing:)();
  (*(v22 + 8))(v21, v23);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v24 = *(MEMORY[0x1E69E8678] + 4);
  v25 = swift_task_alloc();
  v0[37] = v25;
  *v25 = v0;
  v25[1] = closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  v26 = v0[36];
  v27 = v0[33];
  v28 = v0[34];

  return MEMORY[0x1EEE6D9C8](v27, 0, 0, v28);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v65 = a2;
  v68 = a1;
  v64 = a3;
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v67 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - v12;
  v14 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v62 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v60 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v60 - v23;
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v3;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v68 + *(v3 + 24), v13, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v30 = *(v15 + 48);
  v31 = v30(v13, 1, v14);
  v60 = v30;
  if (v31 == 1)
  {
    *v20 = xmmword_1AEE0C200;
    v32 = v20 + *(v14 + 20);
    UnknownStorage.init()();
    if (v30(v13, 1, v14) != 1)
    {
      outlined destroy of NSObject?(v13, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v13, v20, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  v33 = *v20;
  v34 = v20[1];
  outlined copy of Data._Representation(*v20, v34);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, type metadata accessor for AttachmentLedger_EncryptionID);
  UUID.init(data:)(v33, v34, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    outlined destroy of NSObject?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Log.attachmentLedgerTopic);
    v36 = v68;
    v37 = v66;
    outlined init with copy of Attachment.MMCSMetadata(v68, v66, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
    v38 = v67;
    outlined init with copy of Attachment.MMCSMetadata(v36, v67, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = v68;
      *v41 = 136315394;
      v42 = v63;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v37 + *(v61 + 24), v63, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
      v43 = v60;
      if (v60(v42, 1, v14) == 1)
      {
        v44 = v62;
        *v62 = xmmword_1AEE0C200;
        v45 = v44 + *(v14 + 20);
        UnknownStorage.init()();
        if (v43(v42, 1, v14) != 1)
        {
          outlined destroy of NSObject?(v42, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
        }
      }

      else
      {
        v44 = v62;
        outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v42, v62, type metadata accessor for AttachmentLedger_EncryptionID);
      }

      v50 = *v44;
      v51 = v44[1];
      outlined copy of Data._Representation(*v44, v51);
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v44, type metadata accessor for AttachmentLedger_EncryptionID);
      v52 = Data.description.getter();
      v54 = v53;
      outlined consume of Data._Representation(v50, v51);
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v66, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v69);

      *(v41 + 4) = v55;
      *(v41 + 12) = 2048;
      v56 = *v67;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v67, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
      *(v41 + 14) = v56;
      _os_log_impl(&dword_1AEB26000, v39, v40, "Invalid encryptionID: %s for participant: %llu", v41, 0x16u);
      v57 = v68;
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x1B27120C0](v57, -1, -1);
      MEMORY[0x1B27120C0](v41, -1, -1);
    }

    else
    {
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v38, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v37, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    v58 = swift_allocError();
    *v59 = 1;
    result = swift_willThrow();
    *v65 = v58;
  }

  else
  {
    v46 = *(v26 + 32);
    v46(v29, v24, v25);
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR) + 48);
    v48 = v64;
    *v64 = *v68;
    return (v46)(v48 + v47, v29, v25);
  }

  return result;
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:), 0, 0);
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = type metadata accessor for TaskPriority();
  v4 = (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v9 = *(v2 + 24);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA10](v4, v5, v6, v7, v8);
  }

  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  outlined init with copy of UserNotificationCenter(*(v0 + 168), v0 + 16);
  v12 = swift_allocObject();
  outlined init with take of ContiguousBytes((v0 + 16), v12 + 16);
  *(v12 + 56) = v11;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
  v14 = Task<>.init(priority:timeout:operation:)();
  *(v0 + 200) = v14;
  v15 = *(MEMORY[0x1E69E86A8] + 4);
  v16 = swift_task_alloc();
  *(v0 + 208) = v16;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 216) = v7;
  *v16 = v0;
  v16[1] = closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
  v8 = MEMORY[0x1E69E7288];
  v4 = v0 + 128;
  v5 = v14;
  v6 = v13;

  return MEMORY[0x1EEE6DA10](v4, v5, v6, v7, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 200);

  if (v0)
  {
    v6 = closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
  }

  else
  {
    v6 = closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v35 = v0;
  v1 = v0[16];
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34[0] = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for UUID();
    v8 = MEMORY[0x1B2710180](v1, v7);
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v34);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Received newDecryptionIDs: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  else
  {
  }

  v12 = v0[28];
  v13 = v0[23];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (PluginAttachmentLedgerTopic.triggerResubscribe()(), v14 = v12, , v12))
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v15 = v0[23];
    __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[23];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34[0] = v22;
      *v20 = 136315394;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v0[17] = Strong;
        type metadata accessor for PluginAttachmentLedgerTopic(0);
        v24 = String.init<A>(reflecting:)();
        v26 = v25;
      }

      else
      {
        v26 = 0xE300000000000000;
        v24 = 7104878;
      }

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v34);

      *(v20 + 4) = v29;
      *(v20 + 12) = 2112;
      v30 = v14;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v31;
      *v21 = v31;
      _os_log_impl(&dword_1AEB26000, v17, v18, "%s Failed to retry, reason: %@", v20, 0x16u);
      outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    v32 = v0[24];
    swift_willThrow();

    v28 = v0[1];
  }

  else
  {
    v27 = v0[24];

    v28 = v0[1];
  }

  return v28();
}

{
  v27 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[23];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.attachmentLedgerTopic);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26[0] = v9;
    *v8 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v0[19] = Strong;
      type metadata accessor for PluginAttachmentLedgerTopic(0);
      v11 = String.init<A>(reflecting:)();
      v13 = v12;
    }

    else
    {
      v11 = 7104878;
      v13 = 0xE300000000000000;
    }

    v16 = v0[27];
    v15 = v0[28];
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v26);

    *(v8 + 4) = v17;
    *(v8 + 12) = 2080;
    v0[18] = v15;
    v18 = v15;
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v26);

    *(v8 + 14) = v21;
    _os_log_impl(&dword_1AEB26000, v5, v6, "%s Failed to see any updated decryptionIDs, error: %s. Retrying anyways", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
    v14 = v0[28];
  }

  v22 = v0[23];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    PluginAttachmentLedgerTopic.triggerResubscribe()();
  }

  v23 = v0[24];

  v24 = v0[1];

  return v24();
}

uint64_t closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for UUID();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOGGMR);
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOG_GMR);
  v3[15] = v10;
  v11 = *(v10 - 8);
  v3[16] = v11;
  v12 = *(v11 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:), 0, 0);
}

uint64_t closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[6];
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v0[2] = (*(v7 + 32))(v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR);
  v9 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR);
  MEMORY[0x1B270F520](v8, v9);

  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v10 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<AnyPublisher<[UUID], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOG_GMR);
  v11 = *(MEMORY[0x1E69E85A8] + 4);
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
  v13 = v0[17];
  v14 = v0[15];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v14, v10);
}

{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
  }

  else
  {
    v3 = closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  *(v0 + 160) = *(v0 + 24);
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:), 0, 0);
}

{
  v42 = v0;
  v1 = v0[20];
  if (v1)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = v0[8];
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v41 = v7;
        *v6 = 136315138;
        v8 = MEMORY[0x1B2710180](v1, v5);
        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v41);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_1AEB26000, v3, v4, "Saw updated decryptionIDs: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x1B27120C0](v7, -1, -1);
        MEMORY[0x1B27120C0](v6, -1, -1);
      }

      v11 = v0[7];
      v40 = *(v1 + 16);
      if (v40 != *(v11 + 16))
      {
LABEL_16:
        v33 = v0[14];
        v35 = v0[10];
        v34 = v0[11];
        v36 = v0[5];
        (*(v0[16] + 8))(v0[17], v0[15]);
        *v36 = v1;

        v32 = v0[1];
        goto LABEL_17;
      }

      if (!v40 || v11 == v1)
      {
        break;
      }

      v12 = 0;
      v13 = *(v0[9] + 80);
      v14 = (v13 + 32) & ~v13;
      v38 = v11 + v14;
      v39 = v1 + v14;
      while (v12 < *(v1 + 16))
      {
        v15 = v0[9];
        v16 = v1;
        v17 = *(v15 + 16);
        v18 = *(v15 + 72) * v12;
        v17(v0[11], v39 + v18, v0[8]);
        v20 = v0[10];
        v19 = v0[11];
        v22 = v0[8];
        v21 = v0[9];
        v17(v20, v38 + v18, v22);
        v1 = v16;
        lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();
        v23 = *(v21 + 8);
        v23(v20, v22);
        v23(v19, v22);
        if ((v15 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (v40 == ++v12)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      swift_once();
    }

LABEL_12:

    v24 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<AnyPublisher<[UUID], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOG_GMR);
    v25 = *(MEMORY[0x1E69E85A8] + 4);
    v26 = swift_task_alloc();
    v0[18] = v26;
    *v26 = v0;
    v26[1] = closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
    v27 = v0[17];
    v28 = v0[15];

    return MEMORY[0x1EEE6D8C8](v0 + 3, v28, v24);
  }

  else
  {
    v29 = v0[14];
    v30 = v0[10];
    v31 = v0[11];
    (*(v0[16] + 8))(v0[17], v0[15]);
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v32 = v0[1];
LABEL_17:

    return v32();
  }
}

{
  *(v0 + 32) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void PluginAttachmentLedgerTopic.triggerResubscribe()()
{
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.attachmentLedgerTopic);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = PluginAttachmentLedgerTopic.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEB26000, v2, v3, "%s triggered a resubscribe", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
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
      v24[0] = a2;
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

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14CopresenceCore11UploadTokenV_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v26 - v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v26 - v12, &_sScPSgMd, &_sScPSgMR);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    outlined destroy of NSObject?(v13, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a2;
      v22 = String.utf8CString.getter() + 32;
      a6(0);

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v23 = 0;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  a6(0);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

void closure #1 in PluginAttachmentLedgerTopic.triggerResubscribe()(uint64_t a1)
{
  (*(*a1 + 344))(&v13);
  v2 = v13;
  v3 = v16;
  outlined consume of PluginAttachmentLedgerTopic.State(v13, v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
  if (v3 >> 62)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.attachmentLedgerTopic);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = PluginAttachmentLedgerTopic.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Not re-subscribing since the state is invalid. %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
  }

  else
  {
    v13 = v2;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    (*(*a1 + 352))(&v13);
    PluginAttachmentLedgerTopic.sendSubscribeRequest()();
  }
}

void PluginAttachmentLedgerTopic.processAttachmentUpdateAdd(_:_:)(uint64_t a1, uint64_t a2)
{
  v170 = a2;
  v167 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  v4 = *(*(v167 - 8) + 64);
  MEMORY[0x1EEE9AC00](v167);
  v6 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v7 = *(*(v158 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v158);
  v169 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v171 = (&v158 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v172 = &v158 - v12;
  v13 = type metadata accessor for UUID();
  v176 = *(v13 - 8);
  v177 = v13;
  v14 = *(v176 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v164 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v161 = &v158 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v162 = &v158 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v160 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v166 = &v158 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v159 = &v158 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v163 = &v158 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v168 = &v158 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v158 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v165 = &v158 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v175 = &v158 - v37;
  v38 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v173 = (&v158 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v158 - v43;
  v45 = type metadata accessor for DispatchPredicate();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v49 = (&v158 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v174 = v2;
  v50 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v49 = v50;
  (*(v46 + 104))(v49, *MEMORY[0x1E69E8020], v45);
  v51 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  (*(v46 + 8))(v49, v45);
  if ((v50 & 1) == 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v44, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v52 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v52 - 8) + 48))(v44, 1, v52) != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v79 = v172;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v44, v172, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      __swift_project_value_buffer(v80, static Log.attachmentLedgerTopic);
      v81 = v171;
      outlined init with copy of Attachment.MMCSMetadata(v79, v171, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v177;
      if (v84)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v179[0] = v87;
        *v86 = 136315138;
        v88 = *v81;
        v89 = v81[1];
        outlined copy of Data._Representation(v88, v89);
        v90 = v166;
        UUID.init(data:)(v88, v89, v166);
        v91 = v90;
        v92 = v160;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v91, v160, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v93 = v176;
        if ((*(v176 + 48))(v92, 1, v85) == 1)
        {
          v94 = 7104878;
          v95 = 0xE300000000000000;
        }

        else
        {
          v125 = v162;
          (*(v93 + 32))(v162, v92, v85);
          (*(v93 + 16))(v161, v125, v85);
          v126 = String.init<A>(reflecting:)();
          v127 = v85;
          v94 = v126;
          v95 = v128;
          (*(v93 + 8))(v125, v127);
        }

        v97 = v169;
        outlined destroy of NSObject?(v166, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v171, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v179);

        *(v86 + 4) = v129;
        _os_log_impl(&dword_1AEB26000, v82, v83, "Notified of new attachments %s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        MEMORY[0x1B27120C0](v87, -1, -1);
        MEMORY[0x1B27120C0](v86, -1, -1);

        v96 = v178;
        v79 = v172;
      }

      else
      {

        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v81, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        v96 = v178;
        v97 = v169;
      }

      PluginAttachmentLedgerTopic.processAttachmentUpdateAdd(_:_:)(v79, v170);
      if (v96)
      {
        outlined init with copy of Attachment.MMCSMetadata(v79, v97, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        v130 = v96;
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          v179[0] = v135;
          *v133 = 136315394;
          lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
          v136 = Message.debugDescription.getter();
          v137 = v97;
          v139 = v138;
          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v137, type metadata accessor for AttachmentLedger_AttachmentMetadata);
          v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v139, v179);

          *(v133 + 4) = v140;
          *(v133 + 12) = 2112;
          v141 = v96;
          v142 = _swift_stdlib_bridgeErrorToNSError();
          *(v133 + 14) = v142;
          *v134 = v142;
          _os_log_impl(&dword_1AEB26000, v131, v132, "Failed to handle new attachment %s for reason: %@", v133, 0x16u);
          outlined destroy of NSObject?(v134, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B27120C0](v134, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v135);
          MEMORY[0x1B27120C0](v135, -1, -1);
          MEMORY[0x1B27120C0](v133, -1, -1);
        }

        else
        {

          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v97, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        }

        swift_willThrow();
      }

      v77 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
      v78 = v79;
      goto LABEL_45;
    }

    v62 = v173;
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v44, v173, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    v63 = *v62;
    v64 = v62[1];
    outlined copy of Data._Representation(v63, v64);
    v65 = v175;
    UUID.init(data:)(v63, v64, v175);
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    v67 = __swift_project_value_buffer(v66, static Log.attachmentLedgerTopic);
    v68 = v165;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v65, v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v172 = v67;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v179[0] = v72;
      *v71 = 136315138;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v68, v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v74 = v176;
      v73 = v177;
      if ((*(v176 + 48))(v34, 1, v177) == 1)
      {
        v75 = 7104878;
        v76 = 0xE300000000000000;
      }

      else
      {
        v98 = *(v74 + 32);
        v171 = v72;
        v99 = v162;
        v98(v162, v34, v73);
        (*(v74 + 16))(v161, v99, v73);
        v75 = String.init<A>(reflecting:)();
        v76 = v100;
        v101 = v99;
        v72 = v171;
        (*(v74 + 8))(v101, v73);
      }

      outlined destroy of NSObject?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v179);

      *(v71 + 4) = v102;
      _os_log_impl(&dword_1AEB26000, v69, v70, "Received attachmentACK %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x1B27120C0](v72, -1, -1);
      MEMORY[0x1B27120C0](v71, -1, -1);

      v65 = v175;
    }

    else
    {

      outlined destroy of NSObject?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    v103 = v168;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v65, v168, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v104 = v176;
    v105 = v177;
    v106 = *(v176 + 48);
    v107 = (v106)(v103, 1, v177);
    v108 = v174;
    if (v107 == 1)
    {
      outlined destroy of NSObject?(v103, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v109 = v163;
    }

    else
    {
      v171 = v106;
      v110 = v164;
      (*(v104 + 32))(v164, v103, v105);
      v111 = v104;
      v112 = (*(*v108 + 600))(v179);
      v113 = specialized Dictionary.removeValue(forKey:)(v110);
      v112(v179, 0);
      if (v113)
      {
        v114 = v105;

        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v179[0] = v118;
          *v117 = 136315138;
          v179[6] = v113;
          type metadata accessor for Attachment(0);

          v119 = String.init<A>(reflecting:)();
          v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, v179);

          *(v117 + 4) = v121;
          _os_log_impl(&dword_1AEB26000, v115, v116, "Found attachment %s", v117, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v118);
          MEMORY[0x1B27120C0](v118, -1, -1);
          MEMORY[0x1B27120C0](v117, -1, -1);
        }

        v122 = v176;
        v123 = v164;
        PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)(v113, v170, 1);

        (*(v122 + 8))(v123, v114);
        v124 = v175;
        goto LABEL_44;
      }

      (*(v111 + 8))(v110, v105);
      v65 = v175;
      v109 = v163;
      v106 = v171;
    }

    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v65, v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v179[0] = v178;
      *v145 = 136315394;
      v146 = PluginAttachmentLedgerTopic.description.getter();
      v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v147, v179);

      *(v145 + 4) = v148;
      *(v145 + 12) = 2080;
      v149 = v159;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v109, v159, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((v106)(v149, 1, v105) == 1)
      {
        v150 = 7104878;
        v151 = 0xE300000000000000;
      }

      else
      {
        v152 = v176;
        v153 = v162;
        (*(v176 + 32))(v162, v149, v105);
        (*(v152 + 16))(v161, v153, v105);
        v150 = String.init<A>(reflecting:)();
        v151 = v154;
        (*(v152 + 8))(v153, v105);
      }

      outlined destroy of NSObject?(v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v151, v179);

      *(v145 + 14) = v155;
      _os_log_impl(&dword_1AEB26000, v143, v144, "%s pendingAttachment with UUID %s not found", v145, 0x16u);
      v156 = v178;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v156, -1, -1);
      MEMORY[0x1B27120C0](v145, -1, -1);

      v65 = v175;
    }

    else
    {

      outlined destroy of NSObject?(v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v157 = 4;
    swift_willThrow();
    v124 = v65;
LABEL_44:
    outlined destroy of NSObject?(v124, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v77 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack;
    v78 = v173;
    goto LABEL_45;
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
LABEL_47:
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Log.attachmentLedgerTopic);
  outlined init with copy of Attachment.MMCSMetadata(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v179[0] = v57;
    *v56 = 136315138;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    v58 = Message.debugDescription.getter();
    v60 = v59;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v179);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_1AEB26000, v54, v55, "Unknown added event received %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x1B27120C0](v57, -1, -1);
    MEMORY[0x1B27120C0](v56, -1, -1);

    return;
  }

  v77 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added;
  v78 = v6;
LABEL_45:
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v78, v77);
}

uint64_t PluginAttachmentLedgerTopic.processAttachmentUpdateRemove(_:_:)(uint64_t *a1, uint64_t a2)
{
  v96 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v100 = (v92 - v8);
  v9 = type metadata accessor for UUID();
  v101 = *(v9 - 8);
  v10 = *(v101 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v94 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v104 = v92 - v13;
  v98 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  v14 = *(*(v98 - 1) + 64);
  v15 = MEMORY[0x1EEE9AC00](v98);
  v17 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v92 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = v2;
  v25 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x1E69E8020], v20);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v24, v20);
  if (v25)
  {
    v99 = v9;
    if (one-time initialization token for attachmentLedgerTopic == -1)
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
  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Log.attachmentLedgerTopic);
  outlined init with copy of Attachment.MMCSMetadata(a1, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v103[0] = v93;
    *v31 = 136315138;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    v32 = Message.debugDescription.getter();
    v33 = a1;
    v34 = v17;
    v35 = v28;
    v37 = v36;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v37, v103);
    v28 = v35;
    v17 = v34;
    a1 = v33;

    *(v31 + 4) = v38;
    _os_log_impl(&dword_1AEB26000, v29, v30, "Notified of attachment being removed %s", v31, 0xCu);
    v39 = v93;
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    MEMORY[0x1B27120C0](v39, -1, -1);
    MEMORY[0x1B27120C0](v31, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  }

  v40 = *a1;
  v41 = a1[1];
  outlined copy of Data._Representation(*a1, v41);
  v42 = v100;
  UUID.init(data:)(v40, v41, v100);
  v43 = v101;
  v44 = v99;
  if ((*(v101 + 48))(v42, 1, v99) == 1)
  {
    outlined destroy of NSObject?(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of Attachment.MMCSMetadata(a1, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v103[0] = v48;
      *v47 = 136315138;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
      v49 = Message.debugDescription.getter();
      v51 = v50;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v103);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1AEB26000, v45, v46, "Failed to process attachmentUUID on remove message: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1B27120C0](v48, -1, -1);
      MEMORY[0x1B27120C0](v47, -1, -1);
    }

    else
    {

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v78 = 1;
    return swift_willThrow();
  }

  v53 = (*(v43 + 32))(v104, v42, v44);
  v54 = *(*v102 + 632);
  v55 = v54(v53);
  v92[1] = v28;
  if (v55 >> 62)
  {
    v56 = __CocoaSet.count.getter();
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  MEMORY[0x1EEE9AC00](v57);
  v58 = &v92[-4];
  v59 = v102;
  v92[-2] = v104;
  v60 = (*(*v59 + 648))(v103);
  v62 = v61;
  v63 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in PluginAttachmentLedgerTopic.processAttachmentUpdateRemove(_:_:), &v92[-4]);
  if (!(*v62 >> 62))
  {
    v64 = *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v64 >= v63)
    {
      goto LABEL_13;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v58 = v63;
  v64 = __CocoaSet.count.getter();
  v63 = v58;
  if (v64 < v58)
  {
    goto LABEL_29;
  }

LABEL_13:
  specialized Array.replaceSubrange<A>(_:with:)(v63, v64);
  v65 = v60(v103, 0);
  v58 = v102;
  v66 = v54(v65);
  if (!(v66 >> 62))
  {
    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_30:
  v67 = __CocoaSet.count.getter();
LABEL_15:

  if (v56 == v67)
  {

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v103[0] = v71;
      *v70 = 136315138;
      (*(*v58 + 584))();
      type metadata accessor for Attachment(0);
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v72 = Dictionary.Keys.description.getter();
      v74 = v73;

      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v103);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_1AEB26000, v68, v69, "Failed to remove attachment, attachment not found, pendingAttachments: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x1B27120C0](v71, -1, -1);
      MEMORY[0x1B27120C0](v70, -1, -1);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v76 = 4;
    swift_willThrow();
    return (*(v101 + 8))(v104, v44);
  }

  else
  {
    v79 = v101;
    v80 = v94;
    v100 = *(v101 + 16);
    (v100)(v94, v104, v44);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v103[0] = v97;
      *v83 = 136315138;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      LODWORD(v93) = v82;
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v80;
      v87 = v86;
      v98 = *(v79 + 8);
      v98(v85, v44);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v87, v103);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_1AEB26000, v81, v93, "Successfully removed attachment %s", v83, 0xCu);
      v89 = v97;
      __swift_destroy_boxed_opaque_existential_1Tm(v97);
      MEMORY[0x1B27120C0](v89, -1, -1);
      MEMORY[0x1B27120C0](v83, -1, -1);
    }

    else
    {

      v98 = *(v79 + 8);
      v98(v80, v44);
    }

    swift_beginAccess();
    v90 = v104;
    specialized Dictionary.removeValue(forKey:)(v104);
    swift_endAccess();

    v91 = v95;
    (v100)(v95, v90, v44);
    (*(v79 + 56))(v91, 0, 1, v44);
    PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(v91, v96);
    outlined destroy of NSObject?(v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return (v98)(v90, v44);
  }
}

uint64_t PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v26 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v23 - v14;
  v24 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v23 - v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  outlined init with take of UUID?(v15, v18 + v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v18 + v17) = v25;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v2;
  aBlock[4] = partial apply for closure #1 in PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_59_0;
  v19 = _Block_copy(aBlock);
  v20 = v24;

  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v21 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v10, v6, v19);
  _Block_release(v19);

  (*(v29 + 8))(v6, v21);
  (*(v27 + 8))(v10, v28);
}

uint64_t PluginAttachmentLedgerTopic.processAttachmentStatusChanged(_:_:)(uint64_t a1, uint64_t a2)
{
  v189 = a2;
  v213 = a1;
  v203 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  v3 = *(*(v203 - 8) + 64);
  MEMORY[0x1EEE9AC00](v203);
  v208 = (&v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v207 = (&v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  v8 = *(*(v190 - 8) + 64);
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v189 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v196 = &v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v205 = &v189 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v198 = &v189 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v199 = &v189 - v19;
  v20 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v209 = (&v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v189 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v192 = &v189 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v195 = &v189 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v204 = &v189 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v194 = &v189 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v202 = &v189 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v193 = &v189 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v197 = &v189 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v206 = &v189 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v200 = &v189 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v201 = &v189 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v189 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v189 - v52;
  v54 = type metadata accessor for DispatchPredicate();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v58 = (&v189 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v210 = v2;
  v59 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v58 = v59;
  (*(v55 + 104))(v58, *MEMORY[0x1E69E8020], v54);
  v60 = v59;
  LOBYTE(v59) = _dispatchPreconditionTest(_:)();
  (*(v55 + 8))(v58, v54);
  if ((v59 & 1) == 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  v61 = *(v11 + 56);
  v219 = v53;
  v61(v53, 1, 1, v10);
  v53 = v213;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v213, v26, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v62 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  if ((*(*(v62 - 8) + 48))(v26, 1, v62) != 1)
  {
    v75 = v11;
    v212 = v10;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v213 = v11;
    if (EnumCaseMultiPayload == 1)
    {
      v77 = v209;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v26, v209, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      v78 = *v77;
      v79 = v77[1];
      outlined copy of Data._Representation(*v77, v79);
      UUID.init(data:)(v78, v79, v51);
      v80 = v219;
      outlined assign with take of ActivitySession.DomainAssertionWrapper?(v51, v219, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      v208 = __swift_project_value_buffer(v81, static Log.attachmentLedgerTopic);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v206;
      v86 = v200;
      if (v84)
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v218 = v88;
        *v87 = 136315138;
        swift_beginAccess();
        v89 = v201;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v80, v201, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v89, v86, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v91 = v212;
        v90 = v213;
        if (v213[6](v86, 1, v212) == 1)
        {
          v92 = 7104878;
          v93 = 0xE300000000000000;
        }

        else
        {
          v110 = v199;
          (*(v90 + 32))(v199, v86, v91);
          (*(v90 + 16))(v198, v110, v91);
          v92 = String.init<A>(reflecting:)();
          v93 = v111;
          v112 = v110;
          v85 = v206;
          (*(v90 + 8))(v112, v91);
        }

        outlined destroy of NSObject?(v201, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v218);

        *(v87 + 4) = v113;
        _os_log_impl(&dword_1AEB26000, v82, v83, "Received attachmentStatusACK %s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v88);
        MEMORY[0x1B27120C0](v88, -1, -1);
        MEMORY[0x1B27120C0](v87, -1, -1);

        v80 = v219;
      }

      else
      {
      }

      v114 = v210;
      swift_beginAccess();
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v80, v85, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v116 = v212;
      v115 = v213;
      v117 = v213[6];
      v118 = v117(v85, 1, v212);
      v119 = v205;
      if (v118 == 1)
      {
        outlined destroy of NSObject?(v85, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_30:

        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          v219 = swift_slowAlloc();
          *&v216 = v219;
          *v134 = 136315394;
          v135 = PluginAttachmentLedgerTopic.description.getter();
          v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v136, &v216);

          *(v134 + 4) = v137;
          *(v134 + 12) = 2080;
          v138 = v197;
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(v80, v197, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v139 = v138;
          v140 = v193;
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(v139, v193, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v141 = v212;
          if (v117(v140, 1, v212) == 1)
          {
            v142 = 7104878;
            v143 = 0xE300000000000000;
          }

          else
          {
            v175 = v213;
            v176 = v199;
            v213[4](v199, v140, v141);
            (*(v175 + 16))(v198, v176, v141);
            v142 = String.init<A>(reflecting:)();
            v177 = v141;
            v143 = v178;
            (*(v175 + 8))(v176, v177);
          }

          outlined destroy of NSObject?(v197, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v179 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v143, &v216);

          *(v134 + 14) = v179;
          _os_log_impl(&dword_1AEB26000, v132, v133, "%s Attachment with UUID %s not found", v134, 0x16u);
          v180 = v219;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v180, -1, -1);
          MEMORY[0x1B27120C0](v134, -1, -1);
        }

        lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
        swift_allocError();
        *v181 = 4;
        swift_willThrow();
        v130 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack;
        v131 = v209;
        goto LABEL_54;
      }

      v120 = (*(v115 + 32))(v205, v85, v116);
      v121 = (*(*v114 + 608))(v120);
      if (!*(v121 + 16) || (v122 = specialized __RawDictionaryStorage.find<A>(_:)(v119), (v123 & 1) == 0))
      {

        (v213[1])(v119, v212);
        goto LABEL_30;
      }

      v124 = *(v121 + 56) + 16 * v122;
      v126 = *v124;
      v125 = *(v124 + 8);

      v127 = v209;
      v128 = v191;
      outlined init with copy of Attachment.MMCSMetadata(v209, v191, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      swift_storeEnumTagMultiPayload();
      v129 = v211;
      v126(v128);
      if (v129)
      {

        outlined destroy of NSObject?(v128, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
        (v213[1])(v119, v212);
        v130 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack;
        v131 = v127;
LABEL_54:
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v131, v130);
        return outlined destroy of NSObject?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      outlined destroy of NSObject?(v128, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
      (v213[1])(v119, v212);
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v127, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
LABEL_58:
      swift_beginAccess();
      PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(v80, v189);
      return outlined destroy of NSObject?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    v95 = v207;
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v26, v207, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    v96 = *v95;
    v97 = v95[1];
    outlined copy of Data._Representation(v96, v97);
    UUID.init(data:)(v96, v97, v51);
    v80 = v219;
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(v51, v219, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    v209 = __swift_project_value_buffer(v98, static Log.attachmentLedgerTopic);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v218 = v102;
      *v101 = 136315138;
      swift_beginAccess();
      v103 = v202;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v80, v202, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v104 = v194;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v103, v194, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v105 = v212;
      if ((*(v75 + 48))(v104, 1, v212) == 1)
      {
        v106 = 7104878;
        v107 = 0xE300000000000000;
      }

      else
      {
        v144 = v199;
        (*(v75 + 32))(v199, v104, v105);
        (*(v75 + 16))(v198, v144, v105);
        v106 = String.init<A>(reflecting:)();
        v145 = v75;
        v107 = v146;
        (*(v145 + 8))(v144, v105);
      }

      v109 = v204;
      outlined destroy of NSObject?(v202, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &v218);

      *(v101 + 4) = v147;
      _os_log_impl(&dword_1AEB26000, v99, v100, "Received attachmentStatusFullUpdate %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      MEMORY[0x1B27120C0](v102, -1, -1);
      MEMORY[0x1B27120C0](v101, -1, -1);

      v75 = v213;
      v108 = v210;
    }

    else
    {

      v108 = v210;
      v109 = v204;
    }

    swift_beginAccess();
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v80, v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v148 = v212;
    v208 = *(v75 + 48);
    if (v208(v109, 1, v212) == 1)
    {
      outlined destroy of NSObject?(v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_39:

      v159 = Logger.logObject.getter();
      v160 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v159, v160))
      {
        v161 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        *&v216 = v162;
        *v161 = 136315394;
        v163 = PluginAttachmentLedgerTopic.description.getter();
        v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v164, &v216);

        *(v161 + 4) = v165;
        *(v161 + 12) = 2080;
        v166 = v195;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v80, v195, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v167 = v192;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v166, v192, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v168 = v212;
        if (v208(v167, 1, v212) == 1)
        {
          v169 = 7104878;
          v170 = 0xE300000000000000;
        }

        else
        {
          v182 = v213;
          v183 = v199;
          v213[4](v199, v167, v168);
          (*(v182 + 16))(v198, v183, v168);
          v169 = String.init<A>(reflecting:)();
          v184 = v168;
          v170 = v185;
          (*(v182 + 8))(v183, v184);
        }

        outlined destroy of NSObject?(v195, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v186 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v170, &v216);

        *(v161 + 14) = v186;
        _os_log_impl(&dword_1AEB26000, v159, v160, "%s Attachment with UUID %s not found", v161, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v162, -1, -1);
        MEMORY[0x1B27120C0](v161, -1, -1);
      }

      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v187 = 4;
      swift_willThrow();
      v130 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full;
      v131 = v207;
      goto LABEL_54;
    }

    v149 = v196;
    v150 = (*(v75 + 32))(v196, v109, v148);
    v151 = *(*v108 + 632);
    v206 = (*v108 + 632);
    v152 = v151;
    v153 = v151(v150);
    MEMORY[0x1EEE9AC00](v153);
    *(&v189 - 2) = v149;
    v154 = v211;
    v155 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:), (&v189 - 4), v153);
    v157 = v156;
    v211 = v154;

    if (v157)
    {
      (*(v75 + 8))(v149, v212);
      v80 = v219;
      goto LABEL_39;
    }

    result = v152(v158);
    if ((result & 0xC000000000000001) == 0)
    {
      v80 = v219;
      v171 = v196;
      if ((v155 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v155 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v172 = *(result + 8 * v155 + 32);

LABEL_46:

        v173 = v207;
        v174 = v211;
        AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.uploadStatus.getter(&v216);
        if (v174)
        {
          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v173, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);

          (v213[1])(v171, v212);
          return outlined destroy of NSObject?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        v214 = v216;
        v215 = v217;
        Attachment.update(_:)(&v214);
        v188 = v213;

        outlined consume of Attachment.MMCSMetadata.UploadStatus(v214, *(&v214 + 1), v215);
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v173, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
        (*(v188 + 8))(v171, v212);
        goto LABEL_58;
      }

      __break(1u);
      return result;
    }

    MEMORY[0x1B2710B10](v155, result);
    v80 = v219;
    v171 = v196;
    goto LABEL_46;
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
LABEL_60:
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Log.attachmentLedgerTopic);
  v64 = v208;
  outlined init with copy of Attachment.MMCSMetadata(v53, v208, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.fault.getter();
  v67 = os_log_type_enabled(v65, v66);
  v68 = v219;
  if (v67)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v218 = v70;
    *v69 = 136315138;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    v71 = Message.debugDescription.getter();
    v73 = v72;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v64, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v218);

    *(v69 + 4) = v74;
    _os_log_impl(&dword_1AEB26000, v65, v66, "Unknown added event received %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x1B27120C0](v70, -1, -1);
    MEMORY[0x1B27120C0](v69, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v64, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  }

  return outlined destroy of NSObject?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v71 = a3;
  v70 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v68 - v8;
  v9 = type metadata accessor for UUID();
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = v11;
  v78 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v12 = *(v72 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v15 = &v68 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_J10EncryptionVG_GANGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_J10EncryptionVG_GANGMR);
  v73 = *(v77 - 8);
  v16 = *(v73 + 8);
  MEMORY[0x1EEE9AC00](v77);
  v18 = &v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_L10EncryptionVG_GAPGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_L10EncryptionVG_GAPGGMR);
  v74 = *(v19 - 8);
  v75 = v19;
  v20 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v68 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v4 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x1E69E8020], v23);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    v27 = (*(*v4 + 648))(v82);
    v31 = v30;

    MEMORY[0x1B2710150](v32);
    if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_3:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (v27)(v82, 0);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v33 = v4[13];
  *(swift_allocObject() + 16) = v33;
  type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : AttachmentLedger_AttachmentEncryption]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v34 = v72;
  Publisher.compactMap<A>(_:)();

  (*(v12 + 8))(v15, v34);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<Published<[UInt64 : AttachmentLedger_AttachmentEncryption]>.Publisher, AttachmentLedger_AttachmentEncryption> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_J10EncryptionVG_GANGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_J10EncryptionVG_GANGMR);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v35 = v77;
  Publisher<>.removeDuplicates()();
  (*(v73 + 1))(v18, v35);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v39 = v79;
  v38 = v80;
  v40 = *(v79 + 16);
  v41 = a1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v77 = a1;
  v42 = v78;
  v73 = v40;
  v40(v78, v41, v80);
  v43 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v44 = swift_allocObject();
  v45 = v44;
  *(v44 + 16) = v36;
  v46 = v42;
  v47 = v77;
  (*(v39 + 32))(v44 + v43, v46, v38);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.CompactMap<Published<[UInt64 : AttachmentLedger_AttachmentEncryption]>.Publisher, AttachmentLedger_AttachmentEncryption>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_L10EncryptionVG_GAPGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_L10EncryptionVG_GAPGGMR);
  v48 = v75;
  Publisher<>.sink(receiveValue:)();

  (*(v74 + 8))(v22, v48);
  v49 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_attachmentListeners;
  swift_beginAccess();
  v50 = *(v4 + v49);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = *(v4 + v49);
  v52 = v81;
  *(v4 + v49) = 0x8000000000000000;
  v54 = specialized __RawDictionaryStorage.find<A>(_:)(v47 + v37);
  v55 = v52[2];
  v56 = (v53 & 1) == 0;
  v57 = v55 + v56;
  if (__OFADD__(v55, v56))
  {
    __break(1u);
    goto LABEL_16;
  }

  v45 = v53;
  if (v52[3] >= v57)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_16:
    specialized _NativeDictionary.copy()();
    v52 = v81;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, isUniquelyReferenced_nonNull_native);
  v52 = v81;
  v58 = specialized __RawDictionaryStorage.find<A>(_:)(v47 + v37);
  if ((v45 & 1) != (v59 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v54 = v58;
LABEL_8:
  v60 = v71;
  *(v4 + v49) = v52;
  if ((v45 & 1) == 0)
  {
    v61 = v47 + v37;
    v62 = v78;
    v73(v78, v61, v80);
    v63 = v62;
    v47 = v77;
    specialized _NativeDictionary._insert(at:key:value:)(v54, v63, MEMORY[0x1E69E7CD0], v52);
  }

  v64 = v52[7];
  AnyCancellable.store(in:)();
  swift_endAccess();

  if ((v60 & 1) == 0)
  {
    v66 = v69;
    v67 = v80;
    v73(v69, v47 + v37, v80);
    (*(v79 + 56))(v66, 0, 1, v67);
    PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(v66, v70);
    return outlined destroy of NSObject?(v66, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  return result;
}

NSObject *PluginAttachmentLedgerTopic.processAttachmentUpdateAdd(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v5 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v3 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
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
  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Log.attachmentLedgerTopic);
  outlined init with copy of Attachment.MMCSMetadata(v51, v11, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v44 = a2;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v20;
    v26 = v25;
    v50[0] = v25;
    *v24 = 136315138;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v27 = Message.debugDescription.getter();
    v29 = v28;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v11, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v50);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1AEB26000, v21, v22, "Notified of new attachment %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1B27120C0](v26, -1, -1);
    MEMORY[0x1B27120C0](v24, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v11, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  outlined init with copy of Attachment.MMCSMetadata(v51, v9, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v31 = outlined init with copy of UserNotificationCenter((v3 + 26), v50);
  v32 = v3[13];
  (*(*v3 + 392))(v48, v31);
  v46[0] = v48[0];
  v46[1] = v48[1];
  v46[2] = v48[2];
  v47 = v49;
  v33 = v45;
  result = specialized Attachment.__allocating_init(attachment:dataCryptor:localEncryptionID:config:)(v9, v50, v32, v46);
  if (!v33)
  {
    v35 = result;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v50[0] = v39;
      *v38 = 136315138;
      v48[0] = v35;
      type metadata accessor for Attachment(0);

      v40 = String.init<A>(reflecting:)();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v50);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1AEB26000, v36, v37, "Full received attachment: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1B27120C0](v39, -1, -1);
      MEMORY[0x1B27120C0](v38, -1, -1);
    }

    PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)(v35, v44, 0);
  }

  return result;
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
    v16 = *(v9 - 8);
    outlined init with copy of Attachment.MMCSMetadata(v8 + *(v16 + 72) * v7, a3, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = v5;
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.attachmentLedgerTopic);
    (*(v10 + 16))(v13, a3, v9);
    outlined init with copy of Attachment.MMCSMetadata(a1, v8, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = a1;
      v19 = v18;
      v30 = swift_slowAlloc();
      v34 = v30;
      *v19 = 136315394;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = a3;
      v22 = v21;
      (*(v10 + 8))(v13, v9);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v34);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      v24 = Message.debugDescription.getter();
      v26 = v25;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v34);
      a3 = v32;

      *(v19 + 14) = v27;
      _os_log_impl(&dword_1AEB26000, v16, v17, "Local encryptionSlot updated for attachment: %s to %s", v19, 0x16u);
      v28 = v30;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v28, -1, -1);
      v29 = v19;
      a1 = v31;
      MEMORY[0x1B27120C0](v29, -1, -1);
    }

    else
    {

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      (*(v10 + 8))(v13, v9);
    }

    PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(a3, a1);
  }

  return result;
}

uint64_t PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v65 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v74 = v14;
  v75 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - v15;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  v71 = *(updated - 8);
  v18 = *(v71 + 64);
  v19 = MEMORY[0x1EEE9AC00](updated);
  v73 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v68 = &v65 - v22;
  v72 = v23;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v65 - v24;
  v79 = v3;
  v80 = a1;
  v81 = a2;
  v26 = lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v78 = v25;
  v67 = v26;
  static Message.with(_:)();
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Log.attachmentLedgerTopic);
  v28 = *(v11 + 16);
  v76 = a1;
  v69 = v28;
  v70 = v11 + 16;
  v28(v16, a1, v10);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v77 = v11;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v65 = v9;
    v33 = v32;
    v34 = swift_slowAlloc();
    v66 = v3;
    v35 = v34;
    v82[0] = v34;
    *v33 = 136315138;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v10;
    v39 = v38;
    v40 = v16;
    v41 = v37;
    (*(v11 + 8))(v40, v37);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v39, v82);

    *(v33 + 4) = v42;
    _os_log_impl(&dword_1AEB26000, v29, v30, "[Encryption] Updating attachment %s's encryption", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v43 = v35;
    v3 = v66;
    MEMORY[0x1B27120C0](v43, -1, -1);
    v44 = v33;
    v9 = v65;
    MEMORY[0x1B27120C0](v44, -1, -1);
  }

  else
  {

    v45 = v16;
    v41 = v10;
    (*(v11 + 8))(v45, v10);
  }

  v46 = v68;
  outlined init with copy of Attachment.MMCSMetadata(v78, v68, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v82[0] = v50;
    *v49 = 136315138;
    v51 = Message.debugDescription.getter();
    v53 = v52;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v46, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v82);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_1AEB26000, v47, v48, "[Encryption] Encryption update message %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1B27120C0](v50, -1, -1);
    MEMORY[0x1B27120C0](v49, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v46, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  }

  v55 = v41;
  v56 = type metadata accessor for TaskPriority();
  (*(*(v56 - 8) + 56))(v9, 1, 1, v56);
  v57 = v78;
  v58 = v73;
  outlined init with copy of Attachment.MMCSMetadata(v78, v73, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v59 = v75;
  v69(v75, v76, v55);
  v60 = (*(v71 + 80) + 40) & ~*(v71 + 80);
  v61 = v77;
  v62 = (v72 + *(v77 + 80) + v60) & ~*(v77 + 80);
  v63 = swift_allocObject();
  *(v63 + 2) = 0;
  *(v63 + 3) = 0;
  *(v63 + 4) = v3;
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v58, &v63[v60], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  (*(v61 + 32))(&v63[v62], v59, v55);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:), v63);

  return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v57, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
}

uint64_t Subscribers.Completion<>.pluginShutdownReason.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for PluginRpcError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v7, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = outlined destroy of NSObject?(v7, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    v17 = 5;
LABEL_3:
    *a1 = v17;
    return result;
  }

  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v7, v15, type metadata accessor for PluginRpcError);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v15, v13, type metadata accessor for PluginRpcError);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v13;
    v19 = *(v13 + 1);
    v20 = *(v13 + 3);

    if (v18 == 14)
    {
      v17 = 7;
      goto LABEL_3;
    }

    *a1 = 0;
  }

  else
  {
    *a1 = 6;
    return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v13, type metadata accessor for PluginRpcError);
  }

  return result;
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttachmentLedger_SubscribeRequest(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24[-v11];
  v25 = a1;
  v26 = a2;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest);
  static Message.with(_:)();
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.attachmentLedgerTopic);
  outlined init with copy of Attachment.MMCSMetadata(v12, v10, type metadata accessor for AttachmentLedger_SubscribeRequest);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    v18 = Message.debugDescription.getter();
    v20 = v19;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v10, type metadata accessor for AttachmentLedger_SubscribeRequest);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1AEB26000, v14, v15, "[Subscribe] Sending attachmentAck message=%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B27120C0](v17, -1, -1);
    MEMORY[0x1B27120C0](v16, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v10, type metadata accessor for AttachmentLedger_SubscribeRequest);
  }

  v22 = *(a3 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput);

  PassthroughSubject.send(_:)();

  return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, type metadata accessor for AttachmentLedger_SubscribeRequest);
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12[-v8];
  type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  v13 = a2;
  v14 = a3;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.AttachmentAck and conformance AttachmentLedger_SubscribeRequest.AttachmentAck, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  static Message.with(_:)();
  v10 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return outlined assign with take of ActivitySession.DomainAssertionWrapper?(v9, a1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22[-1] - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1AEE07B20;
    v22[0] = UUID.uuid.getter();
    v22[1] = v17;
    *(v16 + 32) = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v22, &v23);
    *(v16 + 40) = v18;
    (*(v11 + 8))(v14, v10);
    v19 = *a1;

    *a1 = v16;
  }

  a1[1] = a3;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Void __swiftcall PluginAttachmentLedgerTopic.updateLocalTopicEncryptionID()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttachmentLedger_SubscribeRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest);
    static Message.with(_:)();
    if (one-time initialization token for attachmentLedgerTopic == -1)
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
  __swift_project_value_buffer(v18, static Log.attachmentLedgerTopic);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v10;
    v33 = v31;
    *v21 = 136315138;
    v22 = v6;
    v24 = v0[29];
    v23 = v0[30];
    __swift_project_boxed_opaque_existential_1(v0 + 26, v24);
    (*(v23 + 8))(v24, v23);
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v3 + 8))(v22, v2);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v33);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_1AEB26000, v19, v20, "[Encryption] Updating localEncryptionID to: %s", v21, 0xCu);
    v29 = v31;
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v10 = v32;
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  v30 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput);

  PassthroughSubject.send(_:)();

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v10, type metadata accessor for AttachmentLedger_SubscribeRequest);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.updateLocalTopicEncryptionID()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - v4;
  type metadata accessor for AttachmentLedger_EncryptionID(0);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
  static Message.with(_:)();
  v6 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  return outlined assign with take of ActivitySession.DomainAssertionWrapper?(v5, a1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.subscribeRequest.getter(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[29];
  v10 = a2[30];
  __swift_project_boxed_opaque_existential_1(a2 + 26, v9);
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

uint64_t closure #1 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14[-v10];
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  static Message.with(_:)();
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(updated - 8) + 56))(v11, 0, 1, updated);
  return outlined assign with take of ActivitySession.DomainAssertionWrapper?(v11, a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v9 = *(updated - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a2 + 112);
  v13 = *(a2 + 120);
  v15 = *(a1 + 1);

  *a1 = v14;
  *(a1 + 1) = v13;
  v19 = a3;
  v20 = a4;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  static Message.with(_:)();
  v16 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0) + 24);
  outlined destroy of NSObject?(&a1[v16], &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v12, &a1[v16], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  return (*(v9 + 56))(&a1[v16], 0, 1, updated);
}

uint64_t closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = UUID.uuid.getter();
  v18[1] = v10;
  v11 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v18, &v19);
  v13 = v12;
  outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v11;
  *(a1 + 8) = v13;
  outlined init with copy of Attachment.MMCSMetadata(a3, v9, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v14 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0) + 24);
  outlined destroy of NSObject?(a1 + v14, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v9, a1 + v14, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  result = (*(v6 + 56))(a1 + v14, 0, 1, v5);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v6[13] = updated;
  v12 = *(*(updated - 8) + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:), 0, 0);
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000018, 0x80000001AEE32480, closure #1 in PluginAttachmentLedgerTopic.updateAttachment(input:)partial apply, v1, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:);
  }

  else
  {
    v5 = *(v2 + 120);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(*(v2 + 112), type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

    v4 = closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

{
  v49 = v0;
  v1 = *(v0 + 120);

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 40);
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.attachmentLedgerTopic);
  v8 = v4;
  v9 = *(v5 + 16);
  v9(v3, v6, v8);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v46 = v12;
    v13 = *(v0 + 96);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v18 = 136315394;
    v9(v16, v13, v15);
    (*(v14 + 56))(v16, 0, 1, v15);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v14 + 48))(v17, 1, v15) == 1)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v25 = *(v0 + 80);
      v24 = *(v0 + 88);
      v27 = *(v0 + 64);
      v26 = *(v0 + 72);
      (*(v26 + 32))(v24, *(v0 + 48), v27);
      v9(v25, v24, v27);
      v20 = String.init<A>(reflecting:)();
      v19 = v28;
      (*(v26 + 8))(v24, v27);
    }

    v29 = *(v0 + 136);
    v30 = *(v0 + 96);
    v32 = *(v0 + 64);
    v31 = *(v0 + 72);
    outlined destroy of NSObject?(*(v0 + 56), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v31 + 8))(v30, v32);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v48);

    *(v18 + 4) = v33;
    *(v18 + 12) = 2080;
    *(v0 + 16) = v29;
    v34 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v35 = String.init<A>(reflecting:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v48);

    *(v18 + 14) = v37;
    _os_log_impl(&dword_1AEB26000, v11, v46, "Failed to update encryption material for attachment %s, reason: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v47, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  else
  {
    v21 = *(v0 + 96);
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);

    (*(v23 + 8))(v21, v22);
  }

  v38 = *(v0 + 112);
  v39 = *(v0 + 88);
  v40 = *(v0 + 96);
  v41 = *(v0 + 80);
  v43 = *(v0 + 48);
  v42 = *(v0 + 56);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t PluginAttachmentLedgerTopic.uploadTokenRequest.getter()
{
  type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  return static Message.with(_:)();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.requestUploadToken()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 288))(&v21);
  if ((v26 & 0x8000000000000000) == 0 || ((v4 = v23 | v22, v5 = v25 | v27, v26 == 0x8000000000000000) ? (v6 = (v23 | v22 | v21 | v24 | v25 | v27) == 0) : (v6 = 0), v6))
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v21, v22, v23, v24, v25, v26);
  }

  else
  {
    v7 = v21;
    v8 = v24;
    v9 = v26;
    v10 = outlined consume of PluginAttachmentLedgerTopic.State(v21, v22, v23, v24, v25, v26);
    if (v9 == 0x8000000000000000 && v7 == 1 && !(v4 | v8 | v5))
    {
      result = (*(*a1 + 368))(v10);
      *a2 = result;
      return result;
    }
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.attachmentLedgerTopic);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    v17 = PluginAttachmentLedgerTopic.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v13, v14, "Requested uploadToken without being subscribed on %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
  swift_allocError();
  *v20 = 3;
  return swift_willThrow();
}

uint64_t PluginAttachmentLedgerTopic.refreshUploadToken()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.refreshUploadToken(), 0, 0);
}

uint64_t PluginAttachmentLedgerTopic.refreshUploadToken()()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = type metadata accessor for UploadToken(0);
  *v2 = v0;
  v2[1] = PluginAttachmentLedgerTopic.refreshUploadToken();
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000014, 0x80000001AEE324A0, closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()partial apply, v5, v3);
}

{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.refreshUploadToken(), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 40);
  return (*(v0 + 8))();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()(uint64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v24 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = *(a2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  (*(v12 + 16))(&v23 - v14, a1, v11);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v12 + 32))(v18 + v17, v15, v11);
  aBlock[4] = partial apply for closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken();
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_192;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v21 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v10, v6, v19);
  _Block_release(v19);

  (*(v27 + 8))(v6, v21);
  (*(v25 + 8))(v10, v26);
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR);
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v42 - v10;
  (*(*a1 + 288))(&v45, v9);
  if ((v50 & 0x8000000000000000) == 0 || (v12 = v47 | v46, v13 = v49 | v51, v50 == 0x8000000000000000) && !(v12 | v45 | v48 | v13))
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v45, v46, v47, v48, v49, v50);
LABEL_5:
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.attachmentLedgerTopic);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v45 = v18;
      *v17 = 136315138;
      v19 = PluginAttachmentLedgerTopic.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v45);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1AEB26000, v15, v16, "Requested uploadToken without being subscribed on %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1B27120C0](v18, -1, -1);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
    v22 = swift_allocError();
    *v23 = 3;
    v45 = v22;
    return CheckedContinuation.resume(throwing:)();
  }

  v42 = v3;
  v25 = v45;
  v26 = v48;
  v27 = v50;
  outlined consume of PluginAttachmentLedgerTopic.State(v45, v46, v47, v48, v49, v50);
  if (v27 != 0x8000000000000000 || v25 != 1 || v12 | v26 | v13)
  {
    goto LABEL_5;
  }

  refreshed = PluginAttachmentLedgerTopic._refreshUploadToken()();
  v29 = (*(*a1 + 368))(refreshed);
  if (!v29)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Log.attachmentLedgerTopic);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1AEB26000, v37, v38, "Failed to find task for uploadToken request right after refreshing", v39, 2u);
      MEMORY[0x1B27120C0](v39, -1, -1);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    v40 = swift_allocError();
    *v41 = 2;
    v45 = v40;
    return CheckedContinuation.resume(throwing:)();
  }

  v30 = v29;
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
  v32 = v42;
  v33 = v44;
  (*(v42 + 16))(v6, v43, v44);
  v34 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 4) = v30;
  (*(v32 + 32))(&v35[v34], v6, v33);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken(), v35);
}

uint64_t PluginAttachmentLedgerTopic._refreshUploadToken()()
{
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  v2 = *(AuthTokenRequest - 8);
  v47 = AuthTokenRequest;
  v48 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](AuthTokenRequest);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = v0;
  v21 = *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v44 = v6;
    UUID.init()();
    if (one-time initialization token for attachmentLedgerTopic == -1)
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
  v45 = v8;
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.attachmentLedgerTopic);
  v24 = v10[2];
  v25 = v46;
  v43 = v15;
  v24(v46, v15, v9);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v51[0] = v29;
    *v28 = 136315138;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v25;
    v33 = v32;
    v34 = v10[1];
    v34(v31, v9);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v33, v51);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_1AEB26000, v26, v27, "Received request to refresh upload token, tokenID: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  else
  {

    v34 = v10[1];
    v34(v25, v9);
  }

  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  v36 = v45;
  v37 = v50;
  static Message.with(_:)();
  outlined init with copy of UserNotificationCenter(v37 + 168, v51);
  v38 = v44;
  outlined init with copy of Attachment.MMCSMetadata(v36, v44, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  v39 = (*(v48 + 80) + 56) & ~*(v48 + 80);
  v40 = swift_allocObject();
  outlined init with take of ContiguousBytes(v51, v40 + 16);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v38, v40 + v39, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  v41 = v43;
  PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(v43, &async function pointer to partial apply for closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken(), v40);

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  return (v34)(v41, v9);
}

uint64_t closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  v7 = type metadata accessor for UploadToken(0);
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[5] = v9;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  v5[6] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v11 = v5;
  v11[1] = closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken();
  v13 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v9, a4, v7, v12, v13);
}

uint64_t closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken();
  }

  else
  {
    v3 = closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[3];
  outlined init with copy of Attachment.MMCSMetadata(v1, v0[4], type metadata accessor for UploadToken);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for UploadToken);
  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[3];
  v0[2] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  v3 = v0[4];
  v2 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t PluginAttachmentLedgerTopic.requestDownloadToken(for:)(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for UUID();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = *(type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0) - 8);
  v3[14] = v7;
  v8 = *(v7 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v9 = *(*(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v3[18] = v10;
  v11 = *(v10 - 8);
  v3[19] = v11;
  v12 = *(v11 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  v3[23] = AuthTokenRequest;
  v14 = *(*(AuthTokenRequest - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v15 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.requestDownloadToken(for:), 0, 0);
}

uint64_t PluginAttachmentLedgerTopic.requestDownloadToken(for:)()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(v0[10] + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  OS_dispatch_queue.sync<A>(execute:)();
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[9];
  v5 = v0[10];

  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v0[26] = lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  static Message.with(_:)();

  static Date.now.getter();
  v9 = v5[24];
  v8 = v5[25];
  __swift_project_boxed_opaque_existential_1(v5 + 21, v9);
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = PluginAttachmentLedgerTopic.requestDownloadToken(for:);
  v11 = v0[25];
  v12 = v0[17];
  v13 = *MEMORY[0x1E69E9840];

  return AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)(v12, v11, v9, v8);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = PluginAttachmentLedgerTopic.requestDownloadToken(for:);
  }

  else
  {
    v3 = PluginAttachmentLedgerTopic.requestDownloadToken(for:);
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v136 = v0;
  v135 = *MEMORY[0x1E69E9840];
  v1 = *(*(v0 + 136) + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_72:
    v2 = &type metadata singleton initialization cache for ActivitySessionManager;
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_73;
  }

  v3 = 0;
  v120 = *(*(v0 + 136) + 16);
  v126 = *(v0 + 112);
  v128 = *(v0 + 128);
  v124 = v1 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
  v4 = *(v0 + 224);
  v121 = *(v1 + 16);
  while (v3 < *(v1 + 16))
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 72);
    outlined init with copy of Attachment.MMCSMetadata(v124 + *(v126 + 72) * v3, v5, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
    v7 = *v5;
    v8 = *(v128 + 8);
    *(v0 + 232) = UUID.uuid.getter();
    *(v0 + 240) = v9;
    v10 = MEMORY[0x1E69E6290];
    *(v0 + 40) = MEMORY[0x1E69E6290];
    *(v0 + 48) = MEMORY[0x1E6969DF8];
    *(v0 + 16) = v0 + 232;
    *(v0 + 24) = v0 + 248;
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
    v12 = *v11;
    if (*v11 && (v13 = v11[1], v14 = v13 - v12, v13 != v12))
    {
      if (v14 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v134 = v13 - v12;
        memcpy(__dst, v12, v13 - v12);
        v15 = *__dst;
        v16 = v122 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v134 << 16)) << 32);
        v122 = v16;
      }

      else
      {
        v26 = type metadata accessor for __DataStorage();
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        swift_allocObject();
        v29 = __DataStorage.init(bytes:length:)();
        v30 = v29;
        if (v14 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v15 = swift_allocObject();
          *(v15 + 16) = 0;
          *(v15 + 24) = v14;
          v16 = v30 | 0x8000000000000000;
        }

        else
        {
          v15 = v14 << 32;
          v16 = v29 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v15 = 0;
      v16 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v17 = v8 >> 62;
    v18 = v16 >> 62;
    if (v8 >> 62 == 3)
    {
      if (v7)
      {
        v19 = 0;
      }

      else
      {
        v19 = v8 == 0xC000000000000000;
      }

      v20 = 0;
      v21 = v19 && v16 >> 62 == 3;
      if (v21 && !v15 && v16 == 0xC000000000000000)
      {
        goto LABEL_83;
      }

LABEL_33:
      if (v18 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v32 = *(v7 + 16);
        v31 = *(v7 + 24);
        v24 = __OFSUB__(v31, v32);
        v20 = v31 - v32;
        if (v24)
        {
          goto LABEL_91;
        }

        goto LABEL_33;
      }

      v20 = 0;
      if (v18 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v17)
    {
      LODWORD(v20) = HIDWORD(v7) - v7;
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_92;
      }

      v20 = v20;
      if (v18 <= 1)
      {
LABEL_34:
        if (v18)
        {
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_89;
          }

          if (v20 == HIDWORD(v15) - v15)
          {
LABEL_42:
            if (v20 < 1)
            {
LABEL_82:
              outlined consume of Data._Representation(v15, v16);
LABEL_83:
              v103 = *(v0 + 168);
              v102 = *(v0 + 176);
              v105 = *(v0 + 152);
              v104 = *(v0 + 160);
              v106 = *(v0 + 144);
              v125 = *(v0 + 200);
              v127 = *(v0 + 136);
              v107 = *(v0 + 120);
              v129 = *(v0 + 128);
              v132 = *(v0 + 104);
              v118 = *(v0 + 64);
              outlined init with copy of Attachment.MMCSMetadata(v129, v107, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
              v108 = *(v105 + 16);
              v108(v103, v102, v106);
              v109 = v107[3];
              v123 = v107[2];
              v110 = v107[6] / 0x3E8uLL;
              v108(v104, v103, v106);
              v119 = type metadata accessor for DownloadToken(0);
              v111 = *(v119 + 20);

              Date.init(timeInterval:since:)();
              v112 = *(v105 + 8);
              v112(v103, v106);
              v112(v102, v106);
              outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v125, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
              outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v127, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
              v113 = v107[4];
              v114 = v107[5];

              outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v107, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
              *v118 = v123;
              v118[1] = v109;
              v115 = (v118 + *(v119 + 24));
              *v115 = v113;
              v115[1] = v114;
              outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v129, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);

              v100 = *(v0 + 8);
              v116 = *MEMORY[0x1E69E9840];
              goto LABEL_84;
            }

            if (v17 > 1)
            {
              if (v17 != 2)
              {
                v33 = v0 + 262;
                *(v0 + 268) = 0;
                *(v0 + 262) = 0;
                goto LABEL_68;
              }

              v34 = *(v7 + 16);
              v2 = *(v7 + 24);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v34, v36))
                {
                  __break(1u);
LABEL_97:
                  __break(1u);
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v2, v34))
              {
                goto LABEL_94;
              }

              MEMORY[0x1B270E950]();
              result = closure #1 in static Data.== infix(_:_:)(v35, v15, v16, __dst);
              if (v4)
              {
LABEL_87:
                v117 = *MEMORY[0x1E69E9840];
                return result;
              }

              outlined consume of Data._Representation(v15, v16);
              v1 = v120;
              v2 = v121;
              if (__dst[0])
              {
                goto LABEL_83;
              }
            }

            else if (v17)
            {
              v2 = v7;
              if (v7 >> 32 < v7)
              {
                goto LABEL_93;
              }

              v38 = __DataStorage._bytes.getter();
              if (v38)
              {
                v39 = __DataStorage._offset.getter();
                if (__OFSUB__(v2, v39))
                {
                  goto LABEL_97;
                }

                v38 += v2 - v39;
              }

              MEMORY[0x1B270E950]();
              result = closure #1 in static Data.== infix(_:_:)(v38, v15, v16, __dst);
              v2 = v121;
              if (v4)
              {
                goto LABEL_87;
              }

              outlined consume of Data._Representation(v15, v16);
              v1 = v120;
              if (__dst[0])
              {
                goto LABEL_83;
              }
            }

            else
            {
              *(v0 + 248) = v7;
              *(v0 + 256) = v8;
              *(v0 + 258) = BYTE2(v8);
              *(v0 + 259) = BYTE3(v8);
              *(v0 + 260) = BYTE4(v8);
              *(v0 + 261) = BYTE5(v8);
              v33 = v0 + 248;
LABEL_68:
              result = closure #1 in static Data.== infix(_:_:)(v33, v15, v16, __dst);
              if (v4)
              {
                goto LABEL_87;
              }

              outlined consume of Data._Representation(v15, v16);
              if (__dst[0])
              {
                goto LABEL_83;
              }
            }

            v4 = 0;
            goto LABEL_4;
          }
        }

        else
        {
          v25 = BYTE6(v16);
LABEL_36:
          if (v20 == v25)
          {
            goto LABEL_42;
          }
        }

        outlined consume of Data._Representation(v15, v16);
        goto LABEL_4;
      }
    }

    else
    {
      v20 = BYTE6(v8);
      if (v18 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_24:
    if (v18 == 2)
    {
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (v24)
      {
        goto LABEL_90;
      }

      goto LABEL_36;
    }

    if (!v20)
    {
      goto LABEL_82;
    }

LABEL_4:
    ++v3;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(*(v0 + 128), type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
    if (v2 == v3)
    {
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  swift_once();
LABEL_73:
  v41 = *(v0 + 96);
  v40 = *(v0 + 104);
  v43 = *(v0 + 80);
  v42 = *(v0 + 88);
  v44 = *(v0 + 72);
  v130 = type metadata accessor for Logger();
  __swift_project_value_buffer(v130, static Log.attachmentLedgerTopic);
  (*(v41 + 16))(v40, v44, v42);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 96);
  v49 = *(v0 + 104);
  v50 = *(v0 + 88);
  if (v47)
  {
    v51 = *(v0 + 80);
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *__dst = v53;
    *v52 = 136315394;
    v54 = PluginAttachmentLedgerTopic.description.getter();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, __dst);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    (*(v48 + 8))(v49, v50);
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, __dst);
    v2 = &type metadata singleton initialization cache for ActivitySessionManager;

    *(v52 + 14) = v60;
    _os_log_impl(&dword_1AEB26000, v45, v46, "%s failed to get authToken, no token found for ID: %s in server response.", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v53, -1, -1);
    MEMORY[0x1B27120C0](v52, -1, -1);
  }

  else
  {

    (*(v48 + 8))(v49, v50);
  }

  v61 = *(v0 + 176);
  v63 = *(v0 + 144);
  v62 = *(v0 + 152);
  v64 = *(v0 + 136);
  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
  v65 = swift_allocError();
  *v66 = 4;
  swift_willThrow();
  (*(v62 + 8))(v61, v63);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v64, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
  if (v2[255] != -1)
  {
    swift_once();
  }

  v68 = *(v0 + 192);
  v67 = *(v0 + 200);
  v69 = *(v0 + 80);
  __swift_project_value_buffer(v130, static Log.attachmentLedgerTopic);
  outlined init with copy of Attachment.MMCSMetadata(v67, v68, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);

  v70 = v65;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v131 = *(v0 + 208);
    v74 = *(v0 + 184);
    v73 = *(v0 + 192);
    v75 = *(v0 + 80);
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *__dst = v77;
    *v76 = 136315650;
    v78 = PluginAttachmentLedgerTopic.description.getter();
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, __dst);

    *(v76 + 4) = v80;
    *(v76 + 12) = 2080;
    v81 = Message.debugDescription.getter();
    v83 = v82;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v73, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, __dst);

    *(v76 + 14) = v84;
    *(v76 + 22) = 2080;
    *(v0 + 56) = v65;
    v85 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v86 = String.init<A>(reflecting:)();
    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, __dst);

    *(v76 + 24) = v88;
    _os_log_impl(&dword_1AEB26000, v71, v72, "%s failed to get authToken for %s, reason: %s", v76, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v77, -1, -1);
    MEMORY[0x1B27120C0](v76, -1, -1);
  }

  else
  {
    v89 = *(v0 + 192);

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v89, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  }

  v90 = *(v0 + 200);
  swift_willThrow();
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v90, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  v92 = *(v0 + 192);
  v91 = *(v0 + 200);
  v94 = *(v0 + 168);
  v93 = *(v0 + 176);
  v95 = *(v0 + 160);
  v97 = *(v0 + 128);
  v96 = *(v0 + 136);
  v98 = *(v0 + 120);
  v99 = *(v0 + 104);

  v100 = *(v0 + 8);
  v101 = *MEMORY[0x1E69E9840];
LABEL_84:

  return v100();
}

{
  v41 = v0;
  v40[1] = *MEMORY[0x1E69E9840];
  (*(v0[19] + 8))(v0[22], v0[18]);
  v1 = v0[28];
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[10];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.attachmentLedgerTopic);
  outlined init with copy of Attachment.MMCSMetadata(v2, v3, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);

  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v39 = v0[26];
    v10 = v0[23];
    v9 = v0[24];
    v11 = v0[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40[0] = v13;
    *v12 = 136315650;
    v14 = PluginAttachmentLedgerTopic.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v40);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = Message.debugDescription.getter();
    v19 = v18;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v40);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2080;
    v0[7] = v1;
    v21 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v40);

    *(v12 + 24) = v24;
    _os_log_impl(&dword_1AEB26000, v7, v8, "%s failed to get authToken for %s, reason: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  else
  {
    v25 = v0[24];

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v25, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  }

  v26 = v0[25];
  swift_willThrow();
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v26, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  v28 = v0[24];
  v27 = v0[25];
  v30 = v0[21];
  v29 = v0[22];
  v31 = v0[20];
  v33 = v0[16];
  v32 = v0[17];
  v34 = v0[15];
  v35 = v0[13];

  v36 = v0[1];
  v37 = *MEMORY[0x1E69E9840];

  return v36();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.requestDownloadToken(for:)(uint64_t a1)
{
  (*(*a1 + 288))(&v17);
  if ((v22 & 0x8000000000000000) == 0 || ((v1 = v19 | v18, v2 = v21 | v23, v22 == 0x8000000000000000) ? (v3 = (v19 | v18 | v17 | v20 | v21 | v23) == 0) : (v3 = 0), v3))
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v17, v18, v19, v20, v21, v22);
  }

  else
  {
    v4 = v17;
    v5 = v20;
    v6 = v22;
    result = outlined consume of PluginAttachmentLedgerTopic.State(v17, v18, v19, v20, v21, v22);
    if (v6 == 0x8000000000000000 && v4 == 1 && !(v1 | v5 | v2))
    {
      return result;
    }
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.attachmentLedgerTopic);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = PluginAttachmentLedgerTopic.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1AEB26000, v9, v10, "Requested downloadToken without being subscribed on %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
  swift_allocError();
  *v16 = 3;
  return swift_willThrow();
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.requestDownloadToken(for:)(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *a1 = 1;
  *(a1 + 8) = 1;
  v4 = *(a2 + 112);
  v3 = *(a2 + 120);
  v5 = *(a1 + 24);

  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AEE07B20;
  v12[0] = UUID.uuid.getter();
  v12[1] = v7;
  *(v6 + 32) = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v12, &v13);
  *(v6 + 40) = v8;
  v9 = *(a1 + 32);

  *(a1 + 32) = v6;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:), 0, 0);
}

uint64_t AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)()
{
  v1 = v0[7];
  v2 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)(v8, v9, v4, v5, v6, v7);
}

{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  outlined destroy of NSObject?(v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.performAndWaitFor<A>(_:), 0, 0);
  }

  else
  {
    v5 = v4[7];

    v6 = v4[1];

    return v6();
  }
}

uint64_t closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  v3[6] = AuthTokenResponse;
  v6 = *(*(AuthTokenResponse - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken(), 0, 0);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken()()
{
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken();
  v5 = v0[7];
  v6 = v0[4];

  return AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)(v5, v6, v3, v2);
}

{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken();
  }

  else
  {
    v3 = closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[5];
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0[7] + *(v0[6] + 32), v1, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v2 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[2];
  if (v4 == 1)
  {
    *v7 = 0;
    v7[1] = 0xE000000000000000;
    v7[2] = 0;
    v7[3] = 0xE000000000000000;
    v7[4] = 0;
    v7[5] = 0xE000000000000000;
    v7[6] = 0;
    v8 = v7 + *(v2 + 32);
    UnknownStorage.init()();
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
    if (v3(v6, 1, v2) != 1)
    {
      outlined destroy of NSObject?(v0[5], &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    }
  }

  else
  {
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[7], type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v6, v7, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  v9 = v0[7];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v23;
  v8[9] = v24;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v9 = type metadata accessor for Date();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock();
  v8[13] = v12;
  v13 = *(v12 - 8);
  v8[14] = v13;
  v8[15] = *(v13 + 64);
  v8[16] = swift_task_alloc();
  v14 = type metadata accessor for ContinuousClock.Instant();
  v8[17] = v14;
  v15 = *(v14 - 8);
  v8[18] = v15;
  v8[19] = *(v15 + 64);
  v8[20] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v8[22] = v17;
  v18 = *(v17 - 8);
  v8[23] = v18;
  v8[24] = *(v18 + 64);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v19 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v8[27] = v19;
  v20 = *(v19 - 8);
  v8[28] = v20;
  v8[29] = *(v20 + 64);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:), 0, 0);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)()
{
  static Task<>.checkCancellation()();
  v6 = (v0[3] + *v0[3]);
  v1 = *(v0[3] + 4);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
  v3 = v0[33];
  v4 = v0[4];

  return v6(v3);
}

{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
  }

  else
  {
    v3 = closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v92 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[26];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[5];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.attachmentLedgerTopic);
  v89 = *(v5 + 16);
  v89(v3, v6, v4);
  outlined init with copy of Attachment.MMCSMetadata(v2, v1, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[32];
  v12 = v0[26];
  if (v10)
  {
    v87 = v0[27];
    v14 = v0[22];
    v13 = v0[23];
    v15 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91[0] = v90;
    *v15 = 136315394;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v91);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    v20 = Message.debugDescription.getter();
    v22 = v21;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v11, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v91);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_1AEB26000, v8, v9, "[%s] Received uploadToken, token: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v90, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  else
  {
    v24 = v0[22];
    v25 = v0[23];

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v11, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    (*(v25 + 8))(v12, v24);
  }

  v26 = v0[35];
  static Task<>.checkCancellation()();
  if (v26)
  {
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[33], type metadata accessor for AttachmentLedger_AuthPutMaterials);
    v43 = v0[32];
    v42 = v0[33];
    v45 = v0[30];
    v44 = v0[31];
    v47 = v0[25];
    v46 = v0[26];
    v49 = v0[20];
    v48 = v0[21];
    v50 = v0[16];
    v51 = v0[12];
  }

  else
  {
    v84 = v0[30];
    v85 = v0[31];
    v73 = v0[29];
    v71 = v0[28];
    v88 = v0[25];
    v77 = v0[24];
    v74 = v0[23];
    v86 = v0[22];
    v28 = v0[20];
    v27 = v0[21];
    v29 = v0[18];
    v31 = v0[16];
    v30 = v0[17];
    v66 = v28;
    v68 = v31;
    v69 = v0[19];
    v32 = v0[14];
    v70 = v0[15];
    v33 = v0[13];
    v67 = v33;
    v78 = v27;
    v79 = v0[11];
    v82 = v0[12];
    v83 = v0[10];
    v34 = v0[6];
    v75 = v0[33];
    v76 = v0[7];
    v64 = v0[8];
    v65 = v0[5];
    v80 = v0[2];
    v81 = v0[9];
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
    v72 = swift_allocObject();
    swift_weakInit();
    (*(v29 + 16))(v28, v76, v30);
    outlined init with copy of Attachment.MMCSMetadata(v75, v85, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    (*(v32 + 16))(v31, v64, v33);
    v89(v88, v65, v86);
    v36 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v37 = (v69 + *(v71 + 80) + v36) & ~*(v71 + 80);
    v38 = (v73 + *(v32 + 80) + v37) & ~*(v32 + 80);
    v39 = (v70 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v74 + 80) + v39 + 8) & ~*(v74 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    (*(v29 + 32))(v41 + v36, v66, v30);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v85, v41 + v37, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    (*(v32 + 32))(v41 + v38, v68, v67);
    *(v41 + v39) = v72;
    (*(v74 + 32))(v41 + v40, v88, v86);
    _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v78, &async function pointer to partial apply for closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:), v41);

    outlined destroy of NSObject?(v78, &_sScPSgMd, &_sScPSgMR);
    outlined init with copy of Attachment.MMCSMetadata(v75, v84, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    (*(v79 + 16))(v82, v81, v83);
    UploadToken.init(from:requestTime:)(v84, v82, v80);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v75, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    v55 = v0[32];
    v54 = v0[33];
    v57 = v0[30];
    v56 = v0[31];
    v59 = v0[25];
    v58 = v0[26];
    v61 = v0[20];
    v60 = v0[21];
    v62 = v0[16];
    v63 = v0[12];
  }

  v52 = v0[1];

  return v52();
}

{
  v13 = v0[35];
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[16];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[20] = v9;
  v10 = *(v9 - 8);
  v8[21] = v10;
  v11 = *(v10 + 64) + 15;
  v8[22] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  v8[23] = v12;
  v13 = *(v12 - 8);
  v8[24] = v13;
  v14 = *(v13 + 64) + 15;
  v8[25] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v8[26] = v15;
  v16 = *(v15 - 8);
  v8[27] = v16;
  v17 = *(v16 + 64) + 15;
  v8[28] = swift_task_alloc();
  v18 = type metadata accessor for ContinuousClock.Instant();
  v8[29] = v18;
  v19 = *(v18 - 8);
  v8[30] = v19;
  v20 = *(v19 + 64) + 15;
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:), 0, 0);
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 120);
  v3 = *(*(v0 + 128) + 48);
  ContinuousClock.Instant.advanced(by:)();
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  v4 = *(MEMORY[0x1E69E86D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  v6 = type metadata accessor for ContinuousClock();
  v7 = lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820]);
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
  v8 = *(v0 + 248);
  v9 = *(v0 + 136);

  return MEMORY[0x1EEE6DA68](v8, v0 + 88, v9, v6, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 264) = v0;

  (*(v2[30] + 8))(v2[31], v2[29]);
  if (v0)
  {
    v4 = closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
  }

  else
  {
    v4 = closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v39 = v0;
  v1 = v0[18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v3 = v0 + 2;
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v4 = v0[27];
    v5 = v0[28];
    v6 = v0[26];
    v7 = v0[19];
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.attachmentLedgerTopic);
    (*(v4 + 16))(v5, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[27];
    v13 = v0[28];
    v14 = v0[26];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v15 = 136315138;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v12 + 8))(v13, v14);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v38);
      v3 = v0 + 2;

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1AEB26000, v9, v10, "[%s] Refresh timer finished, uploadToken expired", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1B27120C0](v35, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v13, v14);
    }

    v20 = v0[25];
    v34 = v0[24];
    v36 = v0[23];
    v33 = v0[22];
    v21 = *(v37 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
    v23 = v0[20];
    v22 = v0[21];
    v0[6] = partial apply for closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
    v0[7] = v37;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[5] = &block_descriptor_218;
    v24 = _Block_copy(v3);
    v25 = v21;

    static DispatchQoS.unspecified.getter();
    v0[14] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v20, v33, v24);
    _Block_release(v24);

    (*(v22 + 8))(v33, v23);
    (*(v34 + 8))(v20, v36);
    v26 = v0[7];
  }

  v27 = v0[31];
  v28 = v0[28];
  v29 = v0[25];
  v30 = v0[22];

  v31 = v0[1];

  return v31();
}

{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[22];

  v5 = v0[1];
  v6 = v0[33];

  return v5();
}

uint64_t PluginAttachmentLedgerTopic.waitForReadyState()()
{
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGGMR);
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOG_GMR);
  v1[15] = v5;
  v6 = *(v5 - 8);
  v1[16] = v6;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.waitForReadyState(), 0, 0);
}

{
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  *(v0 + 72) = (*(**(v0 + 88) + 312))();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR);
  v6 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<PluginAttachmentLedgerTopic.State, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR);
  MEMORY[0x1B270F520](v5, v6);

  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v7 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PluginAttachmentLedgerTopic.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOG_GMR);
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = PluginAttachmentLedgerTopic.waitForReadyState();
  v10 = *(v0 + 136);
  v11 = *(v0 + 120);

  return MEMORY[0x1EEE6D8C8](v0 + 16, v11, v7);
}

{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = PluginAttachmentLedgerTopic.waitForReadyState();
  }

  else
  {
    v3 = PluginAttachmentLedgerTopic.waitForReadyState();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.waitForReadyState(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[7];
  if (v2 >> 3 == 0xFFFFFFFF)
  {
    v3 = v0[14];
    (*(v0[16] + 8))(v0[17], v0[15]);
    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();

    v5 = v0[1];
LABEL_3:

    return v5();
  }

  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[8];
  if ((v2 & 0x8000000000000000) == 0 || ((v12 = v8 | v7, v13 = v10 | v11, v2 == 0x8000000000000000) ? (v14 = (v8 | v7 | v1 | v9 | v10 | v11) == 0) : (v14 = 0), v14))
  {
    outlined consume of PluginAttachmentLedgerTopic.State?(v1, v7, v8, v9, v10, v2);
  }

  else
  {
    v15 = v0[2];
    v16 = v0[5];
    v17 = v0[7];
    outlined consume of PluginAttachmentLedgerTopic.State?(v1, v7, v8, v9, v10, v2);
    if (v17 == 0x8000000000000000 && v15 == 1 && !(v12 | v16 | v13))
    {
      v18 = v0[14];
      (*(v0[16] + 8))(v0[17], v0[15]);

      v5 = v0[1];
      goto LABEL_3;
    }
  }

  v19 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PluginAttachmentLedgerTopic.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOG_GMR);
  v20 = *(MEMORY[0x1E69E85A8] + 4);
  v21 = swift_task_alloc();
  v0[18] = v21;
  *v21 = v0;
  v21[1] = PluginAttachmentLedgerTopic.waitForReadyState();
  v22 = v0[17];
  v23 = v0[15];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v23, v19);
}

{
  *(v0 + 80) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[16] = v11;
  *v11 = v4;
  v11[1] = closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:);

  return PluginAttachmentLedgerTopic.waitForReadyState()();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:)()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 96);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:), 0, 0);
  }
}

{
  v1 = v0[15];
  v2 = v0[12];
  v12 = v0[14];
  v13 = v0[13];
  v3 = v0[9];
  v4 = *(v3 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  v10 = v0[10];
  v11 = v0[11];
  v0[6] = partial apply for closure #1 in closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:);
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v0[5] = &block_descriptor_278;
  v5 = _Block_copy(v0 + 2);
  v6 = v4;

  static DispatchQoS.unspecified.getter();
  v0[8] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v1, v2, v5);
  _Block_release(v5);

  (*(v11 + 8))(v2, v10);
  (*(v12 + 8))(v1, v13);
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

unint64_t PluginAttachmentLedgerTopic.Participant.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(19);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v2);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t PluginAttachmentLedgerTopic.State.description.getter()
{
  v1 = *v0;
  v2 = v0[5];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      return 0x6E776F6474756853;
    }

    else
    {
      v5 = v0[3];
      v6 = v0[4] | v0[6];
      v7 = v0[2] | v0[1];
      if (v2 != 0x8000000000000000 || v6 | v1 | v5 | v7)
      {
        v8 = v2 == 0x8000000000000000;
        v9 = v6 | v5 | v7;
        v11 = v1 == 1 && v9 == 0;
        if (v8 && v11)
        {
          return 0x7964616552;
        }

        else
        {
          return 0x676E697474756853;
        }
      }

      else
      {
        return 0x676E697472617453;
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v4);

    return 0xD000000000000013;
  }
}

unint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors()
{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors);
  }

  return result;
}

uint64_t outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in SymmetricKey.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = specialized Data.InlineData.init(_:)(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = specialized Data.LargeSlice.init(_:)(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = specialized Data.InlineSlice.init(_:)(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v10 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  v6[14] = AuthTokenResponse;
  v15 = *(*(AuthTokenResponse - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v6[15] = v16;
  v17 = swift_task_alloc();
  v6[16] = v17;
  *v17 = v6;
  v17[1] = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);

  return AttachmentLedgerServiceProvider.getAuthToken(input:)(v16, a2, a5, a6);
}

uint64_t attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  }

  else
  {
    v3 = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[9];
  v5 = *(v0[14] + 28);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v5, v2, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v6 = *(v4 + 48);
  LODWORD(v3) = v6(v2, 1, v3);
  outlined destroy of NSObject?(v2, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v3 == 1)
  {
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v0[15], v0[2], type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[13];
    v11 = v0[10];
    v10 = v0[11];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[12];
    v15 = v0[8];
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v5, v14, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    v16 = v6(v14, 1, v15);
    v17 = v0[12];
    v18 = v0[10];
    if (v16 == 1)
    {
      v19 = v0[8];
      *v18 = 0;
      v18[1] = 0xE000000000000000;
      v18[2] = 0;
      v18[3] = 0;
      v20 = v18 + *(v19 + 28);
      UnknownStorage.init()();
      if (v6(v17, 1, v19) != 1)
      {
        outlined destroy of NSObject?(v0[12], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
      }
    }

    else
    {
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v0[12], v18, type metadata accessor for AttachmentLedger_ErrorResponse);
    }

    v21 = swift_task_alloc();
    v0[18] = v21;
    *v21 = v0;
    v21[1] = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
    v22 = v0[10];
    v23 = v0[4];

    return AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:)(v23);
  }
}

{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  }

  else
  {
    v3 = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  outlined init with copy of Attachment.MMCSMetadata(v0[10], v1, type metadata accessor for AttachmentLedger_ErrorResponse);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  v5 = v0[11];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)(v9, v10, v5, v8, v6, v7);
}

{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 168) = v0;

  outlined destroy of NSObject?(v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v0)
  {
    v4 = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  }

  else
  {
    v4 = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[15];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[10], type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[15];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[10], type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
  v2 = v0[19];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[15];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[10], type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
  v2 = v0[21];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x1B270E950]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x1B270E950]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x1E69E87E8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = specialized Clock.sleep(for:tolerance:);
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = specialized Collection.firstIndex(where:)(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B2710B10](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v22 = v12;
    v13 = a1(&v22);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1B2710B10](v2, v6);
    v15 = MEMORY[0x1B2710B10](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    v20 = v18 + 8 * v10;
    v21 = *(v20 + 32);
    *(v20 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

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
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t outlined copy of PluginAttachmentLedgerTopic.State(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 62 == 1)
  {
  }

  if (!(a6 >> 62))
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:)(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors()
{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t outlined init with copy of Attachment.MMCSMetadata(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
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

NSObject *specialized Attachment.__allocating_init(attachment:dataCryptor:localEncryptionID:config:)(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t *a4)
{
  v55 = a2;
  v53 = a3;
  v6 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = (&v51 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v51 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v51 - v22;
  v24 = *a4;
  v25 = a4[1];
  v51 = a4[2];
  v52 = v24;
  v26 = a4[3];
  v27 = a4[4];
  v28 = *a1;
  v29 = a1[1];
  outlined copy of Data._Representation(*a1, v29);
  UUID.init(data:)(v28, v29, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v30 = v55;
    v31 = a1;
    outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Log.attachmentLedgerTopic);
    v33 = a1;
    v34 = v54;
    outlined init with copy of Attachment.MMCSMetadata(v33, v54, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v57[0] = v38;
      *v37 = 136315138;
      v39 = *v34;
      v40 = v34[1];
      v41 = Data.description.getter();
      v43 = v42;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v34, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v57);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_1AEB26000, v35, v36, "Invalid attachmentUUID received %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1B27120C0](v38, -1, -1);
      MEMORY[0x1B27120C0](v37, -1, -1);
    }

    else
    {

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v34, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    (*(v17 + 16))(v21, v23, v16);
    outlined init with copy of Attachment.MMCSMetadata(a1, v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v45 = v55;
    outlined init with copy of UserNotificationCenter(v55, v57);
    v56[0] = v52;
    v56[1] = v25;
    v56[2] = v51;
    v56[3] = v26;
    v56[4] = v27;
    v46 = type metadata accessor for Attachment(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v35 = Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(v21, v10, v57, v53, v56);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    (*(v17 + 8))(v23, v16);
  }

  return v35;
}

unint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.ServerError and conformance PluginAttachmentLedgerTopic.ServerError()
{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.ServerError and conformance PluginAttachmentLedgerTopic.ServerError;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.ServerError and conformance PluginAttachmentLedgerTopic.ServerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.ServerError and conformance PluginAttachmentLedgerTopic.ServerError);
  }

  return result;
}

uint64_t partial apply for closure #1 in PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(v0 + v2, v4, v5);
}

uint64_t partial apply for closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #1 in PluginAttachmentLedgerTopic.uploadTokenRequest.getter(uint64_t a1)
{
  return partial apply for closure #1 in PluginAttachmentLedgerTopic.uploadTokenRequest.getter(a1);
}

{
  *a1 = 0;
  *(a1 + 8) = 1;
  v4 = *(v1 + 112);
  v3 = *(v1 + 120);
  v5 = *(a1 + 24);

  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  return result;
}

uint64_t outlined consume of PluginAttachmentLedgerTopic.State?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 3 != 0xFFFFFFFF)
  {
    return outlined consume of PluginAttachmentLedgerTopic.State(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason and conformance PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason()
{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason and conformance PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason and conformance PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason and conformance PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State()
{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State);
  }

  return result;
}

uint64_t type metadata completion function for UploadToken()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for DownloadToken()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PluginAttachmentLedgerTopic()
{
  type metadata accessor for AsyncStream<(AttachmentLedger_UpdateAttachmentRequest, CheckedContinuation<AttachmentLedger_UpdateAttachmentResponse, Error>)>.Continuation(319, &lazy cache variable for type metadata for AsyncStream<(AttachmentLedger_UpdateAttachmentRequest, CheckedContinuation<AttachmentLedger_UpdateAttachmentResponse, Error>)>.Continuation, MEMORY[0x1E69E8660]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for AsyncStream<(AttachmentLedger_UpdateAttachmentRequest, CheckedContinuation<AttachmentLedger_UpdateAttachmentResponse, Error>)>.Continuation(319, &lazy cache variable for type metadata for AsyncStream<(AttachmentLedger_UpdateAttachmentRequest, CheckedContinuation<AttachmentLedger_UpdateAttachmentResponse, Error>)>, MEMORY[0x1E69E8698]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for AsyncStream<(AttachmentLedger_UpdateAttachmentRequest, CheckedContinuation<AttachmentLedger_UpdateAttachmentResponse, Error>)>.Continuation(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMR);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PluginAttachmentLedgerTopic.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PluginAttachmentLedgerTopic.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t get_enum_tag_for_layout_string_14CopresenceCore27PluginAttachmentLedgerTopicC5StateO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for PluginAttachmentLedgerTopic.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for PluginAttachmentLedgerTopic.State(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 8 * -a2;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PluginAttachmentLedgerTopic.State(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 40) = *(result + 40) & 7 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = xmmword_1AEE0C1F0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PluginAttachmentLedgerTopic.State.ShutdownInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PluginAttachmentLedgerTopic.State.ShutdownInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PluginAttachmentLedgerTopic.State.RetryInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for PluginAttachmentLedgerTopic.State.RetryInfo(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata completion function for AttachmentLedgerTopicError()
{
  type metadata accessor for (reason: String?)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PluginRpcError();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (reason: String?)()
{
  if (!lazy cache variable for type metadata for (reason: String?))
  {
    type metadata accessor for String?();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (reason: String?));
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()(v2, v3);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken()(uint64_t a1)
{
  v4 = *(type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken()(a1, v1 + 16, v1 + v5);
}

uint64_t partial apply for closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v20 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v5 = (*(v4 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for ContinuousClock() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(*(type metadata accessor for Date() - 8) + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v17 = *(v1 + v5);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(a1, v13, v14, v15, v16, v1 + v20, v17, v1 + v7);
}

uint64_t partial apply for closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AttachmentLedger_AuthPutMaterials(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for ContinuousClock() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(type metadata accessor for UUID() - 8);
  v15 = (v13 + *(v14 + 80) + 8) & ~*(v14 + 80);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(v1 + v13);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(a1, v16, v17, v1 + v6, v1 + v9, v1 + v12, v18, v1 + v15);
}

uint64_t outlined copy of Attachment.MMCSMetadata.UploadStatus(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15 && (a3 & 0xF000000000000000) != 0xB000000000000000)
  {
    return outlined copy of Data._Representation(a2, a3);
  }

  return result;
}

uint64_t outlined consume of Attachment.MMCSMetadata.UploadStatus(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15 && (a3 & 0xF000000000000000) != 0xB000000000000000)
  {
    return outlined consume of Data._Representation(a2, a3);
  }

  return result;
}

void partial apply for closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(a1, *(v1 + 16), v1 + v4, *v5, *(v5 + 8), *(v5 + 16));
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMd, &_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(a1, v9, v10, v1 + v6, v11, v1 + v8);
}

uint64_t partial apply for closure #2 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for AttachmentLedger_AuthPutMaterials(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(a1, v1 + v5);
}

uint64_t partial apply for closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(a1, v4, v5, (v1 + 4), (v1 + 9), v6, v7);
}

uint64_t partial apply for closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(a1, v1 + 16, v4);
}

uint64_t partial apply for closure #2 in PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #2 in PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)(a1, v4, v5);
}

uint64_t partial apply for closure #1 in PluginAttachmentLedgerTopic.processAttachmentUpdateRemove(_:_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #2 in closure #1 in Attachment.MMCSMetadata.metadata.getter(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v3;
  v6 = a1[1];
  v7 = a1[2];
  outlined copy of Data._Representation(v4, v5);
  result = outlined consume of Data._Representation(v6, v7);
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SKPresentDevice.context<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-v11];
  v13 = [v4 presencePayloadDictionary];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  (*(a2 + 8))(v14, a1, a2);
  v19 = a1;
  v20 = a2;
  v21 = v4;
  v22 = a1;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in SKPresentDevice.context<A>(as:), v18, MEMORY[0x1E69E73E0], ExtendedExistentialTypeMetadata, v16, a3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t PresentDevice.withoutContext()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16AnyPresentDeviceVyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore16AnyPresentDeviceVyAA20EmptyPresenceContextVGMR);
  a3[3] = v7;
  a3[4] = lazy protocol witness table accessor for type AnyPresentDevice<EmptyPresenceContext> and conformance AnyPresentDevice<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6(a1, a2);
  v9 = (*(a2 + 24))(a1, a2);
  v11 = v10;
  v12 = (*(a2 + 32))(a1, a2);
  v13 = boxed_opaque_existential_1 + v7[9];
  result = (*(a2 + 40))(a1, a2);
  v15 = (boxed_opaque_existential_1 + v7[7]);
  *v15 = v9;
  v15[1] = v11;
  *(boxed_opaque_existential_1 + v7[8]) = v12 & 1;
  return result;
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t AnyPresentDevice.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AnyPresentDevice.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AnyPresentDevice.handleValue.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t AnyPresentDevice.handleValue.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*AnyPresentDevice.handleValue.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t (*AnyPresentDevice.isCurrentDevice.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t AnyPresentDevice.timestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AnyPresentDevice.timestamp.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*AnyPresentDevice.timestamp.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t (*AnyPresentDevice.context.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t AnyPresentDevice.init(id:handleValue:isCurrentDevice:timestamp:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for AnyPresentDevice();
  v18 = (a8 + v17[7]);
  *v18 = a2;
  v18[1] = a3;
  *(a8 + v17[8]) = a4;
  v19 = v17[9];
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 32))(a8 + v19, a5, v20);
  v21 = *(*(a7 - 8) + 32);
  v22 = a8 + v17[10];

  return v21(v22, a6, a7);
}

uint64_t protocol witness for PresentDevice.id.getter in conformance AnyPresentDevice<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for PresentDevice.timestamp.getter in conformance AnyPresentDevice<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AnyPresentDevice<A>.init(id:handleValue:isCurrentDevice:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16AnyPresentDeviceVyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore16AnyPresentDeviceVyAA20EmptyPresenceContextVGMR);
  v14 = (a6 + v13[7]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + v13[8]) = a4;
  v15 = v13[9];
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 32);

  return v17(a6 + v15, a5, v16);
}

uint64_t SKPresentDevice.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v38 - v5;
  v42 = type metadata accessor for Date();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v42);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - v12;
  v14 = [v1 deviceIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    return (*(v16 + 32))(a1, v13, v15);
  }

  outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.host);
  v18 = v1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = a1;
    v24 = v23;
    v43 = v23;
    *v21 = 138412546;
    *(v21 + 4) = v18;
    *v22 = v18;
    *(v21 + 12) = 2080;
    v25 = [v18 deviceIdentifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v43);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_1AEB26000, v19, v20, "Failed to create UUID from SKPresentDevice's deviceIdentifier %@ deviceIdentifier: %s.", v21, 0x16u);
    outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  v30 = v40;
  Date.init()();
  v31 = type metadata accessor for TaskPriority();
  v32 = v41;
  (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  v33 = v39;
  v34 = v42;
  (*(v6 + 16))(v39, v30, v42);
  v35 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  (*(v6 + 32))(v36 + v35, v33, v34);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #1 in SKPresentDevice.id.getter, v36);

  outlined destroy of NSObject?(v32, &_sScPSgMd, &_sScPSgMR);
  UUID.init()();
  return (*(v6 + 8))(v30, v34);
}

uint64_t closure #1 in SKPresentDevice.id.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = type metadata accessor for Date();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in SKPresentDevice.id.getter, 0, 0);
}

uint64_t closure #1 in SKPresentDevice.id.getter()
{
  v52 = v0;
  type metadata accessor for ABCReporter();
  inited = swift_initStackObject();
  v0[16] = inited;
  inited[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  inited[3] = 0x636E795374736146;
  inited[4] = 0xE800000000000000;
  inited[5] = 0x694B737574617453;
  inited[6] = 0xE900000000000074;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8._countAndFlagsBits = 0x5564696C61766E49;
    v8._object = 0xEB00000000444955;
    v9._countAndFlagsBits = 0xD000000000000019;
    v9._object = 0x80000001AEE32710;
    v10._countAndFlagsBits = v5;
    v10._object = v7;
    v11 = ABCReporter.signature(subType:context:process:)(v9, v8, v10);
    v0[17] = v11;

    if (v11)
    {
      if (one-time initialization token for abcReporter != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Log.abcReporter);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v51 = v16;
        *v15 = 136315138;
        v17 = Dictionary.description.getter();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v51);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_1AEB26000, v13, v14, "Reporting signature %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x1B27120C0](v16, -1, -1);
        MEMORY[0x1B27120C0](v15, -1, -1);
      }

      v21 = v0[14];
      v20 = v0[15];
      v23 = v0[12];
      v22 = v0[13];
      Date.init()();
      Date.timeIntervalSince(_:)();
      v25 = v24;
      (*(v21 + 8))(v20, v22);
      v26 = swift_task_alloc();
      v0[18] = v26;
      *(v26 + 16) = inited;
      *(v26 + 24) = v11;
      *(v26 + 32) = v25 + 300.0;
      v27 = *(MEMORY[0x1E69E88D0] + 4);
      v28 = swift_task_alloc();
      v0[19] = v28;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      *v28 = v0;
      v28[1] = closure #1 in SKPresentDevice.id.getter;

      return MEMORY[0x1EEE6DDE0](v0 + 11, 0, 0, 0xD000000000000016, 0x80000001AEE32730, partial apply for closure #1 in ABCReporter.report(with:duration:), v26, v29);
    }

    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Log.abcReporter);
    v31 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1AEB26000, v31, v44, "Failed to convert signature payload", v45, 2u);
      v46 = v45;
LABEL_22:
      MEMORY[0x1B27120C0](v46, -1, -1);

      goto LABEL_23;
    }
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.abcReporter);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51 = v34;
      *v33 = 136315394;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(25705, 0xE200000000000000, &v51);
      *(v33 + 12) = 2080;
      v35 = [v2 mainBundle];
      v36 = [v35 bundleIdentifier];

      if (v36)
      {
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v0[9] = v37;
        v0[10] = v39;
        v40 = String.init<A>(reflecting:)();
        v42 = v41;
      }

      else
      {
        v42 = 0xE300000000000000;
        v40 = 7104878;
      }

      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v51);

      *(v33 + 14) = v47;
      _os_log_impl(&dword_1AEB26000, v31, v32, "Can't report failure on function %s because of missing processName %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v34, -1, -1);
      v46 = v33;
      goto LABEL_22;
    }
  }

LABEL_23:
  v48 = v0[15];

  v49 = v0[1];

  return v49();
}

{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v7 = *v0;

  v5 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](closure #1 in SKPresentDevice.id.getter, 0, 0);
}

{
  v1 = v0[16];

  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t SKPresentDevice.handleValue.getter()
{
  v1 = [v0 handle];
  v2 = [v1 handleString];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

id SKPresentDevice.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  result = [v2 respondsToSelector_];
  if (result)
  {
    v10 = [v2 performSelector_];
    v11 = v2;
    result = v2;
    if (v10)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();
        (*(v5 + 8))(a1, v4);
        return (*(v5 + 32))(a1, v8, v4);
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t SKPresentDevice.context.getter()
{
  v1 = [v0 presencePayloadDictionary];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t protocol witness for PresentDevice.handleValue.getter in conformance SKPresentDevice()
{
  v1 = [*v0 handle];
  v2 = [v1 handleString];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void protocol witness for PresentDevice.context.getter in conformance SKPresentDevice(uint64_t *a1@<X8>)
{
  v3 = [*v1 presencePayloadDictionary];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *a1 = v4;
}

uint64_t closure #1 in SKPresentDevice.context<A>(as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a1;
  v28 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  SKPresentDevice.id.getter(v17);
  v18 = [a2 handle];
  v19 = [v18 handleString];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  LOBYTE(v19) = [a2 isSelfDevice];
  SKPresentDevice.timestamp.getter(v13);
  (*(v6 + 16))(v9, v27, a3);
  v23 = type metadata accessor for AnyPresentDevice();
  v24 = v28;
  v28[3] = v23;
  v24[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  return AnyPresentDevice.init(id:handleValue:isCurrentDevice:timestamp:context:)(v17, v20, v22, v19, v13, v9, a3, boxed_opaque_existential_1);
}