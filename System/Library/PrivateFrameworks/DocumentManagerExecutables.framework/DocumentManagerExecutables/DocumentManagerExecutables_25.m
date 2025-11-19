uint64_t DOCTipsManager.createICloudDriveFolder(_:)(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](DOCTipsManager.createICloudDriveFolder(_:), 0, 0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned DOCNode?, @unowned NSError?) -> () with result type DOCNode(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  swift_unknownObjectRetain();

  return swift_continuation_throwingResume();
}

void DOCTipsManager.createFamilyFolder(folderName:rootItem:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(MEMORY[0x277CC63A0]);
  v12 = MEMORY[0x24C1FAD20](a1, a2);
  v13 = [v11 initWithParentItem:a3 folderName:v12];

  [v13 setShouldBounceOnCollision_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a4;
  v15[6] = a5;
  v17[4] = partial apply for closure #1 in DOCTipsManager.createFamilyFolder(folderName:rootItem:completion:);
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v17[3] = &block_descriptor_51_0;
  v16 = _Block_copy(v17);

  [v13 setCreateFolderCompletionBlock_];
  _Block_release(v16);
  [*(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_fpItemManager) scheduleAction_];
}

void closure #1 in DOCTipsManager.createFamilyFolder(folderName:rootItem:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void, void), uint64_t a7)
{
  v13 = type metadata accessor for URL();
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v62 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    if (a2)
    {
      v27 = a2;
      if (one-time initialization token for DocumentManager != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.DocumentManager);
      v29 = a2;

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v68 = a6;
        v34 = v33;
        v35 = swift_slowAlloc();
        v69 = a7;
        v36 = v35;
        v72 = v35;
        *v32 = 136315394;
        *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v72);
        *(v32 + 12) = 2112;
        v37 = a2;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 14) = v38;
        *v34 = v38;
        _os_log_impl(&dword_2493AC000, v30, v31, "Files Family Tip, Failed to create folder %s with error: %@", v32, 0x16u);
        outlined destroy of CharacterSet?(v34, &_sSo8NSObjectCSgMd);
        v39 = v34;
        a6 = v68;
        MEMORY[0x24C1FE850](v39, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x24C1FE850](v36, -1, -1);
        MEMORY[0x24C1FE850](v32, -1, -1);
      }

      (*(v70 + 56))(v24, 1, 1, v71);
      v40 = a2;
      a6(v24, a2);

      outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd);
    }

    else if (a1)
    {
      v41 = a1;
      v42 = [v41 fileURL];
      if (v42)
      {
        v67 = v41;
        v69 = a7;
        v43 = v42;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        if (one-time initialization token for DocumentManager != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logger.DocumentManager);
        v45 = v70;
        v66 = *(v70 + 16);
        v66(v16, v20, v71);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v72 = v63;
          *v48 = 136315138;
          v49 = URL.absoluteString.getter();
          v68 = a6;
          v51 = v50;
          v52 = *(v70 + 8);
          v64 = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v65 = v52;
          v53 = v16;
          v54 = v71;
          v52(v53, v71);
          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v72);
          a6 = v68;

          *(v48 + 4) = v55;
          _os_log_impl(&dword_2493AC000, v46, v47, "Files Family Tip, got url for Family folder %s", v48, 0xCu);
          v56 = v63;
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x24C1FE850](v56, -1, -1);
          v57 = v48;
          v45 = v70;
          MEMORY[0x24C1FE850](v57, -1, -1);

          v58 = v54;
        }

        else
        {

          v59 = *(v45 + 8);
          v64 = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v65 = v59;
          v58 = v71;
          v59(v16, v71);
        }

        v60 = v66;
        v66(v24, v20, v58);
        v61 = *(v45 + 56);
        v61(v24, 0, 1, v58);
        (*((*MEMORY[0x277D85000] & *v26) + 0xD0))(v24);
        v60(v24, v20, v58);
        v61(v24, 0, 1, v58);
        a6(v24, 0);

        outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd);
        v65(v20, v58);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void closure #1 in DOCTipsManager.createFamilyFolder(for:rootItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    (*(v10 + 16))(v13, a1, v9);
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v16, v13, v9);
    DOCTipsManager.createFamilyFolder(folderName:rootItem:completion:)(a3, a4, a5, partial apply for closure #1 in closure #1 in DOCTipsManager.createFamilyFolder(for:rootItem:), v17);
  }
}

uint64_t closure #1 in closure #1 in DOCTipsManager.createFamilyFolder(for:rootItem:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  if (a2)
  {
    v9[1] = a2;
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(a1, v9 - v6, &_s10Foundation3URLVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t DOCTipsManager.getRecipientsForShare()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](DOCTipsManager.getRecipientsForShare(), 0, 0);
}

{
  (*((*MEMORY[0x277D85000] & **(v0 + 56)) + 0xB0))();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = DOCTipsManager.getRecipientsForShare();

  return v5(v1, v2);
}

{
  v1 = *(v0 + 72);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    v32 = v1;
    v2 = [v1 members];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FAFamilyMember);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v5 = 0;
      v6 = &selRef_setCancelsTouchesInView_;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1FC540](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v7 memberType] || (objc_msgSend(v8, v6[9]) & 1) != 0)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v6 = &selRef_setCancelsTouchesInView_;
        }

        ++v5;
        if (v9 == i)
        {
          v10 = v34;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_25:

    if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
    {
LABEL_46:
      v16 = __CocoaSet.count.getter();
      if (v16)
      {
LABEL_28:
        v17 = 0;
        v15 = MEMORY[0x277D84F90];
        do
        {
          v18 = v17;
          while (1)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x24C1FC540](v18, v10);
            }

            else
            {
              if (v18 >= *(v10 + 16))
              {
                goto LABEL_45;
              }

              v19 = *(v10 + 8 * v18 + 32);
            }

            v20 = v19;
            v17 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v21 = [v19 appleID];
            if (v21)
            {
              break;
            }

            ++v18;
            if (v17 == v16)
            {
              goto LABEL_48;
            }
          }

          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          v26 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
          }

          v28 = *(v15 + 2);
          v27 = *(v15 + 3);
          if (v28 >= v27 >> 1)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v15);
          }

          *(v15 + 2) = v28 + 1;
          v29 = &v15[16 * v28];
          *(v29 + 4) = v23;
          *(v29 + 5) = v26;
        }

        while (v17 != v16);
        goto LABEL_48;
      }
    }

    else
    {
      v16 = *(v10 + 16);
      if (v16)
      {
        goto LABEL_28;
      }
    }

    v15 = MEMORY[0x277D84F90];
LABEL_48:

    v0 = v33;
    goto LABEL_49;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.DocumentManager);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2493AC000, v12, v13, "Files Family Tip, No Family found", v14, 2u);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  v15 = MEMORY[0x277D84F90];
LABEL_49:
  v30 = *(v0 + 8);

  return v30(v15);
}

uint64_t DOCTipsManager.getRecipientsForShare()(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](DOCTipsManager.getRecipientsForShare(), 0, 0);
}

void closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:completion:)(void *a1, void *a2, uint64_t a3, id a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a2;
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.DocumentManager);
    (*(v9 + 16))(v13, a3, v8);
    v16 = a2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v40 = a4;
      v20 = v19;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v20 = 136315394;
      v21 = URL.absoluteString.getter();
      v23 = v22;
      (*(v9 + 8))(v13, v8);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v41);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2112;
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v26;
      v27 = v38;
      *v38 = v26;
      _os_log_impl(&dword_2493AC000, v17, v18, "Files Family Tip, error getting metadata for file %s %@", v20, 0x16u);
      outlined destroy of CharacterSet?(v27, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v27, -1, -1);
      v28 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x24C1FE850](v28, -1, -1);
      v29 = v20;
      a4 = v40;
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    v37 = a2;
    (a4)(0, a2);
  }

  else if (a1)
  {
    v30 = one-time initialization token for DocumentManager;
    v31 = a1;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.DocumentManager);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2493AC000, v33, v34, "Files Family Tip, got metadata for file", v35, 2u);
      MEMORY[0x24C1FE850](v35, -1, -1);
    }

    v40 = v31;
    (a4)(a1, 0);

    v36 = v40;
  }

  else
  {
    (a4)(0, 0, v11);
  }
}

uint64_t DOCTipsManager.fetchCollaborationMetadata(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](DOCTipsManager.fetchCollaborationMetadata(for:), 0, 0);
}

uint64_t DOCTipsManager.fetchCollaborationMetadata(for:)()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[5] = v2;
  swift_unknownObjectWeakInit();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_SWCollaborationMetadataCSgMd);
  *v4 = v0;
  v4[1] = DOCTipsManager.fetchCollaborationMetadata(for:);

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000020, 0x8000000249BDA020, partial apply for closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:), v3, v5);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = DOCTipsManager.fetchCollaborationMetadata(for:);
  }

  else
  {

    v2 = DOCNode.fpfs_fetchFINode();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24_SWCollaborationMetadataCSgs5Error_pGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &aBlock[-1] - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    (*(v9 + 16))(v12, a1, v8);
    v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v15 = swift_allocObject();
    (*(v9 + 32))(v15 + v14, v12, v8);
    v16 = v24;
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    (*(v5 + 16))(&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v4);
    v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v21 = swift_allocObject();
    (*(v5 + 32))(v21 + v20, &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v22 = (v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = partial apply for closure #1 in closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:);
    v22[1] = v15;
    aBlock[4] = partial apply for closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:completion:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_43_0;
    v23 = _Block_copy(aBlock);

    SWCollaborationMetadataForDocumentURL();
    _Block_release(v23);
  }
}

uint64_t closure #1 in closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:)(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24_SWCollaborationMetadataCSgs5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24_SWCollaborationMetadataCSgs5Error_pGMd);
    return CheckedContinuation.resume(returning:)();
  }
}

Swift::Void __swiftcall DOCTipsManager.initiateShareFlow()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - v4;
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.DocumentManager);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2493AC000, v7, v8, "Files Family Tip, Initiating tips share flow", v9, 2u);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sharingFlowTask) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in DOCTipsManager.initiateShareFlow(), v13);
}

uint64_t closure #1 in DOCTipsManager.initiateShareFlow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v4[12] = *(v6 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for FamilyFolderDetails(0);
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v8;
  v4[19] = v7;

  return MEMORY[0x2822009F8](closure #1 in DOCTipsManager.initiateShareFlow(), v8, v7);
}

id closure #1 in DOCTipsManager.initiateShareFlow()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v3 = result;
      v12._object = 0x8000000249BDA0B0;
      v4._countAndFlagsBits = 0x796C696D6146;
      v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v5.value._object = 0xEB00000000656C62;
      v4._object = 0xE600000000000000;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      v12._countAndFlagsBits = 0xD000000000000039;
      v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v12);

      v0[21] = v7._object;
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = closure #1 in DOCTipsManager.initiateShareFlow();
      v9 = v0[16];

      return DOCTipsManager.createICloudDriveFolder(_:)(v9, v7._countAndFlagsBits, v7._object);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t closure #1 in DOCTipsManager.initiateShareFlow()()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](closure #1 in DOCTipsManager.initiateShareFlow(), v3, v2);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  outlined init with copy of DOCGridLayout.Spec?(v0[16], v3, &_s10Foundation3URLVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[9];

    outlined destroy of CharacterSet?(v4, &_s10Foundation3URLVSgMd);
LABEL_8:
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.DocumentManager);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2493AC000, v15, v16, "Files Family Tip, Family folder details not found", v17, 2u);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }

    v18 = v0[20];
    v19 = v0[16];

    (*((*MEMORY[0x277D85000] & *v18) + 0x130))(1);
    outlined destroy of FamilyFolderDetails(v19);

    v20 = v0[1];

    return v20();
  }

  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[9];
  v11 = *(v9 + 32);
  v0[23] = v11;
  v0[24] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v7, v10, v8);
  if (*(v6 + *(v5 + 20)) != 1)
  {
    (*(v0[11] + 8))(v0[14], v0[10]);

    goto LABEL_8;
  }

  v12 = swift_task_alloc();
  v0[25] = v12;
  *v12 = v0;
  v12[1] = closure #1 in DOCTipsManager.initiateShareFlow();

  return DOCTipsManager.getRecipientsForShare()();
}

{
  if (!*(v0[26] + 16))
  {

    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.DocumentManager);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_17;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Files Family Tip, No family members found to use as recipients";
    goto LABEL_16;
  }

  if (![objc_opt_self() canSendText])
  {

    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.DocumentManager);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_17;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Files Family Tip, SMS services are not available";
LABEL_16:
    _os_log_impl(&dword_2493AC000, v38, v39, v41, v40, 2u);
    MEMORY[0x24C1FE850](v40, -1, -1);
LABEL_17:
    v43 = v0[20];
    v44 = v0[16];
    v45 = v0[14];
    v46 = v0[10];
    v47 = v0[11];

    (*((*MEMORY[0x277D85000] & *v43) + 0x130))(1);
    (*(v47 + 8))(v45, v46);
    goto LABEL_18;
  }

  v1 = v0[20];
  v2 = [objc_allocWithZone(MEMORY[0x277CD6888]) init];
  v0[27] = v2;
  [v2 setMessageComposeDelegate_];
  v3 = _DocumentManagerBundle();
  if (!v3)
  {
    __break(1u);
    return MEMORY[0x282200430](v3, v4, v5, v6, v7);
  }

  v8 = v3;
  v52._object = 0x8000000249BDA130;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._object = 0x8000000249BDA0F0;
  v10._countAndFlagsBits = 0x1000000000000035;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0xD000000000000056;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v52);

  v12 = static String.localizedStringWithFormat(_:_:)();
  v14 = v13;

  v15 = MEMORY[0x24C1FAD20](v12, v14);

  [v2 setBody_];

  v16 = objc_allocWithZone(MEMORY[0x277CCAA88]);
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v20 = [v16 initWithContentsOfURL_];
  v0[28] = v20;

  if (v20)
  {
    v21 = v0[23];
    v22 = v0[20];
    v24 = v0[13];
    v23 = v0[14];
    v25 = v0[11];
    v26 = v0[10];
    v27 = v0[7];
    v28 = v0[8];
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    (*(v25 + 16))(v24, v23, v26);
    v30 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v22;
    v21(v31 + v30, v24, v26);
    outlined init with copy of DOCGridLayout.Spec?(v28, v27, &_sScPSgMd);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = 3;
    v32[5] = &async function pointer to partial apply for closure #1 in closure #1 in DOCTipsManager.initiateShareFlow();
    v32[6] = v31;
    v32[7] = 0x3FF0000000000000;
    v33 = v22;
    v34 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo24_SWCollaborationMetadataCSg_Tt2g5(0, 0, v27, &async function pointer to partial apply for specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:), v32);
    v0[29] = v34;
    outlined destroy of CharacterSet?(v28, &_sScPSgMd);
    v35 = swift_task_alloc();
    v0[30] = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_SWCollaborationMetadataCSgMd);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    *v35 = v0;
    v35[1] = closure #1 in DOCTipsManager.initiateShareFlow();
    v7 = MEMORY[0x277D84950];
    v3 = v0 + 5;
    v4 = v34;
    v5 = v36;

    return MEMORY[0x282200430](v3, v4, v5, v6, v7);
  }

  v50 = v0[20];

  v44 = v0[16];
  (*(v0[11] + 8))(v0[14], v0[10]);
LABEL_18:
  outlined destroy of FamilyFolderDetails(v44);

  v48 = v0[1];

  return v48();
}

{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = closure #1 in DOCTipsManager.initiateShareFlow();
  }

  else
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = closure #1 in DOCTipsManager.initiateShareFlow();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = v0[5];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 defaultShareOptions];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
      }
    }

    else
    {
      v5 = 0;
    }

    v8 = v0[27];
    [v8 insertCollaborationItemProvider:v0[28] collaborationShareOptions:v5 collaborationMetadata:v2 isCollaboration:1];

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setRecipients_];

    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = v0[27];
    v12 = v0[28];
    v7 = v0[20];
    if (Strong)
    {
      v13 = Strong;
      [Strong presentViewController:v0[27] animated:1 completion:0];
    }

    else
    {
    }

    v6 = v2;
  }

  else
  {
    v6 = v0[27];
    v2 = v0[28];
    v7 = v0[20];
  }

  v14 = v0[16];
  (*(v0[11] + 8))(v0[14], v0[10]);
  outlined destroy of FamilyFolderDetails(v14);

  v15 = v0[1];

  return v15();
}

{
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[20];

  (*((*MEMORY[0x277D85000] & *v4) + 0x130))(1);

  v5 = v0[16];
  (*(v0[11] + 8))(v0[14], v0[10]);
  outlined destroy of FamilyFolderDetails(v5);

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in DOCTipsManager.initiateShareFlow()(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return MEMORY[0x2822009F8](closure #1 in DOCTipsManager.initiateShareFlow(), v4, v3);
}

uint64_t closure #1 in closure #1 in DOCTipsManager.initiateShareFlow()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = closure #1 in closure #1 in DOCTipsManager.initiateShareFlow();

  return DOCTipsManager.fetchCollaborationMetadata(for:)(a3);
}

uint64_t closure #1 in closure #1 in DOCTipsManager.initiateShareFlow()(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](closure #1 in closure #1 in DOCTipsManager.initiateShareFlow(), 0, 0);
  }
}

void __swiftcall DOCTipsManager.createTipsHeaderView()(UIView *__return_ptr retstr)
{
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))();
  if (v2)
  {
    v3 = v2;
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.DocumentManager);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v54[0] = v9;
      *v8 = 136315138;
      v10 = [v5 isUserInteractionEnabled];
      v11 = v10 == 0;
      if (v10)
      {
        v12 = 1702195828;
      }

      else
      {
        v12 = 0x65736C6166;
      }

      if (v11)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v13 = 0xE400000000000000;
      }

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v54);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_2493AC000, v6, v7, "Files Family Tip, familySharedFolderTipView isUserInteractionEnabled value %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1FE850](v9, -1, -1);
      MEMORY[0x24C1FE850](v8, -1, -1);
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v55 = v19;
      *v18 = 136315138;
      if (one-time initialization token for $hasFamilyWithAdultMember != -1)
      {
        swift_once();
      }

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
      __swift_project_value_buffer(v20, static DOCTipsFamilyTip.$hasFamilyWithAdultMember);
      swift_beginAccess();
      Tips.Parameter.wrappedValue.getter();
      swift_endAccess();
      if (v53)
      {
        v21 = 1702195828;
      }

      else
      {
        v21 = 0x65736C6166;
      }

      if (v53)
      {
        v22 = 0xE400000000000000;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v55);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_2493AC000, v16, v17, "Files Family Tip, tip hasFamilyWithAdultMember parameter value %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1FE850](v19, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v55 = v27;
      *v26 = 136315138;
      if (one-time initialization token for $hasSharedFolderWithAdultFamilyMember != -1)
      {
        swift_once();
      }

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
      __swift_project_value_buffer(v28, static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember);
      swift_beginAccess();
      Tips.Parameter.wrappedValue.getter();
      swift_endAccess();
      if (v53)
      {
        v29 = 1702195828;
      }

      else
      {
        v29 = 0x65736C6166;
      }

      if (v53)
      {
        v30 = 0xE400000000000000;
      }

      else
      {
        v30 = 0xE500000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v55);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2493AC000, v24, v25, "Files Family Tip, tip hasSharedFolderWithAdultFamilyMember parameter value %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    v32 = v5;
    [v32 setTranslatesAutoresizingMaskIntoConstraints_];
    v33 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v33 addSubview_];
    v34 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_249BA0470;
    v36 = [v32 leadingAnchor];
    v37 = [v33 layoutMarginsGuide];
    v38 = [v37 leadingAnchor];

    v39 = [v36 constraintEqualToAnchor_];
    *(v35 + 32) = v39;
    v40 = [v32 trailingAnchor];
    v41 = [v33 layoutMarginsGuide];
    v42 = [v41 trailingAnchor];

    v43 = [v40 constraintEqualToAnchor_];
    *(v35 + 40) = v43;
    v44 = [v32 topAnchor];
    v45 = [v33 layoutMarginsGuide];
    v46 = [v45 topAnchor];

    v47 = [v44 constraintEqualToAnchor_];
    *(v35 + 48) = v47;
    v48 = [v32 bottomAnchor];

    v49 = [v33 layoutMarginsGuide];
    v50 = [v49 bottomAnchor];

    v51 = [v48 constraintEqualToAnchor_];
    *(v35 + 56) = v51;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v34 activateConstraints_];
  }

  else
  {
    v15 = objc_allocWithZone(MEMORY[0x277D75D18]);

    [v15 init];
  }
}

uint64_t DOCTipsManager.familySharedFolderTipActionTapped(_:)()
{
  v1 = v0;
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.DocumentManager);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, "Files Family Tip, Set up shared folder button tapped", v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v6 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x130))(0);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = (*((*v6 & *v7) + 0xF8))();
    if (v12)
    {
      v13 = v12;
      [v12 isUserInteractionEnabled];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_2493AC000, v8, v9, "Files Family Tip, familySharedFolderTipView isUserInteractionEnabled value in action handler %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  return (*((*v6 & *v7) + 0x180))();
}

id DOCTipsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t partial apply for closure #2 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #2 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCTipsManager.messageComposeViewController(_:didFinishWith:)();
}

uint64_t partial apply for closure #1 in DOCTipsManager.initiateShareFlow()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCTipsManager.initiateShareFlow()(a1, v4, v5, v6);
}

void type metadata completion function for FamilyFolderDetails()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

void type metadata completion function for DOCTipsManager()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DOCTipsManager.getICloudDriveDomain()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x148);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static FolderNodeObserver.getChildrenNodes(in:);

  return v5();
}

uint64_t partial apply for closure #1 in closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo24_SWCollaborationMetadataCSgs5Error_pGMd);

  return closure #1 in closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:)(a1, a2);
}

void partial apply for closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:completion:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in DOCTipsManager.fetchCollaborationMetadata(for:completion:)(a1, a2, v2 + v6, v7);
}

uint64_t block_copy_helper_41_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in DOCTipsManager.createFamilyFolder(for:rootItem:)(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd);

  return closure #1 in closure #1 in DOCTipsManager.createFamilyFolder(for:rootItem:)(a1, a2);
}

uint64_t outlined destroy of FamilyFolderDetails(uint64_t a1)
{
  v2 = type metadata accessor for FamilyFolderDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in DOCTipsManager.initiateShareFlow()(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #1 in DOCTipsManager.initiateShareFlow()(a1, v6, v1 + v5);
}

uint64_t specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);

  return specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(a5, a6, a7, a2);
}

uint64_t specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t partial apply for specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(a1, v9, v4, v5, v6, v7, v8);
}

uint64_t specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 48) = a4;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:), 0, 0);
}

void specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)()
{
  v1 = v0[3];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = v0[4];
      v0[7] = 0;
      v5 = (v2 + *v2);
      v3 = swift_task_alloc();
      v0[8] = v3;
      *v3 = v0;
      v4 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
    }

    else
    {
      static Task<>.checkCancellation()();
      v5 = (v0[4] + *v0[4]);
      v3 = swift_task_alloc();
      v0[12] = v3;
      *v3 = v0;
      v4 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
    }

    v3[1] = v4;

    v5(v0 + 2);
  }
}

uint64_t specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  }

  else
  {
    v2 = DOCNode.fpfs_fetchFPItem();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  }

  else
  {
    v2 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56) + 1;

  if (v2 == v1)
  {
    v3 = *(v0 + 88);
    static Task<>.checkCancellation()();
    if (v3)
    {
      v4 = *(v0 + 8);

      return v4();
    }

    v8 = (*(v0 + 32) + **(v0 + 32));
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v7 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  }

  else
  {
    ++*(v0 + 56);
    v8 = (*(v0 + 32) + **(v0 + 32));
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v7 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  }

  v6[1] = v7;

  return v8(v0 + 16);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  }

  else
  {
    v2 = DOCNode.fpfs_fetchFPItem();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:)(unint64_t a1)
{
  v2 = *(v1 + 48) * 1000000000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v1;
  v3[1] = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);
  a1 = v2;

  return MEMORY[0x282200480](a1);
}

uint64_t DOCConfiguration.defaultEffectiveTabForLocationRestore.getter()
{
  v1 = [v0 defaultEffectiveTabIdentifierForLocationRestore];
  v2 = DOCTabIdentifier.tab.getter();

  return v2;
}

id static DOCTab.tabIdentifier(for:)(id result)
{
  if (result <= 2)
  {
    return **(&unk_278FA38A0 + result);
  }

  __break(1u);
  return result;
}

void DOCConfiguration.configureContextForDisplayingTab(_:)(unint64_t a1)
{
  if (a1 > 2)
  {
    __break(1u);
  }

  else
  {
    v2 = **(&unk_278FA38A0 + a1);
    [v1 setDefaultEffectiveTabIdentifierForLocationRestore_];
  }
}

void @objc DOCConfiguration.configureContextForDisplayingTab(_:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 2)
  {
    __break(1u);
  }

  else
  {
    v5 = **(&unk_278FA38A0 + a3);
    [a1 setDefaultEffectiveTabIdentifierForLocationRestore_];
  }
}

uint64_t DOCTab.init(tabIdentifier:)(void *a1)
{
  v2 = DOCTabIdentifier.tab.getter();

  return v2;
}

uint64_t DOCConfiguration.canPresentContentForTab(_:)(unint64_t a1)
{
  if (![v1 forSavingDocuments])
  {
    LOBYTE(v3) = 1;
    return v3 & 1;
  }

  if (a1 < 3)
  {
    v3 = 4u >> (a1 & 7);
    return v3 & 1;
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t @objc DOCConfiguration.canPresentContentForTab(_:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a1;
  if (![v4 forSavingDocuments])
  {
    LOBYTE(v5) = 1;
    goto LABEL_5;
  }

  if (a3 < 3)
  {
    v5 = 4u >> (a3 & 7);
LABEL_5:

    return v5 & 1;
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCUserInterfaceState.mostRecentlyVisitedBrowseSource(withFallback:)(uint64_t a1)
{
  v3 = [v1 mostRecentlyVisitedEffectiveTabIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = DOCTabIdentifier.tab.getter();
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      return v5;
    }
  }

  return a1;
}

uint64_t DOCTabIdentifier.tab.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {

    return 0;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return 0;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {

    return 1;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return 1;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    return 2;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t @objc DOCUserInterfaceState.mostRecentlyVisitedBrowseSource(withFallback:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = [v4 mostRecentlyVisitedEffectiveTabIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = DOCTabIdentifier.tab.getter();
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      return v7;
    }
  }

  else
  {
  }

  return a3;
}

id DOCUserInterfaceState.updateMostRecentlyVisitedBrowseSource(toTab:)(id result)
{
  if (result <= 2)
  {
    return [v1 setMostRecentlyVisitedEffectiveTabIdentifier_];
  }

  __break(1u);
  return result;
}

id @objc DOCUserInterfaceState.updateMostRecentlyVisitedBrowseSource(toTab:)(id result, uint64_t a2, unint64_t a3)
{
  if (a3 <= 2)
  {
    return [result setMostRecentlyVisitedEffectiveTabIdentifier_];
  }

  __break(1u);
  return result;
}

id DOCTabIdentifier.init(_:)(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return **(&unk_278FA38A0 + a1);
  }
}

uint64_t DOCPromptHeaderView.promptText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText);

  return v1;
}

id DOCPromptHeaderView.init(text:glyphName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_metrics];
  v11 = [objc_opt_self() preferredFontForTextStyle_];
  *v10 = 0x4030000000000000;
  *(v10 + 1) = v11;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel] = 0;
  v12 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_glyphName];
  *v13 = a3;
  *(v13 + 1) = a4;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  DOCPromptHeaderView.setUpPromptLabel()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249B9A480;
  v16 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v17 = MEMORY[0x277D74DB8];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v14;
}

void DOCPromptHeaderView.setUpPromptLabel()()
{
  v1 = DOCPromptHeaderView.promptLabel.getter();
  [v0 addSubview_];

  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA0470;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel;
  v5 = [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel] leadingAnchor];
  v6 = [v0 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v3 + 32) = v7;
  v8 = [*&v0[v4] trailingAnchor];
  v9 = [v0 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v3 + 40) = v10;
  v11 = [*&v0[v4] topAnchor];
  v12 = [v0 topAnchor];
  v13 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_metrics];
  v14 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_metrics];
  v15 = [v11 constraintEqualToAnchor:v12 constant:v14];

  *(v3 + 48) = v15;
  v16 = [*&v0[v4] bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-v14];

  *(v3 + 56) = v18;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints_];

  v20 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_glyphName + 8];
  if (v20)
  {
    v21 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_glyphName];
    v22 = *&v0[v4];
    v23 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText];
    v24 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText + 8];
    v25 = *(v13 + 1);
    v26 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v27 = v22;
    v28 = MEMORY[0x24C1FAD20](v23, v24);
    v29 = [v26 initWithString_];

    v30 = objc_opt_self();
    v42 = v29;
    v31 = MEMORY[0x24C1FAD20](v21, v20);
    v32 = [v30 _systemImageNamed_withConfiguration_];

    if (!v32)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v33 = [objc_opt_self() textAttachmentWithImage_];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSMutableAttributedString);
    v34 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v36 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
    v37 = [v35 initWithString_];

    [v42 insertAttributedString:v37 atIndex:0];
    [v42 insertAttributedString:v34 atIndex:0];
    [v42 addAttribute:*MEMORY[0x277D740A8] value:v25 range:{0, objc_msgSend(v42, sel_length)}];

    [v27 setAttributedText_];
  }

  else
  {
    v38 = *&v0[v4];
    v39 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText];
    v40 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText];
    v41 = *(v39 + 1);
    v27 = v38;
    v42 = MEMORY[0x24C1FAD20](v40, v41);
    [v27 setText_];
  }
}

Swift::Void __swiftcall DOCPromptHeaderView.updateForChangedTraitsAffectingFonts()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_glyphName + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_glyphName);
    v3 = DOCPromptHeaderView.promptLabel.getter();
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText);
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_promptText + 8);
    v6 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView_metrics + 8);
    v7 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v8 = MEMORY[0x24C1FAD20](v4, v5);
    v9 = [v7 initWithString_];

    v10 = objc_opt_self();
    v18 = v9;
    v11 = MEMORY[0x24C1FAD20](v2, v1);
    v12 = [v10 _systemImageNamed_withConfiguration_];

    if (v12)
    {

      v13 = [objc_opt_self() textAttachmentWithImage_];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSMutableAttributedString);
      v14 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
      v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v16 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
      v17 = [v15 initWithString_];

      [v18 insertAttributedString:v17 atIndex:0];
      [v18 insertAttributedString:v14 atIndex:0];
      [v18 addAttribute:*MEMORY[0x277D740A8] value:v6 range:{0, objc_msgSend(v18, sel_length)}];

      [v3 setAttributedText_];
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

id DOCPromptHeaderView.promptLabel.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel);
  }

  else
  {
    v4 = closure #1 in DOCPromptHeaderView.promptLabel.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCPromptHeaderView.promptLabel.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setFont_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setTextAlignment_];
  [v2 setNumberOfLines_];
  return v2;
}

id DOCPromptHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void DOCPromptHeaderView.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPromptHeaderView____lazy_storage___promptLabel);
}

id DOCPromptHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UITraitCollection.doc_value<A>(_:withAXFallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = [v4 preferredContentSizeCategory];
  v10 = UIContentSizeCategory.isAccessibilityCategory.getter();

  v11 = *(*(a3 - 8) + 16);
  if (v10)
  {
    v12 = a2;
  }

  else
  {
    v12 = a1;
  }

  return v11(a4, v12, a3);
}

uint64_t UITraitCollection.doc_hasChanged(_:comparesTo:)(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  if (specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.hSizeClass))
  {
    if (a2)
    {
      v7 = [a2 horizontalSizeClass];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 != [v2 horizontalSizeClass];
  }

  else
  {
    v8 = 0;
  }

  if (one-time initialization token for vSizeClass != -1)
  {
    swift_once();
  }

  v9 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.vSizeClass);
  if (v8 || !v9)
  {
    v10 = v9 || v8;
  }

  else
  {
    if (a2)
    {
      v11 = [a2 verticalSizeClass];
    }

    else
    {
      v11 = 0;
    }

    v10 = v11 != [v2 verticalSizeClass];
  }

  if (one-time initialization token for displayScale != -1)
  {
    swift_once();
  }

  v12 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.displayScale);
  if (v10 || !v12)
  {
    v13 = v12 || v10;
  }

  else
  {
    if (a2)
    {
      [a2 displayScale];
      v15 = v14;
    }

    else
    {
      v15 = 0.0;
    }

    [v2 displayScale];
    v13 = v15 != v16;
  }

  if (one-time initialization token for userInterfaceStyle != -1)
  {
    swift_once();
  }

  v17 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.userInterfaceStyle);
  if (v13 || !v17)
  {
    v18 = v17 || v13;
  }

  else
  {
    if (a2)
    {
      v19 = [a2 userInterfaceStyle];
    }

    else
    {
      v19 = 0;
    }

    v18 = v19 != [v2 userInterfaceStyle];
  }

  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v20 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.sizeCategory);
  if (v18 || !v20)
  {
    v21 = v20 || v18;
  }

  else
  {
    v21 = UITraitCollection.doc_isPreferredContentSizeCategoryChanged(from:)(a2);
  }

  if (one-time initialization token for userInterfaceIdiom != -1)
  {
    swift_once();
  }

  v22 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.userInterfaceIdiom);
  if (v21 & 1 | !v22)
  {
    v23 = v22 | v21;
  }

  else
  {
    if (a2)
    {
      v24 = [a2 userInterfaceIdiom];
    }

    else
    {
      v24 = -1;
    }

    v23 = v24 != [v2 userInterfaceIdiom];
  }

  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v25 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.layoutDirection);
  if (v23 & 1 | !v25)
  {
    v26 = v25 | v23;
  }

  else
  {
    if (a2)
    {
      v27 = [a2 layoutDirection];
    }

    else
    {
      v27 = -1;
    }

    v26 = v27 != [v2 layoutDirection];
  }

  if (one-time initialization token for sourceOutlineStyle != -1)
  {
    swift_once();
  }

  v28 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.sourceOutlineStyle);
  if (v26 & 1 | !v28)
  {
    v29 = v28 | v26;
  }

  else
  {
    v30 = [v2 sourceOutlineStyle];
    if (a2)
    {
      v29 = v30 != [a2 sourceOutlineStyle];
    }

    else
    {
      v29 = 1;
    }
  }

  if (one-time initialization token for legibilityWeight != -1)
  {
    swift_once();
  }

  v31 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.legibilityWeight);
  if (v29 & 1 | !v31)
  {
    v32 = v31 | v29;
  }

  else
  {
    if (a2)
    {
      v33 = [a2 legibilityWeight];
    }

    else
    {
      v33 = -1;
    }

    v32 = v33 != [v2 legibilityWeight];
  }

  if (one-time initialization token for browserLayoutConfiguration != -1)
  {
    swift_once();
  }

  v34 = specialized SetAlgebra.isSubset(of:)(v4, v5, v6, static UITraitCollection.Traits.browserLayoutConfiguration);
  if (v32 & 1 | !v34)
  {
    v35 = v34 | v32;
  }

  else
  {
    lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
    UITraitCollection.subscript.getter();
    if (a2)
    {
      UITraitCollection.subscript.getter();
      v35 = 0;
    }

    else
    {
      v35 = 1;
    }
  }

  return v35 & 1;
}

uint64_t specialized OptionSet<>.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  _StringGuts.grow(_:)(18);

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v6);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  v7 = v5 & a1;
  _StringGuts.grow(_:)(18);

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v8);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v10 = 0x6172287469617254;
  v9 = 0xEF3A65756C615677;
  if (specialized SetAlgebra.isEmpty.getter(v5 & a1))
  {

    v7 = 0;
    v10 = 0;
    v9 = 0;
  }

  else
  {
    result = specialized SetAlgebra.subtract(_:)(a1);
  }

  *a2 = v7;
  a2[1] = v10;
  a2[2] = v9;
  return result;
}

uint64_t specialized OptionSet<>.update(with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  _StringGuts.grow(_:)(18);

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v7);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  v8 = v6 & a1;
  _StringGuts.grow(_:)(18);

  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v9);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v11 = 0x6172287469617254;
  v10 = 0xEF3A65756C615677;

  UITraitCollection.Traits.init(rawValue:)(v6 | a1, v3);
  result = specialized SetAlgebra.isEmpty.getter(v6 & a1);
  if (result)
  {

    v8 = 0;
    v11 = 0;
    v10 = 0;
  }

  *a2 = v8;
  a2[1] = v11;
  a2[2] = v10;
  return result;
}

uint64_t specialized SetAlgebra.subtracting(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  _StringGuts.grow(_:)(18);

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v6);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  v7 = a2 ^ a1;
  _StringGuts.grow(_:)(18);

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v8);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  UITraitCollection.Traits.init(rawValue:)(a2, a3);
  v9 = *a3;

  UITraitCollection.Traits.init(rawValue:)(v9 & v7, a3);
}

BOOL specialized SetAlgebra.isSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(18);

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v6);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  _StringGuts.grow(_:)(18);

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v7);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  return (a4 & a1) == a4;
}

uint64_t specialized SetAlgebra.isDisjoint(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(18);

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v6);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  _StringGuts.grow(_:)(18);

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v7);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  LOBYTE(a4) = specialized SetAlgebra.isEmpty.getter(a4 & a1);

  return a4 & 1;
}

BOOL specialized SetAlgebra.isEmpty.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(18);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v2);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  return a1 == 0;
}

uint64_t specialized SetAlgebra.init<A>(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  _StringGuts.grow(_:)(18);

  v15 = 0;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v4);

  result = MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v6 = 0x6172287469617254;
  v7 = 0xEF3A65756C615677;
  v16 = 0;
  v17 = 0x6172287469617254;
  v18 = 0xEF3A65756C615677;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (a1 + 48);
    while (v9 < *(a1 + 16))
    {
      ++v9;
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = *(v10 - 2);

      specialized OptionSet<>.insert(_:)(&v15, v13, v12, v11);

      v10 += 3;
      if (v8 == v9)
      {
        v14 = v16;
        v6 = v17;
        v7 = v18;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = 0;
LABEL_7:

    *a2 = v14;
    a2[1] = v6;
    a2[2] = v7;
  }

  return result;
}

uint64_t specialized SetAlgebra.subtract(_:)(uint64_t a1)
{
  v3 = *v1;
  _StringGuts.grow(_:)(18);

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v4);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  _StringGuts.grow(_:)(18);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v5);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  UITraitCollection.Traits.init(rawValue:)((v3 ^ a1) & v3, v1);
}

uint64_t static Array<A>.doc_traitsAffectingFonts.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  v1 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v2 = MEMORY[0x277D74DB8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t UITraitCollection.doc_hasSpecified(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v5 = !specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.hSizeClass) || [v1 horizontalSizeClass] != 0;
  if (one-time initialization token for vSizeClass != -1)
  {
    swift_once();
  }

  v6 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.vSizeClass);
  if (v6 && v5)
  {
    v7 = [v1 verticalSizeClass] != 0;
  }

  else
  {
    v7 = !v6 && v5;
  }

  if (one-time initialization token for displayScale != -1)
  {
    swift_once();
  }

  v8 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.displayScale);
  if (v8 & v7)
  {
    [v1 displayScale];
    v10 = v9 > 0.0;
  }

  else
  {
    v10 = !v8 & v7;
  }

  if (one-time initialization token for userInterfaceStyle != -1)
  {
    swift_once();
  }

  v11 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.userInterfaceStyle);
  if (v11 & v10)
  {
    v12 = [v1 userInterfaceStyle] != 0;
  }

  else
  {
    v12 = !v11 & v10;
  }

  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v13 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.sizeCategory);
  if (v13 & v12)
  {
    v14 = [v1 preferredContentSizeCategory];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
    {

      v19 = 0;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v19 = v20 ^ 1;
    }
  }

  else
  {
    v19 = !v13 & v12;
  }

  if (one-time initialization token for userInterfaceIdiom != -1)
  {
    swift_once();
  }

  v21 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.userInterfaceIdiom);
  if (v21 & v19)
  {
    v22 = [v1 userInterfaceIdiom] != -1;
  }

  else
  {
    v22 = !v21 & v19;
  }

  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v23 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.layoutDirection);
  if (v23 & v22)
  {
    v24 = [v1 layoutDirection] != -1;
  }

  else
  {
    v24 = !v23 & v22;
  }

  if (one-time initialization token for legibilityWeight != -1)
  {
    swift_once();
  }

  v25 = specialized SetAlgebra.isSubset(of:)(v2, v3, v4, static UITraitCollection.Traits.legibilityWeight);
  if (v25 & v24)
  {
    v26 = [v1 legibilityWeight] != -1;
  }

  else
  {
    v26 = !v25 & v24;
  }

  return v26 & 1;
}

unint64_t DOCSourceOutlineStyle.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t DOCSourceOutlinePresentationContext.sourceOutlineStyle.getter(unint64_t result)
{
  if (result >= 2)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t UITraitCollection.Traits.description.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t UITraitCollection.Traits.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  _StringGuts.grow(_:)(18);

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v4);

  result = MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  *a2 = a1;
  a2[1] = 0x6172287469617254;
  a2[2] = 0xEF3A65756C615677;
  return result;
}

uint64_t UITraitCollection.Traits.init(rawValue:description:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double one-time initialization function for hSizeClass()
{
  *&result = 1;
  static UITraitCollection.Traits.hSizeClass = xmmword_249BA8390;
  qword_27EEE9C60 = 0x8000000249BDA370;
  return result;
}

double one-time initialization function for vSizeClass()
{
  *&result = 2;
  static UITraitCollection.Traits.vSizeClass = xmmword_249BA83A0;
  qword_27EEE9C78 = 0x8000000249BDA350;
  return result;
}

double one-time initialization function for displayScale()
{
  *&result = 4;
  static UITraitCollection.Traits.displayScale = xmmword_249BA83B0;
  qword_27EEE9C90 = 0xEC000000656C6163;
  return result;
}

double one-time initialization function for userInterfaceStyle()
{
  *&result = 8;
  static UITraitCollection.Traits.userInterfaceStyle = xmmword_249BA83C0;
  qword_27EEE9CA8 = 0x8000000249BDA330;
  return result;
}

double one-time initialization function for sizeCategory()
{
  *&result = 16;
  static UITraitCollection.Traits.sizeCategory = xmmword_249BA83D0;
  qword_27EEE9CC0 = 0xEC00000079726F67;
  return result;
}

double one-time initialization function for userInterfaceIdiom()
{
  *&result = 32;
  static UITraitCollection.Traits.userInterfaceIdiom = xmmword_249BA83E0;
  qword_27EEE9CD8 = 0x8000000249BDA310;
  return result;
}

double one-time initialization function for layoutDirection()
{
  *&result = 64;
  static UITraitCollection.Traits.layoutDirection = xmmword_249BA83F0;
  qword_27EEE9CF0 = 0xEF6E6F6974636572;
  return result;
}

double one-time initialization function for sourceOutlineStyle()
{
  *&result = 128;
  static UITraitCollection.Traits.sourceOutlineStyle = xmmword_249BA8400;
  qword_27EEE9D08 = 0x8000000249BCB420;
  return result;
}

double one-time initialization function for legibilityWeight()
{
  *&result = 256;
  static UITraitCollection.Traits.legibilityWeight = xmmword_249BA8410;
  qword_27EEE9D20 = 0x8000000249BDA2F0;
  return result;
}

double one-time initialization function for browserLayoutConfiguration()
{
  *&result = 512;
  static UITraitCollection.Traits.browserLayoutConfiguration = xmmword_249BA8420;
  qword_27EEE9D38 = 0x8000000249BDA2D0;
  return result;
}

uint64_t static UITraitCollection.Traits.hSizeClass.getter@<X0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a2;
  *a4 = *a3;
  *(a4 + 16) = v5;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UITraitCollection.Traits()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance UITraitCollection.Traits@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  UITraitCollection.Traits.init(rawValue:)(*v2, a2);
  v5 = *a2;

  UITraitCollection.Traits.init(rawValue:)(v5 | v4, a2);
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance UITraitCollection.Traits@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  UITraitCollection.Traits.init(rawValue:)(*v2, a2);
  v5 = *a2;

  UITraitCollection.Traits.init(rawValue:)(v5 & v4, a2);
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance UITraitCollection.Traits@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  UITraitCollection.Traits.init(rawValue:)(*v2, a2);
  v5 = *a2;

  UITraitCollection.Traits.init(rawValue:)(v5 ^ v4, a2);
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance UITraitCollection.Traits(void *a1, uint64_t a2)
{
  v2 = specialized OptionSet<>.insert(_:)(a1, *a2, *(a2 + 8), *(a2 + 16));

  return v2;
}

uint64_t protocol witness for SetAlgebra.update(with:) in conformance UITraitCollection.Traits@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  specialized OptionSet<>.update(with:)(*a1, a2);
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance UITraitCollection.Traits(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  UITraitCollection.Traits.init(rawValue:)(v3 | v2, v1);
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance UITraitCollection.Traits(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  return UITraitCollection.Traits.init(rawValue:)(v3 & v2, v1);
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance UITraitCollection.Traits(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  UITraitCollection.Traits.init(rawValue:)(v3 ^ v2, v1);
}

uint64_t protocol witness for SetAlgebra.subtracting(_:) in conformance UITraitCollection.Traits@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  specialized SetAlgebra.subtracting(_:)(*a1, *v2, a2);
}

double protocol witness for RawRepresentable.init(rawValue:) in conformance UITraitCollection.Traits@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  UITraitCollection.Traits.init(rawValue:)(*a1, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t UITraitCollection.doc_isPreferredContentSizeCategoryChanged(from:)(void *a1)
{
  if (a1)
  {
    v2 = [a1 preferredContentSizeCategory];
  }

  else
  {
    v2 = *MEMORY[0x277D76860];
  }

  v3 = v2;
  v4 = [v1 preferredContentSizeCategory];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    v11 = 0;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

uint64_t @objc UITraitCollection.sourceOutlineStyle.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 sourceListPresentationContext];
  if (v2 >= 2)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {

    return v2;
  }

  return result;
}

id UITraitCollection.sourceOutlineStyle.getter()
{
  result = [v0 sourceListPresentationContext];
  if (result >= 2)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t UITraitCollection.doc_verifyIsSpecified(_:)(__int128 *a1)
{
  v1 = *(a1 + 2);
  v6 = *a1;
  v7 = v1;
  v2 = UITraitCollection.doc_hasSpecified(_:)(&v6);
  if ((v2 & 1) == 0)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = MEMORY[0x24C1FAD20](0xD000000000000029, 0x8000000249BDA260);
    [v3 BOOLForKey_];
  }

  return v2 & 1;
}

BOOL UIViewController.doc_isRTL.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 layoutDirection];

  return v2 == 1;
}

uint64_t static DOCShouldDimTrait.name.getter()
{
  swift_beginAccess();
  v0 = *static DOCShouldDimTrait.name;

  return v0;
}

uint64_t static DOCShouldDimTrait.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static DOCShouldDimTrait.name = a1;
  *&static DOCShouldDimTrait.name[8] = a2;
}

uint64_t key path setter for static DOCShouldDimTrait.name : DOCShouldDimTrait.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *static DOCShouldDimTrait.name = v2;
  *&static DOCShouldDimTrait.name[8] = v1;
}

uint64_t static DOCShouldDimTrait.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  static DOCShouldDimTrait.defaultValue = a1;
  return result;
}

uint64_t protocol witness for static UITraitDefinition.defaultValue.getter in conformance DOCShouldDimTrait@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static DOCShouldDimTrait.defaultValue;
  return result;
}

uint64_t protocol witness for static UITraitDefinition.name.getter in conformance DOCShouldDimTrait()
{
  swift_beginAccess();
  v0 = *static DOCShouldDimTrait.name;

  return v0;
}

uint64_t UIMutableTraits.doc_shouldDim.getter()
{
  lazy protocol witness table accessor for type DOCShouldDimTrait and conformance DOCShouldDimTrait();

  return dispatch thunk of UIMutableTraits.subscript.getter();
}

uint64_t UIMutableTraits.doc_shouldDim.setter()
{
  lazy protocol witness table accessor for type DOCShouldDimTrait and conformance DOCShouldDimTrait();

  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t (*UIMutableTraits.doc_shouldDim.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  lazy protocol witness table accessor for type DOCShouldDimTrait and conformance DOCShouldDimTrait();
  *(a1 + 24) = dispatch thunk of UIMutableTraits.subscript.getter() & 1;
  return UIMutableTraits.doc_shouldDim.modify;
}

uint64_t UITraitCollection.doc_shouldDim.getter()
{
  lazy protocol witness table accessor for type DOCShouldDimTrait and conformance DOCShouldDimTrait();

  return UITraitCollection.subscript.getter();
}

unint64_t lazy protocol witness table accessor for type DOCShouldDimTrait and conformance DOCShouldDimTrait()
{
  result = lazy protocol witness table cache variable for type DOCShouldDimTrait and conformance DOCShouldDimTrait;
  if (!lazy protocol witness table cache variable for type DOCShouldDimTrait and conformance DOCShouldDimTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCShouldDimTrait and conformance DOCShouldDimTrait);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSourceOutlineStyle and conformance DOCSourceOutlineStyle()
{
  result = lazy protocol witness table cache variable for type DOCSourceOutlineStyle and conformance DOCSourceOutlineStyle;
  if (!lazy protocol witness table cache variable for type DOCSourceOutlineStyle and conformance DOCSourceOutlineStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSourceOutlineStyle and conformance DOCSourceOutlineStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSourceOutlinePresentationContext and conformance DOCSourceOutlinePresentationContext()
{
  result = lazy protocol witness table cache variable for type DOCSourceOutlinePresentationContext and conformance DOCSourceOutlinePresentationContext;
  if (!lazy protocol witness table cache variable for type DOCSourceOutlinePresentationContext and conformance DOCSourceOutlinePresentationContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSourceOutlinePresentationContext and conformance DOCSourceOutlinePresentationContext);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DOCSourceOutlineStyle] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UITraitCollection.Traits and conformance UITraitCollection.Traits()
{
  result = lazy protocol witness table cache variable for type UITraitCollection.Traits and conformance UITraitCollection.Traits;
  if (!lazy protocol witness table cache variable for type UITraitCollection.Traits and conformance UITraitCollection.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITraitCollection.Traits and conformance UITraitCollection.Traits);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UITraitCollection.Traits and conformance UITraitCollection.Traits;
  if (!lazy protocol witness table cache variable for type UITraitCollection.Traits and conformance UITraitCollection.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITraitCollection.Traits and conformance UITraitCollection.Traits);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UITraitCollection.Traits and conformance UITraitCollection.Traits;
  if (!lazy protocol witness table cache variable for type UITraitCollection.Traits and conformance UITraitCollection.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITraitCollection.Traits and conformance UITraitCollection.Traits);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UITraitCollection.Traits and conformance UITraitCollection.Traits;
  if (!lazy protocol witness table cache variable for type UITraitCollection.Traits and conformance UITraitCollection.Traits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITraitCollection.Traits and conformance UITraitCollection.Traits);
  }

  return result;
}

void *DOCFileProviderSyncStateSidebarCellAccessoryItemView.init(with:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_preferredIconColor] = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_imageProperties;
  v4 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___progressIndicatorView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___errorImageView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___finishedImageView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___syncingMetadataImageView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___mainContainer] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_viewModel] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for DOCFileProviderSyncStateSidebarCellAccessoryItemView();

  v5 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = *((*MEMORY[0x277D85000] & *v5) + 0xF8);
  v7 = v5;
  v6(v7, v8);

  return v7;
}

uint64_t type metadata accessor for DOCFileProviderSyncStateSidebarCellAccessoryItemView()
{
  result = type metadata singleton initialization cache for DOCFileProviderSyncStateSidebarCellAccessoryItemView;
  if (!type metadata singleton initialization cache for DOCFileProviderSyncStateSidebarCellAccessoryItemView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *DOCFileProviderSyncStateSidebarCellAccessoryItemView.preferredIconColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_preferredIconColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.preferredIconColor.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_preferredIconColor;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (a1)
  {
    if (v6)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
      v7 = a1;
      v8 = v6;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {

LABEL_11:
        return;
      }
    }

    else
    {
      v5 = a1;
    }

LABEL_8:
    v10 = MEMORY[0x277D85000];
    v11 = (*((*MEMORY[0x277D85000] & *v2) + 0x100))(v5);
    type metadata accessor for DOCProgressCollectionIndicatorPresenterView();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = *(v2 + v4);
      v14 = *((*v10 & *v12) + 0x88);
      v15 = v13;
      v14(v13);
    }

    v8 = a1;
    goto LABEL_11;
  }

  if (v6)
  {
    goto LABEL_8;
  }
}

void (*DOCFileProviderSyncStateSidebarCellAccessoryItemView.preferredIconColor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_preferredIconColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCFileProviderSyncStateSidebarCellAccessoryItemView.preferredIconColor.modify;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.preferredIconColor.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (v7)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
        v8 = v3;
        v9 = v7;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

LABEL_18:
LABEL_19:
          v11 = *v4;
          goto LABEL_24;
        }
      }

      else
      {
        a1 = v3;
      }
    }

    else if (!v7)
    {
      goto LABEL_19;
    }

    v14 = MEMORY[0x277D85000];
    v15 = (*((*MEMORY[0x277D85000] & **(v2 + 32)) + 0x100))(a1);
    type metadata accessor for DOCProgressCollectionIndicatorPresenterView();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = *(*(v2 + 32) + *(v2 + 40));
      v18 = *((*v14 & *v16) + 0x88);
      v19 = v17;
      v18(v17);
    }

    v8 = v3;
    goto LABEL_18;
  }

  if (v3)
  {
    if (v7)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
      v11 = v3;
      v12 = v7;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
      a1 = v3;
    }

LABEL_21:
    v20 = MEMORY[0x277D85000];
    v21 = (*((*MEMORY[0x277D85000] & **(v2 + 32)) + 0x100))(a1);
    type metadata accessor for DOCProgressCollectionIndicatorPresenterView();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = *(*(v2 + 32) + *(v2 + 40));
      v24 = *((*v20 & *v22) + 0x88);
      v25 = v23;
      v24(v23);
    }

    v11 = v3;
    goto LABEL_24;
  }

  if (v7)
  {
    goto LABEL_21;
  }

LABEL_25:

  free(v2);
}

uint64_t key path setter for DOCFileProviderSyncStateSidebarCellAccessoryItemView.imageProperties : DOCFileProviderSyncStateSidebarCellAccessoryItemView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of UIListContentConfiguration.ImageProperties?(a1, &v9 - v6);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD0))(v7);
}

id DOCFileProviderSyncStateSidebarCellAccessoryItemView.imageProperties.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v44 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v41[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v45 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v41[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSg_AFtMd);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v41[-v22];
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_imageProperties;
  swift_beginAccess();
  v25 = *(v20 + 56);
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v2 + v24, v23);
  outlined init with copy of UIListContentConfiguration.ImageProperties?(a1, &v23[v25]);
  v26 = *(v5 + 48);
  if (v26(v23, 1, v4) == 1)
  {
    v27 = v4;
    if (v26(&v23[v25], 1, v4) == 1)
    {
      v28 = v23;
      return outlined destroy of CharacterSet?(v28, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
    }
  }

  else
  {
    outlined init with copy of UIListContentConfiguration.ImageProperties?(v23, v18);
    if (v26(&v23[v25], 1, v4) != 1)
    {
      (*(v5 + 32))(v11, &v23[v25], v4);
      lazy protocol witness table accessor for type UIListContentConfiguration.ImageProperties and conformance UIListContentConfiguration.ImageProperties();
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = v5;
      v40 = *(v5 + 8);
      v40(v11, v4);
      v40(v18, v4);
      result = outlined destroy of CharacterSet?(v23, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
      v27 = v4;
      if (v42)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v18, v4);
    v27 = v4;
  }

  v43 = v5;
  outlined destroy of CharacterSet?(v23, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSg_AFtMd);
LABEL_7:
  v29 = v45;
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v2 + v24, v45);
  if (v26(v29, 1, v27) == 1)
  {
    v28 = v29;
    return outlined destroy of CharacterSet?(v28, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  }

  v31 = v43;
  v32 = v44;
  (*(v43 + 32))(v44, v29, v27);
  result = [v2 tintColor];
  if (result)
  {
    v33 = result;
    isa = UIListContentConfiguration.ImageProperties.resolvedTintColor(for:)(result).super.isa;

    v35 = MEMORY[0x277D85000];
    v36 = (*((*MEMORY[0x277D85000] & *v2) + 0x118))();
    v37 = isa;
    [v36 setTintColor_];

    v38 = (*((*v35 & *v2) + 0x130))();
    [v38 setTintColor_];

    v39 = (*((*v35 & *v2) + 0x148))();
    [v39 setTintColor_];

    return (*(v31 + 8))(v32, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCFileProviderSyncStateSidebarCellAccessoryItemView.imageProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_imageProperties;
  swift_beginAccess();
  return outlined init with copy of UIListContentConfiguration.ImageProperties?(v1 + v3, a1);
}

uint64_t outlined init with copy of UIListContentConfiguration.ImageProperties?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DOCFileProviderSyncStateSidebarCellAccessoryItemView.imageProperties.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_imageProperties;
  swift_beginAccess();
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v1 + v7, v6);
  swift_beginAccess();
  outlined assign with copy of UIListContentConfiguration.ImageProperties?(a1, v1 + v7);
  swift_endAccess();
  DOCFileProviderSyncStateSidebarCellAccessoryItemView.imageProperties.didset(v6);
  outlined destroy of CharacterSet?(a1, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  return outlined destroy of CharacterSet?(v6, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
}

uint64_t outlined assign with copy of UIListContentConfiguration.ImageProperties?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*DOCFileProviderSyncStateSidebarCellAccessoryItemView.imageProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_imageProperties;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v1 + v9, v8);
  return DOCFileProviderSyncStateSidebarCellAccessoryItemView.imageProperties.modify;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.imageProperties.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of UIListContentConfiguration.ImageProperties?(*(*a1 + 96), v6);
    outlined init with copy of UIListContentConfiguration.ImageProperties?(v7 + v4, v5);
    swift_beginAccess();
    outlined assign with copy of UIListContentConfiguration.ImageProperties?(v6, v7 + v4);
    swift_endAccess();
    DOCFileProviderSyncStateSidebarCellAccessoryItemView.imageProperties.didset(v5);
    outlined destroy of CharacterSet?(v5, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  }

  else
  {
    outlined init with copy of UIListContentConfiguration.ImageProperties?(v7 + v4, v6);
    swift_beginAccess();
    outlined assign with copy of UIListContentConfiguration.ImageProperties?(v3, v7 + v4);
    swift_endAccess();
    DOCFileProviderSyncStateSidebarCellAccessoryItemView.imageProperties.didset(v6);
  }

  outlined destroy of CharacterSet?(v6, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  outlined destroy of CharacterSet?(v3, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

Swift::Void __swiftcall DOCFileProviderSyncStateSidebarCellAccessoryItemView.startObserving()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_viewModel;
  v2 = *(**&v0[OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_viewModel] + 160);

  v3 = v0;
  v2(v0, &protocol witness table for DOCFileProviderSyncStateSidebarCellAccessoryItemView);

  v4 = *(**&v0[v1] + 368);

  v4(v5);
}

Swift::Void __swiftcall DOCFileProviderSyncStateSidebarCellAccessoryItemView.stopObserving()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_viewModel;
  v2 = *(**(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_viewModel) + 376);

  v2(v3);

  v4 = *(**(v0 + v1) + 160);

  v4(0, 0);
}

Swift::Void __swiftcall DOCFileProviderSyncStateSidebarCellAccessoryItemView.syncStateDidChange(_:)(DocumentManagerExecutables::DOCFileProviderSyncStateSidebarCellAccessoryItemViewModel::State a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  DOCRunInMainThread(_:)();
}

Swift::Void __swiftcall DOCFileProviderSyncStateSidebarCellAccessoryItemView.setUpMainContainer()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x168);
  v2 = v1();
  [v0 addSubview_];

  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA0470;
  v5 = v1();
  v6 = [v5 leadingAnchor];

  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = v1();
  v10 = [v9 trailingAnchor];

  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v4 + 40) = v12;
  v13 = v1();
  v14 = [v13 topAnchor];

  v15 = [v0 topAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 48) = v16;
  v17 = v1();
  v18 = [v17 bottomAnchor];

  v19 = [v0 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v4 + 56) = v20;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints_];
}

id DOCFileProviderSyncStateSidebarCellAccessoryItemView.progressIndicatorView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___progressIndicatorView;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___progressIndicatorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___progressIndicatorView];
  }

  else
  {
    v4 = closure #1 in DOCFileProviderSyncStateSidebarCellAccessoryItemView.progressIndicatorView.getter(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCFileProviderSyncStateSidebarCellAccessoryItemView.progressIndicatorView.getter(char *a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BDA530);
  v4 = [v2 BOOLForKey_];

  if (v4)
  {
    if (one-time initialization token for allFileOperationsProgressSource != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = static DOCFileOperationCollectionSource.allFileOperationsProgressSource;
  }

  else
  {
    v6 = *(**&a1[OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_viewModel] + 240);

    v5 = v6(v7);
  }

  if ([a1 effectiveUserInterfaceLayoutDirection])
  {
    v8 = 8;
  }

  else
  {
    v8 = 4;
  }

  DOCFileProviderSyncStateSidebarCellAccessoryItemView.preferredProgressUIConfiguration.getter(v13);
  if (v13[2])
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  if (v13[1])
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = _s26DocumentManagerExecutables43DOCProgressCollectionIndicatorPresenterViewC13configuration14progressSource21popoverArrowDirectionAcA0D15UIConfigurationV_AA0d18ProvidingOperationeK0_pSo09UIPopovermN0VtcfCTfq4nenn_nAA07DOCFileqeK0C_Tt2B5(v10 | v13[0] | v9, v5, v8);

  return v11;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.progressIndicatorView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___progressIndicatorView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___progressIndicatorView) = a1;
}

void (*DOCFileProviderSyncStateSidebarCellAccessoryItemView.progressIndicatorView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCFileProviderSyncStateSidebarCellAccessoryItemView.progressIndicatorView.getter();
  return DOCFileProviderSyncStateSidebarCellAccessoryItemView.progressIndicatorView.modify;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.progressIndicatorView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___progressIndicatorView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___progressIndicatorView) = v2;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.errorImageView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___errorImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___errorImageView) = a1;
}

void (*DOCFileProviderSyncStateSidebarCellAccessoryItemView.errorImageView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCFileProviderSyncStateSidebarCellAccessoryItemView.errorImageView.getter();
  return DOCFileProviderSyncStateSidebarCellAccessoryItemView.errorImageView.modify;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.errorImageView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___errorImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___errorImageView) = v2;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.finishedImageView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___finishedImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___finishedImageView) = a1;
}

void (*DOCFileProviderSyncStateSidebarCellAccessoryItemView.finishedImageView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCFileProviderSyncStateSidebarCellAccessoryItemView.finishedImageView.getter();
  return DOCFileProviderSyncStateSidebarCellAccessoryItemView.finishedImageView.modify;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.finishedImageView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___finishedImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___finishedImageView) = v2;
}

id DOCFileProviderSyncStateSidebarCellAccessoryItemView.errorImageView.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    type metadata accessor for DOCSourceListInterface_Default();
    v7 = [swift_initStaticObject() *a2];
    v8 = [objc_opt_self() configurationWithTextStyle_];
    v9 = [v7 imageWithConfiguration_];

    v10 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v11 = v9;
    v12 = [v10 initWithImage_];

    v13 = *(v2 + v3);
    *(v2 + v3) = v12;
    v5 = v12;

    v4 = 0;
  }

  v14 = v4;
  return v5;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.syncingMetadataImageView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___syncingMetadataImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___syncingMetadataImageView) = a1;
}

void (*DOCFileProviderSyncStateSidebarCellAccessoryItemView.syncingMetadataImageView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCFileProviderSyncStateSidebarCellAccessoryItemView.syncingMetadataImageView.getter();
  return DOCFileProviderSyncStateSidebarCellAccessoryItemView.syncingMetadataImageView.modify;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.syncingMetadataImageView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___syncingMetadataImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___syncingMetadataImageView) = v2;
}

id DOCFileProviderSyncStateSidebarCellAccessoryItemView.mainContainer.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___mainContainer;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___mainContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___mainContainer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setDistribution_];
    [v4 setAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.mainContainer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___mainContainer);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___mainContainer) = a1;
}

void (*DOCFileProviderSyncStateSidebarCellAccessoryItemView.mainContainer.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCFileProviderSyncStateSidebarCellAccessoryItemView.mainContainer.getter();
  return DOCFileProviderSyncStateSidebarCellAccessoryItemView.mainContainer.modify;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.mainContainer.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___mainContainer);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___mainContainer) = v2;
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.updateViews(state:)(unsigned __int8 a1)
{
  v15 = *((*MEMORY[0x277D85000] & *v1) + 0x168);
  v2 = v15();
  v3 = [v2 arrangedSubviews];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v15();
      [v10 removeArrangedSubview_];

      [v8 removeFromSuperview];
      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  if (a1 > 1u)
  {
    v12 = (v15)(v11);
    if (a1 == 2)
    {
      v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x100))();
    }

    else
    {
      v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x148))();
    }
  }

  else
  {
    if (a1)
    {
      return;
    }

    v12 = (v15)(v11);
    v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x118))();
  }

  v16 = v13;
  [v12 addArrangedSubview_];
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.preferredProgressUIConfiguration.getter(_BYTE *a1@<X8>)
{
  v3 = [v1 traitCollection];
  v4 = [v3 sourceOutlineStyle];

  if (v4 == 1)
  {
    v5 = 0;
LABEL_5:
    *a1 = 1;
    a1[1] = v5;
    a1[2] = 0;
    return;
  }

  if (!v4)
  {
    v5 = 1;
    goto LABEL_5;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

id DOCFileProviderSyncStateSidebarCellAccessoryItemView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void DOCFileProviderSyncStateSidebarCellAccessoryItemView.__ivar_destroyer()
{

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView_imageProperties, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables52DOCFileProviderSyncStateSidebarCellAccessoryItemView____lazy_storage___mainContainer);
}

id DOCFileProviderSyncStateSidebarCellAccessoryItemView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCFileProviderSyncStateSidebarCellAccessoryItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for DOCSidebarCellProgressAccessoryItem.preferredIconColor.modify in conformance DOCFileProviderSyncStateSidebarCellAccessoryItemView(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & **v1) + 0xC0))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

void type metadata completion function for DOCFileProviderSyncStateSidebarCellAccessoryItemView()
{
  type metadata accessor for UIListContentConfiguration.ImageProperties?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UIListContentConfiguration.ImageProperties?()
{
  if (!lazy cache variable for type metadata for UIListContentConfiguration.ImageProperties?)
  {
    type metadata accessor for UIListContentConfiguration.ImageProperties();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIListContentConfiguration.ImageProperties?);
    }
  }
}

id _s26DocumentManagerExecutables43DOCProgressCollectionIndicatorPresenterViewC13configuration14progressSource21popoverArrowDirectionAcA0D15UIConfigurationV_AA0d18ProvidingOperationeK0_pSo09UIPopovermN0VtcfCTfq4nenn_nAA07DOCFileqeK0C_Tt2B5(int a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DOCProgressCollectionIndicatorPresenterView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables43DOCProgressCollectionIndicatorPresenterView_preferredIconColor] = 0;
  v8 = objc_allocWithZone(type metadata accessor for DOCProgressCollectionIndicatorView());

  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables43DOCProgressCollectionIndicatorPresenterView_progressIndicatorView] = specialized DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:)(a1 & 1, a2, v8, 0.3);
  v9 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables43DOCProgressCollectionIndicatorPresenterView_progressSource];
  *v9 = a2;
  v9[1] = &protocol witness table for DOCFilterableOperationProgressCollectionSource<A>;
  v10 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables43DOCProgressCollectionIndicatorPresenterView_configuration];
  *v10 = a1 & 1;
  v10[1] = BYTE1(a1) & 1;
  v10[2] = BYTE2(a1) & 1;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables43DOCProgressCollectionIndicatorPresenterView_popoverArrowDirection] = a3;
  v13.receiver = v7;
  v13.super_class = v6;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  DOCProgressCollectionIndicatorPresenterView.setup()();

  return v11;
}

unint64_t lazy protocol witness table accessor for type UIListContentConfiguration.ImageProperties and conformance UIListContentConfiguration.ImageProperties()
{
  result = lazy protocol witness table cache variable for type UIListContentConfiguration.ImageProperties and conformance UIListContentConfiguration.ImageProperties;
  if (!lazy protocol witness table cache variable for type UIListContentConfiguration.ImageProperties and conformance UIListContentConfiguration.ImageProperties)
  {
    type metadata accessor for UIListContentConfiguration.ImageProperties();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIListContentConfiguration.ImageProperties and conformance UIListContentConfiguration.ImageProperties);
  }

  return result;
}

uint64_t key path setter for OpenItemIntent.target : OpenItemIntent(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  outlined init with copy of FINodeEntity(a1, &v11 - v8);
  outlined init with copy of FINodeEntity(v9, v5);
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(v9);
}

uint64_t OpenItemIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of FINodeEntity(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(a1);
}

uint64_t (*OpenItemIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return OpenItemIntent.target.modify;
}

uint64_t static OpenItemIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables14OpenItemIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables14OpenItemIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type OpenItemIntent and conformance OpenItemIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BDA560;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables14OpenItemIntentV10AppIntents0H9ParameterCyAC12FINodeEntityVGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t lazy protocol witness table accessor for type OpenItemIntent and conformance OpenItemIntent()
{
  result = lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent;
  if (!lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent;
  if (!lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent;
  if (!lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent;
  if (!lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent;
  if (!lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent;
  if (!lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenItemIntent and conformance OpenItemIntent);
  }

  return result;
}

uint64_t OpenItemIntent.fetchURL(for:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for URL();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](OpenItemIntent.fetchURL(for:), 0, 0);
}

uint64_t OpenItemIntent.fetchURL(for:)()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = [objc_opt_self() defaultManager];
  v0[25] = v3;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = OpenItemIntent.fetchURL(for:);
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLVs5Error_pGMd);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL;
  v0[13] = &block_descriptor_50;
  v0[14] = v4;
  [v3 fetchURLForItem:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = OpenItemIntent.fetchURL(for:);
  }

  else
  {
    v2 = OpenItemIntent.fetchURL(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = *(v5 + 32);
  v6(v1, v0[22], v4);
  (*(v5 + 56))(v1, 0, 1, v4);

  outlined init with copy of URL?(v1, v3);
  v7 = (*(v5 + 48))(v3, 1, v4);
  v8 = v0[23];
  v9 = v0[24];
  if (v7 == 1)
  {
    outlined destroy of CharacterSet?(v0[23], &_s10Foundation3URLVSgMd);
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    swift_willThrow();
    outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v11 = v0[20];
    v12 = v0[18];
    outlined destroy of CharacterSet?(v0[24], &_s10Foundation3URLVSgMd);
    v6(v12, v8, v11);
  }

  v10 = v0[1];

  return v10();
}

{
  v1 = *(v0 + 200);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t OpenItemIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for OpenURLIntent();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for URLComponents();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for FINodeEntity();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](OpenItemIntent.perform(), 0, 0);
}

uint64_t OpenItemIntent.perform()()
{
  v2 = v0[17];
  v1 = v0[18];
  IntentParameter.wrappedValue.getter();
  v3 = *(v1 + *(v2 + 32));
  v0[19] = v3;
  v4 = v3;
  outlined destroy of FINodeEntity(v1);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = OpenItemIntent.perform();
  v6 = v0[16];

  return OpenItemIntent.fetchURL(for:)(v6, v4);
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = OpenItemIntent.perform();
  }

  else
  {
    v2 = OpenItemIntent.perform();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[19];
    v5 = v0[16];
    v6 = v0[12];
    v7 = v0[13];
    outlined destroy of CharacterSet?(v0[8], &_s10Foundation13URLComponentsVSgMd);
    lazy protocol witness table accessor for type DeepLinkError and conformance DeepLinkError();
    swift_allocError();
    swift_willThrow();

    (*(v7 + 8))(v5, v6);
LABEL_5:

    v18 = v0[1];
    goto LABEL_7;
  }

  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[7];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  URLComponents.scheme.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd);
  type metadata accessor for URLQueryItem();
  *(swift_allocObject() + 16) = xmmword_249B9A480;
  URLQueryItem.init(name:value:)();
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[19];
    v12 = v0[16];
    v13 = v0[12];
    v14 = v0[13];
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[9];
    outlined destroy of CharacterSet?(v0[7], &_s10Foundation3URLVSgMd);
    lazy protocol witness table accessor for type DeepLinkError and conformance DeepLinkError();
    swift_allocError();
    swift_willThrow();

    (*(v16 + 8))(v15, v17);
    (*(v14 + 8))(v12, v13);
    goto LABEL_5;
  }

  v19 = v0[15];
  v32 = v0[16];
  v20 = v0[13];
  v21 = v0[14];
  v22 = v0[12];
  v31 = v0[11];
  v23 = v0[10];
  v29 = v0[19];
  v30 = v0[9];
  v25 = v0[5];
  v24 = v0[6];
  v26 = v0[4];
  (*(v20 + 32))(v19);
  (*(v20 + 16))(v21, v19, v22);
  OpenURLIntent.init(_:)();
  lazy protocol witness table accessor for type OpenURLIntent and conformance OpenURLIntent(&lazy protocol witness table cache variable for type OpenURLIntent and conformance OpenURLIntent, MEMORY[0x277CB9DE0]);
  static IntentResult.result<A>(opensIntent:)();

  (*(v25 + 8))(v24, v26);
  v27 = *(v20 + 8);
  v27(v19, v22);
  (*(v23 + 8))(v31, v30);
  v27(v32, v22);

  v18 = v0[1];
LABEL_7:

  return v18();
}

{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type DeepLinkError and conformance DeepLinkError()
{
  result = lazy protocol witness table cache variable for type DeepLinkError and conformance DeepLinkError;
  if (!lazy protocol witness table cache variable for type DeepLinkError and conformance DeepLinkError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeepLinkError and conformance DeepLinkError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeepLinkError and conformance DeepLinkError;
  if (!lazy protocol witness table cache variable for type DeepLinkError and conformance DeepLinkError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeepLinkError and conformance DeepLinkError);
  }

  return result;
}

uint64_t protocol witness for OpenIntent.target.setter in conformance OpenItemIntent(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of FINodeEntity(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(a1);
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenItemIntent(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return protocol witness for ShowInAppSearchResultsIntent.criteria.modify in conformance SearchInBrowserIntent;
}

uint64_t one-time initialization function for __assistantSchemaIntent()
{
  v0 = type metadata accessor for AssistantSchema.IntentSchema();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v9 - v5;
  v7 = type metadata accessor for AssistantSchema();
  __swift_allocate_value_buffer(v7, static OpenItemIntent.__assistantSchemaIntent);
  __swift_project_value_buffer(v7, static OpenItemIntent.__assistantSchemaIntent);
  AssistantSchema.IntentSchema.init(_:)();
  AssistantSchema.IntentSchema.init(_:)();
  (*(v1 + 8))(v6, v0);
  return AssistantSchema.init<A>(_:)();
}

{
  v0 = type metadata accessor for AssistantSchema.IntentSchema();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v9 - v5;
  v7 = type metadata accessor for AssistantSchema();
  __swift_allocate_value_buffer(v7, static TrashItemsIntent.__assistantSchemaIntent);
  __swift_project_value_buffer(v7, static TrashItemsIntent.__assistantSchemaIntent);
  AssistantSchema.IntentSchema.init(_:)();
  AssistantSchema.IntentSchema.init(_:)();
  (*(v1 + 8))(v6, v0);
  return AssistantSchema.init<A>(_:)();
}

{
  v0 = type metadata accessor for AssistantSchema.IntentSchema();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v9 - v5;
  v7 = type metadata accessor for AssistantSchema();
  __swift_allocate_value_buffer(v7, static RenameItemIntent.__assistantSchemaIntent);
  __swift_project_value_buffer(v7, static RenameItemIntent.__assistantSchemaIntent);
  AssistantSchema.IntentSchema.init(_:)();
  AssistantSchema.IntentSchema.init(_:)();
  (*(v1 + 8))(v6, v0);
  return AssistantSchema.init<A>(_:)();
}

{
  v0 = type metadata accessor for AssistantSchema.IntentSchema();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v9 - v5;
  v7 = type metadata accessor for AssistantSchema();
  __swift_allocate_value_buffer(v7, static CreateFolderIntent.__assistantSchemaIntent);
  __swift_project_value_buffer(v7, static CreateFolderIntent.__assistantSchemaIntent);
  AssistantSchema.IntentSchema.init(_:)();
  AssistantSchema.IntentSchema.init(_:)();
  (*(v1 + 8))(v6, v0);
  return AssistantSchema.init<A>(_:)();
}

{
  v0 = type metadata accessor for AssistantSchema.IntentSchema();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v9 - v5;
  v7 = type metadata accessor for AssistantSchema();
  __swift_allocate_value_buffer(v7, static MoveItemsIntent.__assistantSchemaIntent);
  __swift_project_value_buffer(v7, static MoveItemsIntent.__assistantSchemaIntent);
  AssistantSchema.IntentSchema.init(_:)();
  AssistantSchema.IntentSchema.init(_:)();
  (*(v1 + 8))(v6, v0);
  return AssistantSchema.init<A>(_:)();
}

uint64_t OpenItemIntent.__assistantSchemaIntent.unsafeMutableAddressor()
{
  if (one-time initialization token for __assistantSchemaIntent != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();

  return __swift_project_value_buffer(v0, static OpenItemIntent.__assistantSchemaIntent);
}

uint64_t static OpenItemIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for __assistantSchemaIntent != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AssistantSchema();
  v3 = __swift_project_value_buffer(v2, static OpenItemIntent.__assistantSchemaIntent);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenItemIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenItemIntent and conformance OpenItemIntent();

  return MEMORY[0x28210BFE8](a1, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenItemIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return OpenItemIntent.perform()(a1, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance OpenItemIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenItemIntent.init(target:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenItemIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenItemIntent and conformance OpenItemIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t default argument 0 of OpenItemIntent.init(target:)()
{
  v26 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v25 - v18;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd);
  v20 = type metadata accessor for LocalizedStringResource();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = type metadata accessor for FINodeEntity();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v11, 1, 1, v22);
  v23(v7, 1, 1, v22);
  (*(v0 + 104))(v3, *MEMORY[0x277CBA308], v26);
  lazy protocol witness table accessor for type OpenURLIntent and conformance OpenURLIntent(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
  return IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t lazy protocol witness table accessor for type OpenURLIntent and conformance OpenURLIntent(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *DOCValueChangePacer.init(pacing:behaviors:)(char a1, double a2)
{
  v5 = *v2;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  (*(*(*(v5 + 80) - 8) + 56))(v2 + *(v5 + 128), 1, 1);
  *(v2 + *(*v2 + 136)) = 0;
  *(v2 + *(*v2 + 144)) = 0;
  *(v2 + 2) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t *DOCValueChangePacer.deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v0[4]);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v0[6]);
  v1 = *(*v0 + 128);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DOCValueChangePacer.applyPacedValueHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCValueChangePacer.applyPacedValueHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
}

uint64_t DOCValueChangePacer.didEndCoalescingHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t DOCValueChangePacer.didEndCoalescingHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
}

uint64_t DOCValueChangePacer.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t DOCValueChangePacer.valueIsFromUserAction.getter()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCValueChangePacer.requestChange(to:isFromUserAction:)(uint64_t a1, char a2)
{
  v5 = (*(*v2 + 304))();
  v6 = a2 & 1;
  if (v5)
  {

    DOCValueChangePacer.continueCoalescing(updatedValue:valueContext:)(a1, v6);
  }

  else
  {

    DOCValueChangePacer.startCoalescing(initialValue:valueContext:)(a1, v6);
  }
}

Swift::Void __swiftcall DOCValueChangePacer.cancelPendingRequests()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v3, v5);
  v8 = &v15 - v7;
  v9 = *(v1 + 144);
  v10 = *(v0 + v9);
  if (v10)
  {
    [*(v10 + 16) invalidate];
  }

  (*(*(v2 - 8) + 56))(v8, 1, 1, v2, v6);
  v11 = *(*v0 + 128);
  swift_beginAccess();
  (*(v4 + 40))(v0 + v11, v8, v3);
  swift_endAccess();
  if (*(v0 + v9))
  {
    *(v0 + v9) = 0;

    v13 = (*(*v0 + 232))(v12);
    if (v13)
    {
      v14 = v13;
      v13();
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v14);
    }
  }
}

void (*DOCValueChangePacer.updateValue(_:valueContext:notifyIfChanged:)(char *a1, int a2, int a3))(char *)
{
  v4 = v3;
  v45 = a3;
  v47 = a2;
  v6 = *v3;
  v49 = *(v6 + 80);
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](a1, v49);
  v40[0] = v40 - v8;
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v11);
  v13 = v40 - v12;
  v14 = *(v9 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v44 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = v40 - v21;
  v40[1] = v6;
  (*(v6 + 256))(v20);
  v42 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = *(v14 + 16);
  v24(v13, v22, v9);
  v46 = a1;
  v24(&v13[v23], a1, v9);
  v43 = v7;
  v25 = *(v7 + 48);
  v26 = v25(v13, 1, v49);
  v48 = v14;
  if (v26 != 1)
  {
    v30 = v44;
    v24(v44, v13, v9);
    v31 = v49;
    if (v25(&v13[v23], 1, v49) != 1)
    {
      v32 = v43;
      v33 = v40[0];
      (*(v43 + 32))(v40[0], &v13[v23], v31);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v32 + 8);
      (v43)(v33, v31);
      v29 = v48;
      v34 = *(v48 + 8);
      v34(v22, v9);
      (v43)(v44, v31);
      v34(v13, v9);
      goto LABEL_8;
    }

    (*(v48 + 8))(v22, v9);
    (*(v43 + 8))(v30, v31);
    goto LABEL_6;
  }

  v27 = *(v14 + 8);
  v27(v22, v9);
  if (v25(&v13[v23], 1, v49) != 1)
  {
LABEL_6:
    (*(v41 + 8))(v13, v42);
    v28 = 0;
    v29 = v48;
    goto LABEL_8;
  }

  v27(v13, v9);
  v28 = 1;
  v29 = v48;
LABEL_8:
  v35 = *(*v4 + 128);
  swift_beginAccess();
  (*(v29 + 24))(&v4[v35], v46, v9);
  swift_endAccess();
  v36 = *(*v4 + 136);
  result = swift_beginAccess();
  v4[v36] = v47 & 1;
  if (v28 & 1) == 0 && (v45)
  {
    v38 = (*(*v4 + 384))(0xD000000000000011, 0x8000000249BDA7C0);
    result = (*(*v4 + 208))(v38);
    if (result)
    {
      v39 = result;
      result(v4);
      return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v39);
    }
  }

  return result;
}

uint64_t DOCValueChangePacer.startCoalescing(initialValue:valueContext:)(uint64_t a1, int a2)
{
  v21 = a2;
  v22 = a1;
  v3 = *(*v2 + 80);
  v20 = type metadata accessor for Optional();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v5);
  v7 = &v19 - v6;
  type metadata accessor for DOCValueChangePacer.CoalescingSession();
  v8 = swift_allocObject();
  v9 = *v8;
  *(v8 + 2) = 0;
  (*(*(*(v9 + 80) - 8) + 56))(&v8[*(v9 + 104)], 1, 1);
  v8[*(*v8 + 112)] = 2;
  v10 = *(*v2 + 384);
  v10(0xD00000000000001BLL, 0x8000000249BDA9A0);
  *(v2 + *(*v2 + 144)) = v8;

  LOBYTE(v23) = (*(*v2 + 176))(v11);
  v25 = 1;
  type metadata accessor for DOCValueChangePacer.Behaviors();
  swift_getWitnessTable();
  if (OptionSet<>.contains(_:)())
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    MEMORY[0x24C1FAEA0](0xD00000000000001ALL, 0x8000000249BDA9E0);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v10(v23, v24);

    v12 = *(v3 - 8);
    v19 = *(v12 + 56);
    v19(v7, 1, 1, v3);
    DOCValueChangePacer.updateValue(_:valueContext:notifyIfChanged:)(v7, 2, 0);
    v13 = *(v4 + 8);
    v14 = v20;
    v13(v7, v20);
    (*(v12 + 16))(v7, v22, v3);
    v19(v7, 0, 1, v3);
    DOCValueChangePacer.updateValue(_:valueContext:notifyIfChanged:)(v7, v21 & 1, 1);
    v13(v7, v14);
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    MEMORY[0x24C1FAEA0](0xD000000000000019, 0x8000000249BDA9C0);
    v15 = v22;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v10(v23, v24);

    v16 = *(v3 - 8);
    (*(v16 + 16))(v7, v15, v3);
    (*(v16 + 56))(v7, 0, 1, v3);
    v17 = *(*v8 + 104);
    swift_beginAccess();
    (*(v4 + 40))(&v8[v17], v7, v20);
    swift_endAccess();
    v8[*(*v8 + 112)] = v21 & 1;
  }

  DOCValueChangePacer.scheduleEndCoalescing()();
}

void DOCValueChangePacer.continueCoalescing(updatedValue:valueContext:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 80);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v19 - v11;
  v13 = *(v3 + *(v6 + 144));
  if (v13)
  {
    v22 = 0;
    v23 = 0xE000000000000000;

    _StringGuts.grow(_:)(27);
    MEMORY[0x24C1FAEA0](0xD000000000000019, 0x8000000249BDA960);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v20 = a2;
    v14 = *v3;
    v19[0] = *(*v3 + 384);
    v19[1] = v14 + 384;
    (v19[0])(v22, v23);

    v15 = *(v7 - 8);
    (*(v15 + 16))(v12, a1, v7);
    (*(v15 + 56))(v12, 0, 1, v7);
    v16 = *(*v13 + 13);
    swift_beginAccess();
    (*(v9 + 40))(v13 + v16, v12, v8);
    v17 = swift_endAccess();
    *(v13 + *(*v13 + 14)) = v20 & 1;
    LOBYTE(v22) = (*(*v3 + 176))(v17);
    v21 = 2;
    type metadata accessor for DOCValueChangePacer.Behaviors();
    swift_getWitnessTable();
    if (OptionSet<>.contains(_:)())
    {
      (v19[0])(0xD00000000000001CLL, 0x8000000249BDA980);
      [v13[2] invalidate];
      v18 = v13[2];
      v13[2] = 0;

      DOCValueChangePacer.scheduleEndCoalescing()();
    }
  }
}

void DOCValueChangePacer.scheduleEndCoalescing()()
{
  v1 = *(v0 + *(*v0 + 144));
  if (v1)
  {
    if (!*(v1 + 16))
    {
      v2 = fmax(v0[2], 0.1);
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = v1;
      v9[4] = partial apply for closure #1 in DOCValueChangePacer.scheduleEndCoalescing();
      v9[5] = v5;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      v9[3] = &block_descriptor_51;
      v6 = _Block_copy(v9);
      swift_retain_n();

      v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:v2];
      _Block_release(v6);
      v8 = *(v1 + 16);
      *(v1 + 16) = v7;
    }
  }
}

Swift::Void __swiftcall DOCValueChangePacer.log(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.UI);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v8);
    _os_log_impl(&dword_2493AC000, oslog, v4, "[Pacer] %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }
}

uint64_t DOCLocationChange.description.getter(void *a1)
{
  v1 = [a1 shortDescription];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x24C1FAEA0](v2, v4);

  return 0x20646E65707061;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCLocationChange()
{
  v1 = [*v0 shortDescription];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x24C1FAEA0](v2, v4);

  return 0x20646E65707061;
}

id one-time initialization function for locationChangePacerLog()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v1 = static DOCLog.UI;
  locationChangePacerLog = static DOCLog.UI;

  return v1;
}

void key path setter for DOCLocationChangePacer.pendingLocationChange : DOCLocationChangePacer(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_pendingLocationChange;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  outlined copy of DOCLocationChange?(v2, v3);
  outlined consume of DOCLocationChange?(v5, v6);
}

id DOCLocationChangePacer.pendingLocationChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_pendingLocationChange);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of DOCLocationChange?(*v1, v1[1]);
  return v2;
}

id DOCLocationChangePacer.__allocating_init(hierarchyController:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_pendingLocationChange];
  *v4 = 0;
  *(v4 + 1) = 0;
  Date.init()();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_hierarchyController] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id DOCLocationChangePacer.init(hierarchyController:)(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_pendingLocationChange];
  *v3 = 0;
  *(v3 + 1) = 0;
  Date.init()();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_hierarchyController] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCLocationChangePacer();
  return objc_msgSendSuper2(&v5, sel_init);
}

BOOL DOCLocationChangePacer.hasPendingLocationChanges.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
  v3 = v1;
  if (v1)
  {
    outlined consume of DOCLocationChange?(v1, v2);
  }

  return v3 != 0;
}

uint64_t DOCLocationChangePacer.request(_:)(id a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v51 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v22 = static OS_dispatch_queue.main.getter();
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v23 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v24 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_hierarchyController] + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  swift_beginAccess();
  v25 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v24, 1, v25) && *(v24 + *(v25 + 20)) == 1)
  {
    (*(v26 + 56))(v17, 1, 1, v25);
    DOCHierarchyController.localOperation.setter(v17);
  }

  v27 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_pendingLocationChange];
  swift_beginAccess();
  v28 = *v27;
  v29 = *(v27 + 1);
  *v27 = a1;
  *(v27 + 1) = a2;
  v30 = a2;
  a1 = a1;
  outlined consume of DOCLocationChange?(v28, v29);
  Date.init()();
  v22 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_timestampOfLastLocationChangeAttempt;
  swift_beginAccess();
  v31 = v51;
  v32 = v52;
  (*(v51 + 16))(v9, v22 + v3, v52);
  Date.timeIntervalSince(_:)();
  v34 = v33;
  v35 = *(v31 + 8);
  v35(v9, v32);
  v35(v13, v32);
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v3 selector:sel_performPendingLocationChange object:0];
  if (v34 < 0.5)
  {
    [v3 performSelector:sel_performPendingLocationChange withObject:0 afterDelay:?];
    if (one-time initialization token for locationChangePacerLog == -1)
    {
LABEL_7:
      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_249B9A480;
      v53 = 0x20646E65707061;
      v54 = 0xE700000000000000;
      v37 = [a1 shortDescription];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      MEMORY[0x24C1FAEA0](v38, v40);

      v41 = v53;
      v42 = v54;
      *(v36 + 56) = MEMORY[0x277D837D0];
      *(v36 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v36 + 32) = v41;
      *(v36 + 40) = v42;
      os_log(_:dso:log:type:_:)();

      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  if (one-time initialization token for locationChangePacerLog != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_249B9A480;
  v53 = 0x20646E65707061;
  v54 = 0xE700000000000000;
  v44 = [a1 shortDescription];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  MEMORY[0x24C1FAEA0](v45, v47);

  v48 = v53;
  v49 = v54;
  *(v43 + 56) = MEMORY[0x277D837D0];
  *(v43 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v43 + 32) = v48;
  *(v43 + 40) = v49;
  os_log(_:dso:log:type:_:)();

  DOCLocationChangePacer.performPendingLocationChange()();
LABEL_11:
  Date.init()();
  swift_beginAccess();
  (*(v51 + 40))(v22 + v3, v13, v52);
  return swift_endAccess();
}

void DOCLocationChangePacer.performPendingLocationChange()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v82 - v8;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = v82 - v13;
  v15 = (*((*MEMORY[0x277D85000] & *v0) + 0x68))(v12);
  v86 = v16;
  v87 = v15;
  if (v15)
  {
    v85 = v5;
    v17 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_hierarchyController);
    v18 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
    swift_beginAccess();
    outlined init with copy of DOCHierarchyController.FetchingOperationToken?(&v17[v18], v9);
    v19 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    v20 = *(v19 - 1);
    v21 = *(v20 + 48);
    if (v21(v9, 1, v19) == 1)
    {
      v22 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
      swift_beginAccess();
      outlined init with copy of DOCHierarchyController.FetchingOperationToken?(&v17[v22], v14);
      if (v21(v9, 1, v19) != 1)
      {
        outlined destroy of DOCHierarchyController.FetchingOperationToken?(v9);
      }
    }

    else
    {
      outlined init with take of DOCHierarchyController.FetchingOperationToken(v9, v14);
      (*(v20 + 56))(v14, 0, 1, v19);
    }

    if (v21(v14, 1, v19) == 1)
    {
      outlined destroy of DOCHierarchyController.FetchingOperationToken?(v14);
    }

    else
    {
      v23 = v14[v19[6]];
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v14);
      if (v23)
      {
        if (one-time initialization token for locationChangePacerLog == -1)
        {
LABEL_15:
          static os_log_type_t.debug.getter();
          os_log(_:dso:log:type:_:)();
          v25 = v86;
          v24 = v87;
LABEL_38:
          outlined consume of DOCLocationChange?(v24, v25);
          return;
        }

LABEL_45:
        swift_once();
        goto LABEL_15;
      }
    }

    v84 = v20;
    if (one-time initialization token for locationChangePacerLog != -1)
    {
      swift_once();
    }

    v26 = locationChangePacerLog;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_249B9A480;
    v88 = 0x20646E65707061;
    v89 = 0xE700000000000000;
    v28 = v87;
    v29 = [v87 shortDescription];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    MEMORY[0x24C1FAEA0](v30, v32);

    v33 = v88;
    v34 = v89;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v27 + 32) = v33;
    *(v27 + 40) = v34;
    v83 = v26;
    os_log(_:dso:log:type:_:)();

    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = v28;
    v37 = v86;
    v36[4] = v86;
    if (v37)
    {
      v38 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
      v39 = swift_beginAccess();
      v41 = v86;
      v40 = v87;
      v82[1] = v82;
      v42 = *&v17[v38];
      v88 = v86;
      MEMORY[0x28223BE20](v39, v43);
      v82[-2] = &v88;
      v44 = v41;
      outlined copy of DOCLocationChange?(v40, v41);
      v45 = v40;
      v46 = v44;

      v47 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v82[-4], v42);

      if ((v47 & 1) == 0)
      {
        static os_log_type_t.debug.getter();
        os_log(_:dso:log:type:_:)();
        outlined consume of DOCLocationChange?(v87, v86);

        v48 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_pendingLocationChange;
LABEL_37:
        swift_beginAccess();
        v24 = *v48;
        v25 = *(v48 + 1);
        *v48 = 0;
        *(v48 + 1) = 0;
        goto LABEL_38;
      }
    }

    else
    {
      v49 = v87;
      outlined copy of DOCLocationChange?(v87, 0);
      v50 = v49;
    }

    v88 = 0;
    v89 = 0xE000000000000000;

    _StringGuts.grow(_:)(20);

    v88 = 0xD000000000000011;
    v89 = 0x8000000249BCC8C0;
    v51 = v87;
    v52 = [v87 shortDescription];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    MEMORY[0x24C1FAEA0](v53, v55);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    v56 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(v88, v89);

    v57 = swift_allocBox();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_249BA0290;
    *(v60 + 32) = v51;
    v61 = v51;
    UUID.init()();
    v62 = v19[5];
    v63 = v19[6];
    *(v59 + v19[7]) = v60;
    *(v59 + v62) = 1;
    *(v59 + v63) = 0;
    v64 = v59;
    v65 = v85;
    outlined init with copy of DOCHierarchyController.FetchingOperationToken(v64, v85);
    (*(v84 + 56))(v65, 0, 1, v19);
    DOCHierarchyController.localOperation.setter(v65);
    v66 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v67 = *&v17[v66];
    if (v67 >> 62)
    {
      if (__CocoaSet.count.getter() < 2)
      {
        goto LABEL_24;
      }
    }

    else if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
LABEL_24:
      v68 = 0;
LABEL_36:
      v77 = swift_allocObject();
      *(v77 + 16) = v17;
      *(v77 + 24) = v57;
      *(v77 + 32) = v56;
      *(v77 + 40) = partial apply for closure #1 in DOCLocationChangePacer.performPendingLocationChange();
      *(v77 + 48) = v36;
      *(v77 + 56) = 1;
      *(v77 + 57) = v68 & 1;
      *(v77 + 58) = 1;
      v78 = v86;
      *(v77 + 64) = v86;
      v79 = v78;

      v80 = v17;

      specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v61, 1, v80, partial apply for closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:), v77);

      outlined consume of DOCLocationChange?(v87, v78);

      v48 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCLocationChangePacer_pendingLocationChange;
      goto LABEL_37;
    }

    v69 = *&v17[v66];
    if (v69 >> 62)
    {
      v81 = __CocoaSet.count.getter();
      v71 = v81 - 2;
      if (!__OFSUB__(v81, 2))
      {
LABEL_28:
        swift_beginAccess();
        v72 = *&v17[v66];
        v83 = v61;
        if ((v72 & 0xC000000000000001) == 0)
        {
          if ((v71 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v73 = v86;
            if (v71 < *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v74 = *(v72 + 8 * v71 + 32);
LABEL_32:
              v75 = v74;
              swift_endAccess();
              if (v73)
              {
                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
                v76 = v73;
                v68 = static NSObject.== infix(_:_:)();

                v75 = v76;
              }

              else
              {
                v68 = 0;
              }

              v61 = v83;
              goto LABEL_36;
            }
          }

          __break(1u);
          goto LABEL_45;
        }

LABEL_42:
        v73 = v86;
        v74 = MEMORY[0x24C1FC540](v71);
        goto LABEL_32;
      }
    }

    else
    {
      v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v71 = v70 - 2;
      if (!__OFSUB__(v70, 2))
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  if (one-time initialization token for locationChangePacerLog != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();

  os_log(_:dso:log:type:_:)();
}

void closure #1 in DOCLocationChangePacer.performPendingLocationChange()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for locationChangePacerLog != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249B9A480;
    v6 = [a2 shortDescription];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    MEMORY[0x24C1FAEA0](v7, v9);

    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 32) = 0x20646E65707061;
    *(v5 + 40) = 0xE700000000000000;
    os_log(_:dso:log:type:_:)();

    v11 = MEMORY[0x277D85000];
    v12 = (*((*MEMORY[0x277D85000] & *v4) + 0x68))(v10);
    if (v12)
    {
      v14 = v12;
      v15 = v13;
      static os_log_type_t.debug.getter();
      os_log(_:dso:log:type:_:)();
      (*((*v11 & *v4) + 0xA8))(v14, v15);

      outlined consume of DOCLocationChange?(v14, v15);
    }

    else
    {
    }
  }
}

id DOCLocationChangePacer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCLocationChangePacer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCLocationChangePacer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static DOCValueChangePacer.Behaviors.default.getter()
{
  type metadata accessor for DOCValueChangePacer.Behaviors();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  *v0 = 513;
  type metadata accessor for Array();
  DOCGridLayout.specIconWidth.modify(v1, v2);
  swift_getWitnessTable();
  SetAlgebra<>.init(arrayLiteral:)();
  return v4;
}

uint64_t protocol witness for SetAlgebra.init() in conformance DOCValueChangePacer<A>.Behaviors(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = lazy protocol witness table accessor for type UInt8 and conformance UInt8();

  return MEMORY[0x2821FE780](a1, WitnessTable, v3);
}

uint64_t protocol witness for SetAlgebra.contains(_:) in conformance DOCValueChangePacer<A>.Behaviors()
{
  swift_getWitnessTable();

  return OptionSet<>.contains(_:)();
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance DOCValueChangePacer<A>.Behaviors(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE760](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance DOCValueChangePacer<A>.Behaviors(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE750](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance DOCValueChangePacer<A>.Behaviors(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE758](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.insert(_:) in conformance DOCValueChangePacer<A>.Behaviors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE730](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.remove(_:) in conformance DOCValueChangePacer<A>.Behaviors(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE738](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.update(with:) in conformance DOCValueChangePacer<A>.Behaviors(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE740](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance DOCValueChangePacer<A>.Behaviors(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v7 = lazy protocol witness table accessor for type UInt8 and conformance UInt8();

  return a4(a1, a2, WitnessTable, v7);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCValueChangePacer<A>.Behaviors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D84B90];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance DOCValueChangePacer<A>.Behaviors()
{
  swift_getWitnessTable();

  return SetAlgebra<>.init(arrayLiteral:)();
}

uint64_t DOCValueChangePacer.__allocating_init(pacing:behaviors:)(char a1, double a2)
{
  v4 = swift_allocObject();
  DOCValueChangePacer.init(pacing:behaviors:)(a1, a2);
  return v4;
}

uint64_t key path getter for DOCValueChangePacer.applyPacedValueHandler : <A>DOCValueChangePacer<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v10 = *(a2 + a3 - 16);
  result = (*(**a1 + 208))();
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 32) = v7;
    *(result + 40) = v8;
    v9 = thunk for @escaping @callee_guaranteed (@guaranteed DOCValueChangePacer<A>) -> ()partial apply;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  a4[1] = result;
  return result;
}

uint64_t key path setter for DOCValueChangePacer.applyPacedValueHandler : <A>DOCValueChangePacer<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed DOCValueChangePacer<A>) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 216);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for DOCValueChangePacer.didEndCoalescingHandler : <A>DOCValueChangePacer<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *(a2 + a3 - 16);
  result = (*(**a1 + 232))();
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 32) = v7;
    *(result + 40) = v8;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCValueChangePacer<A>) -> ();
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  a4[1] = result;
  return result;
}

uint64_t key path setter for DOCValueChangePacer.didEndCoalescingHandler : <A>DOCValueChangePacer<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 240);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t key path setter for DOCValueChangePacer.value : <A>DOCValueChangePacer<A>(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v13 - v8;
  (*(v5 + 16))(&v13 - v8, a1, v4, v7);
  v10 = *a2;
  v11 = *(*v10 + 128);
  swift_beginAccess();
  (*(v5 + 40))(v10 + v11, v9, v4);
  return swift_endAccess();
}

id *DOCValueChangePacer.CoalescingSession.deinit()
{
  v1 = *(*v0 + 13);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DOCValueChangePacer.CoalescingSession.__deallocating_deinit()
{
  DOCValueChangePacer.CoalescingSession.deinit();

  return swift_deallocClassInstance();
}

char *DOCValueChangePacer.CoalescingSession.init()()
{
  v1 = *v0;
  *(v0 + 2) = 0;
  (*(*(*(v1 + 80) - 8) + 56))(&v0[*(v1 + 104)], 1, 1);
  v0[*(*v0 + 112)] = 2;
  return v0;
}

uint64_t closure #1 in DOCValueChangePacer.scheduleEndCoalescing()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - v13;
  v15 = *(v5 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v27 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    if ([a1 isValid])
    {
      v22 = *(*v21 + 384);
      v27 = *v21 + 384;
      v28 = v22;
      v22(0xD000000000000019, 0x8000000249BDA780);
      *(v21 + *(*v21 + 144)) = 0;

      v23 = *(*a3 + 104);
      swift_beginAccess();
      (*(v7 + 16))(v14, a3 + v23, v6);
      if ((*(v15 + 48))(v14, 1, v5) == 1)
      {
        v24 = (*(v7 + 8))(v14, v6);
      }

      else
      {
        (*(v15 + 32))(v19, v14, v5);
        v29 = 0;
        v30 = 0xE000000000000000;
        _StringGuts.grow(_:)(26);
        MEMORY[0x24C1FAEA0](0xD000000000000018, 0x8000000249BDA7A0);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v28(v29, v30);

        (*(v15 + 16))(v10, v19, v5);
        (*(v15 + 56))(v10, 0, 1, v5);
        DOCValueChangePacer.updateValue(_:valueContext:notifyIfChanged:)(v10, *(a3 + *(*a3 + 112)), 1);
        (*(v7 + 8))(v10, v6);
        v24 = (*(v15 + 8))(v19, v5);
      }

      v25 = (*(*v21 + 232))(v24);
      if (v25)
      {
        v26 = v25;
        v25(v21);
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v26);
      }
    }
  }

  return result;
}

uint64_t DOCValueChangePacer.__deallocating_deinit()
{
  DOCValueChangePacer.deinit();

  return swift_deallocClassInstance();
}

id outlined copy of DOCLocationChange?(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

uint64_t type metadata accessor for DOCLocationChangePacer()
{
  result = type metadata singleton initialization cache for DOCLocationChangePacer;
  if (!type metadata singleton initialization cache for DOCLocationChangePacer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DOCLocationChangePacer()
{
  result = type metadata accessor for Date();
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

uint64_t type metadata completion function for DOCValueChangePacer()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for DOCValueChangePacer.Behaviors()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for DOCValueChangePacer.CoalescingSession()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for DOCValueChangePacer.ValueContext()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DOCValueChangePacer.ValueContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

uint64_t outlined init with copy of DOCHierarchyController.FetchingOperationToken?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCHierarchyController.FetchingOperationToken?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of DOCHierarchyController.FetchingOperationToken(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCHierarchyController.FetchingOperationToken(uint64_t a1)
{
  v2 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of DOCHierarchyController.FetchingOperationToken(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Bool __swiftcall DOCPreviewController.canPerformOperationOnCurrentItem(operation:)(__C::FPAction operation)
{
  v2 = v1;
  v4 = [v1 currentPreviewItem];
  if (!v4)
  {
LABEL_9:
    v7 = 0;
    return v7 & 1;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = v6;
  if (v6)
  {
    swift_unknownObjectRetain();
    v8 = QLItem.node.getter();
    if (v8)
    {
      v9 = v8;
      if ((*((*MEMORY[0x277D85000] & *v2) + 0x2A0))(v2, v5) == 1 && ([v2 isEditing] & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_249BA0290;
        *(inited + 32) = v9;
        swift_unknownObjectRetain();
        v7 = specialized static DOCActionManager.canPerform(_:on:)(operation._rawValue, inited);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        swift_setDeallocating();
        swift_arrayDestroy();
        return v7 & 1;
      }

      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease_n();
    }

    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  return v7 & 1;
}

Swift::Void __swiftcall DOCPreviewController.renameCurrentQLItem(withSuggestedName:)(Swift::String withSuggestedName)
{
  object = withSuggestedName._object;
  countAndFlagsBits = withSuggestedName._countAndFlagsBits;
  if (!DOCPreviewController.canPerformOperationOnCurrentItem(operation:)(MEMORY[0x277CC6040]->_rawValue) || ![v1 currentPreviewItem])
  {
    goto LABEL_17;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (v4 = QLItem.node.getter()) == 0)
  {
    swift_unknownObjectRelease();
LABEL_17:
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.Rename);

    v26 = v1;
    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42[0] = v29;
      *v28 = 136315650;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BDAA00, v42);
      *(v28 + 12) = 2080;
      *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v42);
      *(v28 + 22) = 2080;
      v30 = [v26 currentPreviewItem];
      if (v30)
      {
        v31 = [v30 description];
        swift_unknownObjectRelease();
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v42);

      *(v28 + 24) = v35;
      _os_log_impl(&dword_2493AC000, oslog, v27, "%s: could not get currently previewed node to rename to %s. currentPreviewItem == %s ", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    else
    {
    }

    return;
  }

  v5 = v4;
  if (String.count.getter() >= 1)
  {
    v6 = [v5 displayName];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (v7 == countAndFlagsBits && v9 == object)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.Rename);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v42[0] = v16;
          *v15 = 136315394;
          *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BDAA00, v42);
          *(v15 + 12) = 2080;
          *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v42);
          _os_log_impl(&dword_2493AC000, v13, v14, "%s: will change name to %s", v15, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v16, -1, -1);
          MEMORY[0x24C1FE850](v15, -1, -1);
        }

        type metadata accessor for RenameControllerDelegate();
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        *(v17 + 32) = 0;
        swift_beginAccess();
        swift_unknownObjectWeakAssign();
        v18 = objc_allocWithZone(type metadata accessor for DOCItemCollectionGridCell());
        v19 = DOCItemCollectionGridCell.init(frame:containerView:)(0, 0.0, 0.0, 0.0, 0.0);
        type metadata accessor for DOCInlineRenameController();
        v20 = swift_allocObject();

        swift_unknownObjectRetain();
        v21 = specialized DOCInlineRenameController.init(delegate:cell:node:)(v17, v19, v5, v20);
        swift_unknownObjectRelease();
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = swift_allocObject();
        v23[2] = countAndFlagsBits;
        v23[3] = object;
        v23[4] = v22;
        v23[5] = v5;
        v23[6] = v17;
        v23[7] = v21;
        v24 = *(*v21 + 544);

        swift_unknownObjectRetain();

        v24(v5, countAndFlagsBits, object, 0, DOCGridLayout.specIconWidth.modify, 0, partial apply for closure #2 in DOCPreviewController.renameCurrentQLItem(withSuggestedName:), v23);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }
    }
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.Rename);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42[0] = v40;
    *v39 = 136315394;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BDAA00, v42);
    *(v39 + 12) = 2080;
    *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v42);
    _os_log_impl(&dword_2493AC000, v37, v38, "%s: suggested name %s was either empty or equal to current display name.", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v40, -1, -1);
    MEMORY[0x24C1FE850](v39, -1, -1);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

uint64_t closure #2 in DOCPreviewController.renameCurrentQLItem(withSuggestedName:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && !a2)
  {
    v19 = one-time initialization token for Rename;
    swift_unknownObjectRetain();
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.Rename);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BDAA00, v40);
      *(v24 + 12) = 2080;
      *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v40);
      _os_log_impl(&dword_2493AC000, v22, v23, "%s: did commit rename with success: suggestedName = %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v25, -1, -1);
      MEMORY[0x24C1FE850](v24, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      v28 = swift_allocObject();
      swift_beginAccess();
      v29 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v30 = swift_allocObject();
      v30[2] = v28;
      v30[3] = a1;
      v30[4] = a6;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = swift_allocObject();
      v32[2] = v31;
      v32[3] = partial apply for closure #2 in closure #2 in DOCPreviewController.renameCurrentQLItem(withSuggestedName:);
      v32[4] = v30;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      DOCRunInMainThread(_:)();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.Rename);

    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v40[0] = v14;
      *v13 = 136315650;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BDAA00, v40);
      *(v13 + 12) = 2080;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v40);
      *(v13 + 22) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v15 = Error.localizedDescription.getter();
        v17 = v16;
      }

      else
      {
        v17 = 0xE800000000000000;
        v15 = 0x726F727265206F4ELL;
      }

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v40);

      *(v13 + 24) = v34;
      _os_log_impl(&dword_2493AC000, v11, v12, "%s: failed to change name to %s with error: %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v14, -1, -1);
      MEMORY[0x24C1FE850](v13, -1, -1);
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v35 = result;
      v36 = swift_allocObject();
      swift_beginAccess();
      v37 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = partial apply for closure #1 in closure #2 in DOCPreviewController.renameCurrentQLItem(withSuggestedName:);
      v39[4] = v36;
      swift_retain_n();

      DOCRunInMainThread(_:)();
    }
  }

  return result;
}

void closure #1 in closure #2 in DOCPreviewController.renameCurrentQLItem(withSuggestedName:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong reloadData];
  }
}

void closure #2 in closure #2 in DOCPreviewController.renameCurrentQLItem(withSuggestedName:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCPreviewController.reload(withUpdatedNode:previousNode:)();
  }
}

void closure #1 in DOCPreviewController.reloadAfterRename(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong view];

    if (!v7)
    {
      __break(1u);
      return;
    }

    [v7 setUserInteractionEnabled_];
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _definiteTransitionCoordinator];

    v11 = swift_allocObject();
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = v11;
    aBlock[4] = partial apply for closure #1 in closure #1 in DOCPreviewController.reloadAfterRename(completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    aBlock[3] = &block_descriptor_63_1;
    v14 = _Block_copy(aBlock);

    [v10 animateAlongsideTransition:0 completion:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }
}

void closure #1 in closure #1 in DOCPreviewController.reloadAfterRename(completion:)(uint64_t a1, void (*a2)(void))
{
  a2();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong view];

    if (v4)
    {
      [v4 setUserInteractionEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall DOCPreviewController.duplicateCurrentItem()()
{
  v1 = v0;
  if ([v0 currentPreviewItem])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass() && (v2 = QLItem.node.getter()) != 0)
    {
      v3 = v2;
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = v1;
      v7[4] = partial apply for closure #1 in DOCPreviewController.duplicateCurrentItem();
      v7[5] = v4;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 1107296256;
      v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
      v7[3] = &block_descriptor_52;
      v5 = _Block_copy(v7);
      swift_unknownObjectRetain();
      v6 = v1;

      [v3 fetchParent_];
      _Block_release(v5);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void closure #1 in DOCPreviewController.duplicateCurrentItem()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (!a1 || a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    v15 = a2;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = 0xD000000000000011;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315394;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BDAA30, &v24);
      *(v18 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v17 = Error.localizedDescription.getter();
        v21 = v20;
      }

      else
      {
        v21 = 0x8000000249BDAA50;
      }

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v21, &v24);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_2493AC000, oslog, v16, "%s Duplication from Quick Look failed. Error: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v19, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v8 = objc_opt_self();
    swift_unknownObjectRetain();
    v9 = [v8 defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCOperationItemOGMd);
    v10 = *(type metadata accessor for DOCOperationItem() - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249B9A480;
    *(v12 + v11) = a3;
    swift_storeEnumTagMultiPayload();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(2u, v12, a1, 1, 2, 0, a4, partial apply for closure #1 in closure #1 in DOCPreviewController.duplicateCurrentItem(), v13);

    swift_unknownObjectRelease_n();
  }
}

void closure #1 in closure #1 in DOCPreviewController.duplicateCurrentItem()(unint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_18;
  }

  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v25 = a1;
    v26 = __CocoaSet.count.getter();
    a1 = v25;
    if (v26)
    {
      goto LABEL_4;
    }

LABEL_18:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.UI);
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BDAA30, v32);
      _os_log_impl(&dword_2493AC000, oslog, v28, "%s Duplication from Quick Look failed", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*(v3 + 16))
    {
      __break(1u);
      return;
    }

    v4 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = a2;
    v8 = MEMORY[0x277D85000];
    v9 = *((*MEMORY[0x277D85000] & *v6) + 0x150);
    swift_unknownObjectRetain();

    v11 = v9(v10);
    if (v11)
    {
      v12 = v11;
      v13 = (*((*v8 & **(v11 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection)) + 0x1C8))();
      v14 = (*((*v8 & *v6) + 0x168))(v13);
      if (v14)
      {
        v15 = v14;
        DOCNodeObserver.removeSubscriber(_:)();
      }
    }

    if ([v4 isCopying])
    {
      v16 = objc_allocWithZone(type metadata accessor for DOCNodeObserver());
      v17 = swift_unknownObjectRetain();
      v18 = DOCNodeObserver.init(observedNode:source:enableDeepObserving:)(v17, 0, 0);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = partial apply for closure #1 in closure #1 in closure #1 in DOCPreviewController.duplicateCurrentItem();
      v20[4] = v7;

      v21 = DOCNodeObserver.addSubscriber(_:)(closure #1 in DOCPreviewController.waitForDuplicateActionability(_:completionBlock:)partial apply, v20);

      v22 = (*((*v8 & *v6) + 0x170))(v21);
      (*((*v8 & **&v18[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection]) + 0x1D0))(v22);
      v23 = *((*v8 & *v6) + 0x158);
      v24 = v18;
      v23(v18);
    }

    else
    {
      closure #1 in closure #1 in closure #1 in DOCPreviewController.duplicateCurrentItem()(v4, v4);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void closure #1 in closure #1 in closure #1 in DOCPreviewController.duplicateCurrentItem()(void *a1, void *a2)
{
  v4 = [a1 fpfs_fpItem];
  if (v4)
  {
    v25 = v4;
    v5 = [a2 fpfs_fpItem];
    if (v5)
    {
      v6 = v5;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        v9 = v25;
        v10 = v6;
        specialized DOCPreviewController.reload(withDuplicatedNode:original:)(v9, v10, v8);

        return;
      }

      goto LABEL_13;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.UI);
    swift_unknownObjectRetain();
    v6 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BDAA30, v26);
      *(v20 + 12) = 2080;
      v27 = a2;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v22 = String.init<A>(describing:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v26);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_2493AC000, v6, v19, "%s Could not get FPItem duplication source node %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v20, -1, -1);
LABEL_13:

      goto LABEL_14;
    }
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);
    swift_unknownObjectRetain();
    v25 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v25, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BDAA30, v26);
      *(v13 + 12) = 2080;
      v27 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v26);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_2493AC000, v25, v12, "%s Could not get FPItem from actionable duplicate node %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v14, -1, -1);
      MEMORY[0x24C1FE850](v13, -1, -1);
LABEL_14:

      return;
    }
  }
}

void DOCPreviewController.waitForDuplicateActionability(_:completionBlock:)(void *a1, void (*a2)(void *), uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v3) + 0x150))();
  if (v9)
  {
    v10 = v9;
    v11 = (*((*v8 & **(v9 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection)) + 0x1C8))();
    v12 = (*((*v8 & *v3) + 0x168))(v11);
    if (v12)
    {
      v13 = v12;
      DOCNodeObserver.removeSubscriber(_:)();
    }
  }

  if ([a1 isCopying])
  {
    v14 = objc_allocWithZone(type metadata accessor for DOCNodeObserver());
    v15 = swift_unknownObjectRetain();
    v16 = DOCNodeObserver.init(observedNode:source:enableDeepObserving:)(v15, 0, 0);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a2;
    v18[4] = a3;

    v19 = DOCNodeObserver.addSubscriber(_:)(partial apply for closure #1 in DOCPreviewController.waitForDuplicateActionability(_:completionBlock:), v18);

    v20 = (*((*v8 & *v4) + 0x170))(v19);
    (*((*v8 & **&v16[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection]) + 0x1D0))(v20);
    v21 = *((*v8 & *v4) + 0x158);
    v22 = v16;
    v21(v16);
  }

  else
  {
    a2(a1);
  }
}

Swift::Void __swiftcall DOCPreviewController.stopDuplicateNodeObservation()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x150))();
  if (v2)
  {
    v6 = v2;
    v3 = (*((*v1 & **(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection)) + 0x1C8))();
    v4 = (*((*v1 & *v0) + 0x168))(v3);
    if (v4)
    {
      v5 = v4;
      DOCNodeObserver.removeSubscriber(_:)();
    }
  }
}

uint64_t closure #1 in DOCPreviewController.waitForDuplicateActionability(_:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v11 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = v16;
  aBlock[4] = partial apply for closure #1 in closure #1 in DOCPreviewController.waitForDuplicateActionability(_:completionBlock:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_27_0;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v14, v10, v19);
  _Block_release(v19);

  (*(v23 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v22);
}

void closure #1 in closure #1 in DOCPreviewController.waitForDuplicateActionability(_:completionBlock:)(void *a1, void (*a2)(void *))
{
  if (([a1 isCopying] & 1) == 0)
  {
    a2(a1);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = MEMORY[0x277D85000];
      v7 = (*((*MEMORY[0x277D85000] & *Strong) + 0x150))();
      if (v7)
      {
        v8 = v7;
        v9 = (*((*v6 & **(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection)) + 0x1C8))();
        v10 = (*((*v6 & *v5) + 0x168))(v9);
        if (v10)
        {
          v11 = v10;
          DOCNodeObserver.removeSubscriber(_:)();
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCPreviewController.moveCurrentItem()()
{
  v1 = v0;
  if ([v0 currentPreviewItem])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass() && (v2 = QLItem.node.getter()) != 0)
    {
      v3 = v2;
      v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x138))();
      if (v4 && (v5 = v4, [v4 copy], v5, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConfiguration), swift_dynamicCast()))
      {
        v6 = v13;
      }

      else
      {
        v6 = [objc_allocWithZone(MEMORY[0x277D061E8]) init];
      }

      [v6 setInteractionMode_];
      [v6 setForPickingDocuments_];
      [v6 setForMovingDocuments_];
      [v6 setInProcess_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_249BA0290;
      *(v7 + 32) = v3;
      v8 = objc_allocWithZone(DOCPickerContext);
      v9 = v6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v11 = [v8 initWithNodes_];

      v12 = [objc_allocWithZone(DOCDocumentPickerViewController) initWithConfiguration:v9 context:v11];
      [v12 setPickerDelegate_];
      [v1 presentViewController:v12 animated:1 completion:0];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void closure #1 in DOCPreviewController.documentPicker(_:didConfirmDocumentsAt:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = a1;
      v5 = a1;
      v6 = v3;
      DOCRunInMainThread(_:)();
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #1 in DOCPreviewController.documentPicker(_:didConfirmDocumentsAt:)(void *a1, void *a2)
{
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v32 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v32 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v19 = swift_allocObject();
  v20 = *MEMORY[0x277D85000] & *a1;
  *(v19 + 16) = xmmword_249BA0290;
  *(v19 + 32) = a2;
  aBlock = v19;
  v39 = 0;
  LOBYTE(v40) = 0;
  v21 = *(v20 + 456);
  v22 = a2;
  v21(&aBlock, 0, 0);
  outlined consume of DOCPreviewSource?(aBlock, v39, v40);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v23 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v11 + 8);
  v24(v14, v10);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = v22;
  v42 = partial apply for closure #1 in closure #1 in closure #1 in DOCPreviewController.documentPicker(_:didConfirmDocumentsAt:);
  v43 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v41 = &block_descriptor_20_0;
  v26 = _Block_copy(&aBlock);
  v27 = v22;
  v28 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v29 = v33;
  v30 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB940](v18, v9, v29, v26);
  _Block_release(v26);

  (*(v37 + 8))(v29, v30);
  (*(v35 + 8))(v9, v36);
  return (v24)(v18, v32);
}

uint64_t closure #1 in closure #1 in closure #1 in DOCPreviewController.documentPicker(_:didConfirmDocumentsAt:)(void *a1, uint64_t a2)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0xF0))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void specialized DOCPreviewController.reload(withDuplicatedNode:original:)(void *a1, void *a2, char *a3)
{
  v64 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTimeInterval();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v65 = (&v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for DispatchTime();
  MEMORY[0x28223BE20](v18, v19);
  MEMORY[0x28223BE20](v20, v21);
  v68 = a3;
  v26 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source];
  v27 = a3[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source + 16];
  if (v27 == 255)
  {
    return;
  }

  v63 = v14;
  v28 = *v26;
  v29 = *(v26 + 1);
  if (v27)
  {
    outlined copy of DOCPreviewSource(*v26, *(v26 + 1), 1);

    return;
  }

  v53 = v25;
  v54 = &v53 - v23;
  v55 = v24;
  v56 = v11;
  v57 = v9;
  v58 = v10;
  v75 = v28;
  v61 = v22;
  v62 = v28 >> 62;
  v59 = v6;
  v60 = v5;
  if (v28 >> 62)
  {
LABEL_33:
    v30 = __CocoaSet.count.getter();
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  outlined copy of DOCPreviewSource(v28, v29, 0);
  outlined copy of DOCPreviewSource(v28, v29, 0);
  v31 = 0;
  while (1)
  {
    if (v30 == v31)
    {
      outlined consume of DOCPreviewSource?(v28, v29, v27);
      v35 = v68;
      v31 = [v68 currentPreviewItemIndex];
      goto LABEL_20;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x24C1FC540](v31, v28);
    }

    else
    {
      if (v31 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v32 = *(v28 + 8 * v31 + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v33 = specialized DOCNode.isEqualTo(node:)(v32, a2);
    swift_unknownObjectRelease();
    if (v33)
    {
      break;
    }

    if (__OFADD__(v31++, 1))
    {
      goto LABEL_32;
    }
  }

  outlined consume of DOCPreviewSource?(v28, v29, v27);
  v35 = v68;
LABEL_20:
  v36 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v62)
  {
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v37 < v36)
  {
    goto LABEL_35;
  }

  if (v36 < 0)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v38 = v64;
  specialized Array.replaceSubrange<A>(_:with:)(v31 + 1, v31 + 1, v38);

  aBlock = v75;
  v70 = 0;
  LOBYTE(v71) = 0;
  (*((*MEMORY[0x277D85000] & *v35) + 0x1C8))(&aBlock, v31, 0);
  outlined consume of DOCPreviewSource?(aBlock, v70, v71);
  if ([v35 respondsToSelector_])
  {
    [v35 setCurrentPreviewItemIndex:v36 animated:1];
  }

  else
  {
    [v35 setCurrentPreviewItemIndex_];
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v68 = static OS_dispatch_queue.main.getter();
  v39 = v53;
  static DispatchTime.now()();
  v41 = v65;
  v40 = v66;
  *v65 = 1;
  v42 = v67;
  (*(v40 + 104))(v41, *MEMORY[0x277D85188], v67);
  v43 = v54;
  MEMORY[0x24C1FAA90](v39, v41);
  (*(v40 + 8))(v41, v42);
  v44 = *(v55 + 8);
  v45 = v61;
  v44(v39, v61);
  v46 = swift_allocObject();
  *(v46 + 16) = v35;
  v73 = partial apply for closure #2 in DOCPreviewController.reload(withDuplicatedNode:original:);
  v74 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v70 = 1107296256;
  v71 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v72 = &block_descriptor_42;
  v47 = _Block_copy(&aBlock);
  v48 = v35;

  v49 = v63;
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v50 = v57;
  v51 = v60;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v52 = v68;
  MEMORY[0x24C1FB940](v43, v49, v50, v47);
  _Block_release(v47);

  (*(v59 + 8))(v50, v51);
  (*(v56 + 8))(v49, v58);
  v44(v43, v45);
}

uint64_t specialized DOCInlineRenameController.init(delegate:cell:node:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 80) = MEMORY[0x277D84F90];
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 1;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 64) = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(a4 + 24) = &protocol witness table for RenameControllerDelegate;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();

  v6 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:a4 action:sel_didTapOverlay];
  v7 = [objc_allocWithZone(type metadata accessor for DOCInlineRenameOverlayView()) initWithFrame_];
  v8 = (*(*a4 + 296))([v7 setTranslatesAutoresizingMaskIntoConstraints_]);
  (*((*MEMORY[0x277D85000] & *v7) + 0x60))(v8);
  [v7 addGestureRecognizer_];

  swift_beginAccess();
  v9 = *(a4 + 32);
  *(a4 + 32) = v7;

  v10 = DOCInlineRenameController.notificationsController.getter();
  if (one-time initialization token for DOCInlineRenameControllerWillBeginRename != -1)
  {
    swift_once();
  }

  v11 = static NSNotificationName.DOCInlineRenameControllerWillBeginRename;
  v12 = [objc_opt_self() mainQueue];
  (*(*v10 + 144))(v11, &v14, v12, closure #1 in DOCInlineRenameController.init(delegate:cell:node:), 0);

  outlined destroy of Any?(&v14);
  return a4;
}

uint64_t specialized DOCPreviewController.documentPicker(_:didConfirmDocumentsAt:)(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = result;
    v2 = *(type metadata accessor for URL() - 8);
    v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v4 = [objc_opt_self() defaultManager];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v1 + v3, partial apply for closure #1 in DOCPreviewController.documentPicker(_:didConfirmDocumentsAt:), v5);
  }

  return result;
}

void outlined consume of DOCPreviewSource?(uint64_t a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of DOCPreviewSource(a1, a2, a3 & 1);
  }
}

void outlined consume of DOCPreviewSource(uint64_t a1, void *a2, char a3)
{

  if (a3)
  {
  }
}

id outlined copy of DOCPreviewSource(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {

    return a2;
  }

  else
  {
  }
}

Swift::Int DOCChainOperation.DOCChainOperationMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t DOCChainOperation.mode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_mode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t DOCChainOperation.mode.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_mode;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t DOCChainOperation.init(operations:)(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_operationQueue;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v4 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_latestOperationResult];
  *v4 = 0u;
  v4[1] = 0u;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_latestOperationError] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_mode] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_operations] = a1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for DOCChainOperation();

  result = objc_msgSendSuper2(&v15, sel_init);
  v6 = result;
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_12:

    [*&v6[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_operationQueue] setMaxConcurrentOperationCount_];
    return v6;
  }

  result = __CocoaSet.count.getter();
  v7 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D85000];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v8, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      type metadata accessor for DOCChainableOperation();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = *((*v9 & *v12) + 0x100);
        v14 = v6;
        v13(v6);
      }

      ++v8;
    }

    while (v7 != v8);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCChainOperation.main()()
{
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_operations);
  v5 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_52;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v31 = MEMORY[0x24C1FC540](0, v4);
LABEL_44:
    v32 = v31;
    (*((*MEMORY[0x277D85000] & *v31) + 0xC8))();

    v33 = *(v41 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_operationQueue);
    if (v1)
    {
      type metadata accessor for NSOperation();

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSOperation();
    }

    type metadata accessor for NSOperation();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v33 addOperations:isa waitUntilFinished:0];

    return;
  }

  while (2)
  {
    v42 = v4 & 0xC000000000000001;
    if ((v4 & 0xC000000000000001) == 0 || v6 == 1)
    {
    }

    else
    {
      type metadata accessor for DOCOperation();

      v8 = 1;
      do
      {
        v9 = v8 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v8);
        v8 = v9;
      }

      while (v6 != v9);
    }

    if (!v5)
    {
      v10 = v4 & 0xFFFFFFFFFFFFFF8;
      v11 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
      v1 = 1;
      v12 = (2 * v6) | 1;
      if ((v12 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_15:
      v3 = v5;
      v2 = v11;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        swift_unknownObjectRelease();
        v17 = MEMORY[0x277D84F90];
      }

      v18 = *(v17 + 16);

      if (!__OFSUB__(v12 >> 1, v1))
      {
        if (v18 == (v12 >> 1) - v1)
        {
          v16 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v16)
          {
            v16 = MEMORY[0x277D84F90];
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v10 = _CocoaArrayWrapper.subscript.getter();
    v1 = v13;
    v12 = v14;
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_14:
    while (1)
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(v10, v11, v1, v12);
      v16 = v15;
LABEL_21:
      swift_unknownObjectRelease();
LABEL_22:
      v19 = specialized _arrayForceCast<A, B>(_:)(v16);

      specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of DOCChainOperation.main());
      v43 = v19;
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      v35 = v5;
      if (v5)
      {
        break;
      }

      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_26;
      }

LABEL_37:
      v1 = v35;
      if (v35)
      {
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v10)
      {
        goto LABEL_57;
      }

      if (v42)
      {
        goto LABEL_58;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = *(v4 + 32);
        goto LABEL_44;
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      swift_unknownObjectRelease();
      v11 = v2;
      v5 = v3;
    }

    v12 = __CocoaSet.count.getter();
    if (!v12)
    {
      goto LABEL_37;
    }

LABEL_26:
    v20 = 0;
    v38 = v4;
    v39 = v4 & 0xFFFFFFFFFFFFFF8;
    v36 = v19 + 32;
    v37 = v12;
    while (v42)
    {
      v25 = MEMORY[0x24C1FC540](v20, v4);
LABEL_31:
      v26 = v25;
      v27 = *(v43 + 16);
      if (v20 == v27)
      {

        goto LABEL_37;
      }

      if (v20 >= v27)
      {
        goto LABEL_51;
      }

      v28 = *(v36 + 8 * v20);
      v29 = *((*MEMORY[0x277D85000] & *v25) + 0xC0);
      v30 = v28;
      v29();
      if (v28)
      {
        [v30 addDependency_];
      }

      ++v20;
      v21 = MEMORY[0x277D85000];
      v3 = (*((*MEMORY[0x277D85000] & *v26) + 0xA8))();
      v23 = v22;
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v2 = swift_allocObject();
      v2[2] = v24;
      v2[3] = v40;
      v2[4] = v3;
      v2[5] = v23;
      v2[6] = v5;
      v1 = *((*v21 & *v26) + 0xB0);

      outlined copy of (@escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed Error) -> ())?(v3, v23);

      (v1)(partial apply for closure #1 in DOCChainOperation.main(), v2);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);

      v12 = v37;
      v4 = v38;
      if (v37 == v20)
      {
        goto LABEL_37;
      }
    }

    if (v20 < *(v39 + 16))
    {
      v25 = *(v4 + 8 * v20 + 32);
      goto LABEL_31;
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    v34 = __CocoaSet.count.getter();
    if (v34 < 1)
    {
      __break(1u);
    }

    else
    {
      v6 = v34;
      if (__CocoaSet.count.getter() >= 1)
      {
        if (__CocoaSet.count.getter() < v6)
        {
          __break(1u);
          goto LABEL_56;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
}

void closure #1 in DOCChainOperation.main()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  swift_beginAccess();
  v11 = MEMORY[0x277D85000];
  if ((*(a4 + 16) & 1) == 0)
  {
    outlined init with copy of Any?(a1, v26);
    v12 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_latestOperationResult;
    swift_beginAccess();
    outlined assign with take of Any?(v26, v10 + v12);
    swift_endAccess();
    v13 = *(v10 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_latestOperationError);
    *(v10 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_latestOperationError) = a2;
    v14 = a2;

    v15 = v11;
    v16 = *(a1 + 24);
    (*((*v15 & *v10) + 0x148))(v26);
    if (LOBYTE(v26[0]))
    {
      if (LOBYTE(v26[0]) != 1 || !v16)
      {
        goto LABEL_10;
      }
    }

    else if (v16)
    {
LABEL_10:
      v11 = MEMORY[0x277D85000];
      goto LABEL_11;
    }

    swift_beginAccess();
    *(a4 + 16) = 1;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_operationQueue);

      [v19 cancelAllOperations];
    }

    goto LABEL_10;
  }

LABEL_11:
  if (a5)
  {

    a5(a1, a2);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    (*((*v11 & *v20) + 0xC8))();
  }

  else
  {
    v22 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_latestOperationResult;
    swift_beginAccess();
    outlined init with copy of Any?(v10 + v22, v26);
    v23 = *(v10 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_latestOperationError);
    v24 = *((*v11 & *v10) + 0xE0);
    v25 = v23;
    v24(v26, v23);

    outlined destroy of Any?(v26);
  }
}

id DOCChainOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void DOCChainOperation.__ivar_destroyer()
{

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_latestOperationResult);
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_latestOperationError);
}

void DOCChainableOperation.chainOperation.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCChainableOperation.chainOperation.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCChainableOperation_chainOperation;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

Swift::Void __swiftcall DOCChainableOperation.main()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v3 = v2();
  if (!v3)
  {
    memset(v10, 0, sizeof(v10));
    v6 = v2();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_latestOperationResult;
  v5 = v3;
  swift_beginAccess();
  outlined init with copy of Any?(v5 + v4, v10);

  v6 = v2();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCChainOperation_latestOperationError);
  v8 = v6;
  v9 = v7;

LABEL_6:
  (*((*v1 & *v0) + 0x120))(v10, v7);

  outlined destroy of Any?(v10);
}

id DOCChainableOperation.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCChainableOperation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCChainOperation.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t type metadata accessor for NSOperation()
{
  result = lazy cache variable for type metadata for NSOperation;
  if (!lazy cache variable for type metadata for NSOperation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSOperation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCChainOperation.DOCChainOperationMode and conformance DOCChainOperation.DOCChainOperationMode()
{
  result = lazy protocol witness table cache variable for type DOCChainOperation.DOCChainOperationMode and conformance DOCChainOperation.DOCChainOperationMode;
  if (!lazy protocol witness table cache variable for type DOCChainOperation.DOCChainOperationMode and conformance DOCChainOperation.DOCChainOperationMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCChainOperation.DOCChainOperationMode and conformance DOCChainOperation.DOCChainOperationMode);
  }

  return result;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

DocumentManagerExecutables::ScanningError_optional __swiftcall ScanningError.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ScanningError.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t ScanningError.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7553746F4E707061;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ScanningError(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x8000000249BC61A0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000249BC61A0;
  }

  else
  {
    v6 = 0x8000000249BC61C0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7553746F4E707061;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEF646574726F7070;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v4 = 0x8000000249BC61C0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x7553746F4E707061;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEF646574726F7070;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ScanningError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ScanningError()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScanningError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ScanningError(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF646574726F7070;
  v4 = 0xD000000000000012;
  v5 = 0x8000000249BC61A0;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x8000000249BC61C0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x7553746F4E707061;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t DOCSidebarViewController.documentCameraViewController(_:didFinishWith:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = a1;
  v9 = v4;
  v10 = a1;
  specialized DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:)(a2, a4, v8);
}

id DOCFullDocumentManagerViewController.doc_documentScannerReceivingTarget.getter()
{
  v1 = v0;
  v2 = [v0 effectiveBrowserViewController];
  v3 = v2;
  if (v2)
  {
    v4 = (*((*MEMORY[0x277D85000] & *v2) + 0xE8))();

    if (v4)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v3 = swift_dynamicCastClass();
      if (!v3)
      {
      }
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = [v3 doc_documentScannerReceivingTarget];

  result = v5;
  if (!v5)
  {
    v7.receiver = v1;
    v7.super_class = DOCFullDocumentManagerViewController;
    return objc_msgSendSuper2(&v7, sel_doc_documentScannerReceivingTarget);
  }

  return result;
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.documentCameraViewControllerDidCancel(_:)(VNDocumentCameraViewController *a1)
{
  v3 = [v1 effectiveBrowserViewController];
  if (v3)
  {
    v4 = v3;
    v5 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

    if (v5)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v6 = swift_dynamicCastClass();

      if (v6)
      {

        [(VNDocumentCameraViewController *)a1 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.documentCameraViewController(_:didFinishWith:)(VNDocumentCameraViewController *_, VNDocumentCameraScan didFinishWith)
{
  v5 = [v2 effectiveBrowserViewController];
  if (v5)
  {
    v6 = v5;
    v12 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();

    if (v12)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = _;
        v10 = v12;
        v11 = _;
        specialized DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:)(didFinishWith.super.isa, closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:)partial apply, v9);
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DOCFullDocumentManagerViewController.triggerScan()()
{
  v1 = [v0 configuration];
  v2 = [v1 isFilesApp];

  if (!v2)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v3 = [v0 configuration];
  v4 = [v3 isPickerUI];

  if (v4)
  {
    v5 = 1;
LABEL_5:
    lazy protocol witness table accessor for type ScanningError and conformance ScanningError();
    swift_allocError();
    *v6 = v5;
    swift_willThrow();
    return;
  }

  if ((specialized static DOCDocumentScannerUtil.canPresentScanner.getter() & 1) == 0)
  {
    v5 = 2;
    goto LABEL_5;
  }

  specialized static DOCDocumentScannerUtil.presentScanner(on:)(v0);
}

void DOCSidebarViewController.triggerScan()(void *a1)
{
  v2 = *&v1[*a1];
  if (![v2 isFilesApp])
  {
    v3 = 0;
    goto LABEL_5;
  }

  if ([v2 isPickerUI])
  {
    v3 = 1;
LABEL_5:
    lazy protocol witness table accessor for type ScanningError and conformance ScanningError();
    swift_allocError();
    *v4 = v3;
    swift_willThrow();
    return;
  }

  if ((specialized static DOCDocumentScannerUtil.canPresentScanner.getter() & 1) == 0)
  {
    v3 = 2;
    goto LABEL_5;
  }

  specialized static DOCDocumentScannerUtil.presentScanner(on:)(v1);
}

void one-time initialization function for scanDocumentActionTitle()
{
  v0 = _DocumentManagerBundle();
  if (v0)
  {
    v1 = v0;
    v6._object = 0x8000000249BDAC80;
    v2._countAndFlagsBits = 0x636F44206E616353;
    v2._object = 0xEE0073746E656D75;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0xD00000000000003CLL;
    v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v6);

    static DOCDocumentScannerUtil.scanDocumentActionTitle = v5;
  }

  else
  {
    __break(1u);
  }
}

__int128 *DOCDocumentScannerUtil.scanDocumentActionTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for scanDocumentActionTitle != -1)
  {
    swift_once();
  }

  return &static DOCDocumentScannerUtil.scanDocumentActionTitle;
}

uint64_t static DOCDocumentScannerUtil.scanDocumentActionTitle.getter()
{
  if (one-time initialization token for scanDocumentActionTitle != -1)
  {
    swift_once();
  }

  v0 = static DOCDocumentScannerUtil.scanDocumentActionTitle;

  return v0;
}

id static UIAlertAction.doc_scanDocumentAlertAction(withPresentingHandler:)()
{
  if ((specialized static DOCDocumentScannerUtil.canPresentScanner.getter() & 1) == 0)
  {
    return 0;
  }

  if (one-time initialization token for scanDocumentActionTitle != -1)
  {
    swift_once();
  }

  v0 = static DOCDocumentScannerUtil.scanDocumentActionTitle;
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v2 = MEMORY[0x24C1FAD20](v0, *(&v0 + 1));
  v6[4] = partial apply for closure #1 in static UIAlertAction.doc_scanDocumentAlertAction(withPresentingHandler:);
  v6[5] = v1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v6[3] = &block_descriptor_53;
  v3 = _Block_copy(v6);

  v4 = [objc_opt_self() actionWithTitle:v2 style:0 handler:v3];
  _Block_release(v3);

  return v4;
}

uint64_t static UIAction.doc_scanDocumentAction(for:presentingHandler:)(void *a1)
{
  swift_getObjectType();

  return specialized static UIAction.doc_scanDocumentAction(for:presentingHandler:)(a1);
}

void closure #1 in static UIAlertAction.doc_scanDocumentAlertAction(withPresentingHandler:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  specialized static DOCDocumentScannerUtil.presentScanner(on:)(Strong);
}

uint64_t closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:)(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v29 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8, v15);
  v17 = &v28 - v16;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v18 = static OS_dispatch_queue.main.getter();
  outlined init with copy of URL?(a1, v17);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  outlined init with take of URL?(v17, v21 + v19);
  v23 = v28;
  v22 = v29;
  *(v21 + v20) = v28;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = partial apply for closure #1 in closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_32_0;
  v24 = _Block_copy(aBlock);
  v25 = v23;
  v26 = v22;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v11, v7, v24);
  _Block_release(v24);

  (*(v31 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v30);
}

void closure #1 in closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v35[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of URL?(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v16;
    v17 = _DocumentManagerBundle();
    if (v17)
    {
      v18 = v17;
      v36._object = 0x8000000249BDACF0;
      v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v19.value._object = 0xEB00000000656C62;
      v20._object = 0x8000000249BDACC0;
      v36._countAndFlagsBits = 0xD000000000000033;
      v20._countAndFlagsBits = 0xD000000000000022;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v36);

      *(inited + 48) = v22;
      v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(inited + 32, &_sSS_SStMd);
      v24 = *MEMORY[0x277D06090];
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v23);

      v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v27 = [v25 initWithDomain:v24 code:1 userInfo:isa];

      v28 = v27;
      v29 = _convertErrorToNSError(_:)();

      DOCPresentAlertForError();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v30 = [a2 doc_documentScannerReceivingTarget];
    if (v30)
    {
      v32 = v30;
      URL._bridgeToObjectiveC()(v31);
      v34 = v33;
      [v32 importScannedDocumentAt:v33 presentingController:a3 importToCurrentLocation:1];
      swift_unknownObjectRelease();
    }

    (*(v11 + 8))(v14, v10);
  }
}

uint64_t specialized static UIAction.doc_scanDocumentAction(for:presentingHandler:)(void *a1)
{
  if (![a1 isFilesApp] || (objc_msgSend(a1, sel_isPickerUI) & 1) != 0 || (specialized static DOCDocumentScannerUtil.canPresentScanner.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = MEMORY[0x24C1FAD20](0xD000000000000013, 0x8000000249BDAC40);
  v3 = [objc_opt_self() systemImageNamed_];

  if (one-time initialization token for scanDocumentActionTitle != -1)
  {
    swift_once();
  }

  MEMORY[0x24C1FAD20](0xD000000000000016, 0x8000000249BDAC60);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t specialized static DOCDocumentScannerUtil.canPresentScanner.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == 0xD000000000000016 && 0x8000000249BD8A40 == v4)
    {
      LODWORD(v1) = 1;
    }

    else
    {
      LODWORD(v1) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return [objc_opt_self() isSupported] & v1;
}

unint64_t lazy protocol witness table accessor for type ScanningError and conformance ScanningError()
{
  result = lazy protocol witness table cache variable for type ScanningError and conformance ScanningError;
  if (!lazy protocol witness table cache variable for type ScanningError and conformance ScanningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScanningError and conformance ScanningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScanningError and conformance ScanningError;
  if (!lazy protocol witness table cache variable for type ScanningError and conformance ScanningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScanningError and conformance ScanningError);
  }

  return result;
}

uint64_t specialized static DOCDocumentScannerUtil.isCurrentlyScanning(_:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 presentedViewController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for VNDocumentCameraViewController);
  if ([v2 isKindOfClass:swift_getObjCClassFromMetadata()])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.UI);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2493AC000, v4, v5, "[Document Scanner] Scanner already presented, ignoring request", v6, 2u);
      MEMORY[0x24C1FE850](v6, -1, -1);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
    v4 = v2;
  }

  return v7;
}

void specialized static DOCDocumentScannerUtil.presentScanner(on:)(void *a1)
{
  if (!a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.UI);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v7, "[Document Scanner] nil presenting vc, can not present document scanner", v8, 2u);
      MEMORY[0x24C1FE850](v8, -1, -1);
    }

    goto LABEL_19;
  }

  v2 = a1;
  if (specialized static DOCDocumentScannerUtil.isCurrentlyScanning(_:)(a1))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.UI);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v4, "[Document Scanner] Scanner already presented, ignoring request", v5, 2u);
      MEMORY[0x24C1FE850](v5, -1, -1);
    }

    goto LABEL_18;
  }

  oslog = [objc_allocWithZone(MEMORY[0x277D05D68]) init];
  [oslog setDelegate:v2];
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 6)
  {
    v11 = 2;
  }

  else
  {
    v11 = 5;
  }

  [oslog setModalPresentationStyle:v11];
  v12 = [oslog view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_23;
  }

  v13 = v12;
  v14 = [v2 view];
  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v14;
  v16 = [v14 tintColor];

  if (!v16)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v17 = [objc_opt_self() _doc_safeTintColor_];

  [v13 setTintColor_];
  [v2 presentViewController:oslog animated:1 completion:0];
LABEL_18:

LABEL_19:
}

void partial apply for closure #1 in closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:)(v0 + v2, v4, v5);
}

void *makeDOCDeleteOperation(nodes:originalOperation:undoManager:)(unint64_t a1, uint64_t a2, void *a3)
{
  if ([objc_opt_self() useFIOperations])
  {
    objc_allocWithZone(type metadata accessor for DOC_FIDeleteOperation());
    swift_unknownObjectRetain();
    v6 = a3;

    return DOC_FIDeleteOperation.init(nodes:originalOperation:undoManager:)(v7, a2, v6);
  }

  else
  {
    result = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (result)
    {
      v9 = result;
      objc_allocWithZone(type metadata accessor for DOCDeleteOperation());
      swift_unknownObjectRetain();
      return DOCDeleteOperation.init(items:originalOperation:undoManager:)(v9, a2, a3);
    }
  }

  return result;
}

uint64_t (*protocol witness for SomeOperation.actionCompletionBlock.modify in conformance DOC_FIDeleteOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance DOC_FIDeleteOperation;
}

uint64_t (*protocol witness for SomeOperation.qualityOfService.modify in conformance DOC_FIDeleteOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xA0))();
  return protocol witness for DOCFileOperationsProviding.didUpdateInProgressFileOperationsHandler.modify in conformance DOCFileProviderSyncStateProvider;
}

uint64_t key path getter for DOC_FIDeleteOperation.actionCompletionBlock : DOC_FIDeleteOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOC_FIDeleteOperation.actionCompletionBlock : DOC_FIDeleteOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOC_FIDeleteOperation.actionCompletionBlock.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_actionCompletionBlock);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1);
  return v2;
}

uint64_t DOC_FIDeleteOperation.actionCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_actionCompletionBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

id DOC_FIDeleteOperation.qualityOfService.getter()
{
  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_fiOperation);
  if (result)
  {
    return [result qualityOfService];
  }

  __break(1u);
  return result;
}

id DOC_FIDeleteOperation.qualityOfService.setter(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_fiOperation);
  if (result)
  {
    return [result setQualityOfService_];
  }

  __break(1u);
  return result;
}

void *DOC_FIDeleteOperation.qualityOfService.modify(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_fiOperation;
  a1[1] = v1;
  a1[2] = v3;
  result = *(v1 + v3);
  if (result)
  {
    *a1 = [result qualityOfService];
    return DOC_FIDeleteOperation.qualityOfService.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DOC_FIDeleteOperation.qualityOfService.modify(void *result, char a2)
{
  v2 = *(result[1] + result[2]);
  if (a2)
  {
    if (v2)
    {
      return [v2 setQualityOfService_];
    }

    __break(1u);
  }

  if (v2)
  {
    return [v2 setQualityOfService_];
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOC_FIDeleteOperation.schedule()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_fiOperation);
  if (v1)
  {
    [v1 schedule];
  }
}

uint64_t DOC_FIDeleteOperation.init(nodes:originalOperation:undoManager:)(unint64_t a1, uint64_t a2, void *a3)
{
  v7 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_actionCompletionBlock];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &unk_27EEEA000;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_fiOperation] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_nodes] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_originalOperation] = a2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_undoManager] = a3;
  v30.receiver = v3;
  v30.super_class = type metadata accessor for DOC_FIDeleteOperation();

  swift_unknownObjectRetain();
  v9 = a3;
  v10 = objc_msgSendSuper2(&v30, sel_init);
  v11 = a1 >> 62;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_19:
    v20 = v10;
LABEL_20:
    if (v11)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

      _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      if (swift_dynamicCastMetatype() || (v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
      }

      else
      {
        v28 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        do
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          v28 += 8;
          --v27;
        }

        while (v27);

        v8 = &unk_27EEEA000;
      }
    }

    v21 = objc_allocWithZone(MEMORY[0x277D046E0]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = [v21 initWithSourceItems_];
    goto LABEL_25;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v29 = v10;
    MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = v10;
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v14 = DOCNode.isFINode.getter();
  swift_unknownObjectRelease();
  if (!v14)
  {
    goto LABEL_20;
  }

  if (v11)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);

    _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
    if (swift_dynamicCastMetatype() || (v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
    }

    else
    {
      v19 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
      do
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v19 += 8;
        --v18;
      }

      while (v18);

      v8 = &unk_27EEEA000;
    }
  }

  v15 = objc_allocWithZone(MEMORY[0x277D046E0]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v15 initWithSourceNodes_];
LABEL_25:
  v22 = v17;

  v23 = v8[53];
  v24 = *(v10 + v23);
  *(v10 + v23) = v22;

  v25 = MEMORY[0x277D85000];
  v26 = (*((*MEMORY[0x277D85000] & *v10) + 0xD0))();
  if (a2)
  {
    (*((*v25 & *v10) + 0xF0))(v26);
    swift_unknownObjectRelease();
  }

  else
  {
    (*((*v25 & *v10) + 0xF8))(v26);
  }

  return v10;
}

void *DOC_FIDeleteOperation.operationForRedoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_nodes);
  if (v1 >> 62)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_nodes);
    v4 = __CocoaSet.count.getter();
    v1 = v3;
    if (v4 >= 1)
    {
      return makeDOCDeleteOperation(nodes:originalOperation:undoManager:)(v1, *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_originalOperation), *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_undoManager));
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    return makeDOCDeleteOperation(nodes:originalOperation:undoManager:)(v1, *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_originalOperation), *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_undoManager));
  }

  return 0;
}

id DOC_FIDeleteOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *DOCDeleteOperation.init(items:originalOperation:undoManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_items] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_originalOperation] = a2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_undoManager] = a3;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

  v6 = a3;
  swift_unknownObjectRetain();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14.receiver = v3;
  v14.super_class = type metadata accessor for DOCDeleteOperation();
  v8 = objc_msgSendSuper2(&v14, sel_initWithItems_, isa);

  if (a2)
  {
    v9 = *((*MEMORY[0x277D85000] & *v8) + 0x88);
    v10 = v8;
    v9();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = *((*MEMORY[0x277D85000] & *v8) + 0x90);
    v12 = v8;
    v11();
  }

  return v8;
}

void *DOCDeleteOperation.operationForRedoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_items);
  if (v1 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_originalOperation);
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_undoManager);
    v4 = objc_allocWithZone(type metadata accessor for DOCDeleteOperation());
    swift_unknownObjectRetain();
    v5 = v3;

    return DOCDeleteOperation.init(items:originalOperation:undoManager:)(v6, v2, v5);
  }

  return 0;
}

id DOC_FIDeleteOperation.operationForUndoing()(void *a1, void *a2)
{
  [*(v2 + *a1) setShouldRemoveAllActions_];
  result = *(v2 + *a2);
  if (result)
  {
    return [result operationForRedoing];
  }

  return result;
}

id @objc DOC_FIDeleteOperation.operationForUndoing()(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *&a1[*a3];
  v6 = a1;
  [v5 setShouldRemoveAllActions_];
  v7 = *&v6[*a4];
  if (v7)
  {
    v8 = [v7 operationForRedoing];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id DOC_FIDeleteOperation.clearUndoStack()(void *a1)
{
  v2 = *(v1 + *a1);
  if ([v2 isUndoing])
  {
    v4 = sel_setShouldRemoveAllActions_;
    v5 = v2;
    v3 = 1;
  }

  else
  {
    v4 = sel_removeAllActions;
    v5 = v2;
  }

  return [v5 v4];
}

id DOCDeleteOperation.__allocating_init(items:)()
{
  v1 = objc_allocWithZone(v0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithItems_];

  return v3;
}

id DOC_FIDeleteOperation.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      specialized Set._Variant.insert(_:)(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    lazy protocol witness table accessor for type String and conformance String();
    v3 = (v2 + 40);
    do
    {
      v4 = *v3;
      v7[0] = *(v3 - 1);
      v5 = v7[0];
      v7[1] = v4;
      swift_bridgeObjectRetain_n();
      StringProtocol.localizedLowercase.getter();
      v6 = String.doc_tokens()();

      swift_beginAccess();
      specialized Set._Variant.insert(_:)(v7, v5, v4, v6);
      swift_endAccess();

      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}