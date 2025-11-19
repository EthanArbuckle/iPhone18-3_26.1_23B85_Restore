void closure #1 in FPQueryCollection.updateQueryFiltersForNewApps()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong doc_restartObservation];
  }
}

void @objc FPQueryCollection.updateQueryFiltersForNewApps()(void *a1)
{
  v1 = a1;
  FPQueryCollection.updateQueryFiltersForNewApps()();
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd);
  MEMORY[0x28223BE20](v12, v13);
  v17 = &v60 - v16;
  v67 = *(a1 + 16);
  if (!v67)
  {
    goto LABEL_22;
  }

  v18 = &v17[*(v14 + 48)];
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v66 = *(v15 + 72);
  v68 = a1;
  v61 = v19;
  v62 = v3;
  outlined init with copy of DOCGridLayout.Spec?(a1 + v19, &v60 - v16, &_s10Foundation3URLV_SStMd);
  v63 = v8;
  v69 = *(v8 + 32);
  v70 = v7;
  v69(v11, v17, v7);
  v65 = v18;
  v20 = *v18;
  v21 = *(v18 + 1);
  v71 = a3;
  v22 = *a3;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
  v25 = *(v22 + 16);
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
  if (*(v22 + 24) < v28)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, a2 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    if ((v29 & 1) != (v30 & 1))
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

  v33 = v23;
  specialized _NativeDictionary.copy()();
  v23 = v33;
  if (v29)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v74 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v63 + 8))(v11, v70);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v34 = v70;
  v35 = *v71;
  *(*v71 + 8 * (v23 >> 6) + 64) |= 1 << v23;
  v36 = v35[6];
  v64 = *(v63 + 72);
  v37 = v23;
  v69((v36 + v64 * v23), v11, v34);
  v38 = (v35[7] + 16 * v37);
  *v38 = v20;
  v38[1] = v21;
  v39 = v35[2];
  v27 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v27)
  {
    v35[2] = v40;
    v41 = v68;
    if (v67 == 1)
    {
LABEL_22:

      return;
    }

    v42 = v68 + v66 + v61;
    v43 = 1;
    while (v43 < *(v41 + 16))
    {
      outlined init with copy of DOCGridLayout.Spec?(v42, v17, &_s10Foundation3URLV_SStMd);
      v69(v11, v17, v70);
      v44 = *v65;
      v45 = *(v65 + 1);
      v46 = *v71;
      v47 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      v49 = v46[2];
      v50 = (v48 & 1) == 0;
      v27 = __OFADD__(v49, v50);
      v51 = v49 + v50;
      if (v27)
      {
        goto LABEL_23;
      }

      v52 = v48;
      if (v46[3] < v51)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, 1);
        v47 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
        if ((v52 & 1) != (v53 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v52)
      {
        goto LABEL_9;
      }

      v54 = v70;
      v55 = *v71;
      *(*v71 + 8 * (v47 >> 6) + 64) |= 1 << v47;
      v56 = v47;
      v69((v55[6] + v64 * v47), v11, v54);
      v57 = (v55[7] + 16 * v56);
      *v57 = v44;
      v57[1] = v45;
      v58 = v55[2];
      v27 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v27)
      {
        goto LABEL_24;
      }

      ++v43;
      v55[2] = v59;
      v42 += v66;
      v41 = v68;
      if (v67 == v43)
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
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x24C1FAEA0](0xD00000000000001BLL, 0x8000000249BE9630);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for DOCOperationItem()
{
  result = type metadata singleton initialization cache for DOCOperationItem;
  if (!type metadata singleton initialization cache for DOCOperationItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of DOCOperationItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCOperationItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = [objc_opt_self() shared];
  v18 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
  swift_unknownObjectRetain();

  v19 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(a1, a2, a3, 0, a4, v17, v18);

  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a11;
  *(v20 + 40) = v16;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = a8;
  *(v20 + 80) = a9;
  *(v20 + 88) = a10;
  v21 = *((*MEMORY[0x277D85000] & *v19) + 0x190);

  v22 = a11;
  v23 = v19;

  v24 = a5;

  v25 = MEMORY[0x277D85000];
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a9);
  v21(_sSo13FPItemManagerC08DocumentB11ExecutablesE13performRename4node11newFileName22shouldDonateAppIntents15alertPresenting25requiresAlertPresentation10completion13finishedBlockySo7DOCNode_p_SSSbSo16UIViewControllerCSbys5Error_pSgcySoAL_pSg_APtcSgtFyAC18DOCRenameOperationC_AQtcfU_TA_1, v20);
  v26 = *((*v25 & *v19) + 0x178);

  v26(_sSo13FPItemManagerC08DocumentB11ExecutablesE13performRename4node11newFileName22shouldDonateAppIntents15alertPresenting25requiresAlertPresentation10completion13finishedBlockySo7DOCNode_p_SSSbSo16UIViewControllerCSbys5Error_pSgcySoAL_pSg_APtcSgtFSo16FIOperationReplyCSgAC18DOCRenameOperationC_So011FIOperationZ0CSgAPtcfU0_TA_0, v16);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.Rename);
  v37 = v19;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38 = v32;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x8000000249BD25A0, &v38);
    *(v30 + 12) = 2112;
    *(v30 + 14) = v37;
    *v31 = v23;
    v33 = v37;
    _os_log_impl(&dword_2493AC000, v28, v29, "%s: Adding Rename Operation %@", v30, 0x16u);
    outlined destroy of CharacterSet?(v31, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x24C1FE850](v32, -1, -1);
    MEMORY[0x24C1FE850](v30, -1, -1);
  }

  (*((*v25 & *v37) + 0x1B8))();
}

void specialized FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = [objc_opt_self() shared];
  v17 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
  swift_unknownObjectRetain();

  v18 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(a1, a2, a3, 1, a4, v16, v17);

  v19 = swift_allocObject();
  *(v19 + 16) = a11;
  *(v19 + 24) = v15;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a7;
  *(v19 + 72) = a8;
  *(v19 + 80) = a9;
  *(v19 + 88) = a10;
  v20 = *((*MEMORY[0x277D85000] & *v18) + 0x190);

  v21 = a11;

  a5;

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a9);
  v20(_sSo13FPItemManagerC08DocumentB11ExecutablesE13performRename4node14newDisplayName22shouldDonateAppIntents15alertPresenting25requiresAlertPresentation10completion13finishedBlockySo7DOCNode_p_SSSbSo16UIViewControllerCSbys5Error_pSgcySoAL_pSg_APtcSgtFyAC18DOCRenameOperationC_AQtcfU_TA_1, v19);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = MEMORY[0x277D85000];
  v24 = *((*MEMORY[0x277D85000] & *v18) + 0x148);

  v24(partial apply for closure #2 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v22);

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  v28 = *((*v23 & *v18) + 0x160);

  v28(partial apply for closure #3 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v27);

  v29 = *((*v23 & *v18) + 0x178);

  v29(partial apply for closure #2 in closure #1 in FPItemManager.rename(item:name:overwriteExtension:shouldDonateAppIntents:), v15);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.Rename);
  v41 = v18;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42 = v35;
    *v33 = 136315394;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007DLL, 0x8000000249BD2620, &v42);
    *(v33 + 12) = 2112;
    *(v33 + 14) = v41;
    *v34 = v18;
    v36 = v41;
    _os_log_impl(&dword_2493AC000, v31, v32, "%s: Adding Rename Operation %@", v33, 0x16u);
    outlined destroy of CharacterSet?(v34, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v34, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v33, -1, -1);
  }

  (*((*v23 & *v41) + 0x1B8))();
}

objc_class *specialized makeDOCMoveOperation(nodes:destinationFolder:undoManager:)(unint64_t a1, void *a2, void *a3)
{
  if ([objc_opt_self() useFIOperations])
  {
    v6 = objc_allocWithZone(type metadata accessor for DOC_FIMoveOperation());

    return specialized DOC_FIMoveOperation.init(nodes:destinationFolder:undoManager:)(a1, a2, a3, v6);
  }

  else
  {
    result = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (result)
    {
      v8 = result;
      v9 = specialized DOCNode.fpfs_syncFetchFPItem()();
      if (v9)
      {
        v10 = v9;
        objc_allocWithZone(type metadata accessor for DOCMoveOperation());
        return DOCMoveOperation.init(items:destinationFolder:undoManager:)(v8, v10, a3);
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

void *specialized makeDOCArchiveOperation(nodes:destinationFolder:undoManager:)(unint64_t a1, void *a2, void *a3)
{
  if ([objc_opt_self() useFIOperations])
  {
    v6 = objc_allocWithZone(type metadata accessor for DOC_FIArchiveOperation());

    return specialized DOC_FIArchiveOperation.init(nodes:destinationFolder:undoManager:)(a1, a2, a3, v6);
  }

  else
  {
    result = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (result)
    {
      v8 = result;
      v9 = specialized DOCNode.fpfs_syncFetchFPItem()();
      if (v9)
      {
        v10 = v9;
        objc_allocWithZone(type metadata accessor for DOCArchiveOperation());
        return DOCArchiveOperation.init(items:destinationFolder:undoManager:)(v8, v10, a3);
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t specialized DOC_FIArchiveOperation.init(nodes:destinationFolder:undoManager:)(unint64_t a1, void *a2, void *a3, char *a4)
{
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_archivedNode] = 0;
  v7 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_archiveCompletionBlock];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_actionCompletionBlock];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &unk_27EEF2000;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_fiOperation] = 0;
  v10 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_progressHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_progressObservation] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_nodes] = a1;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_destinationFolder] = a2;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_archiveFormat] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_undoManager] = a3;
  v35.receiver = a4;
  v35.super_class = type metadata accessor for DOC_FIArchiveOperation();

  v11 = a2;
  v12 = a3;
  v13 = objc_msgSendSuper2(&v35, sel_init);
  v14 = a1 >> 62;
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v28 = v13;
    goto LABEL_21;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v34 = v13;
    MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v16 = v13;
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v17 = DOCNode.isFINode.getter();
  swift_unknownObjectRelease();
  if (v17)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      if (v14)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);

        v21 = v11;
        _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
      }

      else
      {

        v20 = v11;
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
        if (swift_dynamicCastMetatype())
        {
        }

        else
        {
          v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v26)
          {
            v27 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
            do
            {
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
                break;
              }

              v27 += 8;
              --v26;
            }

            while (v26);
          }

          v9 = &unk_27EEF2000;
        }
      }

      v22 = [v19 fileOpNode];
      v23 = objc_allocWithZone(MEMORY[0x277D046B8]);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      v24.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v25 = [v23 initWithSourceNodes:v24.super.isa destinationFolder:v22];

      goto LABEL_31;
    }
  }

LABEL_21:
  if (v14)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    if (!swift_dynamicCastMetatype())
    {
      v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        v30 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        while (1)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          v30 += 8;
          if (!--v29)
          {
            v9 = &unk_27EEF2000;
            goto LABEL_29;
          }
        }

        v9 = &unk_27EEF2000;
      }
    }
  }

LABEL_29:
  result = specialized DOCNode.fpfs_syncFetchFPItem()();
  if (result)
  {
    v22 = result;

    v31 = objc_allocWithZone(MEMORY[0x277D046B8]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v24.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v25 = [v31 initWithSourceItems:v24.super.isa destinationItem:v22];
LABEL_31:

    v32 = v9[332];
    v33 = *(v13 + v32);
    *(v13 + v32) = v25;

    DOC_FIArchiveOperation.setUpCallbacks()();
    (*((*MEMORY[0x277D85000] & *v13) + 0x160))();

    return v13;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t specialized static FPItemManager.allowedProviderIdentifiers(for:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = [objc_opt_self() defaultPermission];
    v5 = MEMORY[0x24C1FAD20](a1, v2);
    v6 = [v4 allowedFileProviderBundleIdentifiersForHostBundleIdentifier_];

    if (v6)
    {
      v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v2 = 0;
    }
  }

  v7 = objc_opt_self();
  v8 = [v7 sharedManager];
  v9 = [v8 hasAnyProtectedApps];

  if (v9)
  {
    if (v2)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.UI);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        aBlock[0] = v14;
        *v13 = 136315394;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BEFF50, aBlock);
        *(v13 + 12) = 2080;
        v15 = MEMORY[0x24C1FB0D0](v2, MEMORY[0x277D837D0]);
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

        *(v13 + 14) = v17;
        _os_log_impl(&dword_2493AC000, v11, v12, "%s [PROTECTED APPS] existing allow list from MDM, filtering that list %s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v14, -1, -1);
        MEMORY[0x24C1FE850](v13, -1, -1);
      }

      filteredHiddenApps #1 (in:) in static FPItemManager.allowedProviderIdentifiers(for:)(v2);
      v26 = v25;

      swift_bridgeObjectRetain_n();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock[0] = v30;
        *v29 = 136315394;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BEFF50, aBlock);
        *(v29 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd);
        v31 = String.init<A>(describing:)();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, aBlock);

        *(v29 + 14) = v33;
        _os_log_impl(&dword_2493AC000, v27, v28, "%s [PROTECTED APPS] final filtered allow list from MDM and Protected Aps: %s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v30, -1, -1);
        MEMORY[0x24C1FE850](v29, -1, -1);
      }

      else
      {
      }

      return v26;
    }

    v18 = [v7 sharedManager];
    v19 = [v18 protectedApplicationBundleIDs];

    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    v2 = swift_allocObject();
    *(v2 + 16) = partial apply for closure #1 in static FPItemManager.allowedProviderIdentifiers(for:);
    *(v2 + 24) = v22;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed FPProviderDomain) -> (@unowned Bool);
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed FPProviderDomain) -> (@unowned Bool);
    aBlock[3] = &block_descriptor_241;
    v23 = _Block_copy(aBlock);

    v24 = [v21 allowedFileProviderBundleIdentifiersFiltered_];
    _Block_release(v23);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if (v23)
    {
      __break(1u);
    }

    else
    {
      if (v24)
      {
        v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v2 = 0;
      }

      v34 = one-time initialization token for UI;

      if (v34 == -1)
      {
        goto LABEL_20;
      }
    }

    swift_once();
LABEL_20:
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.UI);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315650;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BEFF50, aBlock);
      *(v38 + 12) = 2080;
      v40 = MEMORY[0x24C1FB0D0](v20, MEMORY[0x277D837D0]);
      v42 = v41;

      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, aBlock);

      *(v38 + 14) = v43;
      *(v38 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd);
      v44 = String.init<A>(describing:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, aBlock);

      *(v38 + 24) = v46;
      _os_log_impl(&dword_2493AC000, v36, v37, "%s [PROTECTED APPS] no existing allow list. Filtered out: %s result: %s", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v39, -1, -1);
      MEMORY[0x24C1FE850](v38, -1, -1);
    }

    else
    {
    }
  }

  return v2;
}

char *specialized DOCAppProtectionManager.appContainerOIDsToHideFromSearch.getter()
{
  v56 = objc_opt_self();
  v0 = [v56 sharedManager];
  v1 = [v0 applicationsWithContentHiddenFromSearch];

  v54 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCProtectedApp);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1FC540](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 appContainerBundleID];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [v56 sharedManager];
      v13 = [v12 hostIdentifier];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v9 == v14 && v11 == v16)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }
      }

      ++v4;
      if (v7 == i)
      {
        v19 = v57;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_23:

  if (one-time initialization token for UI != -1)
  {
    goto LABEL_56;
  }

LABEL_24:
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.UI);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v57 = v24;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BF0020, &v57);
    *(v23 + 12) = 2080;
    v25 = MEMORY[0x24C1FB0D0](v19, v54);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v57);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_2493AC000, v21, v22, "%s [PROTECTED APPS] getting OIDs from applicationsWithContentHiddenFromSearch %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v24, -1, -1);
    MEMORY[0x24C1FE850](v23, -1, -1);
  }

  if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
  {
    v28 = *(v19 + 16);
    if (!v28)
    {
      goto LABEL_58;
    }

    goto LABEL_29;
  }

  v28 = __CocoaSet.count.getter();
  if (v28)
  {
LABEL_29:
    v29 = 0;
    v30 = MEMORY[0x277D84F90];
    v55 = v28;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x24C1FC540](v29, v19);
      }

      else
      {
        if (v29 >= *(v19 + 16))
        {
          goto LABEL_51;
        }

        v31 = *(v19 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
        goto LABEL_24;
      }

      v34 = [v31 oids];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
      lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSNumber and conformance NSObject, &lazy cache variable for type metadata for NSNumber);
      v35 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8NSNumberCG_SSs5NeverOTg50132_sSo23DOCAppProtectionManagerC08DocumentC11ExecutablesE32appContainerOIDsToHideFromSearchSaySSGSgvgAESo15DOCProtectedAppCXEfU0_SSSo8D6CXEfU_Tf1cn_nTm(v35);
      v37 = v36;

      v38 = *(v37 + 16);
      v39 = *(v30 + 2);
      v40 = v39 + v38;
      if (__OFADD__(v39, v38))
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v40 <= *(v30 + 3) >> 1)
      {
        if (*(v37 + 16))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v39 <= v40)
        {
          v42 = v39 + v38;
        }

        else
        {
          v42 = v39;
        }

        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v42, 1, v30);
        if (*(v37 + 16))
        {
LABEL_45:
          if ((*(v30 + 3) >> 1) - *(v30 + 2) < v38)
          {
            goto LABEL_54;
          }

          swift_arrayInitWithCopy();

          if (v38)
          {
            v43 = *(v30 + 2);
            v44 = __OFADD__(v43, v38);
            v45 = v43 + v38;
            if (v44)
            {
              goto LABEL_55;
            }

            *(v30 + 2) = v45;
          }

          goto LABEL_31;
        }
      }

      if (v38)
      {
        goto LABEL_53;
      }

LABEL_31:
      ++v29;
      if (v33 == v55)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_58:
  v30 = MEMORY[0x277D84F90];
LABEL_59:

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57 = v49;
    *v48 = 136315394;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BF0020, &v57);
    *(v48 + 12) = 2080;
    v50 = MEMORY[0x24C1FB0D0](v30, MEMORY[0x277D837D0]);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v57);

    *(v48 + 14) = v52;
    _os_log_impl(&dword_2493AC000, v46, v47, "%s [PROTECTED APPS] returning OIDs: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v49, -1, -1);
    MEMORY[0x24C1FE850](v48, -1, -1);
  }

  return v30;
}

char *specialized DOCAppProtectionManager.protectedAppContainersOIDList.getter()
{
  v56 = objc_opt_self();
  v0 = [v56 sharedManager];
  v1 = [v0 protectedApplications];

  v54 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCProtectedApp);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1FC540](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 appContainerBundleID];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [v56 sharedManager];
      v13 = [v12 hostIdentifier];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v9 == v14 && v11 == v16)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }
      }

      ++v4;
      if (v7 == i)
      {
        v19 = v57;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_23:

  if (one-time initialization token for UI != -1)
  {
    goto LABEL_56;
  }

LABEL_24:
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.UI);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v57 = v24;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BEFF80, &v57);
    *(v23 + 12) = 2080;
    v25 = MEMORY[0x24C1FB0D0](v19, v54);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v57);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_2493AC000, v21, v22, "%s [PROTECTED APPS] getting OIDs from protectedApplications %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v24, -1, -1);
    MEMORY[0x24C1FE850](v23, -1, -1);
  }

  if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
  {
    v28 = *(v19 + 16);
    if (!v28)
    {
      goto LABEL_58;
    }

    goto LABEL_29;
  }

  v28 = __CocoaSet.count.getter();
  if (v28)
  {
LABEL_29:
    v29 = 0;
    v30 = MEMORY[0x277D84F90];
    v55 = v28;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x24C1FC540](v29, v19);
      }

      else
      {
        if (v29 >= *(v19 + 16))
        {
          goto LABEL_51;
        }

        v31 = *(v19 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
        goto LABEL_24;
      }

      v34 = [v31 oids];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
      lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSNumber and conformance NSObject, &lazy cache variable for type metadata for NSNumber);
      v35 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8NSNumberCG_SSs5NeverOTg50132_sSo23DOCAppProtectionManagerC08DocumentC11ExecutablesE32appContainerOIDsToHideFromSearchSaySSGSgvgAESo15DOCProtectedAppCXEfU0_SSSo8D6CXEfU_Tf1cn_nTm(v35);
      v37 = v36;

      v38 = *(v37 + 16);
      v39 = *(v30 + 2);
      v40 = v39 + v38;
      if (__OFADD__(v39, v38))
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v40 <= *(v30 + 3) >> 1)
      {
        if (*(v37 + 16))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v39 <= v40)
        {
          v42 = v39 + v38;
        }

        else
        {
          v42 = v39;
        }

        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v42, 1, v30);
        if (*(v37 + 16))
        {
LABEL_45:
          if ((*(v30 + 3) >> 1) - *(v30 + 2) < v38)
          {
            goto LABEL_54;
          }

          swift_arrayInitWithCopy();

          if (v38)
          {
            v43 = *(v30 + 2);
            v44 = __OFADD__(v43, v38);
            v45 = v43 + v38;
            if (v44)
            {
              goto LABEL_55;
            }

            *(v30 + 2) = v45;
          }

          goto LABEL_31;
        }
      }

      if (v38)
      {
        goto LABEL_53;
      }

LABEL_31:
      ++v29;
      if (v33 == v55)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_58:
  v30 = MEMORY[0x277D84F90];
LABEL_59:

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57 = v49;
    *v48 = 136315394;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BEFF80, &v57);
    *(v48 + 12) = 2080;
    v50 = MEMORY[0x24C1FB0D0](v30, MEMORY[0x277D837D0]);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v57);

    *(v48 + 14) = v52;
    _os_log_impl(&dword_2493AC000, v46, v47, "%s [PROTECTED APPS] returning OIDs: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v49, -1, -1);
    MEMORY[0x24C1FE850](v48, -1, -1);
  }

  return v30;
}

char *specialized DOCAppProtectionManager.protectedAppContainersOIDList(for:)()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    __swift_project_value_buffer(v0, static Logger.UI);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v14 = v4;
      *v3 = 136315394;
      *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BEFFA0, &v14);
      *(v3 + 12) = 2080;
      *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BEFFA0, &v14);
      _os_log_impl(&dword_2493AC000, v1, v2, "%s [PROTECTED APPS] %s getting OIDs for a user search collection", v3, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v4, -1, -1);
      MEMORY[0x24C1FE850](v3, -1, -1);
    }

    v5 = [objc_opt_self() sharedManager];
    v6 = specialized DOCAppProtectionManager.appContainerOIDsToHideFromSearch.getter();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BEFFA0, &v14);
      *(v10 + 12) = 2080;
      *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BEFFA0, &v14);
      _os_log_impl(&dword_2493AC000, v8, v9, "%s [PROTECTED APPS] %s getting OIDs for a named search location", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    v5 = [objc_opt_self() sharedManager];
    v6 = specialized DOCAppProtectionManager.protectedAppContainersOIDList.getter();
  }

  v12 = v6;

  return v12;
}

id specialized FPItemManager.queryCollection(forIdentifier:properties:supportRemovableFileProviders:)(void *a1, void *a2, int a3)
{
  v107 = a3;
  v109 = a1;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v106[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v106[-v11];
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v106[-v15];
  v108 = [objc_opt_self() defaultManager];
  v17 = [a2 allowedContentTypes];
  if (v17)
  {
    v18 = v17;
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {

    goto LABEL_13;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_13:
    v30 = v108;
    v31 = [v108 newRecentsCollection];
LABEL_14:
    v32 = v31;
    goto LABEL_15;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {

LABEL_49:
    v32 = [v108 newSharedItemsCollection];
    static UTType.folder.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    }

    v73 = v19[2];
    v72 = v19[3];
    if (v73 >= v72 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v72 > 1, v73 + 1, 1, v19);
    }

    v19[2] = v73 + 1;
    (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v73, v16, v4);
    v30 = v108;
    goto LABEL_15;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v71)
  {
    goto LABEL_49;
  }

  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;
  if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v76 == v77)
  {

    v30 = v108;
LABEL_58:
    v31 = [v30 newFavoritesCollection];
    goto LABEL_14;
  }

  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v30 = v108;
  if (v78)
  {
    goto LABEL_58;
  }

  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;
  if (v79 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v81 == v82)
  {

    goto LABEL_86;
  }

  v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v83)
  {
    goto LABEL_86;
  }

  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;
  if (v84 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v86 == v87)
  {

LABEL_66:
    v32 = [v30 newSearchCollection];
    static UTType.folder.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    }

    v90 = v19[2];
    v89 = v19[3];
    if (v90 >= v89 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v89 > 1, v90 + 1, 1, v19);
    }

    v19[2] = v90 + 1;
    (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v90, v12, v4);
    goto LABEL_15;
  }

  v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v88)
  {
    goto LABEL_66;
  }

  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v92;
  if (v91 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v93 == v94)
  {
  }

  else
  {
    v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v95 & 1) == 0)
    {
      while (1)
      {
        v111[0] = 0;
        v111[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(49);
        MEMORY[0x24C1FAEA0](0xD00000000000002ELL, 0x8000000249BF0170);
        v110 = v109;
        type metadata accessor for DOCSpotlightEnumeratedItemIdentifier(0);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x24C1FAEA0](39, 0xE100000000000000);
LABEL_86:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }
  }

  v96 = [a2 tagIdentifiers];
  if (!v96)
  {
    goto LABEL_79;
  }

  v97 = v96;
  v98 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v98[2] != 1)
  {

LABEL_79:
    v103 = [v30 newTagCollection];
    goto LABEL_80;
  }

  v99 = v98[4];
  v100 = v98[5];

  v101 = MEMORY[0x24C1FAD20](v99, v100);

  v102 = [v30 newCollectionForTag_];

  v103 = v102;
LABEL_80:
  v32 = v103;
  static UTType.folder.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
  }

  v105 = v19[2];
  v104 = v19[3];
  if (v105 >= v104 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v104 > 1, v105 + 1, 1, v19);
  }

  v19[2] = v105 + 1;
  (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v105, v8, v4);
LABEL_15:
  v33 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v35 = [v33 doc:isa identifiersForContentTypes:?];

  if (!v35)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v32 setAllowedFileTypes_];

  v36 = [a2 excludedContentTypes];
  if (v36)
  {
    v37 = v36;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v38 = Array._bridgeToObjectiveC()().super.isa;

  v39 = [v33 doc:v38 identifiersForContentTypes:?];

  if (!v39)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v32 setExcludedFileTypes_];

  v40 = [a2 hostIdentifier];
  if (v40)
  {
    v41 = v40;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = specialized static FPItemManager.allowedProviderIdentifiers(for:)(v42, v44);

  if (v45)
  {
    v46 = Array._bridgeToObjectiveC()().super.isa;

    [v32 setAllowedProviderIdentifiers_];
  }

  if ([objc_opt_self() protectedAppsEnabled])
  {
    v47 = [objc_opt_self() sharedManager];
    v48 = specialized DOCAppProtectionManager.protectedAppContainersOIDList(for:)();

    if (v48)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logger.UI);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v111[0] = v53;
        *v52 = 136315394;
        *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000048, 0x8000000249BF01A0, v111);
        *(v52 + 12) = 2080;
        v54 = MEMORY[0x24C1FB0D0](v48, MEMORY[0x277D837D0]);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v111);

        *(v52 + 14) = v56;
        _os_log_impl(&dword_2493AC000, v50, v51, "%s [PROTECTED APPS] setting excluded parent OIDs to %s", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v53, -1, -1);
        MEMORY[0x24C1FE850](v52, -1, -1);
      }

      v30 = v108;
      v57 = Array._bridgeToObjectiveC()().super.isa;

      [v32 setExcludedParentOIDs_];
    }

    FPQueryCollection.startObservingAppProtectionStatus()();
  }

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;
  if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
  {
  }

  else
  {
    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v62 & 1) == 0)
    {
      v63 = [a2 maximumNumberOfItems];
      [v32 setDesiredNumberOfItems_];
    }
  }

  if ((v107 & 1) != 0 && (v64 = objc_opt_self(), v65 = [v64 defaultPermission], v66 = objc_msgSend(v65, sel_isUSBAccessAllowed), v65, v66))
  {
    v67 = [v64 defaultPermission];
    v68 = [v67 canHostAppPerformAction:2 bundleIdentifier:*MEMORY[0x277D060B8]];

    if (v68)
    {
      v69 = &selRef_enableMountPointQueries;
      goto LABEL_45;
    }
  }

  else
  {
  }

  v69 = &selRef_disableMountPointQueries;
LABEL_45:
  [objc_opt_self() *v69];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  QueryCollectionDelayedLoadingSimulator.delayLoadingIfNeeded(collection:identifier:)(v32, v109);

  return v32;
}

void *specialized FPItemManager.filterOutChildItems(sourceItems:sourceNodes:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a3;
  v46 = a2;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v5);
  v59 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v48 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v12);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v55 = dispatch_group_create();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v56 = v17;
  *(v17 + 24) = MEMORY[0x277D84F90];
  v18 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v7);
  v57 = v14;
  v44[1] = v18;
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v53 = a1;
  v54 = result;
  if (!(a1 >> 62))
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_10:
    v35 = static OS_dispatch_queue.main.getter();
    v36 = swift_allocObject();
    v37 = v46;
    v36[2] = v56;
    v36[3] = v37;
    v38 = v47;
    v36[4] = v45;
    v36[5] = v38;
    v66 = partial apply for closure #2 in FPItemManager.filterOutChildItems(sourceItems:sourceNodes:completion:);
    v67 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v65 = &block_descriptor_391;
    v39 = _Block_copy(&aBlock);

    v40 = v57;
    static DispatchQoS.unspecified.getter();
    v61 = MEMORY[0x277D84F90];
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v42 = v59;
    v41 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v43 = v55;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v39);

    (*(v49 + 8))(v42, v41);
    (*(v48 + 8))(v40, v58);
  }

  result = __CocoaSet.count.getter();
  v20 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v20 >= 1)
  {
    v21 = 0;
    v51 = &v64;
    v52 = v53 & 0xC000000000000001;
    v50 = (v49 + 8);
    v22 = (v48 + 8);
    v23 = v57;
    do
    {
      v34 = v53;
      if (v52)
      {
        v24 = MEMORY[0x24C1FC540](v21, v53);
      }

      else
      {
        v24 = *(v53 + 8 * v21 + 32);
      }

      v25 = v24;
      ++v21;
      v26 = v55;
      dispatch_group_enter(v55);
      v27 = swift_allocObject();
      v27[2] = v25;
      v27[3] = v26;
      v28 = v56;
      v27[4] = v34;
      v27[5] = v28;
      v66 = partial apply for closure #1 in FPItemManager.filterOutChildItems(sourceItems:sourceNodes:completion:);
      v67 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v63 = 1107296256;
      v64 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v65 = &block_descriptor_385;
      v29 = _Block_copy(&aBlock);
      v30 = v25;
      v31 = v26;

      static DispatchQoS.unspecified.getter();
      v61 = MEMORY[0x277D84F90];
      _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v33 = v59;
      v32 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v23, v33, v29);
      _Block_release(v29);

      (*v50)(v33, v32);
      (*v22)(v23, v58);
    }

    while (v20 != v21);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation3URLVACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized DOCActionOperationKind.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCActionOperationKind.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DOCActionOperationKind and conformance DOCActionOperationKind()
{
  result = lazy protocol witness table cache variable for type DOCActionOperationKind and conformance DOCActionOperationKind;
  if (!lazy protocol witness table cache variable for type DOCActionOperationKind and conformance DOCActionOperationKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCActionOperationKind and conformance DOCActionOperationKind);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCActionOperationKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DOCActionOperationKind(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for DOCOperationItem()
{
  type metadata accessor for (url: URL, name: String?, isURLManaged: Bool)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DOCNode();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (url: URL, name: String?, isURLManaged: Bool)()
{
  if (!lazy cache variable for type metadata for (url: URL, name: String?, isURLManaged: Bool))
  {
    type metadata accessor for URL();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (url: URL, name: String?, isURLManaged: Bool));
    }
  }
}

uint64_t specialized FPItemManager.presentRecoveryAlert(fromError:alertPresenting:)(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = _convertErrorToNSError(_:)();
  v6 = [v4 augmentedErrorForError_];

  if (!v6)
  {
    v6 = a1;
  }

  v7 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  v8 = [v6 localizedRecoveryOptions];
  if (v8)
  {
    v9 = v8;
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = *(v7 + 16);
  if (v10)
  {
    v45 = a2;
    v11 = objc_opt_self();
    v12 = 0;
    v13 = (v7 + 40);
    v46 = v6;
    while (1)
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      if (v12)
      {

        v16 = [v6 userInfo];
        v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (!*(v17 + 16))
        {

          goto LABEL_17;
        }

        v20 = v10;
        v21 = v11;
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
        v24 = v23;

        if ((v24 & 1) == 0)
        {

          v11 = v21;
LABEL_16:
          v10 = v20;
          v6 = v46;
LABEL_17:
          v25 = 0;
          goto LABEL_18;
        }

        outlined init with copy of Any(*(v17 + 56) + 32 * v22, aBlock);

        v11 = v21;
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_16;
        }

        v10 = v20;
        v6 = v46;
        if ((v47 & 1) == 0)
        {
          goto LABEL_17;
        }

        v25 = 2;
      }

      else
      {

        v25 = 1;
      }

LABEL_18:
      v26 = swift_allocObject();
      *(v26 + 16) = v6;
      *(v26 + 24) = v12;
      v27 = v6;
      v28 = MEMORY[0x24C1FAD20](v15, v14);

      aBlock[4] = partial apply for closure #1 in FPItemManager.presentRecoveryAlert(fromError:alertPresenting:);
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      aBlock[3] = &block_descriptor_212_0;
      v29 = _Block_copy(aBlock);

      v30 = [v11 actionWithTitle:v28 style:v25 handler:v29];
      _Block_release(v29);

      v31 = v30;
      MEMORY[0x24C1FB090]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v12;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v13 += 2;
      if (v10 == v12)
      {
        v32 = v49;

        a2 = v45;
        goto LABEL_23;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_23:
  v33 = [v6 localizedDescription];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = [v6 localizedRecoverySuggestion];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = swift_allocObject();
  v42[2] = v34;
  v42[3] = v36;
  v42[4] = v39;
  v42[5] = v41;
  v42[6] = v32;
  v42[7] = a2;
  v43 = a2;
  DOCRunInMainThread(_:)();
}

id specialized FPItemManager.presentOperationFailedAlert(error:alertPresenting:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = _convertErrorToNSError(_:)();
  v8 = [v7 localizedFailureReason];
  if (v8)
  {

    v9 = [v7 localizedDescription];
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    result = _DocumentManagerBundle();
    if (!result)
    {
      goto LABEL_10;
    }

    v9 = result;
    v38._object = 0x8000000249BEFF10;
    v13._object = 0x8000000249BEFEE0;
    v13._countAndFlagsBits = 0x1000000000000023;
    v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v14.value._object = 0xEB00000000656C62;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v38._countAndFlagsBits = 0xD00000000000001DLL;
    v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v9, v15, v38);
    object = v16._object;
    countAndFlagsBits = v16._countAndFlagsBits;
  }

  v35 = object;
  v36 = countAndFlagsBits;

  v17 = [v7 localizedFailureReason];
  if (!v17)
  {
    v17 = [v7 localizedDescription];
  }

  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  result = _DocumentManagerBundle();
  if (result)
  {
    v22 = result;
    v39._object = 0xE200000000000000;
    v23._countAndFlagsBits = 19279;
    v23._object = 0xE200000000000000;
    v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v24.value._object = 0xEB00000000656C62;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v39._countAndFlagsBits = 19279;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v39);

    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a3);
    v28 = MEMORY[0x24C1FAD20](v26._countAndFlagsBits, v26._object);

    aBlock[4] = partial apply for closure #1 in FPItemManager.presentOperationFailedAlert(error:alertPresenting:completion:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_200;
    v29 = _Block_copy(aBlock);

    v30 = [objc_opt_self() actionWithTitle:v28 style:0 handler:v29];
    _Block_release(v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_249BA0290;
    *(v31 + 32) = v30;
    v32 = swift_allocObject();
    v32[2] = v36;
    v32[3] = v35;
    v32[4] = v19;
    v32[5] = v21;
    v32[6] = v31;
    v32[7] = a2;
    v33 = v30;
    v34 = a2;
    DOCRunInMainThread(_:)();
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void specialized FPItemManager.handleRenameOperationCompletion(_:newDisplayName:fileExtension:alertPresenting:requiresAlertPresentation:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, char a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v14 = _convertErrorToNSError(_:)();
    v15 = [v14 domain];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if ([v14 code] == -1001)
    {
      goto LABEL_21;
    }

LABEL_11:
    v23 = [v14 domain];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if ([v14 code] == -48)
    {
      goto LABEL_21;
    }

LABEL_16:
    v29 = [v14 domain];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
    {
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
LABEL_32:
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        __swift_project_value_buffer(v53, static Logger.Rename);
        v54 = v14;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v68 = v59;
          *v57 = 136315394;
          *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000075, 0x8000000249BEFD40, &v68);
          *(v57 + 12) = 2112;
          *(v57 + 14) = v54;
          *v58 = v54;
          v60 = v54;
          _os_log_impl(&dword_2493AC000, v55, v56, "%s: Rename Operation failed: %@", v57, 0x16u);
          outlined destroy of CharacterSet?(v58, &_sSo8NSObjectCSgMd);
          MEMORY[0x24C1FE850](v58, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v59);
          MEMORY[0x24C1FE850](v59, -1, -1);
          MEMORY[0x24C1FE850](v57, -1, -1);
        }

        v61 = swift_allocObject();
        v61[2] = a8;
        v61[3] = a9;
        v61[4] = v54;
        v62 = v54;

        v63 = v62;
        specialized FPItemManager.presentOperationFailedAlert(error:alertPresenting:completion:)(v63, a6, partial apply for closure #1 in FPItemManager.handleRenameOperationCompletion(_:newDisplayName:fileExtension:alertPresenting:requiresAlertPresentation:completion:), v61);

        goto LABEL_37;
      }
    }

    if ([v14 code] == 516)
    {
LABEL_21:
      if ((a5 & 0x2000000000000000) != 0)
      {
        v35 = HIBYTE(a5) & 0xF;
      }

      else
      {
        v35 = a4 & 0xFFFFFFFFFFFFLL;
      }

      v36 = _DocumentManagerBundle();
      v37 = v36;
      if (v35)
      {
        if (v36)
        {
          v70._object = 0x8000000249BEFE20;
          v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v38.value._object = 0xEB00000000656C62;
          v39._countAndFlagsBits = 0x100000000000005CLL;
          v39._object = 0x8000000249BEFDC0;
          v70._countAndFlagsBits = 0xD000000000000038;
          v40._countAndFlagsBits = 0;
          v40._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v38, v37, v40, v70);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_249B9FA70;
          v42 = MEMORY[0x277D837D0];
          *(v41 + 56) = MEMORY[0x277D837D0];
          v43 = lazy protocol witness table accessor for type String and conformance String();
          *(v41 + 32) = a2;
          *(v41 + 40) = a3;
          *(v41 + 96) = v42;
          *(v41 + 104) = v43;
          *(v41 + 64) = v43;
          *(v41 + 72) = a4;
          *(v41 + 80) = a5;

LABEL_29:

          v48 = String.init(format:_:)();
          v50 = v49;

          v51 = swift_allocObject();
          *(v51 + 16) = v48;
          *(v51 + 24) = v50;
          *(v51 + 32) = a7 & 1;
          *(v51 + 40) = a8;
          *(v51 + 48) = a9;
          *(v51 + 56) = v14;
          *(v51 + 64) = a6;

          v66 = v14;
          v52 = a6;
          DOCRunInMainThread(_:)();

          return;
        }

        __break(1u);
      }

      else if (v36)
      {
        v71._object = 0x8000000249BEFEB0;
        v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v44.value._object = 0xEB00000000656C62;
        v45._object = 0x8000000249BEFE60;
        v45._countAndFlagsBits = 0x1000000000000043;
        v46._countAndFlagsBits = 0;
        v46._object = 0xE000000000000000;
        v71._countAndFlagsBits = 0xD000000000000022;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v44, v37, v46, v71);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_249B9A480;
        *(v47 + 56) = MEMORY[0x277D837D0];
        *(v47 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v47 + 32) = a2;
        *(v47 + 40) = a3;
        goto LABEL_29;
      }

      __break(1u);
      return;
    }

    goto LABEL_32;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a8;
  *(v22 + 24) = a9;

  DOCRunInMainThread(_:)();
LABEL_37:
}

void *specialized DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5, _BYTE *a6)
{
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp] = 0;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp] = 0;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderNode] = 0;
  a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_waitingForNodes] = 0;
  a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_scheduleWasDeferred] = 0;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation____lazy_storage___stateLock] = 0;
  v10 = &a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_nameConflictHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = &a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_errorHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = &a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_completionHandler];
  *v12 = 0;
  v12[1] = 0;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_destinationNode] = a1;
  v13 = &a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderName];
  *v13 = a2;
  v13[1] = a3;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_undoManager] = a5;
  a6[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_isForAppIntents] = a4;
  v66.receiver = a6;
  v66.super_class = type metadata accessor for DOCCreateFolderOperation();
  v14 = a1;

  v15 = a5;
  v16 = objc_msgSendSuper2(&v66, sel_init);
  v17 = [objc_opt_self() useFIOperations];
  v18 = MEMORY[0x277D85000];
  if (v17)
  {
    v19 = type metadata accessor for DOC_FINewFolderOperation();
    v20 = objc_allocWithZone(v19);
    *&v20[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_destinationNode] = v14;
    v21 = &v20[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_folderName];
    *v21 = a2;
    v21[1] = a3;
    *&v20[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_undoManager] = v15;
    v20[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_didRegisterUndo] = 0;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    v23 = v14;
    v24 = v15;
    v25 = v23;

    v26 = v24;
    v27 = MEMORY[0x24C1FAD20](a2, a3);

    objc_opt_self();
    v28 = swift_dynamicCastObjCClassUnconditional();
    if (v22)
    {
      v62.receiver = v20;
      v62.super_class = v19;
      swift_unknownObjectRetain();
      v29 = objc_msgSendSuper2(&v62, sel_initWithName_destinationFolder_propertyList_, v27, v28, 0);
    }

    else
    {
      v63.receiver = v20;
      v63.super_class = v19;
      swift_unknownObjectRetain();
      v29 = objc_msgSendSuper2(&v63, sel_initWithName_destinationFolderItem_, v27, v28);
    }

    v44 = v29;

    v18 = MEMORY[0x277D85000];
    if (v44)
    {
    }

    v45 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp;
    goto LABEL_15;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClassUnconditional();
    v47 = type metadata accessor for DOC_FPCreateFolderOperation();
    v48 = objc_allocWithZone(v47);
    v49 = v18;
    v50 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
    *&v48[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem] = 0;
    *&v48[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_parentItem] = v46;
    v51 = &v48[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName];
    *v51 = a2;
    v51[1] = a3;
    swift_beginAccess();
    *&v48[v50] = 0;
    *&v48[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager] = v15;
    v48[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo] = 0;
    v52 = v14;
    v53 = v15;
    v54 = v52;

    v55 = v53;
    v18 = v49;
    v56 = v55;
    v57 = MEMORY[0x24C1FAD20](a2, a3);

    v65.receiver = v48;
    v65.super_class = v47;
    v44 = objc_msgSendSuper2(&v65, sel_initWithParentItem_folderName_, v46, v57);

    v58 = *((*v49 & *v44) + 0xB0);
    v59 = v44;
    v58();

    v45 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp;
LABEL_15:
    v60 = *(v16 + v45);
    *(v16 + v45) = v44;

    goto LABEL_16;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.UI);
  swift_unknownObjectRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    objc_opt_self();
    v35 = swift_dynamicCastObjCClassUnconditional();
    *(v33 + 4) = v35;
    *v34 = v35;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_2493AC000, v31, v32, "Fetching FPItem for destinationNode async: %@", v33, 0xCu);
    outlined destroy of CharacterSet?(v34, &_sSo8NSObjectCSgMd);
    v36 = v34;
    v18 = MEMORY[0x277D85000];
    MEMORY[0x24C1FE850](v36, -1, -1);
    MEMORY[0x24C1FE850](v33, -1, -1);
  }

  *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_waitingForNodes) = 1;
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = v14;
  v38[4] = a2;
  v38[5] = a3;
  v38[6] = v15;
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for closure #1 in DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:);
  *(v39 + 24) = v38;
  aBlock[4] = partial apply for closure #1 in DOCNode.fpfs_fetchFPItem(completion:);
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_308_0;
  v40 = _Block_copy(aBlock);
  v41 = v14;
  v42 = v15;

  [v41 fetchFPItem_];
  _Block_release(v40);

LABEL_16:
  (*((*v18 & *v16) + 0x1D8))(v43);
  return v16;
}

void partial apply for closure #2 in closure #2 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  closure #2 in closure #2 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)(a1, a2, v7, v8, v2 + v6, v10, v11);
}

uint64_t partial apply for closure #1 in closure #1 in FPItemManager.archive(_:destinationFolder:format:)(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo13FPItemManagerC08DocumentC11ExecutablesE22ArchiveOperationStatusOs5Error_p_GMd);

  return closure #1 in closure #1 in FPItemManager.archive(_:destinationFolder:format:)(a1);
}

uint64_t partial apply for closure #2 in closure #1 in FPItemManager.archive(_:destinationFolder:format:)(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo13FPItemManagerC08DocumentC11ExecutablesE22ArchiveOperationStatusOs5Error_p_GMd);

  return closure #2 in closure #1 in FPItemManager.archive(_:destinationFolder:format:)(a1, a2 & 1);
}

uint64_t objectdestroy_111Tm()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_114Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id partial apply for closure #1 in closure #1 in FPItemManager.duplicateItems(_:desiredFileNames:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo6FPItemCGs5Error_pGMd) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);

  return closure #1 in closure #1 in FPItemManager.duplicateItems(_:desiredFileNames:)(a1, v6, v1 + v4, v5);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in FPItemManager.duplicateItems(_:desiredFileNames:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo6FPItemCGs5Error_pGMd) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return closure #2 in closure #1 in closure #1 in FPItemManager.duplicateItems(_:desiredFileNames:)(a1, v1 + v4, v6, v7);
}

uint64_t objectdestroy_295Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_12()
{
  if (*(v0 + 16))
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t partial apply for closure #7 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  if ((*((*MEMORY[0x277D85000] & **(v1 + 16)) + 0x1A8))())
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return v3(0, a1, v4);
}

uint64_t partial apply for closure #5 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = (*((*MEMORY[0x277D85000] & **(v1 + 16)) + 0x148))();
  return v3(0, a1, v4);
}

uint64_t objectdestroy_5Tm_0(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t outlined destroy of DOCOperationItem(uint64_t a1)
{
  v2 = type metadata accessor for DOCOperationItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_321Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

Swift::Void __swiftcall DOCItemCollectionFPController.resetExpandedSections()()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *v0 + 64;
    do
    {
      v3 = *v2;
      v4 = *(**v2 + 160);

      v6 = v4(v5);
      (*(*v3 + 144))(v6 & 1);

      v2 += 40;
      --v1;
    }

    while (v1);
  }
}

unint64_t DOCItemCollectionFPController.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_So7DOCNode_pTt0g5Tf4g_n(v2);
  *(a1 + 16) = result;
  *(a1 + 24) = 11;
  return result;
}

void DOCItemCollectionFPController.toggledSections.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 64;
    v22 = *(*v0 + 16);
    v20 = v2 - 1;
    v5 = MEMORY[0x277D84F90];
    v21 = v1 + 64;
    v24 = *v0;
    do
    {
      v6 = (v4 + 40 * v3);
      while (1)
      {
        if (v3 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 - 3);
        v23 = *(v6 - 4);
        v8 = *(v6 - 2);
        v9 = *(v6 - 1);
        v10 = *v6;
        v11 = v3 + 1;
        v12 = *(**v6 + 136);

        LODWORD(v12) = v12(v13);
        if ((v12 ^ (*(*v10 + 160))()))
        {
          break;
        }

        v6 += 5;
        ++v3;
        v1 = v24;
        if (v22 == v11)
        {
          return;
        }
      }

      v18 = v8;
      v19 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
      }

      v14 = v23;
      v1 = v24;
      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v14 = v23;
      }

      *(v5 + 16) = v16 + 1;
      v17 = (v5 + 40 * v16);
      v17[4] = v14;
      v17[5] = v7;
      v17[6] = v18;
      v17[7] = v9;
      v17[8] = v10;
      v4 = v21;
      ++v3;
    }

    while (v20 != v19);
  }
}

uint64_t DOCItemCollectionFPController.init(with:by:preferredContentTypes:canCreateDocument:createDocumentSentinelNode:)@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v27 = a4;
  v12 = specialized static DOCItemCollectionFPController.removeSentinel(from:)(a1);
  v26[0] = v11;
  type metadata accessor for DOCItemCollectionViewNodeGrouper();
  v13 = swift_allocObject();
  v14 = DOCItemCollectionViewNodeGrouper.init(nodes:groupingBehavior:preferredContentTypes:)(v12, v26, a3);
  if ((a4 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_9;
  }

  v15 = (*(*v13 + 128))(v14);
  if (!*(v15 + 16))
  {
LABEL_8:

    v20 = 1;
    goto LABEL_9;
  }

  v16 = *(v15 + 64);

  if (!a5)
  {

    goto LABEL_8;
  }

  v17 = *(*v16 + 128);
  swift_unknownObjectRetain();
  v18 = v17(v26);
  if (!(*v19 >> 62) || (result = __CocoaSet.count.getter(), (result & 0x8000000000000000) == 0))
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, a5);
    swift_unknownObjectRelease();
    v18(v26, 0);

    v20 = v27;
LABEL_9:
    v21 = (*(*v13 + 128))(v14);

    v23 = specialized static DOCItemCollectionFPController.createFlatNodes(with:)(v22);

    *v26 = MEMORY[0x277D84F98];
    specialized Sequence.forEach(_:)(a1, v26);

    result = swift_unknownObjectRelease();
    v25 = *v26;
    *a6 = v21;
    *(a6 + 8) = v23;
    *(a6 + 16) = v25;
    *(a6 + 24) = v11;
    *(a6 + 25) = v20;
    return result;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCItemCollectionFPController.restoreExpandedState(on:)(Swift::OpaquePointer on)
{
  v3 = *(on._rawValue + 2);
  if (!v3)
  {
    return;
  }

  v4 = *v2;
  v5 = on._rawValue + 32;
  v15 = *v2 + 32;
  while (1)
  {
    v6 = *(v5 + 1);
    v19[0] = *v5;
    v19[1] = v6;
    v20 = *(v5 + 4);
    v7 = *(v5 + 1);
    v17[0] = *v5;
    v17[1] = v7;
    v18 = *(v5 + 4);
    MEMORY[0x28223BE20](on._rawValue, v1);
    v14[2] = v17;
    outlined init with copy of DOCCollectionSection(v19, v16);
    if ((specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v14, v4) & 1) == 0)
    {
      goto LABEL_3;
    }

    v8 = specialized Collection<>.firstIndex(of:)(v19, v4);
    if (v9)
    {
      goto LABEL_3;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *(v4 + 16))
    {
      goto LABEL_11;
    }

    v10 = *(v15 + 40 * v8 + 32);
    v11 = *(*v20 + 136);

    v13 = v11(v12);
    (*(*v10 + 144))(v13 & 1);

LABEL_3:
    on._rawValue = outlined destroy of DOCCollectionSection(v19);
    v5 += 40;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t DOCItemCollectionFPController.sectionContaining(node:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v16 = *(*v2 + 16);
  v17 = result;
  if (v16)
  {
    v15 = a2;
    v4 = 0;
    v5 = (v3 + 64);
    while (v4 < *(v3 + 16))
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v9 = *(v5 - 2);
      v8 = *(v5 - 1);
      v10 = *v5;
      v11 = *(**v5 + 112);

      v13 = v11(v12);
      swift_getObjectType();
      v14 = specialized Array<A>.contains(node:)(v17, v13);

      if (v14)
      {
        goto LABEL_7;
      }

      ++v4;
      v5 += 5;
      if (v16 == v4)
      {
        v7 = 0;
        v6 = 0;
        v9 = 0;
        v8 = 0;
        v10 = 0;
LABEL_7:
        a2 = v15;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v9 = 0;
    v8 = 0;
    v10 = 0;
LABEL_9:
    *a2 = v7;
    a2[1] = v6;
    a2[2] = v9;
    a2[3] = v8;
    a2[4] = v10;
  }

  return result;
}

Swift::Bool __swiftcall DOCItemCollectionFPController.isStructureSimilar(to:)(Swift::OpaquePointer_optional to)
{
  if (!to.value._rawValue)
  {
    return to.value._rawValue;
  }

  v2 = 0;
  v20 = *v1;
  v21 = *(*v1 + 16);
  v3 = *(to.value._rawValue + 2);
  v19 = *v1 + 32;
  v4 = (to.value._rawValue + 64);
  while (v2 == v21)
  {
    if (!v3)
    {
      goto LABEL_23;
    }

    v9 = 0;
    v25 = 0;
    v10 = 0;
    v11 = v21;
LABEL_12:
    v14 = *v4;
    v15 = *(v4 - 3);
    v16 = *(v4 - 4);

    if (!v10)
    {
      if (v15)
      {
        v17 = v16;
        v6 = v15;
        goto LABEL_25;
      }

LABEL_23:
      LOBYTE(to.value._rawValue) = 1;
      return to.value._rawValue;
    }

    v6 = v10;
    if (!v15)
    {
      goto LABEL_22;
    }

    if (v25 != v16 || v10 != v15)
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v6 = v10;
      if ((v5 & 1) == 0)
      {
        outlined consume of DOCCollectionSection?(v16, v15);
        v17 = v25;
        v6 = v10;
        goto LABEL_25;
      }
    }

    v22 = v6;
    v24 = v11;
    v7 = (*(*v9 + 112))();
    v8 = (*(*v14 + 112))();
    v23 = == infix(_:_:)(v7, v8);
    outlined consume of DOCCollectionSection?(v16, v15);
    outlined consume of DOCCollectionSection?(v25, v22);
    v2 = v24;

    --v3;
    v4 += 5;
    if ((v23 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    return to.value._rawValue;
  }

  if (v2 >= *(v20 + 16))
  {
    goto LABEL_29;
  }

  v12 = (v19 + 40 * v2);
  v9 = v12[4];
  v25 = *v12;
  v13 = v12[1];

  if (v3)
  {
    v11 = v2 + 1;
    v10 = v13;
    goto LABEL_12;
  }

  if (!v13)
  {
    goto LABEL_23;
  }

  v6 = v13;
LABEL_22:
  v17 = v25;
LABEL_25:
  outlined consume of DOCCollectionSection?(v17, v6);
LABEL_26:
  LOBYTE(to.value._rawValue) = 0;
  return to.value._rawValue;
}

uint64_t DOCCollectionNodes.isExpanded.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t DOCCollectionNodes.isInitiallyExpanded.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 25) = a1;
  return result;
}

uint64_t DOCCollectionNodes.__allocating_init(nodes:isExpanded:)(unint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(a1);
  swift_endAccess();
  swift_beginAccess();
  *(v4 + 24) = a2;
  return v4;
}

uint64_t DOCCollectionNodes.init(nodes:isExpanded:)(unint64_t a1, char a2)
{
  v3 = v2;
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(a1);
  swift_endAccess();
  swift_beginAccess();
  *(v3 + 24) = a2;
  return v3;
}

uint64_t DOCCollectionNodes.description.getter()
{
  _StringGuts.grow(_:)(36);
  v1 = _typeName(_:qualified:)();

  v12 = v1;
  v2 = MEMORY[0x24C1FAEA0](0x3A7365646F6E203ALL, 0xE900000000000020);
  if ((*(*v0 + 112))(v2) >> 62)
  {
    __CocoaSet.count.getter();
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v3);

  v4 = MEMORY[0x24C1FAEA0](0x6E61707845736920, 0xED0000203A646564);
  v5 = (*(*v0 + 136))(v4);
  v6 = (v5 & 1) == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x24C1FAEA0](v7, v8);

  v9 = MEMORY[0x24C1FAEA0](0x203A67617420, 0xE600000000000000);
  (*(*v0 + 184))(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6DOCTagCSgMd);
  v10 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v10);

  return v12;
}

uint64_t DOCCollectionNodes.deinit()
{

  return v0;
}

uint64_t DOCCollectionNodes.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCCollectionSection.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DOCCollectionSection.localizedTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DOCCollectionSection.contents.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t DOCCollectionSection.init(identifier:localizedTitle:contents:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t static DOCCollectionSection.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int DOCCollectionSection.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DOCItemCollectionViewNodeGrouper.__allocating_init(nodes:groupingBehavior:preferredContentTypes:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  DOCItemCollectionViewNodeGrouper.init(nodes:groupingBehavior:preferredContentTypes:)(a1, a2, a3);
  return v6;
}

uint64_t DOCItemCollectionViewNodeGrouper.sections.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t DOCItemCollectionViewNodeGrouper.tags.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

void *DOCItemCollectionViewNodeGrouper.init(nodes:groupingBehavior:preferredContentTypes:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a2;
  v7 = MEMORY[0x277D84F90];
  v3[3] = MEMORY[0x277D84F90];
  v3[4] = v7;
  v3[2] = a1;
  v8 = *(*v3 + 184);

  v10 = v8(v9);

  if (v6 == 11 || (v10 & 1) != 0)
  {

    DOCItemCollectionViewNodeGrouper.groupByNothing()();
  }

  else
  {
    v15[0] = v6;
    (*(*v4 + 192))(v15, a3);

    swift_beginAccess();
    v11 = v4[3];
    if (*(v11 + 16) == 1)
    {
      v12 = *(v11 + 64);
      v13 = *(*v12 + 168);

      v13(1);
      (*(*v12 + 144))(1);
    }
  }

  return v4;
}

Swift::Bool __swiftcall DOCItemCollectionViewNodeGrouper.nodesEmpty(_:)(Swift::OpaquePointer a1)
{
  v1 = a1._rawValue >> 62;
  if (!(a1._rawValue >> 62))
  {
    v2 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    LOBYTE(a1._rawValue) = 1;
    return a1._rawValue;
  }

  rawValue = a1._rawValue;
  v2 = __CocoaSet.count.getter();
  a1._rawValue = rawValue;
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v2 != 1)
  {
    goto LABEL_11;
  }

  if (v1)
  {
    v4 = a1._rawValue;
    v5 = __CocoaSet.count.getter();
    a1._rawValue = v4;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_11:
    LOBYTE(a1._rawValue) = 0;
    return a1._rawValue;
  }

  if (!*((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((a1._rawValue & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, a1._rawValue);
  }

  else
  {
    if (!*((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return a1._rawValue;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  Document = DOCNode.isCreateDocumentSentinel()();
  swift_unknownObjectRelease();
  LOBYTE(a1._rawValue) = Document;
  return a1._rawValue;
}

uint64_t DOCItemCollectionViewNodeGrouper.group(by:preferredContentTypes:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    if (v1 < 2)
    {
      v3 = v1;
      return DOCItemCollectionViewNodeGrouper.groupByDate(_:)(&v3);
    }

    if (v1 == 4)
    {

      return DOCItemCollectionViewNodeGrouper.groupBySize()();
    }

    goto LABEL_14;
  }

  if (v1 == 10)
  {
    goto LABEL_14;
  }

  if (v1 != 6)
  {
    if (v1 == 5)
    {

      return DOCItemCollectionViewNodeGrouper.groupByFileType(_:)();
    }

LABEL_14:

    return DOCItemCollectionViewNodeGrouper.groupByNothing()();
  }

  return DOCItemCollectionViewNodeGrouper.groupBySharedBy()();
}

uint64_t DOCItemCollectionViewNodeGrouper.groupByNothing()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCCollectionSectionVGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_249B9A480;
  v3 = (*(*v0 + 104))();
  type metadata accessor for DOCCollectionNodes();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v3);
  swift_endAccess();
  swift_beginAccess();
  *(v4 + 24) = 1;
  *(v2 + 32) = 0xD00000000000002ALL;
  *(v2 + 40) = 0x8000000249BF0410;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  *(v2 + 64) = v4;
  return (*(*v1 + 136))(v2);
}

uint64_t DOCItemCollectionViewNodeGrouper.groupByFileType(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v122 = v112 - v3;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v116 = v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v133 = v112 - v10;

  v118 = specialized DOCFileTypeGrouping.init(with:)(v11);
  v113 = v12;
  v117 = v13;
  v112[1] = v14;
  v15 = MEMORY[0x277D84F90];
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryO_AC20DOCCollectionSectionVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v136 = v15;
  v17 = *(*v0 + 104);
  v114 = v0;
  v18 = v17();
  v20 = v18;
  if (v18 >> 62)
  {
LABEL_84:
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_3:
      v22 = 0;
      v132 = v20 & 0xC000000000000001;
      v123 = v20 & 0xFFFFFFFFFFFFFF8;
      v134 = (v5 + 8);
      v121 = (v5 + 48);
      v115 = (v5 + 32);
      *&v19 = 136315138;
      v125 = v19;
      v127 = v4;
      v128 = MEMORY[0x277D84F90];
      v130 = v20;
      v131 = v21;
      while (1)
      {
        if (v132)
        {
          v24 = MEMORY[0x24C1FC540](v22, v20);
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (v22 >= *(v123 + 16))
          {
            goto LABEL_81;
          }

          v24 = *(v20 + 8 * v22 + 32);
          swift_unknownObjectRetain();
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }
        }

        v26 = [v24 contentType];
        v27 = v133;
        static UTType._unconditionallyBridgeFromObjectiveC(_:)();

        v28 = UTType.identifier.getter();
        v30 = v29;
        v31 = *v134;
        (*v134)(v27, v4);
        if (one-time initialization token for typeIdentifierToCategoryCache != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v32 = static DOCFileTypeGrouping.typeIdentifierToCategoryCache;
        if (*(static DOCFileTypeGrouping.typeIdentifierToCategoryCache + 2) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v30), (v34 & 1) != 0))
        {
          v35 = (v32[7] + 16 * v33);
          v36 = *v35;
          v5 = v35[1];
          swift_endAccess();
          v129 = v36;
          outlined copy of DOCItemFileTypeGroupCategory(v36, v5);
        }

        else
        {
          swift_endAccess();
          v37._countAndFlagsBits = 778991972;
          v37._object = 0xE400000000000000;
          if (String.hasPrefix(_:)(v37))
          {
            goto LABEL_25;
          }

          v38 = v122;
          UTType.init(_:)();
          if ((*v121)(v38, 1, v4) == 1)
          {
            outlined destroy of CharacterSet?(v38, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
LABEL_25:
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v41 = type metadata accessor for Logger();
            __swift_project_value_buffer(v41, static Logger.UI);

            v5 = Logger.logObject.getter();
            v42 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v5, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              v137[0] = v44;
              *v43 = v125;
              *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v137);
              _os_log_impl(&dword_2493AC000, v5, v42, "Could not map %s to a category DOCItemFileTypeGroupCategory", v43, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v44);
              v45 = v44;
              v4 = v127;
              MEMORY[0x24C1FE850](v45, -1, -1);
              MEMORY[0x24C1FE850](v43, -1, -1);
            }

            v20 = v130;
            v46 = swift_unknownObjectRetain();
            MEMORY[0x24C1FB090](v46);
            if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v5 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_unknownObjectRelease();
            v128 = v136;
            goto LABEL_8;
          }

          v39 = v116;
          (*v115)(v116, v38, v4);
          v129 = specialized lookUpCategory #1 (for:) in DOCFileTypeGrouping.category(for:)(v39, v118, v117);
          v5 = v40;
          v31(v39, v4);
          if (v5 == 11)
          {
            goto LABEL_25;
          }
        }

        if (v5 == 10)
        {
          goto LABEL_25;
        }

        v20 = v129;
        if (!*(v16 + 16))
        {
          break;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v129, v5);
        if ((v47 & 1) == 0)
        {
          break;
        }

LABEL_67:
        if (!*(v16 + 16))
        {
          outlined consume of DOCItemFileTypeGroupCategory(v20, v5);
LABEL_5:
          v5 = 0;
          v23 = 0;
          goto LABEL_6;
        }

        v74 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v5);
        v75 = v20;
        v77 = v76;
        outlined consume of DOCItemFileTypeGroupCategory(v75, v5);
        if ((v77 & 1) == 0)
        {
          goto LABEL_5;
        }

        v78 = (*(v16 + 56) + 40 * v74);
        v23 = *v78;
        v79 = v78[1];
        v5 = v78[4];

        if (v79)
        {

          outlined consume of DOCCollectionSection?(v23, v79);
          v80 = *(*v5 + 128);
          swift_unknownObjectRetain();
          v81 = v80(v137);
          v83 = v82;
          MEMORY[0x24C1FB090]();
          if (*((*v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v81(v137, 0);

          swift_unknownObjectRelease();
          goto LABEL_7;
        }

LABEL_6:
        swift_unknownObjectRelease();
        outlined consume of DOCCollectionSection?(v23, 0);
LABEL_7:
        v4 = v127;
        v20 = v130;
LABEL_8:
        ++v22;
        if (v25 == v131)
        {

          v84 = v128;
          if (v128 >> 62)
          {
            goto LABEL_86;
          }

LABEL_77:
          if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
          {
            goto LABEL_78;
          }

LABEL_87:

LABEL_88:
          v93 = specialized DOCFileTypeGrouping.preferredCategoryGroupingOrder()(v118, v113, v117);

          v94 = *(v93 + 2);
          if (v94)
          {
            v134 = v93;
            v95 = (v93 + 40);
            v96 = MEMORY[0x277D84F90];
            v126 = v16;
            do
            {
              if (*(v16 + 16))
              {
                v99 = *(v95 - 1);
                v98 = *v95;
                outlined copy of DOCItemFileTypeGroupCategory(v99, *v95);
                v100 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v98);
                v102 = v101;
                outlined consume of DOCItemFileTypeGroupCategory(v99, v98);
                if (v102)
                {
                  v103 = (*(v16 + 56) + 40 * v100);
                  v105 = *v103;
                  v104 = v103[1];
                  v106 = v103[2];
                  v107 = v103[3];
                  v108 = v103[4];

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
                  }

                  v110 = *(v96 + 2);
                  v109 = *(v96 + 3);
                  if (v110 >= v109 >> 1)
                  {
                    v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1, v96);
                  }

                  *(v96 + 2) = v110 + 1;
                  v97 = &v96[40 * v110];
                  *(v97 + 4) = v105;
                  *(v97 + 5) = v104;
                  *(v97 + 6) = v106;
                  *(v97 + 7) = v107;
                  *(v97 + 8) = v108;
                  v16 = v126;
                }
              }

              v95 += 2;
              --v94;
            }

            while (v94);
          }

          else
          {

            v96 = MEMORY[0x277D84F90];
          }

          (*(*v114 + 136))(v96);
        }
      }

      v126 = v16;
      if (v5 > 4)
      {
        if (v5 > 6)
        {
          switch(v5)
          {
            case 7:
              v124 = 0xE900000000000072;
              v48 = 0x65706F6C65766544;
              goto LABEL_56;
            case 8:
              v124 = 0xE800000000000000;
              v48 = 0x7365766968637241;
              goto LABEL_56;
            case 9:
              v124 = 0xE700000000000000;
              v48 = 0x737265646C6F46;
LABEL_56:
              v50 = &v140;
              goto LABEL_57;
          }

LABEL_73:
          strcpy(v137, "Custom group ");
          HIWORD(v137[1]) = -4864;
          MEMORY[0x24C1FAEA0](v20, v5);
          v48 = v137[1];
          v120 = v137[0];
          v50 = &v141;
LABEL_57:
          *(v50 - 32) = v48;
          v119 = DOCItemFileTypeGroupCategory.localizedTitle.getter(v20, v5);
          v52 = v51;
          type metadata accessor for DOCCollectionNodes();
          v16 = swift_allocObject();
          v53 = MEMORY[0x277D84F90];
          *(v16 + 16) = MEMORY[0x277D84F90];
          v54 = v20;
          *(v16 + 24) = 0;
          v20 = v16 + 24;
          *(v16 + 32) = 0;
          swift_beginAccess();
          specialized Array.append<A>(contentsOf:)(v53);
          swift_endAccess();
          swift_beginAccess();
          *(v16 + 24) = 0;

          v55 = v126;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v137[0] = v55;
          v4 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v5);
          v58 = *(v55 + 16);
          v59 = (v57 & 1) == 0;
          v60 = v58 + v59;
          if (__OFADD__(v58, v59))
          {
            goto LABEL_82;
          }

          v61 = v57;
          if (*(v55 + 24) < v60)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60, isUniquelyReferenced_nonNull_native);
            v62 = specialized __RawDictionaryStorage.find<A>(_:)(v129, v5);
            if ((v61 & 1) != (v63 & 1))
            {
              goto LABEL_102;
            }

            v4 = v62;
            v64 = v137[0];
            if ((v61 & 1) == 0)
            {
              goto LABEL_61;
            }

LABEL_65:
            v71 = v64;
            v72 = (v64[7] + 40 * v4);
            v126 = v72[1];
            v73 = v124;
            *v72 = v120;
            v72[1] = v73;
            v72[2] = v119;
            v72[3] = v52;
            v72[4] = v16;

            v20 = v129;
LABEL_66:

            v16 = v71;
            goto LABEL_67;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v64 = v137[0];
            if (v57)
            {
              goto LABEL_65;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v64 = v137[0];
            if (v61)
            {
              goto LABEL_65;
            }
          }

LABEL_61:
          v64[(v4 >> 6) + 8] |= 1 << v4;
          v65 = (v64[6] + 16 * v4);
          v20 = v129;
          *v65 = v129;
          v65[1] = v5;
          v66 = (v64[7] + 40 * v4);
          v67 = v124;
          *v66 = v120;
          v66[1] = v67;
          v66[2] = v119;
          v66[3] = v52;
          v66[4] = v16;
          v68 = v64[2];
          v69 = __OFADD__(v68, 1);
          v70 = v68 + 1;
          if (v69)
          {
            goto LABEL_83;
          }

          v71 = v64;
          v64[2] = v70;
          outlined copy of DOCItemFileTypeGroupCategory(v20, v5);

          goto LABEL_66;
        }

        if (v5 == 5)
        {
          v120 = 0x6873646165727053;
          v48 = 0xEC00000073746565;
          v50 = &v141;
          goto LABEL_57;
        }

        v120 = 0x61746E6573657250;
        v49 = 1852795252;
      }

      else
      {
        if (v5 > 1)
        {
          if (v5 == 2)
          {
            v124 = 0xE500000000000000;
            v48 = 0x636973754DLL;
          }

          else if (v5 == 3)
          {
            v124 = 0xE600000000000000;
            v48 = 0x736569766F4DLL;
          }

          else
          {
            v124 = 0xE900000000000073;
            v48 = 0x746E656D75636F44;
          }

          goto LABEL_56;
        }

        if (v5)
        {
          if (v5 == 1)
          {
            v124 = 0xE600000000000000;
            v48 = 0x736567616D49;
            goto LABEL_56;
          }

          goto LABEL_73;
        }

        v120 = 0x75636F4420464450;
        v49 = 1953391981;
      }

      v48 = v49 | 0xED00007300000000;
      v50 = &v141;
      goto LABEL_57;
    }
  }

  v84 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_77;
  }

LABEL_86:
  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_87;
  }

LABEL_78:
  v85 = _DocumentManagerBundle();
  if (v85)
  {
    v86 = v85;
    v142._object = 0x8000000249BF0340;
    v87.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v87.value._object = 0xEB00000000656C62;
    v88._countAndFlagsBits = 0x726568744FLL;
    v88._object = 0xE500000000000000;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    v142._countAndFlagsBits = 0xD00000000000004FLL;
    v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(v88, v87, v86, v89, v142);

    type metadata accessor for DOCCollectionNodes();
    v91 = swift_allocObject();
    *(v91 + 16) = MEMORY[0x277D84F90];
    *(v91 + 24) = 0;
    *(v91 + 32) = 0;
    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(v84);
    swift_endAccess();
    swift_beginAccess();
    *(v91 + 24) = 0;
    v137[0] = 0x726568744FLL;
    v137[1] = 0xE500000000000000;
    v138 = v90;
    v139 = v91;
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v135 = v16;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v137, 0, 0xAuLL, v92);
    v16 = v135;
    goto LABEL_88;
  }

  __break(1u);
LABEL_102:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t DOCItemCollectionViewNodeGrouper.groupByDate(_:)(unsigned __int8 *a1)
{
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
  v157 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v3);
  v186 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v185 = &v155 - v7;
  v8 = type metadata accessor for Date();
  v160 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v166 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v155 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v169 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v155 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v159 = &v155 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v170 = &v155 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v155 - v30;
  v32 = *a1;
  v33 = MEMORY[0x277D84F90];
  v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables24DOCItemDateGroupCategoryO_AC20DOCCollectionSectionVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v196 = v33;
  v174 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables24DOCItemDateGroupCategoryO_10Foundation0G0VTt0g5Tf4g_n(v33);
  v35 = *(*v1 + 104);
  v161 = v1;
  v36 = v35();
  v37 = v36;
  if (v36 >> 62)
  {
    goto LABEL_105;
  }

  v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v188 = v8;
  if (v38)
  {
    v184 = v14;
    v39 = 0;
    v183 = v37 & 0xC000000000000001;
    v182 = "locked-by-collaborator";
    v162 = v37 & 0xFFFFFFFFFFFFFF8;
    v190 = (v160 + 56);
    v181 = (v160 + 48);
    v173 = (v160 + 32);
    v176 = (v160 + 16);
    v155 = 0x8000000249BE3020;
    v158 = v160 + 40;
    v167 = (v160 + 8);
    v177 = MEMORY[0x277D84F90];
    v180 = v37;
    v179 = v38;
    v187 = v32;
    v168 = v21;
    v172 = v31;
    while (1)
    {
      if (v183)
      {
        v42 = MEMORY[0x24C1FC540](v39);
        v43 = (v39 + 1);
        if (__OFADD__(v39, 1))
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v39 >= *(v162 + 16))
        {
          goto LABEL_102;
        }

        v42 = swift_unknownObjectRetain();
        v43 = (v39 + 1);
        if (__OFADD__(v39, 1))
        {
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          v153 = v37;
          v38 = __CocoaSet.count.getter();
          v37 = v153;
          goto LABEL_3;
        }
      }

      v191 = v42;
      v44 = *v190;
      (*v190)(v31, 1, 1, v8);
      v189 = v43;
      if (v32)
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v45 & 1) == 0)
        {
          if (v32 == 1)
          {
          }

          else
          {
            v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v51 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          v46 = v34;
          v47 = [v191 dateForSortingByRecents];
          if (!v47)
          {
            v49 = 1;
            v50 = v159;
            goto LABEL_28;
          }

          v48 = &v191;
          goto LABEL_27;
        }
      }

      else
      {
      }

      v46 = v34;
      v47 = [v191 modificationDate];
      if (v47)
      {
        v48 = &v195;
LABEL_27:
        v50 = *(v48 - 32);
        v52 = v47;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = 0;
        goto LABEL_28;
      }

      v49 = 1;
      v50 = v170;
LABEL_28:
      outlined destroy of CharacterSet?(v31, &_s10Foundation4DateVSgMd);
      v44(v50, v49, 1, v8);
      outlined init with take of (key: URL, value: FPItem)(v50, v31, &_s10Foundation4DateVSgMd);
      v34 = v46;
      v32 = v187;
LABEL_29:
      outlined init with copy of DOCGridLayout.Spec?(v31, v21, &_s10Foundation4DateVSgMd);
      if ((*v181)(v21, 1, v8) == 1)
      {
        outlined destroy of CharacterSet?(v21, &_s10Foundation4DateVSgMd);
LABEL_39:
        v14 = v191;
        v64 = swift_unknownObjectRetain();
        MEMORY[0x24C1FB090](v64);
        if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_unknownObjectRelease();
        outlined destroy of CharacterSet?(v31, &_s10Foundation4DateVSgMd);
        v177 = v196;
        goto LABEL_8;
      }

      v53 = v184;
      v171 = *v173;
      v171(v184, v21, v8);
      v54 = v169;
      v175 = *v176;
      v175(v169, v53, v8);
      v44(v54, 0, 1, v8);
      v55 = v53;
      v21 = specialized static DOCDateGrouping.categorize(_:)(v54);
      v56 = v8;
      v8 = v57;
      v14 = v58;
      v59 = ~v58;
      outlined destroy of CharacterSet?(v54, &_s10Foundation4DateVSgMd);
      if (!v59)
      {
        (*v167)(v55, v56);
        v8 = v56;
        v21 = v168;
        v31 = v172;
        goto LABEL_39;
      }

      if (*(v34 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v21, v8, v14), (v60 & 1) != 0))
      {
        v31 = v172;
        if (!*(v34 + 16))
        {
          goto LABEL_5;
        }
      }

      else
      {
        v61 = DOCItemDateGroupCategory.localizedTitle.getter(v21, v8, v14);
        v178 = v34;
        v165 = v61;
        if (v14 > 1u)
        {
          v63 = v62;
          if (v21 > 1)
          {
            if (v21 ^ 2 | v8)
            {
              v163 = 0xD000000000000010;
              v65 = v155;
            }

            else
            {
              v163 = 0x73756F6976657250;
              v65 = 0xEF73796164203720;
            }

            v66 = &v193;
          }

          else
          {
            if (v21 | v8)
            {
              v164 = 0xE900000000000079;
              v65 = 0x6164726574736559;
            }

            else
            {
              v164 = 0xE500000000000000;
              v65 = 0x7961646F54;
            }

            v66 = &v192;
          }

          *(v66 - 32) = v65;
        }

        else
        {
          v63 = v62;
          v163 = v21;
          v164 = v8;
        }

        type metadata accessor for DOCCollectionNodes();
        v67 = swift_allocObject();
        v68 = MEMORY[0x277D84F90];
        *(v67 + 16) = MEMORY[0x277D84F90];
        *(v67 + 24) = 0;
        *(v67 + 32) = 0;
        swift_beginAccess();
        outlined copy of DOCItemDateGroupCategory?(v21, v8, v14);
        specialized Array.append<A>(contentsOf:)(v68);
        swift_endAccess();
        swift_beginAccess();
        *(v67 + 24) = 0;
        v197[0] = v163;
        v197[1] = v164;
        v197[2] = v165;
        v197[3] = v63;
        v197[4] = v67;
        outlined init with copy of DOCCollectionSection(v197, v194);
        v69 = v178;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v194[0] = v69;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v197, v21, v8, v14, isUniquelyReferenced_nonNull_native);
        v31 = v194[0];
        v175(v166, v184, v188);
        v71 = v174;
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v194[0] = v71;
        v72 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v8, v14);
        v73 = v71[2];
        v74 = (v37 & 1) == 0;
        v75 = __OFADD__(v73, v74);
        v76 = v73 + v74;
        if (v75)
        {
          goto LABEL_103;
        }

        v77 = v37;
        if (v71[3] >= v76)
        {
          if ((v34 & 1) == 0)
          {
            v94 = v72;
            specialized _NativeDictionary.copy()();
            v72 = v94;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, v34);
          v72 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v8, v14);
          if ((v77 & 1) != (v78 & 1))
          {
            goto LABEL_112;
          }
        }

        v34 = v31;
        v79 = v194[0];
        v31 = v172;
        v174 = v194[0];
        if (v77)
        {
          (*(v160 + 40))(v194[0][7] + *(v160 + 72) * v72, v166, v188);
        }

        else
        {
          v194[0][(v72 >> 6) + 8] |= 1 << v72;
          v80 = v79[6] + 24 * v72;
          *v80 = v21;
          *(v80 + 8) = v8;
          *(v80 + 16) = v14;
          v171((v79[7] + *(v160 + 72) * v72), v166, v188);
          v81 = v174[2];
          v75 = __OFADD__(v81, 1);
          v82 = v81 + 1;
          if (v75)
          {
            goto LABEL_104;
          }

          v174[2] = v82;
          outlined copy of DOCItemDateGroupCategory(v21, v8, v14);
        }

        outlined destroy of DOCCollectionSection(v197);
        if (!*(v34 + 16))
        {
LABEL_5:
          v40 = v34;
          outlined consume of DOCItemDateGroupCategory?(v21, v8, v14);
          goto LABEL_6;
        }
      }

      v83 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v8, v14);
      v85 = v84;
      outlined consume of DOCItemDateGroupCategory?(v21, v8, v14);
      if (v85)
      {
        v86 = v34;
        v87 = (*(v34 + 56) + 40 * v83);
        v41 = *v87;
        v88 = v87[1];
        v14 = v87[4];

        if (v88)
        {

          outlined consume of DOCCollectionSection?(v41, v88);
          v89 = *(*v14 + 16);
          swift_unknownObjectRetain();
          v90 = v89(v194);
          v92 = v91;
          MEMORY[0x24C1FB090]();
          if (*((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v90(v194, 0);
          swift_unknownObjectRelease();

          v8 = v188;
          (*v167)(v184, v188);
          v93 = v172;
          outlined destroy of CharacterSet?(v172, &_s10Foundation4DateVSgMd);
          v34 = v86;
          v31 = v93;
          v21 = v168;
          goto LABEL_8;
        }

        v40 = v86;
        v31 = v172;
        goto LABEL_7;
      }

      v40 = v34;
LABEL_6:
      v14 = 0;
      v41 = 0;
LABEL_7:
      swift_unknownObjectRelease();
      v8 = v188;
      (*v167)(v184, v188);
      outlined destroy of CharacterSet?(v31, &_s10Foundation4DateVSgMd);
      outlined consume of DOCCollectionSection?(v41, 0);
      v21 = v168;
      v34 = v40;
      v32 = v187;
LABEL_8:
      ++v39;
      v37 = v180;
      if (v189 == v179)
      {

        v95 = v177;
        goto LABEL_73;
      }
    }
  }

  v95 = MEMORY[0x277D84F90];
LABEL_73:
  v96 = v174;
  v97 = v174[2];
  v98 = MEMORY[0x277D84F90];
  v178 = v34;
  v99 = v157;
  v177 = v95;
  if (v97)
  {
    v100 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0L0V5valuet_Tt1g5(v97, 0);
    v101 = v99;
    specialized Sequence._copySequenceContents(initializing:)(v194, v100 + ((*(v99 + 80) + 32) & ~*(v99 + 80)), v97, v96);
    countAndFlagsBits = v102;
    object = v194[0];
    v105 = v194[1];
    v106 = v194[2];
    v107 = v195;

    outlined consume of Set<UITouch>.Iterator._Variant();
    if (countAndFlagsBits != v97)
    {
      __break(1u);
      goto LABEL_110;
    }

    v34 = v178;
    v98 = MEMORY[0x277D84F90];
    v99 = v101;
  }

  else
  {
    v100 = MEMORY[0x277D84F90];
  }

  v194[0] = v100;
  specialized MutableCollection<>.sort(by:)(v194);
  v14 = v194[0];
  v108 = v194[0][2];
  if (!v108)
  {

    v109 = MEMORY[0x277D84F90];
    v121 = *(MEMORY[0x277D84F90] + 16);
    if (!v121)
    {
      goto LABEL_94;
    }

    goto LABEL_85;
  }

  v194[0] = v98;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v108, 0);
  v109 = v194[0];
  v110 = v14 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
  v111 = *(v99 + 72);
  v190 = v14;
  v191 = v111;
  v112 = (v160 + 8);
  v113 = v156;
  do
  {
    v114 = v185;
    outlined init with copy of DOCGridLayout.Spec?(v110, v185, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
    v115 = v186;
    outlined init with take of (key: URL, value: FPItem)(v114, v186, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
    v14 = *v115;
    v116 = *(v115 + 8);
    v117 = *(v115 + 16);
    (*v112)(v115 + *(v113 + 48), v188);
    v194[0] = v109;
    v119 = v109[2];
    v118 = v109[3];
    if (v119 >= v118 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v118 > 1), v119 + 1, 1);
      v113 = v156;
      v109 = v194[0];
    }

    v109[2] = v119 + 1;
    v120 = &v109[3 * v119];
    v120[4] = v14;
    v120[5] = v116;
    *(v120 + 48) = v117;
    v110 += v191;
    --v108;
  }

  while (v108);

  v34 = v178;
  v121 = v109[2];
  if (v121)
  {
LABEL_85:
    v122 = (v109 + 6);
    do
    {
      if (*(v34 + 16))
      {
        v125 = *(v122 - 2);
        v14 = *(v122 - 1);
        v126 = *v122;
        outlined copy of DOCItemDateGroupCategory(v125, v14, *v122);
        v127 = specialized __RawDictionaryStorage.find<A>(_:)(v125, v14, v126);
        v129 = v128;
        outlined consume of DOCItemDateGroupCategory(v125, v14, v126);
        if (v129)
        {
          v130 = *(v34 + 56) + 40 * v127;
          v131 = *v130;
          v14 = *(v130 + 8);
          v132 = *(v130 + 24);
          v190 = *(v130 + 16);
          v191 = v131;
          v133 = *(v130 + 32);
          v134 = *(*v161 + 144);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v189 = v134(v194);
          v136 = v135;
          v137 = *v135;
          v138 = swift_isUniquelyReferenced_nonNull_native();
          *v136 = v137;
          if ((v138 & 1) == 0)
          {
            v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v137 + 2) + 1, 1, v137);
            *v136 = v137;
          }

          v140 = *(v137 + 2);
          v139 = *(v137 + 3);
          if (v140 >= v139 >> 1)
          {
            v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v139 > 1), v140 + 1, 1, v137);
            *v136 = v137;
          }

          v34 = v178;
          *(v137 + 2) = v140 + 1;
          v123 = &v137[40 * v140];
          v124 = v190;
          *(v123 + 4) = v191;
          *(v123 + 5) = v14;
          *(v123 + 6) = v124;
          *(v123 + 7) = v132;
          *(v123 + 8) = v133;
          v189(v194, 0);
        }
      }

      v122 += 24;
      --v121;
    }

    while (v121);
  }

LABEL_94:

  v141 = v177;
  if (!(v177 >> 62))
  {
    if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_96;
    }

LABEL_107:
  }

  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_107;
  }

LABEL_96:
  v142 = _DocumentManagerBundle();
  if (v142)
  {
    v143 = v142;
    v97 = 0x726568744FLL;
    v198._object = 0x8000000249BF0340;
    v144.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v144.value._object = 0xEB00000000656C62;
    v198._countAndFlagsBits = 0xD00000000000004FLL;
    v145._countAndFlagsBits = 0x726568744FLL;
    v145._object = 0xE500000000000000;
    v146._countAndFlagsBits = 0;
    v146._object = 0xE000000000000000;
    v147 = NSLocalizedString(_:tableName:bundle:value:comment:)(v145, v144, v143, v146, v198);
    countAndFlagsBits = v147._countAndFlagsBits;
    object = v147._object;

    type metadata accessor for DOCCollectionNodes();
    v105 = swift_allocObject();
    v105[2] = MEMORY[0x277D84F90];
    *(v105 + 12) = 0;
    v105[4] = 0;
    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(v141);
    swift_endAccess();
    swift_beginAccess();
    *(v105 + 24) = 0;
    v100 = (*(*v161 + 144))(v194);
    v107 = v148;
    v106 = *v148;
    v149 = swift_isUniquelyReferenced_nonNull_native();
    *v107 = v106;
    if (v149)
    {
LABEL_98:
      v151 = *(v106 + 2);
      v150 = *(v106 + 3);
      if (v151 >= v150 >> 1)
      {
        v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v150 > 1), v151 + 1, 1, v106);
        *v107 = v106;
      }

      *(v106 + 2) = v151 + 1;
      v152 = &v106[40 * v151];
      *(v152 + 4) = v97;
      *(v152 + 5) = 0xE500000000000000;
      *(v152 + 6) = countAndFlagsBits;
      *(v152 + 7) = object;
      *(v152 + 8) = v105;
      (v100)(v194, 0);
    }

LABEL_110:
    v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 2) + 1, 1, v106);
    *v107 = v106;
    goto LABEL_98;
  }

  __break(1u);
LABEL_112:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t DOCItemCollectionViewNodeGrouper.groupBySize()()
{
  v4 = MEMORY[0x277D84F90];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables24DOCItemSizeGroupCategoryO_AC20DOCCollectionSectionVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v94 = v4;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables24DOCItemSizeGroupCategoryO_s5Int64VTt0g5Tf4g_n(v4);
  v82 = v0;
  v7 = (*(*v0 + 104))();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_39;
  }

  countAndFlagsBits = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!countAndFlagsBits)
  {
LABEL_40:

    v84 = MEMORY[0x277D84F90];
LABEL_41:
    v92 = v5;
    v33 = *(v6 + 16);
    v34 = MEMORY[0x277D84F90];
    if (v33)
    {
      v35 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26DocumentManagerExecutables24DOCItemSizeGroupCategoryO3key_s5Int64V5valuet_Tt1g5(*(v6 + 16), 0);
      v36 = specialized Sequence._copySequenceContents(initializing:)(&v93, (v35 + 32), v33, v6);

      outlined consume of Set<UITouch>.Iterator._Variant();
      if (v36 == v33)
      {
        goto LABEL_45;
      }

      __break(1u);
    }

    v35 = v34;
LABEL_45:
    v93 = v35;
    specialized MutableCollection<>.sort(by:)(&v93);
    v37 = v93;
    v38 = *(v93 + 2);
    if (v38)
    {
      v93 = v34;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
      v39 = 0;
      v40 = v93;
      v41 = *(v93 + 2);
      v42 = 24 * v41;
      do
      {
        v43 = *&v37[v39 + 32];
        v44 = v37[v39 + 48];
        v93 = v40;
        v45 = *(v40 + 3);
        v46 = v41 + 1;
        if (v41 >= v45 >> 1)
        {
          v90 = v43;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v41 + 1, 1);
          v43 = v90;
          v40 = v93;
        }

        *(v40 + 2) = v46;
        v47 = &v40[v42];
        *(v47 + 2) = v43;
        v47[48] = v44;
        v42 += 24;
        v39 += 32;
        v41 = v46;
        --v38;
      }

      while (v38);
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    v48 = *(v40 + 2);
    v49 = v92;
    if (v48)
    {
      v50 = v40 + 48;
      do
      {
        if (*(v49 + 2))
        {
          v52 = specialized __RawDictionaryStorage.find<A>(_:)(*(v50 - 2), *(v50 - 1), *v50);
          if (v53)
          {
            v54 = (*(v49 + 7) + 40 * v52);
            v55 = v54[1];
            v56 = v54[3];
            v88 = v54[2];
            v91 = *v54;
            v57 = v54[4];
            v58 = *(*v82 + 144);
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            swift_retain_n();
            v86 = v58(&v93);
            v60 = v59;
            v61 = *v59;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v60 = v61;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
              *v60 = v61;
            }

            v64 = *(v61 + 2);
            v63 = *(v61 + 3);
            if (v64 >= v63 >> 1)
            {
              v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v61);
              *v60 = v61;
            }

            *(v61 + 2) = v64 + 1;
            v51 = &v61[40 * v64];
            *(v51 + 4) = v91;
            *(v51 + 5) = v55;
            *(v51 + 6) = v88;
            *(v51 + 7) = v56;
            *(v51 + 8) = v57;
            v86(&v93, 0);

            v49 = v92;
          }
        }

        v50 += 24;
        --v48;
      }

      while (v48);

      v34 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    if (v84 >> 62)
    {
      if (__CocoaSet.count.getter() >= 1)
      {
        goto LABEL_66;
      }
    }

    else if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_66:
      v65 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
      v66 = _DocumentManagerBundle();
      if (v66)
      {
        v67 = v66;
        v96._object = 0x8000000249BF0390;
        v68.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v68.value._object = 0xEB00000000656C62;
        v69._countAndFlagsBits = 2960685;
        v69._object = 0xE300000000000000;
        v70._countAndFlagsBits = 0;
        v70._object = 0xE000000000000000;
        v96._countAndFlagsBits = 0xD000000000000033;
        v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, v68, v67, v70, v96);
        countAndFlagsBits = v71._countAndFlagsBits;
        object = v71._object;

        type metadata accessor for DOCCollectionNodes();
        v2 = swift_allocObject();
        *(v2 + 16) = v34;
        *(v2 + 24) = 0;
        *(v2 + 32) = 0;
        swift_beginAccess();
        specialized Array.append<A>(contentsOf:)(v84);
        swift_endAccess();
        swift_beginAccess();
        *(v2 + 24) = 0;
        v0 = (*(*v82 + 144))(&v93);
        v5 = v72;
        v3 = *v72;
        v73 = swift_isUniquelyReferenced_nonNull_native();
        *v5 = v3;
        if ((v73 & 1) == 0)
        {
          goto LABEL_75;
        }

        goto LABEL_68;
      }

      __break(1u);

      __break(1u);
      return result;
    }
  }

  while (countAndFlagsBits >= 1)
  {
    v87 = v6;
    v6 = 0;
    object = v8 & 0xC000000000000001;
    v78 = countAndFlagsBits;
    while (1)
    {
      if (object)
      {
        v11 = MEMORY[0x24C1FC540](v6, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      if (([v11 isFolder] & 1) != 0 || (v12 = objc_msgSend(v11, sel_fileSize)) == 0)
      {
LABEL_20:
        v16 = swift_unknownObjectRetain();
        MEMORY[0x24C1FB090](v16);
        if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_unknownObjectRelease();
        v4 = v94;
        goto LABEL_8;
      }

      v0 = v12;
      v2 = [v12 longLongValue];

      v89 = v2;
      if (v2 < 100)
      {
        v3 = 0;
        v13 = 0;
        v2 = 100;
        goto LABEL_25;
      }

      v14 = log10(v2);
      v15 = __exp10(floor(v14));
      if (v15 == INFINITY)
      {
        break;
      }

      if (v15 <= -9.22337204e18)
      {
        goto LABEL_36;
      }

      if (v15 >= 9.22337204e18)
      {
        goto LABEL_37;
      }

      v2 = v15;
      v3 = 10 * v15;
      if ((v15 * 10) >> 64 != v3 >> 63)
      {
        goto LABEL_20;
      }

      if (v3 < v2)
      {
        goto LABEL_38;
      }

      v13 = 1;
LABEL_25:
      v83 = v4;
      if (!*(v5 + 2) || (specialized __RawDictionaryStorage.find<A>(_:)(v2, v3, v13), (v17 & 1) == 0))
      {
        v85 = DOCItemSizeGroupCategory.localizedTitle.getter(v2, v3, v13);
        v81 = v18;
        v19 = DOCItemSizeGroupCategory.groupIdentifier.getter(v2, v3, v13);
        v79 = v20;
        v80 = v19;
        type metadata accessor for DOCCollectionNodes();
        v21 = swift_allocObject();
        v22 = MEMORY[0x277D84F90];
        *(v21 + 16) = MEMORY[0x277D84F90];
        *(v21 + 24) = 0;
        *(v21 + 32) = 0;
        swift_beginAccess();
        specialized Array.append<A>(contentsOf:)(v22);
        swift_endAccess();
        swift_beginAccess();
        *(v21 + 24) = 0;
        v95[0] = v80;
        v95[1] = v79;
        v95[2] = v85;
        v95[3] = v81;
        v95[4] = v21;
        outlined init with copy of DOCCollectionSection(v95, &v93);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v93 = v5;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, v2, v3, v13, v23);
        v5 = v93;
        v24 = swift_isUniquelyReferenced_nonNull_native();
        v93 = v87;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, v2, v3, v13, v24);
        outlined destroy of DOCCollectionSection(v95);
        v87 = v93;
      }

      if (*(v5 + 2) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v3, v13), (v26 & 1) != 0))
      {
        v27 = (*(v5 + 7) + 40 * v25);
        v10 = *v27;
        v3 = v27[1];
        v28 = v27[4];

        if (v3)
        {

          outlined consume of DOCCollectionSection?(v10, v3);
          v29 = *(*v28 + 128);
          swift_unknownObjectRetain();
          v30 = v29(&v93);
          v32 = v31;
          MEMORY[0x24C1FB090]();
          if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v30(&v93, 0);

          swift_unknownObjectRelease();
          goto LABEL_7;
        }
      }

      else
      {
        v10 = 0;
      }

      swift_unknownObjectRelease();
      outlined consume of DOCCollectionSection?(v10, 0);
LABEL_7:
      v4 = v83;
      object = v8 & 0xC000000000000001;
      countAndFlagsBits = v78;
LABEL_8:
      if (countAndFlagsBits == ++v6)
      {
        v84 = v4;

        v6 = v87;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    countAndFlagsBits = __CocoaSet.count.getter();
    if (!countAndFlagsBits)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_75:
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
  *v5 = v3;
LABEL_68:
  v75 = *(v3 + 16);
  v74 = *(v3 + 24);
  if (v75 >= v74 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v3);
    *v5 = v3;
  }

  *(v3 + 16) = v75 + 1;
  v76 = (v3 + 40 * v75);
  v76[4] = 0x6E776F6E6B6E55;
  v76[5] = 0xE700000000000000;
  v76[6] = countAndFlagsBits;
  v76[7] = object;
  v76[8] = v2;
  (v0)(&v93, 0);
}

uint64_t DOCItemCollectionViewNodeGrouper.groupBySharedBy()()
{
  v111 = type metadata accessor for PersonNameComponents();
  v1 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v2);
  v110 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO_AC20DOCCollectionSectionVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v127 = v4;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO_So7DOCNode_pTt0g5Tf4g_n(v4);
  v7 = *(*v0 + 104);
  v112 = v0;
  v8 = v7();
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v113 = v9 & 0xFFFFFFFFFFFFFF8;
    v109 = (v1 + 8);
    v116 = v9;
    v117 = MEMORY[0x277D84F90];
    v115 = i;
    v114 = v9 & 0xC000000000000001;
    while (v12)
    {
      v14 = MEMORY[0x24C1FC540](v11, v9);
      v15 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_55;
      }

LABEL_15:
      if (![v14 isShared])
      {
        v18 = swift_unknownObjectRetain();
        MEMORY[0x24C1FB090](v18);
        if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v1 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_unknownObjectRelease();
        v117 = v127;
        goto LABEL_8;
      }

      if ([v14 isSharedByCurrentUser])
      {
        v16 = 0;
        v17 = 0;
        if (!*(isUniquelyReferenced_nonNull_native + 16))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v19 = [v14 ownerNameComponents];
        if (v19)
        {
          v20 = v110;
          v21 = v19;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v22 = objc_opt_self();
          isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
          v24 = [v22 localizedStringFromPersonNameComponents:isa style:0 options:0];

          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v25;

          (*v109)(v20, v111);
          if (!*(isUniquelyReferenced_nonNull_native + 16))
          {
            goto LABEL_27;
          }
        }

        else
        {
          v16 = 0;
          v17 = 1;
          if (!*(isUniquelyReferenced_nonNull_native + 16))
          {
            goto LABEL_27;
          }
        }
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      if (v26)
      {
        goto LABEL_45;
      }

LABEL_27:
      v122 = DOCItemSharedByGroupCategory.localizedTitle.getter(v16, v17);
      v123 = v27;
      v119 = v15;
      v120 = v6;
      v118 = v14;
      if (v17)
      {
        if (v17 == 1)
        {
          v28 = 0xE600000000000000;
          v29 = 0x646572616853;
        }

        else
        {
          if (v17 == 2)
          {
            v121 = 0x7261685320746F4ELL;
            v28 = 0xEA00000000006465;
            goto LABEL_35;
          }

          v124 = 0x6220646572616853;
          v125 = 0xEA00000000002079;
          MEMORY[0x24C1FAEA0](v16, v17);
          v29 = v124;
          v28 = v125;
        }

        v121 = v29;
      }

      else
      {
        v121 = 0x6220646572616853;
        v28 = 0xEC000000654D2079;
      }

LABEL_35:
      type metadata accessor for DOCCollectionNodes();
      v9 = swift_allocObject();
      v30 = MEMORY[0x277D84F90];
      *(v9 + 16) = MEMORY[0x277D84F90];
      *(v9 + 24) = 0;
      v1 = v9 + 24;
      *(v9 + 32) = 0;
      swift_beginAccess();
      specialized Array.append<A>(contentsOf:)(v30);
      swift_endAccess();
      swift_beginAccess();
      *(v9 + 24) = 0;

      v31 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = v31;
      v6 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      v33 = v31[2];
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_57;
      }

      v1 = v32;
      if (v31[3] >= v35)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = v124;
          if ((v32 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          isUniquelyReferenced_nonNull_native = v124;
          if ((v1 & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v1 & 1) != (v37 & 1))
        {
          goto LABEL_95;
        }

        v6 = v36;
        isUniquelyReferenced_nonNull_native = v124;
        if ((v1 & 1) == 0)
        {
LABEL_39:
          *(isUniquelyReferenced_nonNull_native + 8 * (v6 >> 6) + 64) |= 1 << v6;
          v38 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v6);
          *v38 = v16;
          v38[1] = v17;
          v39 = (*(isUniquelyReferenced_nonNull_native + 56) + 40 * v6);
          v40 = v122;
          *v39 = v121;
          v39[1] = v28;
          v6 = v123;
          v39[2] = v40;
          v39[3] = v6;
          v39[4] = v9;
          v41 = *(isUniquelyReferenced_nonNull_native + 16);
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_58;
          }

          *(isUniquelyReferenced_nonNull_native + 16) = v43;
          outlined copy of DOCItemSharedByGroupCategory(v16, v17);
          goto LABEL_44;
        }
      }

      v44 = (*(isUniquelyReferenced_nonNull_native + 56) + 40 * v6);
      v45 = v122;
      *v44 = v121;
      v44[1] = v28;
      v46 = v123;
      v44[2] = v45;
      v44[3] = v46;
      v44[4] = v9;

LABEL_44:
      outlined copy of DOCItemSharedByGroupCategory(v16, v17);
      v47 = v118;
      swift_unknownObjectRetain();
      v48 = v120;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v124 = v48;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v16, v17, v49);
      outlined consume of DOCItemSharedByGroupCategory(v16, v17);

      v6 = v124;
      v15 = v119;
LABEL_45:
      if (!*(isUniquelyReferenced_nonNull_native + 16))
      {
        outlined consume of DOCItemSharedByGroupCategory(v16, v17);
LABEL_5:
        v1 = 0;
        v13 = 0;
        goto LABEL_6;
      }

      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      v52 = v51;
      outlined consume of DOCItemSharedByGroupCategory(v16, v17);
      if ((v52 & 1) == 0)
      {
        goto LABEL_5;
      }

      v53 = isUniquelyReferenced_nonNull_native;
      v54 = (*(isUniquelyReferenced_nonNull_native + 56) + 40 * v50);
      v13 = *v54;
      v55 = v54[1];
      v1 = v54[4];

      if (v55)
      {

        outlined consume of DOCCollectionSection?(v13, v55);
        v56 = *(*v1 + 128);
        swift_unknownObjectRetain();
        v57 = v56(&v124);
        v59 = v58;
        MEMORY[0x24C1FB090]();
        if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v57(&v124, 0);

        swift_unknownObjectRelease();
        isUniquelyReferenced_nonNull_native = v53;
        goto LABEL_7;
      }

      isUniquelyReferenced_nonNull_native = v53;
LABEL_6:
      swift_unknownObjectRelease();
      outlined consume of DOCCollectionSection?(v13, 0);
LABEL_7:
      v9 = v116;
      i = v115;
      v12 = v114;
LABEL_8:
      ++v11;
      if (v15 == i)
      {

        goto LABEL_61;
      }
    }

    if (v11 >= *(v113 + 16))
    {
      goto LABEL_56;
    }

    v14 = *(v9 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v15 = (v11 + 1);
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_15;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  v117 = MEMORY[0x277D84F90];
LABEL_61:
  v60 = *(v6 + 16);
  v61 = MEMORY[0x277D84F90];
  v120 = isUniquelyReferenced_nonNull_native;
  if (v60)
  {
    countAndFlagsBits = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO3key_So7DOCNode_p5valuet_Tt1g5(v60, 0);
    object = specialized Sequence._copySequenceContents(initializing:)(&v124, (countAndFlagsBits + 4), v60, v6);
    v64 = v124;
    v65 = v125;
    v66 = v126;

    outlined consume of Set<UITouch>.Iterator._Variant();
    if (object != v60)
    {
      __break(1u);
      goto LABEL_93;
    }

    isUniquelyReferenced_nonNull_native = v120;
  }

  else
  {
    countAndFlagsBits = MEMORY[0x277D84F90];
  }

  v124 = countAndFlagsBits;
  specialized MutableCollection<>.sort(by:)(&v124);
  v67 = v124;
  v68 = *(v124 + 16);
  if (!v68)
  {

    v11 = MEMORY[0x277D84F90];
    v75 = *(MEMORY[0x277D84F90] + 16);
    if (!v75)
    {
      goto LABEL_82;
    }

    goto LABEL_73;
  }

  v124 = v61;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68, 0);
  v11 = v124;
  v69 = v67 + 5;
  do
  {
    v70 = *(v69 - 1);
    v71 = *v69;
    outlined copy of DOCItemSharedByGroupCategory(v70, *v69);
    v124 = v11;
    v73 = *(v11 + 16);
    v72 = *(v11 + 24);
    if (v73 >= v72 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1);
      v11 = v124;
    }

    v69 += 3;
    *(v11 + 16) = v73 + 1;
    v74 = (v11 + 16 * v73);
    v74[4] = v70;
    v74[5] = v71;
    --v68;
  }

  while (v68);

  isUniquelyReferenced_nonNull_native = v120;
  v75 = *(v11 + 16);
  if (v75)
  {
LABEL_73:
    v76 = (v11 + 40);
    do
    {
      if (*(isUniquelyReferenced_nonNull_native + 16))
      {
        v80 = *(v76 - 1);
        v79 = *v76;
        outlined copy of DOCItemSharedByGroupCategory(v80, *v76);
        v81 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v79);
        v83 = v82;
        outlined consume of DOCItemSharedByGroupCategory(v80, v79);
        if (v83)
        {
          v84 = (*(isUniquelyReferenced_nonNull_native + 56) + 40 * v81);
          v85 = *v84;
          v86 = v84[1];
          v87 = v84[3];
          v122 = v84[2];
          v123 = v85;
          v88 = v84[4];
          v89 = *(*v112 + 144);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v121 = v89(&v124);
          v91 = v90;
          v92 = *v90;
          v93 = swift_isUniquelyReferenced_nonNull_native();
          *v91 = v92;
          if ((v93 & 1) == 0)
          {
            v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 2) + 1, 1, v92);
            *v91 = v92;
          }

          v95 = *(v92 + 2);
          v94 = *(v92 + 3);
          if (v95 >= v94 >> 1)
          {
            v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v92);
            *v91 = v92;
          }

          *(v92 + 2) = v95 + 1;
          v77 = &v92[40 * v95];
          v78 = v122;
          *(v77 + 4) = v123;
          *(v77 + 5) = v86;
          *(v77 + 6) = v78;
          *(v77 + 7) = v87;
          *(v77 + 8) = v88;
          (v121)(&v124, 0);

          isUniquelyReferenced_nonNull_native = v120;
        }
      }

      v76 += 2;
      --v75;
    }

    while (v75);
  }

LABEL_82:

  if (!(v117 >> 62))
  {
    if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_84;
    }

LABEL_90:
  }

  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_90;
  }

LABEL_84:
  v96 = _DocumentManagerBundle();
  if (v96)
  {
    v97 = v96;
    v128._object = 0x8000000249BF03D0;
    v98.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v98.value._object = 0xEB00000000656C62;
    v99._countAndFlagsBits = 0x7261685320746F4ELL;
    v99._object = 0xEA00000000006465;
    v100._countAndFlagsBits = 0;
    v100._object = 0xE000000000000000;
    v128._countAndFlagsBits = 0xD00000000000003ALL;
    v101 = NSLocalizedString(_:tableName:bundle:value:comment:)(v99, v98, v97, v100, v128);
    countAndFlagsBits = v101._countAndFlagsBits;
    object = v101._object;

    type metadata accessor for DOCCollectionNodes();
    v64 = swift_allocObject();
    v64[2] = MEMORY[0x277D84F90];
    *(v64 + 12) = 0;
    v64[4] = 0;
    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(v117);
    swift_endAccess();
    swift_beginAccess();
    *(v64 + 24) = 0;
    v60 = (*(*v112 + 144))(&v124);
    v66 = v102;
    v65 = *v102;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    *v66 = v65;
    if (v103)
    {
LABEL_86:
      v105 = *(v65 + 2);
      v104 = *(v65 + 3);
      if (v105 >= v104 >> 1)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1, v65);
        *v66 = v65;
      }

      *(v65 + 2) = v105 + 1;
      v106 = &v65[40 * v105];
      *(v106 + 4) = 0x7261685320746F4ELL;
      *(v106 + 5) = 0xEA00000000006465;
      *(v106 + 6) = countAndFlagsBits;
      *(v106 + 7) = object;
      *(v106 + 8) = v64;
      v60(&v124, 0);
    }

LABEL_93:
    v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
    *v66 = v65;
    goto LABEL_86;
  }

  __break(1u);
LABEL_95:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t DOCItemCollectionViewNodeGrouper.deinit()
{

  return v0;
}

uint64_t DOCItemCollectionViewNodeGrouper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v110 = result;
    while (1)
    {
      v11 = v9;
      if (v9 + 1 >= v8)
      {
        v22 = v9 + 1;
      }

      else
      {
        v117 = v8;
        v106 = v10;
        v108 = v5;
        v12 = *v6;
        v13 = (*v6 + 24 * (v9 + 1));
        v14 = *v13;
        v15 = v13[1];
        v16 = v9;
        v113 = 24 * v9;
        v17 = (v12 + 24 * v9);
        v18 = *v17;
        v9 = v17[1];
        swift_getObjectType();
        outlined copy of DOCItemSharedByGroupCategory(v14, v15);
        swift_unknownObjectRetain();
        outlined copy of DOCItemSharedByGroupCategory(v18, v9);
        v19 = swift_unknownObjectRetain();
        v115 = DOCNode.compareBySharedStatus(node:)(v19);
        outlined consume of DOCItemSharedByGroupCategory(v18, v9);
        swift_unknownObjectRelease();
        outlined consume of DOCItemSharedByGroupCategory(v14, v15);
        result = swift_unknownObjectRelease();
        v104 = v16;
        v20 = v16 + 2;
        v21 = v17 + 8;
        while (1)
        {
          v22 = v117;
          if (v117 == v20)
          {
            break;
          }

          v23 = *(v21 - 1);
          v9 = *(v21 - 5);
          v24 = *(v21 - 4);
          v25 = *(v21 - 2);
          swift_getObjectType();
          outlined copy of DOCItemSharedByGroupCategory(v25, v23);
          swift_unknownObjectRetain();
          outlined copy of DOCItemSharedByGroupCategory(v9, v24);
          v26 = swift_unknownObjectRetain();
          v27 = DOCNode.compareBySharedStatus(node:)(v26);
          outlined consume of DOCItemSharedByGroupCategory(v9, v24);
          swift_unknownObjectRelease();
          outlined consume of DOCItemSharedByGroupCategory(v25, v23);
          result = swift_unknownObjectRelease();
          ++v20;
          v21 += 3;
          if ((v115 == -1) == (v27 != -1))
          {
            v22 = v20 - 1;
            break;
          }
        }

        v28 = v113;
        v10 = v106;
        v5 = v108;
        v7 = v110;
        v6 = a3;
        v11 = v104;
        if (v115 == -1)
        {
          if (v22 < v104)
          {
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
            return result;
          }

          if (v104 < v22)
          {
            v29 = 0;
            v30 = 24 * v22;
            v31 = v104;
            do
            {
              if (v31 != v22 + v29 - 1)
              {
                v37 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v32 = (v37 + v28);
                v33 = v37 + v30;
                v34 = *(v32 + 2);
                v35 = *v32;
                v36 = *(v33 - 8);
                *v32 = *(v33 - 24);
                *(v32 + 2) = v36;
                *(v33 - 24) = v35;
                *(v33 - 8) = v34;
              }

              ++v31;
              --v29;
              v30 -= 24;
              v28 += 24;
            }

            while (v31 < v22 + v29);
          }
        }
      }

      v38 = *(v6 + 8);
      if (v22 >= v38)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v22, v11))
      {
        goto LABEL_117;
      }

      if (v22 - v11 >= a4)
      {
        goto LABEL_28;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_118;
      }

      if (v11 + a4 >= v38)
      {
        v9 = *(v6 + 8);
      }

      else
      {
        v9 = v11 + a4;
      }

      if (v9 < v11)
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      if (v22 == v9)
      {
LABEL_28:
        v9 = v22;
        if (v22 < v11)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v107 = v10;
        v109 = v5;
        v119 = *v6;
        v86 = (*v6 + 24 * v22 - 24);
        v105 = v11;
        v87 = v11 - v22;
        v112 = v9;
        do
        {
          v116 = v86;
          v118 = v22;
          v88 = (v119 + 24 * v22);
          v90 = *v88;
          v89 = v88[1];
          v114 = v87;
          do
          {
            v91 = *v86;
            v92 = v86[1];
            swift_getObjectType();
            outlined copy of DOCItemSharedByGroupCategory(v90, v89);
            swift_unknownObjectRetain();
            outlined copy of DOCItemSharedByGroupCategory(v91, v92);
            v93 = swift_unknownObjectRetain();
            v94 = DOCNode.compareBySharedStatus(node:)(v93);
            outlined consume of DOCItemSharedByGroupCategory(v91, v92);
            swift_unknownObjectRelease();
            outlined consume of DOCItemSharedByGroupCategory(v90, v89);
            result = swift_unknownObjectRelease();
            if (v94 != -1)
            {
              break;
            }

            if (!v119)
            {
              goto LABEL_122;
            }

            v89 = v86[4];
            v95 = v86[5];
            v96 = v86[2];
            v90 = v86[3];
            *(v86 + 3) = *v86;
            v86[5] = v96;
            *v86 = v90;
            v86[1] = v89;
            v86[2] = v95;
            v86 -= 3;
          }

          while (!__CFADD__(v87++, 1));
          v22 = v118 + 1;
          v86 = v116 + 3;
          v9 = v112;
          v87 = v114 - 1;
        }

        while (v118 + 1 != v112);
        v10 = v107;
        v5 = v109;
        v7 = v110;
        v6 = a3;
        v11 = v105;
        if (v112 < v105)
        {
          goto LABEL_116;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v40 = *(v10 + 2);
      v39 = *(v10 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v41;
      v42 = &v10[16 * v40];
      *(v42 + 4) = v11;
      *(v42 + 5) = v9;
      v43 = *v7;
      if (!*v7)
      {
        goto LABEL_126;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v45 = *(v10 + 4);
            v46 = *(v10 + 5);
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_48:
            if (v48)
            {
              goto LABEL_105;
            }

            v61 = &v10[16 * v41];
            v63 = *v61;
            v62 = *(v61 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_108;
            }

            v67 = &v10[16 * v44 + 32];
            v69 = *v67;
            v68 = *(v67 + 1);
            v55 = __OFSUB__(v68, v69);
            v70 = v68 - v69;
            if (v55)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v65, v70))
            {
              goto LABEL_112;
            }

            if (v65 + v70 >= v47)
            {
              if (v47 < v70)
              {
                v44 = v41 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v71 = &v10[16 * v41];
          v73 = *v71;
          v72 = *(v71 + 1);
          v55 = __OFSUB__(v72, v73);
          v65 = v72 - v73;
          v66 = v55;
LABEL_62:
          if (v66)
          {
            goto LABEL_107;
          }

          v74 = &v10[16 * v44];
          v76 = *(v74 + 4);
          v75 = *(v74 + 5);
          v55 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v55)
          {
            goto LABEL_110;
          }

          if (v77 < v65)
          {
            goto LABEL_3;
          }

LABEL_69:
          v82 = v44 - 1;
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_119;
          }

          if (!*v6)
          {
            goto LABEL_123;
          }

          v83 = *&v10[16 * v82 + 32];
          v84 = *&v10[16 * v44 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 24 * v83), (*v6 + 24 * *&v10[16 * v44 + 32]), *v6 + 24 * v84, v43);
          if (v5)
          {
          }

          if (v84 < v83)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v82 >= *(v10 + 2))
          {
            goto LABEL_102;
          }

          v85 = &v10[16 * v82];
          *(v85 + 4) = v83;
          *(v85 + 5) = v84;
          result = specialized Array.remove(at:)(v44);
          v41 = *(v10 + 2);
          if (v41 <= 1)
          {
            goto LABEL_3;
          }
        }

        v49 = &v10[16 * v41 + 32];
        v50 = *(v49 - 64);
        v51 = *(v49 - 56);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_103;
        }

        v54 = *(v49 - 48);
        v53 = *(v49 - 40);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_104;
        }

        v56 = &v10[16 * v41];
        v58 = *v56;
        v57 = *(v56 + 1);
        v55 = __OFSUB__(v57, v58);
        v59 = v57 - v58;
        if (v55)
        {
          goto LABEL_106;
        }

        v55 = __OFADD__(v47, v59);
        v60 = v47 + v59;
        if (v55)
        {
          goto LABEL_109;
        }

        if (v60 >= v52)
        {
          v78 = &v10[16 * v44 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v55 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v55)
          {
            goto LABEL_113;
          }

          if (v47 < v81)
          {
            v44 = v41 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v8 = *(v6 + 8);
      v7 = v110;
      if (v9 >= v8)
      {
        goto LABEL_89;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_89:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_127;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    v10 = result;
  }

  v98 = *(v10 + 2);
  if (v98 >= 2)
  {
    while (1)
    {
      v99 = *v6;
      if (!*v6)
      {
        goto LABEL_124;
      }

      v100 = v10;
      v10 = (v98 - 1);
      v101 = *&v100[16 * v98];
      v6 = *&v100[16 * v98 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((v99 + 24 * v101), (v99 + 24 * *&v100[16 * v98 + 16]), v99 + 24 * v6, v9);
      if (v5)
      {
      }

      if (v6 < v101)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = specialized _ArrayBuffer._consumeAndCreateNew()(v100);
      }

      if (v98 - 2 >= *(v100 + 2))
      {
        goto LABEL_115;
      }

      v102 = &v100[16 * v98];
      *v102 = v101;
      *(v102 + 1) = v6;
      result = specialized Array.remove(at:)(v10);
      v10 = v100;
      v98 = *(v100 + 2);
      v6 = a3;
      if (v98 <= 1)
      {
      }
    }
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t *__src, uint64_t *__dst, unint64_t a3, uint64_t *a4)
{
  v4 = __dst;
  v5 = __src;
  v6 = __dst - __src;
  v7 = (__dst - __src) / 24;
  v46 = a3;
  v8 = a3 - __dst;
  v9 = (a3 - __dst) / 24;
  if (v7 >= v9)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      v22 = a4;
      memmove(a4, __dst, 24 * v9);
      a4 = v22;
    }

    v11 = &a4[3 * v9];
    v10 = a4;
    if (v8 < 24 || v4 <= v5)
    {
LABEL_33:
      v33 = v4;
    }

    else
    {
      __srca = a4;
      v45 = v5;
      do
      {
        v23 = 0;
        v24 = v11;
        v37 = v4 - 3;
        v40 = v4;
        v38 = v11;
        while (1)
        {
          v11 = &v24[v23];
          v25 = (v46 + v23);
          v26 = &v24[v23 - 24];
          v27 = *v26;
          v28 = *&v24[v23 - 16];
          v44 = *v26;
          v29 = *(v4 - 2);
          v41 = (v46 + v23 - 24);
          v42 = *(v4 - 3);
          swift_getObjectType();
          outlined copy of DOCItemSharedByGroupCategory(v27, v28);
          swift_unknownObjectRetain();
          outlined copy of DOCItemSharedByGroupCategory(v42, v29);
          v30 = swift_unknownObjectRetain();
          v31 = DOCNode.compareBySharedStatus(node:)(v30);
          outlined consume of DOCItemSharedByGroupCategory(v42, v29);
          swift_unknownObjectRelease();
          outlined consume of DOCItemSharedByGroupCategory(v44, v28);
          swift_unknownObjectRelease();
          if (v31 == -1)
          {
            break;
          }

          if (v25 != v11)
          {
            v32 = *v26;
            *(v46 + v23 - 8) = v26[2];
            *v41 = v32;
          }

          v23 -= 24;
          v24 = v38;
          v10 = __srca;
          v11 = &v38[v23];
          v4 = v40;
          if (&v38[v23] <= __srca)
          {
            goto LABEL_33;
          }
        }

        v33 = v37;
        if (v25 != v40)
        {
          v34 = *v37;
          *(v46 + v23 - 8) = v37[2];
          *v41 = v34;
        }

        v10 = __srca;
        if (v11 <= __srca)
        {
          break;
        }

        v46 = v46 + v23 - 24;
        v4 = v37;
      }

      while (v37 > v45);
      v11 = &v38[v23];
    }
  }

  else
  {
    v10 = a4;
    if (a4 != __src || &__src[3 * v7] <= a4)
    {
      memmove(a4, __src, 24 * v7);
    }

    v11 = &v10[3 * v7];
    if (v6 >= 24 && v4 < v46)
    {
      v43 = v11;
      while (1)
      {
        v12 = *v4;
        v13 = v4[1];
        v14 = v4;
        v16 = *v10;
        v15 = v10[1];
        swift_getObjectType();
        outlined copy of DOCItemSharedByGroupCategory(v12, v13);
        swift_unknownObjectRetain();
        outlined copy of DOCItemSharedByGroupCategory(v16, v15);
        v17 = swift_unknownObjectRetain();
        v18 = DOCNode.compareBySharedStatus(node:)(v17);
        outlined consume of DOCItemSharedByGroupCategory(v16, v15);
        swift_unknownObjectRelease();
        outlined consume of DOCItemSharedByGroupCategory(v12, v13);
        swift_unknownObjectRelease();
        if (v18 != -1)
        {
          break;
        }

        v19 = v14;
        v4 = v14 + 3;
        if (v5 != v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v5 += 3;
        v11 = v43;
        if (v10 >= v43 || v4 >= v46)
        {
          goto LABEL_32;
        }
      }

      v19 = v10;
      v20 = v5 == v10;
      v10 += 3;
      v4 = v14;
      if (v20)
      {
        goto LABEL_11;
      }

LABEL_10:
      v21 = *v19;
      v5[2] = v19[2];
      *v5 = v21;
      goto LABEL_11;
    }

LABEL_32:
    v33 = v5;
  }

  v35 = (v11 - v10) / 24;
  if (v33 != v10 || v33 >= &v10[3 * v35])
  {
    memmove(v33, v10, 24 * v35);
  }

  return 1;
}

BOOL specialized static DOCItemCollectionViewNodeGrouper.canGroup(by:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 10)
  {
    return 0;
  }

  if (specialized == infix<A>(_:_:)(*a1, 5u) & 1) != 0 || (specialized == infix<A>(_:_:)(v1, 0))
  {
    return 1;
  }

  v3 = specialized == infix<A>(_:_:)(v1, 1u);
  result = 1;
  if ((v3 & 1) == 0)
  {
    return (specialized == infix<A>(_:_:)(v1, 4u) & 1) != 0 || (specialized == infix<A>(_:_:)(v1, 6u) & 1) != 0;
  }

  return result;
}

uint64_t specialized static DOCItemCollectionFPController.removeSentinel(from:)(unint64_t a1)
{
  v1 = a1;
  v19 = a1;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_66;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v6 = 0;
  while (1)
  {
    if (v4 == v6)
    {
      if (v3)
      {
        result = __CocoaSet.count.getter();
        v6 = result;
      }

      else
      {
        v6 = *(v2 + 16);
      }

      goto LABEL_23;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v6, v1);
    }

    else
    {
      if (v6 >= *(v2 + 16))
      {
        goto LABEL_59;
      }

      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    Document = DOCNode.isCreateDocumentSentinel()();
    result = swift_unknownObjectRelease();
    v8 = v6 + 1;
    v9 = __OFADD__(v6, 1);
    if (Document)
    {
      break;
    }

    ++v6;
    if (v9)
    {
      goto LABEL_60;
    }
  }

  if (!v9)
  {
    if (v3)
    {
      result = __CocoaSet.count.getter();
      if (v8 != result)
      {
LABEL_26:
        v2 = v6 + 5;
        do
        {
          v11 = v2 - 4;
          v3 = v1 & 0xC000000000000001;
          if ((v1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x24C1FC540](v2 - 4, v1);
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_61;
            }

            if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_62;
            }

            swift_unknownObjectRetain();
          }

          swift_getObjectType();
          v12 = DOCNode.isCreateDocumentSentinel()();
          result = swift_unknownObjectRelease();
          if (!v12)
          {
            if (v11 != v6)
            {
              if (v3)
              {
                v13 = MEMORY[0x24C1FC540](v6, v1);
                v14 = MEMORY[0x24C1FC540](v2 - 4, v1);
              }

              else
              {
                if (v6 < 0)
                {
                  goto LABEL_69;
                }

                v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v6 >= v15)
                {
                  goto LABEL_70;
                }

                if (v11 >= v15)
                {
                  goto LABEL_71;
                }

                v13 = *(v1 + 8 * v6 + 32);
                v14 = *(v1 + 8 * v2);
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
              {
                v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
                v16 = (v1 >> 62) & 1;
              }

              else
              {
                LODWORD(v16) = 0;
              }

              v3 = v1 & 0xFFFFFFFFFFFFFF8;
              *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v14;
              swift_unknownObjectRelease();
              if ((v1 & 0x8000000000000000) != 0 || v16)
              {
                v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
                v3 = v1 & 0xFFFFFFFFFFFFFF8;
                if ((v11 & 0x8000000000000000) != 0)
                {
LABEL_58:
                  __break(1u);
LABEL_59:
                  __break(1u);
LABEL_60:
                  __break(1u);
LABEL_61:
                  __break(1u);
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  v4 = __CocoaSet.count.getter();
                  goto LABEL_3;
                }
              }

              else if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_58;
              }

              if (v11 >= *(v3 + 16))
              {
                goto LABEL_65;
              }

              *(v3 + 8 * v2) = v13;
              swift_unknownObjectRelease();
              v19 = v1;
            }

            if (__OFADD__(v6++, 1))
            {
              goto LABEL_64;
            }
          }

          v18 = v2 - 3;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_63;
          }

          if (v1 >> 62)
          {
            result = __CocoaSet.count.getter();
          }

          else
          {
            result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v2;
        }

        while (v18 != result);
      }
    }

    else
    {
      result = *(v2 + 16);
      if (v8 != result)
      {
        goto LABEL_26;
      }
    }

LABEL_23:
    if (v1 >> 62)
    {
      result = __CocoaSet.count.getter();
      v10 = result;
      if (result >= v6)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 >= v6)
      {
LABEL_25:
        specialized Array.replaceSubrange<A>(_:with:)(v6, v10);
        return v19;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized static DOCItemCollectionFPController.createFlatNodes(with:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v30 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  v28 = *(a1 + 16);
  while (1)
  {
    v5 = *(**(v30 + 40 * v2 + 32) + 112);

    v7 = v5(v6);
    v8 = v7;
    v9 = v7 >> 62;
    if (v7 >> 62)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v3 >> 62;
    if (v3 >> 62)
    {
      v27 = __CocoaSet.count.getter();
      v13 = v27 + v10;
      if (__OFADD__(v27, v10))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v31 = v10;
    if (result)
    {
      if (!v11)
      {
        v14 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      __CocoaSet.count.getter();
      goto LABEL_15;
    }

    if (v11)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v16 >> 1) - v15) < v31)
    {
      goto LABEL_37;
    }

    v18 = v14 + 8 * v15 + 32;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_39;
      }

      v29 = v3;
      lazy protocol witness table accessor for type [DOCNode] and conformance [A]();
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
        v21 = specialized protocol witness for Collection.subscript.read in conformance [A](v32, i, v8);
        v23 = *v22;
        swift_unknownObjectRetain();
        (v21)(v32, 0);
        *(v18 + 8 * i) = v23;
      }

      v1 = v28;
      v3 = v29;
      v19 = v31;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v19 = v31;
      swift_arrayInitWithCopy();
    }

    if (v19 > 0)
    {
      v24 = *(v14 + 16);
      v25 = __OFADD__(v24, v19);
      v26 = v24 + v19;
      if (v25)
      {
        goto LABEL_38;
      }

      *(v14 + 16) = v26;
    }

LABEL_4:
    if (++v2 == v1)
    {
      return v3;
    }
  }

  result = __CocoaSet.count.getter();
  v17 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v31 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionFPController(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionFPController(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined consume of DOCItemDateGroupCategory(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t outlined copy of DOCItemDateGroupCategory?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined copy of DOCItemDateGroupCategory(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of DOCItemDateGroupCategory?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined consume of DOCItemDateGroupCategory(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of DOCItemSharedByGroupCategory(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t static GetFilesIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables14GetFilesIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables14GetFilesIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type GetFilesIntent and conformance GetFilesIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BF0440;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables14GetFilesIntentV10AppIntents0H9ParameterCySayAC12FINodeEntityVGGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

void (*GetFilesIntent.files.modify(uint64_t *a1))(void *a1)
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
  return NavigateHistoryIntent.direction.modify;
}

uint64_t static GetFilesIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static GetFilesIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static GetFilesIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static GetFilesIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static GetFilesIntent.authenticationPolicy.modify())()
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v0, static GetFilesIntent.authenticationPolicy);
  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static GetFilesIntent.authenticationPolicy : GetFilesIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static GetFilesIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static GetFilesIntent.authenticationPolicy : GetFilesIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static GetFilesIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t GetFilesIntent.perform()(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](GetFilesIntent.perform(), 0, 0);
}

uint64_t GetFilesIntent.perform()()
{
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.AppIntents);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2493AC000, v2, v3, "[GetFilesIntent] Performing Get Files intent", v4, 2u);
    MEMORY[0x24C1FE850](v4, -1, -1);
  }

  IntentParameter.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd);
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A]();
  static IntentResult.result<A>(value:)();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance GetFilesIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static GetFilesIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance GetFilesIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return GetFilesIntent.perform()(a1, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance GetFilesIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of GetFilesIntent.init(files:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance GetFilesIntent(uint64_t a1)
{
  FilesIntent = lazy protocol witness table accessor for type GetFilesIntent and conformance GetFilesIntent();

  return MEMORY[0x28210B538](a1, FilesIntent);
}

uint64_t default argument 0 of GetFilesIntent.init(files:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v35 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v40 = &v31 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v19 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v32 = type metadata accessor for LocalizedStringResource();
  v21 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v22);
  v33 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v13 + 104);
  v25(v16, v24, v12);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v16, v24, v12);
  v26 = v40;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v21 + 56))(v26, 0, 1, v32);
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  v27 = type metadata accessor for IntentDialog();
  v28 = *(*(v27 - 8) + 56);
  v28(v35, 1, 1, v27);
  v28(v36, 1, 1, v27);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_249B9A480;
  static UTType.item.getter();
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  v41 = FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(v29, 1);
  v42 = 2;
  (*(v38 + 104))(v37, *MEMORY[0x277CBA308], v39);
  lazy protocol witness table accessor for type LocationOptionsProvider and conformance LocationOptionsProvider();
  _s26DocumentManagerExecutables12FINodeEntityVAC10AppIntents12_IntentValueAAWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity);
  return IntentParameter<>.init<A>(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
}

id DOCItemCollectionListCellSpringLoadedInteractionEffect.__allocating_init(targetCell:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables54DOCItemCollectionListCellSpringLoadedInteractionEffect_blinkDuration] = 0x3FB999999999999ALL;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

uint64_t ItemIndentation.init(rawValue:)(double a1)
{
  if (a1 == 60.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 30.0)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

double ItemIndentation.rawValue.getter(char a1)
{
  result = 60.0;
  if ((a1 & 1) == 0)
  {
    return 30.0;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ItemIndentation(_BYTE *a1, _BYTE *a2)
{
  v2 = 60.0;
  if (*a1)
  {
    v3 = 60.0;
  }

  else
  {
    v3 = 30.0;
  }

  if (!*a2)
  {
    v2 = 30.0;
  }

  return v3 == v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ItemIndentation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0x404E000000000000;
  }

  else
  {
    v2 = 0x403E000000000000;
  }

  MEMORY[0x24C1FCC00](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ItemIndentation()
{
  if (*v0)
  {
    v1 = 0x404E000000000000;
  }

  else
  {
    v1 = 0x403E000000000000;
  }

  return MEMORY[0x24C1FCC00](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ItemIndentation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0x404E000000000000;
  }

  else
  {
    v2 = 0x403E000000000000;
  }

  MEMORY[0x24C1FCC00](v2);
  return Hasher._finalize()();
}

double *protocol witness for RawRepresentable.init(rawValue:) in conformance ItemIndentation@<X0>(double *result@<X0>, char *a2@<X8>)
{
  if (*result == 60.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 30.0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ItemIndentation(double *a1@<X8>)
{
  v2 = 60.0;
  if (!*v1)
  {
    v2 = 30.0;
  }

  *a1 = v2;
}

void *DOCItemCollectionListCell.titleLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel);
  v2 = v1;
  return v1;
}

BOOL DOCItemCollectionListCell.statusViewLocation.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  result = 0;
  if (v2)
  {
    v3 = v2;
    v4 = (*((*v1 & *v2) + 0x368))();

    if (v4)
    {
      v5 = [v4 horizontalSizeClass];

      if (v5 == 1)
      {
        return 1;
      }
    }
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionListCell.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DOCItemCollectionListCell(0);
  objc_msgSendSuper2(&v1, sel_tintColorDidChange);
  [v0 setNeedsUpdateConfiguration];
}

uint64_t DOCItemCollectionListCell.updateConfiguration(using:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit24UICellConfigurationStateVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v21 - v11;
  v13 = [v1 traitCollection];
  if (one-time initialization token for displayScale != -1)
  {
    swift_once();
  }

  v22 = static UITraitCollection.Traits.displayScale;
  v23 = qword_27EEE9C90;

  v14 = UITraitCollection.doc_hasSpecified(_:)(&v22);

  if (v14)
  {
    isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
    v17 = type metadata accessor for DOCItemCollectionListCell(0);
    v21.receiver = v2;
    v21.super_class = v17;
    objc_msgSendSuper2(&v21, sel__bridgedUpdateConfigurationUsingState_, isa);

    DOCItemCollectionListCell.backgroundConfiguration(for:)(a1);
    v18 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    MEMORY[0x24C1FBB40](v12);
    v19 = type metadata accessor for UICellConfigurationState();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v7, a1, v19);
    (*(v20 + 56))(v7, 0, 1, v19);
    DOCItemCollectionListCell.updateCellTextColors(using:)(v7);
    return outlined destroy of CharacterSet?(v7, &_s5UIKit24UICellConfigurationStateVSgMd);
  }

  return result;
}

uint64_t DOCItemCollectionListCell.backgroundConfiguration(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _UISolariumEnabled();
  static UIBackgroundConfiguration.listCell()();
  v9 = type metadata accessor for UICellConfigurationState();
  v25[3] = v9;
  v25[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a1, v9);
  UIBackgroundConfiguration.updated(for:)();
  (*(v5 + 8))(v8, v4);
  v11 = __swift_destroy_boxed_opaque_existential_0(v25);
  v12 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x2F8))(v11))
  {
    v13 = [v2 effectiveAppearance];
    if (!v13 || (v14 = v13, v15 = [v13 backgroundColor], v14, !v15))
    {
      v16 = [objc_opt_self() systemBackgroundColor];
    }

    UIBackgroundConfiguration.backgroundColor.setter();
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v17 = (*((*v12 & *v2) + 0x208))();
    if (v17)
    {
      v18 = v17;
      (*((*v12 & *v17) + 0x3B0))();
    }
  }

  UIBackgroundConfiguration.cornerRadius.setter();
  result = _UISolariumEnabled();
  if (result)
  {
    v20 = UIBackgroundConfiguration.backgroundInsets.modify();
    *(v21 + 8) = 0x401C000000000000;
    v20(v25, 0);
    v22 = UIBackgroundConfiguration.backgroundInsets.modify();
    *(v23 + 24) = 0x4028000000000000;
    return v22(v25, 0);
  }

  return result;
}

void DOCItemCollectionListCell.addStatusSizeMatchingDimension(_:combinedMargin:)(void *a1, double a2)
{
  v3 = v2;
  v4 = [a1 constraintEqualToConstant_];
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSizeMatchingConstraints;
  swift_beginAccess();
  v6 = v4;
  MEMORY[0x24C1FB090]();
  if (*((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v6 setActive_];
}

void DOCItemCollectionListCell.beginRename(context:)()
{
  DOCItemCollectionCell.beginRename(context:)();

  DOCItemCollectionListCell.updateAccessories()();
}

Swift::Void __swiftcall DOCItemCollectionListCell.endRename(_:force:)(Swift::Bool _, Swift::Bool force)
{
  DOCItemCollectionCell.endRename(_:force:)(_, force);

  DOCItemCollectionListCell.updateAccessories()();
}

id DOCItemCollectionListCell.anchorForSeparatorConstraint.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_titleStackView) leadingAnchor];

  return v1;
}

void *DOCItemCollectionListCell.init(frame:containerView:)(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackView;
  *(v5 + v10) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_thumbnailContainerView;
  type metadata accessor for DOCImageViewContainerView();
  *(v5 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_titleStackView;
  *(v5 + v12) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_tagView;
  v14 = [objc_allocWithZone(DOCChainedTagsView) init];
  [v14 setOpaque_];
  [v14 setSpacing_];
  [v14 setAlignmentOffset_];
  *(v5 + v13) = v14;
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel;
  v55 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D063B0]) init];
  [v16 setAdjustsFontForContentSizeCategory_];
  *(v5 + v15) = v16;
  v17 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalProgress;
  *(v5 + v17) = [objc_allocWithZone(MEMORY[0x277D758F0]) init];
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D063B0]) init];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 secondaryLabelColor];
  [v21 setTextColor_];

  [v21 setAdjustsFontForContentSizeCategory_];
  *(v5 + v18) = v21;
  v23 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D063B0]) init];
  v25 = [v20 secondaryLabelColor];
  [v24 setTextColor_];

  *(v5 + v23) = v24;
  v26 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_sizeLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D063B0]) init];
  v28 = [v20 secondaryLabelColor];
  [v27 setTextColor_];

  *(v5 + v26) = v27;
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_kindLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D063B0]) init];
  v31 = [v20 secondaryLabelColor];
  [v30 setTextColor_];

  *(v5 + v29) = v30;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_previousStatusViewLocation) = 2;
  v32 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusView;
  type metadata accessor for DOCItemStatusView();
  *(v5 + v32) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_thumbnailCellHeightConstraint;
  *(v5 + v33) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v34 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewLeadingConstraint;
  *(v5 + v34) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewTrailingConstraint;
  *(v5 + v35) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v36 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewTopConstraint;
  *(v5 + v36) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v37 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewBottomConstraint;
  *(v5 + v37) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v38 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSizeMatchingConstraints) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSize) = 0x403B000000000000;
  v39 = v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics) = 1;
  _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgWOi0_(v57);
  v40 = v57[5];
  *(v39 + 72) = v57[4];
  *(v39 + 88) = v40;
  v41 = v57[7];
  *(v39 + 104) = v57[6];
  *(v39 + 120) = v41;
  v42 = v57[1];
  *(v39 + 8) = v57[0];
  *(v39 + 24) = v42;
  v43 = v57[3];
  *(v39 + 40) = v57[2];
  *(v39 + 56) = v43;
  *(v39 + 136) = 0x4026000000000000;
  *(v39 + 144) = 0;
  *(v39 + 152) = 1;
  *(v39 + 160) = 0;
  *(v39 + 168) = 0;
  v44 = *(MEMORY[0x277D75060] + 16);
  *(v39 + 176) = *MEMORY[0x277D75060];
  *(v39 + 192) = v44;
  *(v39 + 208) = xmmword_249BB3FA0;
  *(v39 + 224) = xmmword_249BB3FB0;
  *(v39 + 240) = xmmword_249BB3FC0;
  *(v39 + 256) = xmmword_249BB3FD0;
  v45 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusViewAccessory;
  v46 = type metadata accessor for UICellAccessory();
  v47 = *(*(v46 - 8) + 56);
  v47(v5 + v45, 1, 1, v46);
  v47(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_progressStopButtonAccessory, 1, 1, v46);
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewHeightConstraint) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewConstraints) = v38;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_renameTextViewObserver) = 0;
  v48 = [*(v5 + v23) widthAnchor];
  v49 = [v48 constraintEqualToConstant_];

  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateConstraint) = v49;
  v50 = [*(v5 + v26) widthAnchor];
  v51 = [v50 constraintEqualToConstant_];

  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_sizeConstraint) = v51;
  v52 = [*(v5 + v29) widthAnchor];
  v53 = [v52 constraintEqualToConstant_];

  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_kindConstraint) = v53;
  [*(v5 + v55) setLineBreakMode_];
  return DOCItemCollectionCell.init(frame:containerView:)(a1, a2, a3, a4, a5);
}

Swift::Void __swiftcall DOCItemCollectionListCell.didMoveToWindow()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DOCItemCollectionListCell(0);
  objc_msgSendSuper2(&v1, sel_didMoveToWindow);
  DOCItemCollectionListCell.updateLayoutMetrics()();
}

Swift::Void __swiftcall DOCItemCollectionListCell.configure(in:)(UIView *in)
{
  v2 = v1;
  DOCItemCollectionCell.configure(in:)(in);
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_sizeLabel);
  [v3 setTextAlignment_];
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_kindLabel);
  [v4 setTextAlignment_];
  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_titleStackView);
  v6 = [v5 setAxis_];
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x620))(v6);
  (*((*v7 & *v1) + 0x628))(v8);
  if ((*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics + 152) & 1) == 0)
  {
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setDecorationCornerRadius_];
  }

  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
  [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_thumbnailContainerView);
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateLabel) setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v53 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusView);
  [v53 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_tagView);
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackView);
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 addSubview_];
  v13 = *((*v7 & *v10) + 0x70);
  v14 = v9;
  v13(v9);
  [(UIView *)in addSubview:v12];
  v15 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalProgress);
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v16];
  [v15 setHidden_];
  [v5 addArrangedSubview_];
  [v5 addArrangedSubview_];
  (*((*v7 & *v2) + 0x630))([v5 addArrangedSubview_]);
  LODWORD(v10) = _UISolariumEnabled();
  v17 = [v12 leadingAnchor];
  v18 = [(UIView *)in leadingAnchor];
  if (v10)
  {
    v19 = [v17 constraintEqualToAnchor:v18 constant:-10.0];
  }

  else
  {
    v19 = [v17 constraintEqualToAnchor_];
  }

  v20 = v19;

  v21 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewLeadingConstraint);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewLeadingConstraint) = v20;
  v22 = v20;

  v23 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewLeadingConstraint;
  type metadata accessor for UILayoutPriority(0);
  _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_1(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v24) = v55;
  [v22 setPriority_];

  v25 = [(UIView *)in trailingAnchor];
  v26 = [v12 trailingAnchor];
  v27 = [(NSLayoutXAxisAnchor *)v25 constraintEqualToAnchor:v26];

  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewTrailingConstraint;
  v29 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewTrailingConstraint);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewTrailingConstraint) = v27;
  v30 = v27;

  [v30 setConstant_];
  LODWORD(v31) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v31];
  LODWORD(v32) = 1148846080;
  [v11 setContentHuggingPriority:0 forAxis:v32];
  v33 = [v53 widthAnchor];
  DOCItemCollectionListCell.addStatusSizeMatchingDimension(_:combinedMargin:)(v33, 0.0);

  v34 = [v53 heightAnchor];
  DOCItemCollectionListCell.addStatusSizeMatchingDimension(_:combinedMargin:)(v34, 0.0);

  v35 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v36 = swift_allocObject();
  v37 = *(v2 + v23);
  v38 = *(v2 + v28);
  *(v36 + 16) = xmmword_249BA0D00;
  v39 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateConstraint);
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  v40 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_sizeConstraint);
  *(v36 + 48) = v39;
  *(v36 + 56) = v40;
  v41 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_kindConstraint);
  *(v36 + 64) = v41;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v42 = v37;
  v43 = v38;
  v44 = v39;
  v45 = v40;
  v46 = v41;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints_];

  v48 = MEMORY[0x277D85000];
  if ((*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isDummyCell) & 1) == 0)
  {
    v49 = [v2 separatorLayoutGuide];
    v50 = [v49 leadingAnchor];

    v51 = (*((*v48 & *v2) + 0x618))();
    v52 = [v50 constraintEqualToAnchor_];

    [v52 setActive_];
  }

  (*((*v48 & *v2) + 0x638))(in);
  DOCItemCollectionListCell.updateStatusViewAndStopButton()();
}

id DOCItemCollectionListCell.springLoadedInteractionEffect()()
{
  v0 = type metadata accessor for DOCItemCollectionListCellSpringLoadedInteractionEffect();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables54DOCItemCollectionListCellSpringLoadedInteractionEffect_blinkDuration] = 0x3FB999999999999ALL;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

Swift::Void __swiftcall DOCItemCollectionListCell.setupStackView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackView);
  [v1 addArrangedSubview_];
  [v1 addArrangedSubview_];
  [v1 addArrangedSubview_];
  [v1 addArrangedSubview_];
  [v1 addArrangedSubview_];
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_kindLabel);

  [v1 addArrangedSubview_];
}

Swift::Void __swiftcall DOCItemCollectionListCell.generateConstraints(in:)(UIView *in)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_thumbnailContainerView);
  v4 = [v3 heightAnchor];
  v5 = [in &selRef_checked + 2];
  v6 = [v4 constraintEqualToAnchor:v5 constant:0.0];

  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_thumbnailCellHeightConstraint;
  v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_thumbnailCellHeightConstraint);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_thumbnailCellHeightConstraint) = v6;

  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackView);
  v10 = [v9 topAnchor];
  v11 = [in &selRef_updateBarVisibilityIfNecessary];
  v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];

  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewTopConstraint;
  v14 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewTopConstraint);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewTopConstraint) = v12;

  v15 = [v9 bottomAnchor];
  v16 = [(UIView *)in bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:0.0];

  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewBottomConstraint;
  v19 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewBottomConstraint);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewBottomConstraint) = v17;

  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_249BA5C40;
  v22 = *(v1 + v13);
  v23 = *(v1 + v18);
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = v22;
  v25 = v23;
  v26 = [v3 widthAnchor];
  v27 = [v3 heightAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  v29 = *(v1 + v7);
  *(v21 + 48) = v28;
  *(v21 + 56) = v29;
  v30 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
  v31 = v29;
  v32 = [v30 centerXAnchor];
  v33 = [v3 centerXAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v21 + 64) = v34;
  v35 = [v30 centerYAnchor];
  v36 = [v3 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v21 + 72) = v37;
  v38 = [v3 bottomAnchor];
  v39 = [v30 bottomAnchor];
  v40 = [v38 constraintGreaterThanOrEqualToAnchor_];

  *(v21 + 80) = v40;
  v41 = [v3 trailingAnchor];
  v42 = [v30 trailingAnchor];
  v43 = [v41 constraintGreaterThanOrEqualToAnchor_];

  *(v21 + 88) = v43;
  v44 = [v30 topAnchor];
  v45 = [v3 topAnchor];
  v46 = [v44 constraintGreaterThanOrEqualToAnchor_];

  *(v21 + 96) = v46;
  v47 = [v30 leadingAnchor];
  v48 = [v3 leadingAnchor];
  v49 = [v47 constraintGreaterThanOrEqualToAnchor_];

  *(v21 + 104) = v49;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 activateConstraints_];
}

void DOCItemCollectionListCell.updateLayoutMetrics()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v8 = static UITraitCollection.Traits.hSizeClass;
  v9 = qword_27EEE9C60;

  v3 = UITraitCollection.doc_hasSpecified(_:)(&v8);

  if (v3)
  {
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x208))(v4);
    if (v6)
    {
      v7 = v6;
      if ((*((*v5 & *v6) + 0xB70))())
      {
        (*((*v5 & *v1) + 0x670))(&v8, v7);
        DOCItemCollectionListCell.cellLayoutMetrics.setter(&v8);
      }

      else
      {
      }
    }
  }
}

uint64_t DOCItemCollectionListCell.cellLayoutMetrics.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics;
  memcpy(__dst, v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics, sizeof(__dst));
  memcpy(v9, v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics, sizeof(v9));
  memcpy(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_cellLayoutMetrics, a1, 0x110uLL);
  outlined init with copy of DOCItemCollectionListCell.LayoutMetrics(__dst, __src);
  outlined destroy of DOCItemCollectionListCell.LayoutMetrics(v9);
  memcpy(__src, v1 + v3, sizeof(__src));
  memcpy(v7, v1 + v3, sizeof(v7));
  memcpy(v6, __dst, sizeof(v6));
  outlined init with copy of DOCItemCollectionListCell.LayoutMetrics(__src, &v5);
  if ((specialized static DOCItemCollectionListCell.LayoutMetrics.== infix(_:_:)(v7, v6) & 1) == 0)
  {
    memcpy(v7, __src, sizeof(v7));
    (*((*MEMORY[0x277D85000] & *v1) + 0x668))(v7);
  }

  outlined destroy of DOCItemCollectionListCell.LayoutMetrics(__dst);
  return outlined destroy of DOCItemCollectionListCell.LayoutMetrics(__src);
}

id DOCItemCollectionListCell.applyLayoutMetrics(_:)(double *a1)
{
  v3 = a1[20];
  v2 = a1[21];
  v4 = a1[22];
  v5 = a1[24];
  v6 = a1[30];
  v7 = a1[31];
  v8 = a1[32];
  v9 = a1[33];
  v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackView);
  [v10 spacing];
  if (v11 != v3)
  {
    [v10 setSpacing_];
  }

  [v10 setCustomSpacing:*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_thumbnailContainerView) afterView:v2];
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewLeadingConstraint) setConstant_];
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewTrailingConstraint) setConstant_];
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewTopConstraint) setConstant_];
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackViewBottomConstraint) setConstant_];
  v12 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalProgress);
  v13 = [v12 isHidden];
  v14 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_titleStackView);
  v15 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel);
  if (v13)
  {
    v16 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_titleStackView);
    v17 = v7;
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_titleStackView) setCustomSpacing:v15 afterView:v6];
    v16 = v14;
    v17 = v8;
    v15 = v12;
  }

  [v16 setCustomSpacing:v15 afterView:v17];
  v18 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_thumbnailCellHeightConstraint);

  return [v18 setConstant_];
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCItemCollectionListCell.LayoutMetrics.horizontal(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return specialized static DOCItemCollectionListCell.LayoutMetrics.horizontal.== infix(_:_:)(v8, v9);
}

uint64_t static DOCItemCollectionListCell.iconToTitleSpacing.setter(double a1)
{
  result = swift_beginAccess();
  static DOCItemCollectionListCell.iconToTitleSpacing = *&a1;
  return result;
}

uint64_t DOCItemCollectionListCell.layoutMetrics(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgWOi0_(v38);
  *&v37[71] = v38[4];
  *&v37[87] = v38[5];
  *&v37[103] = v38[6];
  *&v37[119] = v38[7];
  *&v37[7] = v38[0];
  *&v37[23] = v38[1];
  *&v37[39] = v38[2];
  v36 = 1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000] & *a1;
  *&v37[55] = v38[3];
  result = (*(v5 + 1312))(v34);
  if (v35)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v34[4];
  v8 = *((*v4 & *a1) + 0x2F0);
  v8(v30, result);
  v31[4] = v30[4];
  v31[5] = v30[5];
  v32 = v30[6];
  v33 = v30[7];
  v31[0] = v30[0];
  v31[1] = v30[1];
  v31[2] = v30[2];
  v31[3] = v30[3];
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v31);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  outlined destroy of CharacterSet?(v30, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  *v9 = v32;
  *&v9[16] = v33;
  v10 = swift_beginAccess();
  v22 = static DOCItemCollectionListCell.iconToTitleSpacing;
  v8(v25, v10);
  v26[4] = v25[4];
  v27 = v25[5];
  v28 = v25[6];
  v29 = v25[7];
  v26[0] = v25[0];
  v26[1] = v25[1];
  v26[2] = v25[2];
  v26[3] = v25[3];
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v26);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v11 = outlined destroy of CharacterSet?(v25, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  v12 = *(&v27 + 1);
  v8(v23, v11);
  v24[4] = *&v37[71];
  v24[5] = *&v37[87];
  v24[6] = *&v37[103];
  v24[7] = *&v37[119];
  v24[0] = *&v37[7];
  v24[1] = *&v37[23];
  v24[2] = *&v37[39];
  v24[3] = *&v37[55];
  v13 = outlined destroy of CharacterSet?(v24, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  v14 = *v4 & *a1;
  *&v37[71] = v23[4];
  *&v37[87] = v23[5];
  *&v37[103] = v23[6];
  *&v37[119] = v23[7];
  *&v37[7] = v23[0];
  *&v37[23] = v23[1];
  *&v37[39] = v23[2];
  *&v37[55] = v23[3];
  result = (*(v14 + 944))(v13);
  v15 = 0.0;
  v16 = *&v37[64];
  if (result)
  {
    v15 = 11.0;
  }

  *(a2 + 81) = *&v37[80];
  v17 = *&v37[112];
  *(a2 + 97) = *&v37[96];
  *(a2 + 113) = v17;
  v18 = *v37;
  *(a2 + 17) = *&v37[16];
  v19 = *&v37[48];
  *(a2 + 33) = *&v37[32];
  *(a2 + 49) = v19;
  *(a2 + 65) = v16;
  v20 = v36;
  *a2 = 0;
  *(a2 + 128) = *&v37[127];
  *(a2 + 1) = v18;
  *(a2 + 136) = v15;
  *(a2 + 144) = 0;
  *(a2 + 152) = v20;
  *&v21 = v22;
  *(&v21 + 1) = *v9;
  *(a2 + 160) = v7;
  *(a2 + 184) = *&v9[8];
  *(a2 + 168) = v21;
  *(a2 + 200) = *&v9[24];
  *(a2 + 208) = xmmword_249BB3FA0;
  *(a2 + 224) = xmmword_249BB3FB0;
  *(a2 + 240) = xmmword_249BB3FC0;
  *(a2 + 256) = 0x4000000000000000;
  *(a2 + 264) = v12;
  return result;
}

void DOCItemCollectionListCell.updateTitleAndSubtitle()()
{
  v1 = v0;
  v2 = [v0 setIndentationWidth_];
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x208);
  v5 = v4(v2);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  (*((*v3 & *v5) + 0x2F0))(v45);
  v50 = v45[4];
  v51 = v45[5];
  v52 = v45[6];
  v53 = v45[7];
  v46 = v45[0];
  v47 = v45[1];
  v48 = v45[2];
  v49 = v45[3];
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v46) == 1)
  {

    return;
  }

  v7 = (*((*v3 & *v0) + 0x688))(v6);
  v8 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel);
  v9 = [v8 attributedText];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSAttributedString);
    v11 = v7;
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = v7;
  }

  [v8 setAttributedText_];
LABEL_9:

  v14 = (*((*v3 & *v1) + 0x690))(v6);
  v16 = v15;
  v17 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel);
  v18 = [v17 text];
  v43 = v17;
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v7;
  v20 = v18;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 == v14 && v23 == v16)
  {

    v7 = v19;
    v3 = MEMORY[0x277D85000];
    v17 = v43;
    goto LABEL_15;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v7 = v19;
  v3 = MEMORY[0x277D85000];
  v17 = v43;
  if ((v24 & 1) == 0)
  {
LABEL_14:
    v25 = MEMORY[0x24C1FAD20](v14, v16);
    [v17 setText_];
  }

LABEL_15:
  v26 = (*((*v3 & *v1) + 0x678))(v47);
  v27 = [v17 text];
  if (v27)
  {

    v28 = [v17 text];
    if (!v28)
    {
      __break(1u);
      return;
    }

    v29 = v28;

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v34 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v34 = v30 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {

    v35 = 1;
  }

  v36 = v4(v33);
  if (!v36 || (v37 = v36, v38 = (*((*MEMORY[0x277D85000] & *v36) + 0x368))(), v37, !v38))
  {
    v39 = v43;
    if (((v26 | v35) & 1) == 0)
    {
      v40 = 0;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();

  v39 = v43;
  if ((v26 | v35))
  {
LABEL_26:
    v40 = 1;
    goto LABEL_28;
  }

  v40 = 1u >> (v44 & 7);
LABEL_28:
  v41 = [v39 layer];
  v42 = [v41 isHidden];

  if (v40 != v42)
  {
    [v39 setHidden_];
  }

  outlined destroy of CharacterSet?(v45, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
}

void DOCItemCollectionListCell.updateAccessories()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v168 = &v154 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v185 = &v154 - v6;
  MEMORY[0x28223BE20](v7, v8);
  v186 = &v154 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV24OutlineDisclosureOptionsV5StyleOSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v165 = &v154 - v12;
  v13 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v166 = *(v13 - 8);
  v167 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v164 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v182 = *(v16 - 8);
  v183 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v181 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UICellAccessory();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v170 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v169 = &v154 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v184 = &v154 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v154 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v154 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v154 - v39;
  MEMORY[0x28223BE20](v41, v42);
  v172 = &v154 - v43;
  MEMORY[0x28223BE20](v44, v45);
  v171 = &v154 - v46;
  MEMORY[0x28223BE20](v47, v48);
  v180 = &v154 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v50 - 8, v51);
  v179 = &v154 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v54);
  v192 = &v154 - v55;
  v56 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v190 = *(v56 - 8);
  v191 = v56;
  MEMORY[0x28223BE20](v56, v57);
  v189 = &v154 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for UICellAccessory.DisplayedState();
  v60 = *(v59 - 8);
  v195 = v59;
  v196 = v60;
  MEMORY[0x28223BE20](v59, v61);
  v163 = &v154 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63, v64);
  v187 = &v154 - v65;
  v68.n128_f64[0] = MEMORY[0x28223BE20](v66, v67);
  v70 = &v154 - v69;
  v71 = MEMORY[0x277D85000];
  v72 = *((*MEMORY[0x277D85000] & *v0) + 0x208);
  v193 = v0;
  v73 = v72(v68);
  if (v73)
  {
    v74 = v73;
    v154 = v36;
    v75 = (*((*v71 & *v73) + 0x368))();
    v177 = v19;
    v162 = v40;
    if (!v75)
    {
      v75 = [v193 traitCollection];
    }

    v76 = v75;
    v77 = MEMORY[0x277D85000];
    v173 = (*((*MEMORY[0x277D85000] & *v74) + 0xB58))();
    LODWORD(v194) = (*((*v77 & *v74) + 0x508))();
    LODWORD(v178) = (*((*v77 & *v74) + 0x4F0))();
    (*((*v77 & *v74) + 0x460))();
    v78 = [v76 horizontalSizeClass];
    v161 = v32;
    v175 = v76;
    if (v78 == 1)
    {
      v188 = 1;
    }

    else
    {
      v79 = [v76 preferredContentSizeCategory];
      v80 = v20;
      v81 = v79;
      v188 = UIContentSizeCategory.isAccessibilityCategory.getter();

      v20 = v80;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
    v82 = *(v20 + 72);
    v176 = v20;
    v83 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v174 = v82;
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_249B9A480;
    v85 = *MEMORY[0x277D74A88];
    v86 = v195;
    v87 = v196;
    v156 = *(v196 + 104);
    v157 = v196 + 104;
    v156(v70, v85, v195);
    v88 = type metadata accessor for UICellAccessory.LayoutDimension();
    v155 = *(v88 - 8);
    v89 = *(v155 + 56);
    v159 = v155 + 56;
    v160 = v88;
    v158 = v89;
    (v89)(v192, 1, 1);
    v90 = v189;
    UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    v194 = v84;
    v178 = v83;
    static UICellAccessory.multiselect(displayed:options:)();
    (*(v190 + 8))(v90, v191);
    v91 = *(v87 + 8);
    v196 = v87 + 8;
    v92 = v91(v70, v86);
    v93 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v74) + 0x2F0))(&v197, v92);
    v205[4] = v201;
    v205[5] = v202;
    v205[6] = v203;
    v205[7] = v204;
    v205[0] = v197;
    v205[1] = v198;
    v205[2] = v199;
    v205[3] = v200;
    v206[0] = v197;
    v206[1] = v198;
    v206[2] = v199;
    v206[3] = v200;
    v206[4] = v201;
    v207 = v202;
    v208 = v203;
    v209 = v204;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v206) == 1)
    {
      __break(1u);
      return;
    }

    v94 = outlined destroy of CharacterSet?(v205, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    v95 = v193;
    if (v207 == 1)
    {
      if ((v188 & 1) == 0)
      {
        v96 = 1;
        goto LABEL_16;
      }

      v96 = (v173 & 1) == 0;
    }

    else
    {
      v96 = 0;
      if ((v188 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v97 = *((*v93 & *v74) + 0xAA0);
    v94 = v97(&v197, v94);
    if (v197 == 3 || (v94 = v97(&v197, v94), v197 == 4))
    {
      v96 = 0;
    }

LABEL_16:
    v98 = *(v95 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusView);
    v99 = (*((*v93 & *v98) + 0xC8))(&v197, v94);
    if (v197 == 2)
    {
      v100 = (*((*v93 & *v95) + 0x698))(v99);
      if (!v96)
      {
LABEL_21:
        v101 = [v98 layer];
        v102 = [v101 isHidden];

        if ((v100 & 1) != v102)
        {
          [v98 setHidden_];
        }

        if (!v96)
        {
          v108 = v102;
          v109 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_progressStopButtonAccessory;
          swift_beginAccess();
          v110 = v185;
          outlined init with copy of DOCGridLayout.Spec?(v95 + v109, v185, &_s5UIKit15UICellAccessoryVSgMd);
          v112 = v176;
          v111 = v177;
          v113 = *(v176 + 48);
          if (v113(v110, 1, v177) != 1)
          {
            v134 = *(v112 + 32);
            v135 = v161;
            v134(v161, v110, v111);
            (*(v112 + 16))(v184, v135, v111);
            v136 = v194;
            v138 = v194[2];
            v137 = v194[3];
            if (v138 >= v137 >> 1)
            {
              v136 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v137 > 1, v138 + 1, 1, v194);
            }

            (*(v112 + 8))(v161, v111);
            v136[2] = v138 + 1;
            v139 = v136 + v178 + v138 * v174;
            v140 = v184;
            goto LABEL_54;
          }

          outlined destroy of CharacterSet?(v110, &_s5UIKit15UICellAccessoryVSgMd);
          v114 = v194;
          if (v108)
          {
LABEL_55:
            UICollectionViewListCell.accessories.setter();

            return;
          }

          v115 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusViewAccessory;
          swift_beginAccess();
          v116 = v168;
          outlined init with copy of DOCGridLayout.Spec?(v95 + v115, v168, &_s5UIKit15UICellAccessoryVSgMd);
          if (v113(v116, 1, v111) != 1)
          {
            v134 = *(v112 + 32);
            v145 = v169;
            v134(v169, v116, v111);
            (*(v112 + 16))(v170, v145, v111);
            v147 = v114[2];
            v146 = v114[3];
            if (v147 >= v146 >> 1)
            {
              v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v146 > 1, v147 + 1, 1, v114);
            }

            (*(v112 + 8))(v169, v111);
            v114[2] = v147 + 1;
            v139 = v114 + v178 + v147 * v174;
            v140 = v170;
            goto LABEL_54;
          }

LABEL_31:
          outlined destroy of CharacterSet?(v116, &_s5UIKit15UICellAccessoryVSgMd);
          goto LABEL_55;
        }

        v103 = [objc_opt_self() outlineDisclosure];
        v104 = [v103 isEnabled];

        LODWORD(v191) = v102;
        if (v188 & 1 | ((v104 & 1) == 0))
        {
          v105 = v173 & 1;
        }

        else
        {
          v117 = (*((*v93 & *v74) + 0x400))();
          v105 = v173 & 1;
          if ((v173 & 1) == 0 && (v117 & 1) == 0)
          {
            v118 = (*((*v93 & *v95) + 0x3A8))();
            v119 = *MEMORY[0x277D74A90];
            if ((v118 & 1) == 0)
            {
              v148 = v163;
              v149 = v195;
              v156(v163, v119, v195);
              swift_allocObject();
              swift_unknownObjectWeakInit();
              v150 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
              (*(*(v150 - 8) + 56))(v165, 1, 1, v150);
              v158(v192, 1, 1, v160);

              v151 = v164;
              UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
              v152 = v171;
              static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();

              (*(v166 + 8))(v151, v167);
              v91(v148, v149);

              v120 = v176;
              v111 = v177;
              (*(v176 + 16))(v172, v152, v177);
              v129 = v194[2];
              v153 = v194[3];
              v130 = v129 + 1;
              if (v129 >= v153 >> 1)
              {
                v194 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v153 > 1, v129 + 1, 1, v194);
              }

              v116 = v186;
              v132 = v162;
              (*(v120 + 8))(v171, v111);
              v131 = v172;
LABEL_42:
              v133 = v194;
              v194[2] = v130;
              v134 = *(v120 + 32);
              v134(&v133[v178 + v129 * v174], v131, v111);
              if (v191)
              {
                goto LABEL_55;
              }

              v141 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusViewAccessory;
              swift_beginAccess();
              outlined init with copy of DOCGridLayout.Spec?(v95 + v141, v116, &_s5UIKit15UICellAccessoryVSgMd);
              if ((*(v120 + 48))(v116, 1, v111) != 1)
              {
                v134(v132, v116, v111);
                (*(v120 + 16))(v154, v132, v111);
                v143 = v194[2];
                v142 = v194[3];
                if (v143 >= v142 >> 1)
                {
                  v194 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v142 > 1, v143 + 1, 1, v194);
                }

                (*(v120 + 8))(v132, v111);
                v144 = v194;
                v194[2] = v143 + 1;
                v139 = v144 + v178 + v143 * v174;
                v140 = v154;
LABEL_54:
                v134(v139, v140, v111);
                goto LABEL_55;
              }

              goto LABEL_31;
            }

            v106 = v91;
            v107 = (v156)(v187, v119, v195);
LABEL_36:
            v107 = (*((*v93 & *v95) + 0x3A8))(v107);
LABEL_37:
            v120 = v176;
            v121 = (*((*v93 & *v95) + 0x530))(v107);
            v122 = MEMORY[0x277D74AC0];
            if ((v121 & 1) == 0)
            {
              v122 = MEMORY[0x277D74AB0];
            }

            v123 = v179;
            v124 = v160;
            (*(v155 + 104))(v179, *v122, v160);
            v158(v123, 0, 1, v124);
            v125 = v181;
            UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
            v126 = v180;
            v127 = v187;
            static UICellAccessory.disclosureIndicator(displayed:options:)();
            (*(v182 + 8))(v125, v183);
            v106(v127, v195);
            v129 = v194[2];
            v128 = v194[3];
            v130 = v129 + 1;
            if (v129 >= v128 >> 1)
            {
              v194 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v128 > 1, v129 + 1, 1, v194);
            }

            v131 = v126;
            v111 = v177;
            v116 = v186;
            v132 = v162;
            goto LABEL_42;
          }
        }

        v106 = v91;
        v107 = (v156)(v187, *MEMORY[0x277D74A90], v195);
        if (v105)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v100 = 0;
      if (!v96)
      {
        goto LABEL_21;
      }
    }

    v100 |= (*((*v93 & *v95) + 0x530))();
    goto LABEL_21;
  }
}

void closure #1 in DOCItemCollectionListCell.updateAccessories()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *((*MEMORY[0x277D85000] & *Strong) + 0xE8);
    v2 = Strong;
    v3 = v1();
    v5 = v4;

    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 64))(v2, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t DOCItemCollectionListCell.customStatusAccessory(with:tintColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for UICellAccessory.Placement();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v15 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v19 addSubview_];
  isa = DOCConstraintsToResizeWithSuperview();
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v18;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v18 = v31;
  }

  [objc_opt_self() activateConstraints_];

  if (a2)
  {
    [v19 setTintColor_];
  }

  v21 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
  v22 = *MEMORY[0x277D74A98];
  v23 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v23 - 8) + 104))(v14, v22, v23);
  *v21 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
  v21[1] = 0;
  v24 = (*(v11 + 104))(v14, *MEMORY[0x277D74AD8], v10);
  LOBYTE(v22) = (*((*MEMORY[0x277D85000] & *v3) + 0x530))(v24);
  v25 = type metadata accessor for UICellAccessory.LayoutDimension();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x277D74AC0];
  if ((v22 & 1) == 0)
  {
    v27 = MEMORY[0x277D74AB0];
  }

  (*(*(v25 - 8) + 104))(v9, *v27, v25);
  (*(v26 + 56))(v9, 0, 1, v25);
  v28 = v19;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();

  return (*(v15 + 8))(v18, v32);
}

void DOCItemCollectionListCell.updateStatusViewAndStopButton()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v79 - v5;
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))(v4);
  if (v8)
  {
    v9 = v8;
    (*((*v7 & *v8) + 0x2F0))(&v87);

    v95[4] = v91;
    v95[5] = v92;
    v95[6] = v93;
    v95[7] = v94;
    v95[0] = v87;
    v95[1] = v88;
    v95[2] = v89;
    v95[3] = v90;
    v96[0] = v87;
    v96[1] = v88;
    v96[2] = v89;
    v96[3] = v90;
    v97 = v91;
    v98 = v92;
    v99 = v93;
    v100 = v94;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v96) == 1)
    {
      __break(1u);
      goto LABEL_48;
    }

    v10 = *(&v97 + 1);
    outlined destroy of CharacterSet?(v95, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  }

  else
  {
    v10 = *MEMORY[0x277D76918];
  }

  v11 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusView);
  v12 = *((*v7 & *v11) + 0xE8);
  v13 = v10;
  v12();
  v81 = v11;
  v14 = [v11 removeFromSuperview];
  v15 = (*v7 & *v1) + 680;
  v16 = *((*v7 & *v1) + 0x2A8);
  v17 = v16(v14);
  if (v17)
  {
    v18 = v17;
    [v17 removeFromSuperview];
  }

  v19 = (*((*v7 & *v1) + 0x530))();
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusSizeMatchingConstraints;
  v80 = v13;
  v82 = v1;
  v83 = v6;
  v84 = v16;
  v85 = v15;
  if (v19)
  {
    swift_beginAccess();
    v21 = *(v1 + v20);
    if (v21 >> 62)
    {
      goto LABEL_45;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {

      if (!i)
      {
        break;
      }

      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x24C1FC540](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        type metadata accessor for UILayoutPriority(0);
        v86 = 1065353216;
        LODWORD(v87) = 1148846080;
        _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_1(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
        static _UIKitNumericRawRepresentable.- infix(_:_:)();
        LODWORD(v27) = v95[0];
        [v25 setPriority_];

        ++v23;
        if (v26 == i)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      ;
    }

LABEL_30:

    v34 = v81;
    v35 = [v81 setTranslatesAutoresizingMaskIntoConstraints_];
    v36 = v82;
    v37 = v84;
    v38 = v84(v35);
    if (v38)
    {
      v39 = v38;
      [v38 setTranslatesAutoresizingMaskIntoConstraints_];
    }

    v40 = v83;
    DOCItemCollectionListCell.customStatusAccessory(with:tintColor:)(v34, 0, v83);
    v41 = type metadata accessor for UICellAccessory();
    v42 = *(*(v41 - 8) + 56);
    v42(v40, 0, 1, v41);
    v43 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusViewAccessory;
    swift_beginAccess();
    outlined assign with copy of UICellAccessory?(v40, v36 + v43);
    swift_endAccess();
    DOCItemCollectionListCell.updateAccessories()();
    v44 = outlined destroy of CharacterSet?(v40, &_s5UIKit15UICellAccessoryVSgMd);
    v45 = v37(v44);
    if (v45)
    {
      v46 = v45;
      DOCItemCollectionListCell.customStatusAccessory(with:tintColor:)(v45, 0, v40);
      v42(v40, 0, 1, v41);
      v47 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_progressStopButtonAccessory;
      swift_beginAccess();
      outlined assign with copy of UICellAccessory?(v40, v36 + v47);
      swift_endAccess();
      DOCItemCollectionListCell.updateAccessories()();

      outlined destroy of CharacterSet?(v40, &_s5UIKit15UICellAccessoryVSgMd);
      return;
    }

    goto LABEL_39;
  }

  swift_beginAccess();
  v28 = *(v1 + v20);
  if (v28 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21)
  {
    v29 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x24C1FC540](v29, v28);
      }

      else
      {
        if (v29 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v30 = *(v28 + 8 * v29 + 32);
      }

      v32 = v30;
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_42;
      }

      LODWORD(v31) = 1148846080;
      [v30 setPriority_];

      ++v29;
    }

    while (v33 != v21);
  }

  v48 = v81;
  v49 = [v81 setTranslatesAutoresizingMaskIntoConstraints_];
  v50 = v82;
  v51 = v84(v49);
  if (v51)
  {
    v52 = v51;
    [v51 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v53 = type metadata accessor for UICellAccessory();
  v54 = *(*(v53 - 8) + 56);
  v55 = v83;
  v54(v83, 1, 1, v53);
  v56 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusViewAccessory;
  swift_beginAccess();
  outlined assign with copy of UICellAccessory?(v55, &v50[v56]);
  swift_endAccess();
  DOCItemCollectionListCell.updateAccessories()();
  outlined destroy of CharacterSet?(v55, &_s5UIKit15UICellAccessoryVSgMd);
  v57 = *&v50[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalStackView];
  v58 = [v57 arrangedSubviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = specialized Collection<>.firstIndex(of:)(*&v50[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateLabel], v59);
  v62 = v61;

  if (v62)
  {
LABEL_48:
    __break(1u);
    return;
  }

  v63 = [v57 insertArrangedSubview:v48 atIndex:v60];
  v64 = v84(v63);
  if (v64)
  {
    v65 = v64;
    v66 = v83;
    v54(v83, 1, 1, v53);
    v67 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_progressStopButtonAccessory;
    swift_beginAccess();
    outlined assign with copy of UICellAccessory?(v66, &v50[v67]);
    swift_endAccess();
    DOCItemCollectionListCell.updateAccessories()();
    outlined destroy of CharacterSet?(v66, &_s5UIKit15UICellAccessoryVSgMd);
    v68 = [v50 contentView];
    v69 = v65;
    [v68 insertSubview:v69 aboveSubview:v57];

    v70 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_249BA1010;
    v72 = [v69 centerXAnchor];

    v73 = [v48 centerXAnchor];
    v74 = [v72 constraintEqualToAnchor_];

    *(v71 + 32) = v74;
    v75 = [v69 centerYAnchor];

    v76 = [v48 centerYAnchor];
    v77 = [v75 constraintEqualToAnchor_];

    *(v71 + 40) = v77;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v70 activateConstraints_];
  }

LABEL_39:
}

id DOCItemCollectionListCell.updateCellTextColors(using:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v123 = *(v4 - 8);
  v124 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v119 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit24UICellConfigurationStateVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v119 - v14;
  v16 = type metadata accessor for UICellConfigurationState();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v15, &_s5UIKit24UICellConfigurationStateVSgMd);
  v21 = *(v17 + 48);
  v22 = v21(v15, 1, v16);
  v125 = v20;
  v126 = v16;
  if (v22 == 1)
  {
    v23 = [v2 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = v21(v15, 1, v16);
    v25 = v17;
    if (v24 != 1)
    {
      v24 = outlined destroy of CharacterSet?(v15, &_s5UIKit24UICellConfigurationStateVSgMd);
    }
  }

  else
  {
    v24 = (*(v17 + 32))(v20, v15, v16);
    v25 = v17;
  }

  v26 = MEMORY[0x277D85000];
  v127 = *((*MEMORY[0x277D85000] & *v2) + 0x208);
  v27 = (v127)(v24);
  v28 = v123;
  if (v27)
  {
    v29 = v27;
    v120 = (*((*v26 & *v27) + 0x670))();
  }

  else
  {
    v120 = 0;
  }

  v30 = v125;
  v31 = v127();
  if (v31)
  {
    v32 = v31;
    v33 = v26;
    v122 = (*((*v26 & *v31) + 0x910))();
  }

  else
  {
    v33 = v26;
    v122 = 0;
  }

  static UIBackgroundConfiguration.listCell()();
  v34 = v126;
  v128[3] = v126;
  v128[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v128);
  v121 = v25;
  (*(v25 + 16))(boxed_opaque_existential_1, v30, v34);
  UIBackgroundConfiguration.updated(for:)();
  v36 = *(v28 + 8);
  v37 = v124;
  v36(v7, v124);
  __swift_destroy_boxed_opaque_existential_0(v128);
  result = [v2 tintColor];
  if (!result)
  {
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v39 = result;
  isa = UIBackgroundConfiguration.resolvedBackgroundColor(for:)(result).super.isa;

  v36(v11, v37);
  v41 = isa;
  v42 = [v2 tintColor];
  if (!v42)
  {

LABEL_29:
    v81 = v127();
    if (v81)
    {
      v82 = v81;
      v83 = [objc_opt_self() labelColor];
      (*((*v33 & *v82) + 0x678))(v83);
    }

    v124 = v41;
    v84 = v127();
    if (v84)
    {
      v85 = v84;
      v86 = [objc_opt_self() secondaryLabelColor];
      (*((*v33 & *v85) + 0x6C0))(v86);
    }

    v87 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel);
    v88 = objc_opt_self();
    v89 = &selRef_quaternaryLabelColor;
    if ((v122 & 1) == 0)
    {
      v89 = &selRef_secondaryLabelColor;
    }

    v90 = [v88 *v89];
    [v87 setTextColor_];

    v91 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateLabel);
    v92 = objc_opt_self();
    v93 = [v92 secondaryLabelColor];
    [v91 setTextColor_];

    v94 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_sizeLabel);
    v95 = [v92 secondaryLabelColor];
    [v94 setTextColor_];

    v96 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_kindLabel);
    v97 = [v92 secondaryLabelColor];
    [v96 setTextColor_];

    v98 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusView);
    v99 = [v92 secondaryLabelColor];
    result = [v2 tintColor];
    if (result)
    {
      v100 = result;
      v101 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v98) + 0x140))(0, v99, result);

      v102 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalProgress);
      v103 = [v2 tintColor];
      [v102 setTintColor_];

      v104 = (*((*v101 & *v2) + 0x2A8))();
      if (v104)
      {
        v105 = v104;
        v106 = [v2 tintColor];
        [v105 setTintColor_];
      }

      v107 = *((*MEMORY[0x277D85000] & *v2) + 0x390);
      v108 = v107();
      if (v108)
      {
        v109 = v108;
        v110 = [v92 labelColor];
        [v109 setTextColor_];
      }

      v111 = v107();
      if (v111)
      {
        v112 = v111;
        [v111 setTintColor_];
      }

      [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_tagView) setSelectionOutlineColor_];
      v80 = v126;
      v65 = v124;
LABEL_43:

      v113 = v127();
      if (v113)
      {
        v114 = v113;
        v115 = (*((*MEMORY[0x277D85000] & *v113) + 0x670))();

        v116 = v120;
        if (v120)
        {
          if (v115)
          {
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
            v117 = v116;
            v118 = static NSObject.== infix(_:_:)();

            if (v118)
            {
              goto LABEL_53;
            }
          }
        }

        else
        {
          if (!v115)
          {
            return (*(v121 + 8))(v125, v80);
          }
        }
      }

      else
      {
        v116 = v120;
        if (!v120)
        {
          return (*(v121 + 8))(v125, v80);
        }
      }

      DOCItemCollectionListCell.updateTitleAndSubtitle()();
      v117 = v116;
LABEL_53:

      return (*(v121 + 8))(v125, v80);
    }

    goto LABEL_56;
  }

  v43 = v42;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  v44 = static NSObject.== infix(_:_:)();

  if ((v44 & 1) == 0)
  {
    goto LABEL_29;
  }

  v45 = v127();
  if (v45)
  {
    v46 = v45;
    v47 = [objc_opt_self() whiteColor];
    (*((*v33 & *v46) + 0x678))(v47);
  }

  v48 = v127();
  if (v48)
  {
    v49 = v48;
    v50 = [objc_opt_self() lightTextColor];
    (*((*v33 & *v49) + 0x6C0))(v50);
  }

  v51 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel);
  v52 = objc_opt_self();
  v53 = &selRef_quaternaryLabelColor;
  if ((v122 & 1) == 0)
  {
    v53 = &selRef_lightTextColor;
  }

  v54 = [v52 *v53];
  [v51 setTextColor_];

  v55 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_dateLabel);
  v56 = objc_opt_self();
  v57 = [v56 lightTextColor];
  [v55 setTextColor_];

  v58 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_sizeLabel);
  v59 = [v56 lightTextColor];
  [v58 setTextColor_];

  v60 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_kindLabel);
  v61 = [v56 lightTextColor];
  [v60 setTextColor_];

  v62 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_statusView);
  v63 = [v56 lightTextColor];
  result = [v2 tintColor];
  if (result)
  {
    v64 = result;
    v65 = v41;
    (*((*v33 & *v62) + 0x140))(1, v63, result);

    v66 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_horizontalProgress);
    v67 = [v56 lightTextColor];
    [v66 setTintColor_];

    v68 = (*((*v33 & *v2) + 0x2A8))();
    if (v68)
    {
      v69 = v68;
      v70 = [v56 lightTextColor];
      [v69 setTintColor_];
    }

    v71 = *((*v33 & *v2) + 0x390);
    v72 = v71();
    if (v72)
    {
      v73 = v72;
      v74 = [v56 whiteColor];
      [v73 setTextColor_];
    }

    v75 = v71();
    if (v75)
    {
      v76 = v75;
      v77 = [v56 whiteColor];
      [v76 setTintColor_];
    }

    v78 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_tagView);
    v79 = [v56 lightTextColor];
    [v78 setSelectionOutlineColor_];

    v80 = v126;
    goto LABEL_43;
  }

LABEL_57:
  __break(1u);
  return result;
}