uint64_t closure #1 in static FilesOnlyAssistantIntentsProvider.negativePhrases.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249B9A480;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t protocol witness for static _AssistantIntentsProvider.negativePhrases.getter in conformance FilesOnlyAssistantIntentsProvider()
{
  v0 = type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SearchInBrowserIntent and conformance SearchInBrowserIntent();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV08NegativefG7PhrasesVGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249B9A480;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v7;
}

uint64_t specialized static FilesOnlyAssistantIntentsProvider.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  NavigateHistoryIntent.init()(&v17);
  lazy protocol witness table accessor for type NavigateHistoryIntent and conformance NavigateHistoryIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v16 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v4, v0);
  NavigateHistoryIntent.init()(&v17);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v6 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  NavigateHistoryIntent.init()(&v17);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v7 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  v17 = specialized NavigateQuickLookIntent.init()();
  lazy protocol witness table accessor for type NavigateQuickLookIntent and conformance NavigateQuickLookIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v8 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  v17 = specialized NavigateQuickLookIntent.init()();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v9 = static _AssistantIntent.Builder.buildExpression(_:)();
  v10 = (v5)(v4, v0);
  v17 = specialized OpenItemIntent.init()(v10);
  lazy protocol witness table accessor for type OpenItemIntent and conformance OpenItemIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v11 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  SearchInBrowserIntent.init()(&v17);
  lazy protocol witness table accessor for type SearchInBrowserIntent and conformance SearchInBrowserIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v12 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentVGGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249BA2880;
  *(v13 + 32) = v16;
  *(v13 + 40) = v6;
  *(v13 + 48) = v7;
  *(v13 + 56) = v8;
  *(v13 + 64) = v9;
  *(v13 + 72) = v11;
  *(v13 + 80) = v12;
  v14 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v14;
}

uint64_t lazy protocol witness table accessor for type StringSearchCriteria and conformance StringSearchCriteria(unint64_t *a1, void (*a2)(uint64_t))
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

id DOCTagManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static DOCTagManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static DOCTagManager.shared;

  return v1;
}

uint64_t DOCTagManager.scheduleAction(_:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = *(a1 + 8);
  v22 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTagManager_serialQueue];
  v15 = *(a1 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = v3;
  *(v16 + 48) = a2;
  *(v16 + 56) = v20;
  aBlock[4] = partial apply for closure #1 in DOCTagManager.scheduleAction(_:completionBlock:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_125;
  v17 = _Block_copy(aBlock);
  outlined copy of DOCTagManagerAction(v14, v13, v15);
  v18 = v3;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v9, v17);
  _Block_release(v17);
  (*(v24 + 8))(v9, v6);
  (*(v21 + 8))(v12, v23);
}

uint64_t closure #1 in DOCTagManager.scheduleAction(_:completionBlock:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v9 = [objc_allocWithZone(type metadata accessor for DOCTagCollectionObserver(0)) init];
      v10 = DOCTagCollectionObserver.waitToFinishGatheringItems(with:)(a1);

      if (v10 >> 62)
      {
        if (__CocoaSet.count.getter() >= 1)
        {
          goto LABEL_5;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_5:
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCSetTagsOperation);
        v11 = FPTagFromDOCTag();

        v12 = v11;
        v13 = v10;
        v14 = 0;
LABEL_11:
        v20 = DOCSetTagsOperation.init(updateTag:on:to:)(v12, v13, v14);
        DOCTagManager.performTagsOperation(_:on:completionBlock:)(v20, v10, a5, a6);

LABEL_12:
      }

      if (!a5)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

    v18 = [objc_allocWithZone(type metadata accessor for DOCTagCollectionObserver(0)) init];
    v10 = DOCTagCollectionObserver.waitToFinishGatheringItems(with:)(a1);

    if (v10 >> 62)
    {
      if (__CocoaSet.count.getter() >= 1)
      {
        goto LABEL_10;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_10:
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCSetTagsOperation);
      v19 = FPTagFromDOCTag();

      v14 = FPTagFromDOCTag();
      v12 = v19;
      v13 = v10;
      goto LABEL_11;
    }

    if (!a5)
    {
      goto LABEL_12;
    }

LABEL_21:
    v22 = swift_allocObject();
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = 0;
    v22[5] = v10;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);

    DOCRunInMainThread(_:)();
    goto LABEL_22;
  }

  v15 = [objc_allocWithZone(type metadata accessor for DOCTagCollectionObserver(0)) init];
  v16 = DOCTagCollectionObserver.waitToFinishGatheringItems(with:)(a1);

  if (!a5)
  {
    goto LABEL_12;
  }

  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = 0;
  v17[5] = v16;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);

  DOCRunInMainThread(_:)();
LABEL_22:

  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);
}

void outlined consume of DOCTagManagerAction(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

id outlined copy of DOCTagManagerAction(id result, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

void *DOCSetTagsOperation.init(updateTag:on:to:)(void *a1, unint64_t a2, void *a3)
{
  v3 = a2;
  if (a2 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v5 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    v63 = v3;
    if (!i)
    {
LABEL_46:
      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_249BA08C0;
      v39 = [a1 v5[391]];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = MEMORY[0x277D837D0];
      *(v38 + 56) = MEMORY[0x277D837D0];
      v44 = lazy protocol witness table accessor for type String and conformance String();
      *(v38 + 64) = v44;
      *(v38 + 32) = v40;
      *(v38 + 40) = v42;
      if (a3)
      {
        v45 = [a3 v5[391]];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = (v38 + 72);
        *(v38 + 96) = v43;
        *(v38 + 104) = v44;
        if (v48)
        {
          *v49 = v46;
LABEL_51:
          *(v38 + 80) = v48;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6FPItemCGMd);
          dump<A>(_:name:indent:maxDepth:maxItems:)();
          v50 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
          v51 = MEMORY[0x24C1FB0D0](v75, v50);
          v53 = v52;

          *(v38 + 136) = v43;
          *(v38 + 144) = v44;
          *(v38 + 112) = v51;
          *(v38 + 120) = v53;
          type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
          v54 = static OS_os_log.default.getter();
          os_log(_:dso:log:type:_:)();

          v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          isa = Array._bridgeToObjectiveC()().super.isa;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo5FPTagCGMd);
          v57 = Array._bridgeToObjectiveC()().super.isa;

          v58 = [objc_opt_self() shared];
          v59 = [v55 initWithItems:isa tagsLists:v57 isUndoable:0 shouldClearUndoStack:1 undoManager:v58];

          return v59;
        }
      }

      else
      {
        v49 = (v38 + 72);
        *(v38 + 96) = v43;
        *(v38 + 104) = v44;
      }

      *v49 = 0x5D6574656C65445BLL;
      v48 = 0xE800000000000000;
      goto LABEL_51;
    }

    v75 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v7 = 0;
    v8 = v75;
    v65 = i;
    v66 = v3 & 0xC000000000000001;
    v60 = v3 + 32;
    v61 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v66)
      {
        v10 = MEMORY[0x24C1FC540]();
      }

      else
      {
        if (v7 >= *(v61 + 16))
        {
          goto LABEL_55;
        }

        v10 = *(v60 + 8 * v7);
      }

      v11 = v10;
      v12 = [v10 tags];
      v69 = v9;
      if (v12)
      {
        break;
      }

      v14 = MEMORY[0x277D84F90];
LABEL_41:
      v75 = v8;
      v37 = *(v8 + 16);
      v36 = *(v8 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
      }

      *(v8 + 16) = v37 + 1;
      *(v8 + 8 * v37 + 32) = v14;
      v7 = v69;
      if (v69 == v65)
      {
        goto LABEL_46;
      }
    }

    v13 = v12;
    v67 = v11;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v74 = v14;
    v64 = v14 >> 62;
    v68 = v8;
    v15 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v14 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v72 = v14 & 0xC000000000000001;

    v73 = -v16;
    v3 = 4;
    v71 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v73 + v3 == 4)
      {

        v3 = v63;
        v8 = v68;
        goto LABEL_41;
      }

      v17 = v3 - 4;
      if (v72)
      {
        v18 = v14;
        v19 = MEMORY[0x24C1FC540](v3 - 4, v14);
      }

      else
      {
        if (v17 >= *(v15 + 16))
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v18 = v14;
        v19 = *(v14 + 8 * v3);
      }

      v20 = v19;
      v21 = [v19 v5[391]];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = v5;
      v26 = [a1 v5[391]];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v22 == v27 && v24 == v29)
      {
        v14 = v18;

        goto LABEL_32;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        break;
      }

      ++v3;
      v5 = v25;
      v14 = v18;
      v15 = v71;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_53;
      }
    }

    v14 = v18;
LABEL_32:
    v5 = v25;
    v32 = v71;

    v8 = v68;
    if (!a3)
    {

      v14 = v74;
LABEL_40:
      v3 = v63;
      goto LABEL_41;
    }

    v33 = a3;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v64 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);

      v32 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
    }

    if (v17 < *(v32 + 16))
    {
      v35 = *(v32 + 8 * v3);
      *(v32 + 8 * v3) = v33;

      goto LABEL_40;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  __break(1u);
  return result;
}

void DOCTagManager.performTagsOperation(_:on:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = type metadata accessor for DispatchTime();
  v8 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v33 - v14;
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = v16;
  v18[4] = v17;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = partial apply for closure #1 in DOCTagManager.performTagsOperation(_:on:completionBlock:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_60_0;
  v19 = _Block_copy(aBlock);

  v20 = v16;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a3);

  [a1 setActionCompletionBlock_];
  _Block_release(v19);
  v21 = [objc_opt_self() defaultManager];
  [v21 scheduleAction_];

  static DispatchTime.now()();
  MEMORY[0x24C1FAA90](v11, v33 + OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTagManager_setTagsOperationTimeout);
  v22 = *(v8 + 8);
  v23 = v11;
  v24 = v34;
  v22(v23, v34);
  MEMORY[0x24C1FB8F0](v15);
  v22(v15, v24);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_249B9FA70;
    v26 = MEMORY[0x277D837D0];
    *(v25 + 56) = MEMORY[0x277D837D0];
    v27 = lazy protocol witness table accessor for type String and conformance String();
    *(v25 + 64) = v27;
    *(v25 + 32) = 0xD00000000000002BLL;
    *(v25 + 40) = 0x8000000249BF2D90;
    v28 = [a1 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *(v25 + 96) = v26;
    *(v25 + 104) = v27;
    *(v25 + 72) = v29;
    *(v25 + 80) = v31;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
    v32 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

void closure #1 in DOCTagManager.performTagsOperation(_:on:completionBlock:)(void *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = MEMORY[0x277D837D0];
  if (a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_249B9FA70;
    *(v10 + 56) = v9;
    *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 32) = 0xD00000000000002BLL;
    *(v10 + 40) = 0x8000000249BF2D90;
    v11 = _convertErrorToNSError(_:)();
    *(v10 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v10 + 104) = lazy protocol witness table accessor for type NSError and conformance NSObject();
    *(v10 + 72) = v11;
    os_log(_:dso:log:type:_:)();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249B9A480;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6FPItemCGMd);
  dump<A>(_:name:indent:maxDepth:maxItems:)();
  v13 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v14 = MEMORY[0x24C1FB0D0](v23, v13);
  v16 = v15;

  *(v12 + 56) = v9;
  *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
  v17 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  dispatch_group_leave(a3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (a5)
    {
      v19 = swift_allocObject();
      v19[2] = a5;
      v19[3] = a6;
      v19[4] = a1;
      v19[5] = a2;
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);
      v20 = a1;

      DOCRunInMainThread(_:)();

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);
    }
  }
}

id DOCTagManager.init()()
{
  v1 = v0;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v6, v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v17 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTagManager_serialQueue;
  v10 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v16[1] = "Show me the folder I was in ";
  v16[2] = v10;
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v18);
  *&v0[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTagManager_setTagsOperationTimeout;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTagManager_setTagsOperationTimeout] = 30;
  v12 = *MEMORY[0x277D85188];
  v13 = type metadata accessor for DispatchTimeInterval();
  (*(*(v13 - 8) + 104))(&v1[v11], v12, v13);
  v14 = type metadata accessor for DOCTagManager(0);
  v19.receiver = v1;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t type metadata completion function for DOCTagManager()
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t DOCTagCollectionObserver.waitToFinishGatheringItems(with:)(void *a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v29 - v10;
  v30 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_group];
  dispatch_group_enter(v30);
  v12 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_serialQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in DOCTagCollectionObserver.waitToFinishGatheringItems(with:);
  *(v14 + 24) = v13;
  v29 = v13;
  v36 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v37 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed () -> ();
  v35 = &block_descriptor_35_2;
  v15 = _Block_copy(&aBlock);
  v16 = a1;
  v17 = v1;

  v31 = v12;
  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    static DispatchTime.now()();
    MEMORY[0x24C1FAA90](v7, &v17[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_spotlightQueryTimeout]);
    v19 = *(v4 + 8);
    v19(v7, v3);
    MEMORY[0x24C1FB8F0](v11);
    v19(v11, v3);
    v20 = static DispatchTimeoutResult.== infix(_:_:)();
    if (v20)
    {
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_249B9A480;
      *(v22 + 56) = MEMORY[0x277D837D0];
      *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v22 + 32) = 0xD000000000000021;
      *(v22 + 40) = 0x8000000249BF2C80;
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
      v23 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      v24 = swift_allocObject();
      *(v24 + 16) = v17;
      v25 = swift_allocObject();
      v26 = partial apply for closure #2 in DOCTagCollectionObserver.waitToFinishGatheringItems(with:);
      *(v25 + 16) = partial apply for closure #2 in DOCTagCollectionObserver.waitToFinishGatheringItems(with:);
      *(v25 + 24) = v24;
      v36 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
      v37 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = thunk for @escaping @callee_guaranteed () -> ();
      v35 = &block_descriptor_45_1;
      v27 = _Block_copy(&aBlock);
      v28 = v17;

      dispatch_sync(v31, v27);
      _Block_release(v27);
      LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

      if ((v27 & 1) == 0)
      {
LABEL_6:
        MEMORY[0x28223BE20](v20, v21);
        *(&v29 - 2) = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6FPItemCGMd);
        OS_dispatch_queue.sync<A>(execute:)();

        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v26);
        return aBlock;
      }

      __break(1u);
    }

    v26 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void closure #1 in DOCTagCollectionObserver.waitToFinishGatheringItems(with:)(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = [a1 displayName];
  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x24C1FAD20](v6);
  }

  v7 = [v4 newCollectionForTag_];

  v8 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_serialQueue);
  v9 = v7;
  [v9 setWorkingQueue_];
  [v9 setDelegate_];
  v10 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_collection);
  *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_collection) = v9;

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249B9A480;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = 0xD000000000000021;
  *(v11 + 40) = 0x8000000249BF2C80;
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  [v9 doc_startObserving];
  v13 = MEMORY[0x24C1FAD20](0x6E69726568746167, 0xE900000000000067);
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_collectionObservationContext;
  swift_beginAccess();
  [v9 addObserver:a2 forKeyPath:v13 options:1 context:a2 + v14];
  swift_endAccess();
}

void closure #2 in DOCTagCollectionObserver.waitToFinishGatheringItems(with:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_collection;
  [*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_collection) doc_stopObserving];
  v3 = *(a1 + v2);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_gatheringKeyPath);
    v5 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_gatheringKeyPath + 8);
    v6 = v3;
    v7 = MEMORY[0x24C1FAD20](v4, v5);
    [v6 removeObserver:a1 forKeyPath:v7];
  }
}

void closure #3 in DOCTagCollectionObserver.waitToFinishGatheringItems(with:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_collection);
  if (v3)
  {
    v4 = v3;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249B9A480;
    v6 = [v4 items];
    v7 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6FPItemCGMd);
    dump<A>(_:name:indent:maxDepth:maxItems:)();

    v8 = MEMORY[0x24C1FB0D0](v14, v7);
    v10 = v9;

    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 32) = v8;
    *(v5 + 40) = v10;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
    v11 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    v12 = [v4 items];
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *a2 = v13;
}

void DOCTagCollectionObserver.observeValue(forKeyPath:of:change:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v34 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v14 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_collectionObservationContext];
  swift_beginAccess();
  if (a5 && v18 == a5)
  {
    v34 = *&v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_serialQueue];
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = partial apply for closure #1 in DOCTagCollectionObserver.observeValue(forKeyPath:of:change:context:);
    v39 = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v37 = &block_descriptor_51_3;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v35 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v17, v13, v20);
    _Block_release(v20);
    (*(v33 + 8))(v13, v10);
    (*(v14 + 8))(v17, v32);

    return;
  }

  if (a2)
  {
    v21 = MEMORY[0x24C1FAD20](a1, a2);
  }

  else
  {
    v21 = 0;
  }

  outlined init with copy of Any?(a3, aBlock);
  v22 = v37;
  if (!v37)
  {
    v28 = 0;
    if (v34)
    {
      goto LABEL_9;
    }

LABEL_11:
    v29.super.isa = 0;
    goto LABEL_12;
  }

  v23 = __swift_project_boxed_opaque_existential_1(aBlock, v37);
  v24 = *(v22 - 1);
  v25 = MEMORY[0x28223BE20](v23, v23);
  v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v25);
  v28 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v24 + 8))(v27, v22);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (!v34)
  {
    goto LABEL_11;
  }

LABEL_9:
  type metadata accessor for NSKeyValueChangeKey(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  v29.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
LABEL_12:
  v30 = type metadata accessor for DOCTagCollectionObserver(0);
  v40.receiver = v5;
  v40.super_class = v30;
  objc_msgSendSuper2(&v40, sel_observeValueForKeyPath_ofObject_change_context_, v21, v28, v29.super.isa, a5);

  swift_unknownObjectRelease();
}

void closure #1 in DOCTagCollectionObserver.observeValue(forKeyPath:of:change:context:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    specialized DOCTagCollectionObserver.gatheringDidUpdate(items:)();
  }
}

id DOCTagCollectionObserver.init()()
{
  v1 = v0;
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v6, v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_gatheringKeyPath];
  *v10 = 0x6E69726568746167;
  v10[1] = 0xE900000000000067;
  v19 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_serialQueue;
  v11 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v18[1] = "DOCTagManager startObserving %@";
  v18[2] = v11;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v20);
  *&v0[v19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_group;
  *&v1[v12] = dispatch_group_create();
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_spotlightQueryTimeout;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_spotlightQueryTimeout] = 5;
  v14 = *MEMORY[0x277D85188];
  v15 = type metadata accessor for DispatchTimeInterval();
  (*(*(v15 - 8) + 104))(&v1[v13], v14, v15);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_collection] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_finishedGathering] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_collectionObservationContext] = 0;
  v16 = type metadata accessor for DOCTagCollectionObserver(0);
  v21.receiver = v1;
  v21.super_class = v16;
  return objc_msgSendSuper2(&v21, sel_init);
}

id DOCTagManager.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata completion function for DOCTagCollectionObserver()
{
  result = type metadata accessor for DispatchTimeInterval();
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

void specialized DOCTagCollectionObserver.gatheringDidUpdate(items:)()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_serialQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_collection);
    if (v8)
    {
      v9 = v8;
      if (([v9 isGathering] & 1) == 0 && (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_finishedGathering) & 1) == 0)
      {
        *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_finishedGathering) = 1;
        static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_249B9A480;
        v11 = [v9 items];
        v12 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v20[0] = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6FPItemCGMd);
        dump<A>(_:name:indent:maxDepth:maxItems:)();

        v14 = MEMORY[0x24C1FB0D0](v20[1], v12);
        v16 = v15;

        *(v10 + 56) = MEMORY[0x277D837D0];
        *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v10 + 32) = v14;
        *(v10 + 40) = v16;
        type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
        v17 = v0;
        v18 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)();

        [v9 doc_stopObserving];
        v19 = MEMORY[0x24C1FAD20](*(v17 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_gatheringKeyPath), *(v17 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_gatheringKeyPath + 8));
        [v9 removeObserver:v17 forKeyPath:v19];

        dispatch_group_leave(*(v17 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A9279F4482FEAC8D0F3BCF83DF142AB324DOCTagCollectionObserver_group));
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t objectdestroy_62Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t FavoritesSectionManager.__allocating_init(configuration:mutableSectionsData:dataSource:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 2;
  swift_unknownObjectWeakInit();
  *(v6 + 56) = 0;
  *(v6 + 24) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v6;
}

Swift::Void __swiftcall FavoritesSectionManager.startObserving()()
{
  if (!*(v0 + 48))
  {
    v1 = [objc_opt_self() sharedManager];
    v2 = swift_allocObject();
    swift_weakInit();
    v6[4] = partial apply for closure #1 in FavoritesSectionManager.startObserving();
    v6[5] = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed [FPItem]) -> ();
    v6[3] = &block_descriptor_126;
    v3 = _Block_copy(v6);

    v4 = [v1 addSubscriber_];
    _Block_release(v3);

    v5 = *(v0 + 48);
    *(v0 + 48) = v4;

    FavoritesSectionManager.updateSection()();
  }
}

Swift::Void __swiftcall FavoritesSectionManager.stopObserving()()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedManager];
    [v4 removeSubscriber_];

    v5 = *(v0 + 48);
    *(v0 + 48) = 0;
  }
}

id FavoritesSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized FavoritesSectionManager.generateTabGroup(using:alertPresenting:)(a1, v2, ObjectType, a2);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [FPItem]) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

void FavoritesSectionManager.dataSource.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*FavoritesSectionManager.dataSource.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return LocationSectionManager.dataSource.modify;
}

uint64_t FavoritesSectionManager.init(configuration:mutableSectionsData:dataSource:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = specialized FavoritesSectionManager.init(configuration:mutableSectionsData:dataSource:)(a1, a2);

  return v4;
}

void closure #1 in FavoritesSectionManager.startObserving()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = *(**(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);

      v5 = v4(2);

      if (closure #1 in FavoritesSectionManager.updateSection()(v5, v1))
      {
        DOCTabSidebarDataSource.updateTabsIfNeeded()();
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall FavoritesSectionManager.updateSection()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);

    v4 = v3(2);

    if (closure #1 in FavoritesSectionManager.updateSection()(v4, v0))
    {
      DOCTabSidebarDataSource.updateTabsIfNeeded()();
    }
  }
}

char *closure #1 in FavoritesSectionManager.updateSection()(uint64_t a1, uint64_t a2)
{
  v4 = *((*(*a1 + 312))() + 16);

  v5 = [objc_opt_self() sharedManager];
  v6 = [v5 favoritedLocations];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v22 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    return result;
  }

  v19 = v4;
  v20 = v5;
  v21 = a2;
  v10 = 0;
  v11 = v22;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C1FC540](v10, v7);
    }

    else
    {
      v12 = *(v7 + 8 * v10 + 32);
    }

    v23 = v11;
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      v16 = v12;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v12 = v16;
      v11 = v23;
    }

    *(v11 + 16) = v14 + 1;
    v15 = v11 + 48 * v14;
    *(v15 + 32) = v12;
    ++v10;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0;
  }

  while (v8 != v10);

  v5 = v20;
  a2 = v21;
LABEL_14:
  (*(*a1 + 392))(v11);
  if ((*(a2 + 56) & 1) != 0 && !v4)
  {
    v18 = *(v11 + 16);

    if (v18)
    {
      FavoritesSectionManager.handleSectionExpansion(_:)(a1);
    }
  }

  else
  {
  }

  v17 = [v5 isGathering];

  *(a2 + 56) = v17 ^ 1;
  return 1;
}

void FavoritesSectionManager.handleSectionExpansion(_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);
    v4 = *(a1 + 16);
    v5 = Strong;

    v6 = v3(v4);

    (*(*v6 + 192))(1);
  }
}

uint64_t closure #1 in FavoritesSectionManager.removeFavorite(_:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;

  DOCRunInMainThread(_:)();
}

Swift::Void __swiftcall FavoritesSectionManager.displayOrderDidChange(for:)(Swift::OpaquePointer a1)
{
  v3 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  if (a1._rawValue >> 62)
  {
LABEL_27:
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_28:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v4 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_3:
  v5 = 0;
  v16 = MEMORY[0x277D84F90];
  do
  {
    v6 = v5;
    while (1)
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, a1._rawValue);
      }

      else
      {
        if (v6 >= *(v3 + 16))
        {
          goto LABEL_26;
        }

        v7 = *(a1._rawValue + v6 + 4);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v9 = [v7 userInfo];
      if (v9)
      {
        v1 = v9;
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v17 = 0u;
        v18 = 0u;
      }

      v19[0] = v17;
      v19[1] = v18;
      if (*(&v18 + 1))
      {
        break;
      }

      outlined destroy of CharacterSet?(v19, &_sypSgMd);
LABEL_6:
      ++v6;
      if (v5 == v4)
      {
        v1 = v15;
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClassUnconditional();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v13 = *(v16 + 2);
    v12 = *(v16 + 3);
    if (v13 >= v12 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v16);
    }

    *(v16 + 2) = v13 + 1;
    v14 = &v16[48 * v13];
    *(v14 + 4) = v10;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    v14[72] = 0;
    v1 = v15;
  }

  while (v5 != v4);
LABEL_29:

  specialized FavoritesSectionManager.reorderFavorites(_:completion:)(v16, v1);
}

void closure #2 in FavoritesSectionManager.displayOrderDidChange(for:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);

    v5 = v4(2);

    if (closure #1 in FavoritesSectionManager.updateSection()(v5, a1))
    {
      DOCTabSidebarDataSource.updateTabsIfNeeded()();
    }
  }
}

uint64_t closure #1 in FavoritesSectionManager.performDrop(session:onto:alertPresenting:completion:)(unint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_18:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v16 = a2;
      v17 = a4;
      v8 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          a2 = MEMORY[0x24C1FC540](v8, a1);
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          a2 = *(a1 + 8 * v8 + 32);
          swift_unknownObjectRetain();
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v13 = v19;
            a4 = v17;
            a2 = v16;
            if ((v19 & 0x8000000000000000) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_24;
          }
        }

        swift_getObjectType();
        v10 = DOCNode.fpfs_syncFetchFPItem()();
        if (v10 && (a4 = v10, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem), v11 = a3, v12 = static NSObject.== infix(_:_:)(), a4, v11, (v12 & 1) != 0))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          a4 = *(v19 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v8;
        if (v9 == v7)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  if ((v13 & 0x4000000000000000) != 0)
  {
LABEL_24:
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (*(v13 + 16) > 0)
  {
LABEL_22:
    _sSo6FPItemC26DocumentManagerExecutablesE11performDrop_9underItem15alertPresenting10completionySaySo7DOCNode_pG_SoAH_pSo16UIViewControllerCyAISgcSgtFZTf4nennn_nAB_Tt3g5(v13, a3, a2, 0, 0);
  }

LABEL_23:

  return (a4)(v14);
}

void closure #1 in FavoritesSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v10 = objc_opt_self();

    v11 = a6;
    v12 = [v10 sharedManager];
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for closure #1 in closure #1 in FavoritesSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:);
    *(v13 + 24) = v9;
    aBlock[4] = partial apply for closure #1 in FavoritesSectionManager.removeFavorite(_:completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_89_0;
    v14 = _Block_copy(aBlock);

    [v12 removeFavorite:v11 completion:v14];

    _Block_release(v14);
  }

  else
  {
    a3();
  }
}

id FavoritesSectionManager.contextMenuConfiguration(for:alertPresenting:)(void *a1, void *a2)
{
  if ([a1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  aBlock = v29;
  v25 = v30;
  if (!*(&v30 + 1))
  {
    outlined destroy of CharacterSet?(&aBlock, &_sypSgMd);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  swift_getObjectType();
  v5 = DOCNode.fpfs_syncFetchFPItem()();
  if (!v5)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v23 = v5;
  v6 = [objc_allocWithZone(DOCActionManager) init];
  isa = [a2 customActions];
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v6 setActions_];

  v8 = [a2 effectiveAppearance];
  v9 = *(v2 + 24);
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for DOCActionContext();
  v12 = objc_allocWithZone(v11);
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v12[OBJC_IVAR___DOCActionContext_appearance] = v8;
  *&v12[OBJC_IVAR___DOCActionContext_configuration] = v9;
  *&v12[OBJC_IVAR___DOCActionContext_presentingViewController] = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v12[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
  *&v12[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
  *&v12[OBJC_IVAR___DOCActionContext_userInfo] = v10;
  v28.receiver = v12;
  v28.super_class = v11;
  v13 = v9;
  v14 = a2;
  v15 = objc_msgSendSuper2(&v28, sel_init);
  v16 = swift_allocObject();
  v16[2] = v6;
  v16[3] = v23;
  v16[4] = v15;
  v16[5] = v2;
  v16[6] = a1;
  v16[7] = v14;
  v17 = objc_opt_self();
  v26 = partial apply for closure #1 in FavoritesSectionManager.contextMenuConfiguration(for:alertPresenting:);
  v27 = v16;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v25 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  *(&v25 + 1) = &block_descriptor_6_7;
  v18 = _Block_copy(&aBlock);
  v19 = v14;

  v20 = a1;

  v21 = [v17 configurationWithIdentifier:0 previewProvider:0 actionProvider:v18];

  _Block_release(v18);
  swift_unknownObjectRelease();
  return v21;
}

id closure #1 in FavoritesSectionManager.contextMenuConfiguration(for:alertPresenting:)(int a1, id a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v116 = MEMORY[0x277D84F90];
  v117 = MEMORY[0x277D84F90];
  v10 = [a2 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v108 = a2;
  v12 = [a2 associatedActionManagers];
  type metadata accessor for DOCActionManager(0);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = specialized Sequence.flatMap<A>(_:)(v13);

  specialized Array.append<A>(contentsOf:)(v14);
  v15 = v11;
  v109 = a6;
  v110 = a7;
  if (!(v11 >> 62))
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_24:

    v29 = a3;
    goto LABEL_25;
  }

LABEL_23:
  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_24;
  }

LABEL_3:
  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x24C1FC540](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v21 = [v18 identifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
    {
      break;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_17;
    }

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_24;
    }
  }

LABEL_17:

  result = _DocumentManagerBundle();
  v29 = a3;
  if (!result)
  {
    goto LABEL_52;
  }

  v30 = result;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  swift__string._object = 0x8000000249BF2EA0;
  v31._object = 0x8000000249BD3FC0;
  swift__string._countAndFlagsBits = 0xD000000000000059;
  v31._countAndFlagsBits = 0xD000000000000012;
  v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v32.value._object = 0xEB00000000656C62;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, swift__string);

  v34 = MEMORY[0x24C1FAD20](0x7571732E73756C70, 0xEB00000000657261);
  v35 = [objc_opt_self() systemImageNamed_];

  v36 = swift_allocObject();
  v36[2] = a3;
  v36[3] = a4;
  v36[4] = v108;
  v36[5] = v19;
  v37 = a3;
  v38 = a4;
  v39 = v108;
  v40 = v19;
  v41 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x24C1FB090](v41, v42, v43, v44, v45);
  if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_25:
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v46 = result;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  swift__stringa._object = 0x8000000249BF2F00;
  v47._countAndFlagsBits = 0xD000000000000018;
  v47._object = 0x8000000249BE3C00;
  swift__stringa._countAndFlagsBits = 0xD000000000000058;
  v48.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v48.value._object = 0xEB00000000656C62;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v46, v49, swift__stringa);

  v50 = MEMORY[0x24C1FAD20](0x70752E776F727261, 0xEF7265646C6F662ELL);
  v51 = objc_opt_self();
  v52 = [v51 systemImageNamed_];

  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = v29;
  v55 = v29;
  v56 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x24C1FB090](v56);
  if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v112 = v56;
  if (v116 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
    preferredElementSize = v116;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v118.value.super.isa = 0;
  v118.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v59, v58, 0, v118, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
  MEMORY[0x24C1FB090]();
  if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v115 = MEMORY[0x277D84F90];
  result = _DocumentManagerBundle();
  if (!result)
  {
    goto LABEL_49;
  }

  v60 = result;
  swift__stringb._object = 0x8000000249BD4180;
  v61._countAndFlagsBits = 0x6F666E4920746547;
  swift__stringb._countAndFlagsBits = 0xD000000000000050;
  v61._object = 0xE800000000000000;
  v62.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v62.value._object = 0xEB00000000656C62;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v60, v63, swift__stringb);

  v64 = MEMORY[0x24C1FAD20](0x7269632E6F666E69, 0xEB00000000656C63);
  v65 = [v51 systemImageNamed_];

  v66 = swift_allocObject();
  v66[2] = a5;
  v66[3] = v55;
  v66[4] = v109;
  v66[5] = v110;
  v67 = v55;

  v114 = v109;
  v68 = v110;
  v69 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x24C1FB090](v69, v70, v71, v72, v73);
  if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = _DocumentManagerBundle();
  if (!result)
  {
    goto LABEL_50;
  }

  v74 = result;
  swift__stringc._object = 0x8000000249BD41E0;
  v75._countAndFlagsBits = 0xE220656D616E6552;
  v75._object = 0xAF9D80E240259C80;
  swift__stringc._countAndFlagsBits = 0xD00000000000002BLL;
  v76.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v76.value._object = 0xEB00000000656C62;
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v76, v74, v77, swift__stringc);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_249B9A480;
  v79 = [v67 displayName];
  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;

  *(v78 + 56) = MEMORY[0x277D837D0];
  *(v78 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v78 + 32) = v80;
  *(v78 + 40) = v82;
  static String.localizedStringWithFormat(_:_:)();

  v83 = MEMORY[0x24C1FAD20](0x6C69636E6570, 0xE600000000000000);
  v84 = [v51 systemImageNamed_];

  v85 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x24C1FB090](v85);
  if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v115 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

    v86 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
    v86 = v115;
  }

  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v119.value.super.isa = 0;
  v119.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v88, v87, 0, v119, 1, 0xFFFFFFFFFFFFFFFFLL, v86, 0);
  MEMORY[0x24C1FB090]();
  if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = _DocumentManagerBundle();
  if (result)
  {
    v89 = result;
    swift__stringd._object = 0x8000000249BD4050;
    v90._countAndFlagsBits = 0xD000000000000013;
    v90._object = 0x8000000249BD4030;
    swift__stringd._countAndFlagsBits = 0xD00000000000005FLL;
    v91.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v91.value._object = 0xEB00000000656C62;
    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v90, v91, v89, v92, swift__stringd);

    v93 = MEMORY[0x24C1FAD20](0x6B72616D78, 0xE500000000000000);
    v94 = [v51 systemImageNamed_];

    v95 = swift_allocObject();
    *(v95 + 16) = v67;
    *(v95 + 24) = v114;
    v96 = v67;
    v97 = v114;
    v98 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_249BA0290;
    *(v99 + 32) = v98;
    v100 = v98;
    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    v120.value.super.isa = 0;
    v120.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v102, v101, 0, v120, 1, 0xFFFFFFFFFFFFFFFFLL, v99, 2);
    MEMORY[0x24C1FB090]();
    if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v103._countAndFlagsBits = 0;
    v103._object = 0xE000000000000000;
    v121.value.super.isa = 0;
    v121.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v117, v103, 0, v121, 0, 0xFFFFFFFFFFFFFFFFLL, v117, children);
    v105 = v104;

    return v105;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in FavoritesSectionManager.contextMenuConfiguration(for:alertPresenting:)(int a1, id a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = [a2 providerDomainID];
  v8 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v7 node:a2];

  [v8 setIsFPV2_];
  v9 = *(a3 + OBJC_IVAR___DOCActionContext_appearance);
  v10 = *(a3 + OBJC_IVAR___DOCActionContext_configuration);
  v11 = *(a3 + OBJC_IVAR___DOCActionContext_presentingViewController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0xD000000000000036;
  *(inited + 40) = 0x8000000249BD4210;
  *(inited + 72) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  *(inited + 48) = v8;
  v13 = v8;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd);
  v15 = type metadata accessor for DOCActionContext();
  v16 = objc_allocWithZone(v15);
  swift_unknownObjectWeakInit();
  *&v16[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v16[OBJC_IVAR___DOCActionContext_appearance] = v9;
  *&v16[OBJC_IVAR___DOCActionContext_configuration] = v10;
  *&v16[OBJC_IVAR___DOCActionContext_presentingViewController] = v11;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v16[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
  *&v16[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
  *&v16[OBJC_IVAR___DOCActionContext_userInfo] = v14;
  v25.receiver = v16;
  v25.super_class = v15;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = objc_msgSendSuper2(&v25, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_249BA0290;
  *(v21 + 32) = a2;
  v22 = a2;
  specialized DOCActionManager.perform(_:on:actionContext:)(a5, v21, v20);
}

void closure #3 in closure #1 in FavoritesSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = [a3 providerDomainID];
    v5 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v4 node:a3];

    [v5 setIsFPV2_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      (*((*MEMORY[0x277D85000] & *Strong) + 0x278))(v5);
    }
  }
}

void closure #4 in closure #1 in FavoritesSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249BA0290;
  *(v9 + 32) = a3;
  v10 = type metadata accessor for DOCServiceInfoViewController();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_isInPopoverMode] = 0;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_configuration] = v8;
  v12 = objc_allocWithZone(DOCItemInfoViewController);
  v13 = a3;
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v12 initWithNodes:isa configuration:v14 actionReporting:0];

  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoNavigationController] = v17;
  [v17 _setBuiltinTransitionStyle_];
  v55.receiver = v11;
  v55.super_class = v10;
  v18 = objc_msgSendSuper2(&v55, sel_init);
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a4;
  v19[4] = a5;
  v20 = one-time initialization token for associatedObjectStorageKey;
  v21 = v18;
  v22 = a5;
  v23 = a4;
  v24 = v21;
  v25 = v23;
  v26 = v22;
  if (v20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v24, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  v28 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v27) + 0x78))(v51);

  v29 = &unk_2810DF000;
  if (v51[0])
  {
  }

  else
  {
    v54 = &unk_285D0A930;
    swift_dynamicCastObjCProtocolUnconditional();
    v30 = static UIViewController.associatedObjectStorageKey;
    v31 = v24;
    v32 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v31, v30);
    v33 = v10;
    v34 = v25;
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v36 = v26;
    v37 = swift_allocObject();
    *(v37 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v37 + 32) = MEMORY[0x277D84F90];
    *(v37 + 40) = 0;
    swift_unknownObjectWeakAssign();
    v51[0] = v37;
    v26 = v36;
    v28 = MEMORY[0x277D85000];
    v38 = KeyPath;
    v25 = v34;
    v10 = v33;
    (*((*MEMORY[0x277D85000] & *v32) + 0x80))(v51, v38);

    v29 = &unk_2810DF000;
  }

  v39 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v24, v29[110]);
  swift_getKeyPath();
  (*((*v28 & *v39) + 0x78))(v51);

  v40 = v51[0];
  if (v51[0])
  {
    if (*(v51[0] + 40) == 2)
    {
      closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(v24, v25, v26);
    }

    else
    {
      v45 = swift_allocObject();
      *(v45 + 16) = partial apply for closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:);
      *(v45 + 24) = v19;
      swift_beginAccess();
      v46 = *(v40 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v40 + 32) = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
        *(v40 + 32) = v46;
      }

      v49 = v46[2];
      v48 = v46[3];
      if (v49 >= v48 >> 1)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v46);
      }

      v46[2] = v49 + 1;
      v50 = &v46[2 * v49];
      v50[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      v50[5] = v45;
      *(v40 + 32) = v46;
      swift_endAccess();
      DOCPresentationPreheatController.startIfNecessary()();
    }
  }

  else
  {
    v53.receiver = v24;
    v53.super_class = v10;
    objc_msgSendSuper2(&v53, sel_setModalPresentationStyle_, 7);
    v41 = [v24 traitCollection];
    v42 = [v41 userInterfaceIdiom];

    if (v42 != 6)
    {
      v52.receiver = v24;
      v52.super_class = v10;
      if (objc_msgSendSuper2(&v52, sel_modalPresentationStyle) == 2)
      {
        [v24 setPreferredContentSize_];
      }
    }

    v43 = [v24 popoverPresentationController];
    if (v43)
    {
      v44 = v43;
      [v43 setSourceItem_];
    }

    [v24 setModalPresentationStyle_];
    [v26 presentViewController:v24 animated:1 completion:0];

    v25 = v24;
  }
}

void closure #6 in closure #1 in FavoritesSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() sharedManager];
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v9[4] = partial apply for closure #1 in closure #6 in closure #1 in FavoritesSectionManager.contextMenuConfiguration(for:alertPresenting:);
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v9[3] = &block_descriptor_63_4;
  v7 = _Block_copy(v9);
  v8 = a3;

  [v5 removeFavorite:a2 completion:v7];
  _Block_release(v7);
}

uint64_t closure #1 in closure #6 in closure #1 in FavoritesSectionManager.contextMenuConfiguration(for:alertPresenting:)(char a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a2;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in closure #6 in closure #1 in FavoritesSectionManager.contextMenuConfiguration(for:alertPresenting:)(char a1, id a2)
{
  if (a1)
  {
    v3 = [a2 parent];
    if (v3)
    {
      v4 = v3;
      v5 = a2;
      v6 = [v4 children];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = v7;
      v8 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v11, v5);

      if (v11 >> 62)
      {
        v9 = __CocoaSet.count.getter();
        if (v9 >= v8)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v9 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v8)
        {
LABEL_5:
          specialized Array.replaceSubrange<A>(_:with:)(v8, v9);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v4 setChildren_];

          return;
        }
      }

      __break(1u);
    }
  }
}

id FavoritesSectionManager.sidebarItem(for:tab:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() itemFromRequest_];
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  aBlock = v26;
  v22 = v27;
  if (*(&v27 + 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    if (swift_dynamicCast())
    {
      v10 = v25;
      UITabSidebarItem.defaultContentConfiguration()();
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v10;
      v13 = objc_allocWithZone(MEMORY[0x277D75E80]);
      v23 = partial apply for closure #1 in FavoritesSectionManager.sidebarItem(for:tab:);
      v24 = v12;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v22 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      *(&v22 + 1) = &block_descriptor_13_5;
      v14 = _Block_copy(&aBlock);

      v15 = v10;
      v16 = [v13 initWithDidEndHandler_];
      _Block_release(v14);

      v23 = closure #2 in LocationSectionManager.sidebarItem(for:tab:);
      v24 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v22 = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
      *(&v22 + 1) = &block_descriptor_16_3;
      v17 = _Block_copy(&aBlock);
      [v16 setShouldChangeHandler_];
      _Block_release(v17);
      v23 = closure #3 in LocationSectionManager.sidebarItem(for:tab:);
      v24 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v22 = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@unowned Bool);
      *(&v22 + 1) = &block_descriptor_19_8;
      v18 = _Block_copy(&aBlock);
      [v16 setShouldEndHandler_];
      _Block_release(v18);
      *(&v22 + 1) = v4;
      v23 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
      UITabSidebarItem.contentConfiguration.setter();

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    outlined destroy of CharacterSet?(&aBlock, &_sypSgMd);
  }

  return v9;
}

void closure #1 in FavoritesSectionManager.sidebarItem(for:tab:)(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = (*((*MEMORY[0x277D85000] & *Strong) + 0x280))();
      if (v7)
      {
        v8 = v7;
        v9 = [a1 text];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        specialized FavoritesSectionManager.handleFolderRename(folder:alertPresenting:to:)(a3, v8, v10, v12);
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

uint64_t closure #1 in FavoritesSectionManager.handleFolderRename(folder:alertPresenting:to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  v13 = a1;
  swift_unknownObjectRetain();

  v14 = a6;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in FavoritesSectionManager.handleFolderRename(folder:alertPresenting:to:)(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (one-time initialization token for sharedManager != -1)
  {
    swift_once();
  }

  (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
  if (a1)
  {
    v11 = a1;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.Rename);
    v13 = a1;
    swift_unknownObjectRetain();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    swift_unknownObjectRelease();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = a6;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28[0] = v26;
      *v16 = 136315650;
      v17 = [a2 description];
      v18 = a3;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v28);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, a4, v28);
      *(v16 + 22) = 2112;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v24;
      *v25 = v24;
      _os_log_impl(&dword_2493AC000, v14, v15, "Renaming folder: %s to: %s failed with error: %@", v16, 0x20u);
      outlined destroy of CharacterSet?(v25, &_sSo8NSObjectCSgMd);
      a6 = v27;
      MEMORY[0x24C1FE850](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      specialized FavoritesSectionManager.warnAboutInvalidFolderName(alertPresenting:message:)(a6, 0, 0);
    }

    else
    {
    }
  }
}

uint64_t FavoritesSectionManager.deinit()
{
  MEMORY[0x24C1FE970](v0 + 32);

  return v0;
}

uint64_t FavoritesSectionManager.__deallocating_deinit()
{
  MEMORY[0x24C1FE970](v0 + 32);

  return swift_deallocClassInstance();
}

id protocol witness for TabSectionManager.generateTabGroup(using:alertPresenting:) in conformance FavoritesSectionManager(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized FavoritesSectionManager.generateTabGroup(using:alertPresenting:)(a1, v2, ObjectType, a2);
}

void specialized FavoritesSectionManager.handleFolderRename(folder:alertPresenting:to:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v68 = a2;
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = [a1 displayName];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == a3 && v17 == a4)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        return;
      }

      v20 = MEMORY[0x24C1FAD20](a3, a4);
      v21 = [v20 pathExtension];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v25 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v26 = v68;

        specialized FavoritesSectionManager.warnAboutInvalidFolderName(alertPresenting:message:)(v26, 0, 0);
        return;
      }

      v27._countAndFlagsBits = 46;
      v27._object = 0xE100000000000000;
      if (String.hasPrefix(_:)(v27))
      {
        lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
        v28 = swift_allocError();
        *v29 = 2;
LABEL_27:
        swift_getErrorValue();
        v64 = v28;
        v65 = Error.localizedDescription.getter();
        specialized FavoritesSectionManager.warnAboutInvalidFolderName(alertPresenting:message:)(v68, v65, v66);

        outlined consume of Result<RenameProposition, Error>(v28, 0, 0, 1);
        return;
      }

      CharacterSet.init(charactersIn:)();
      v69[0] = a3;
      v69[1] = a4;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      if ((v30 & 1) == 0)
      {
        lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
        v28 = swift_allocError();
        *v63 = 3;
        (*(v8 + 8))(v12, v7);
        goto LABEL_27;
      }

      (*(v8 + 8))(v12, v7);
      v31 = swift_allocObject();
      swift_weakInit();
      v32 = swift_allocObject();
      v32[2] = a1;
      v32[3] = a3;
      v32[4] = a4;
      v32[5] = v31;
      v33 = v68;
      v32[6] = v68;
      v34 = objc_opt_self();
      v35 = a1;

      v36 = v33;
      v37 = [v34 defaultManager];
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      v39 = [objc_opt_self() shared];
      v40 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
      v41 = v35;

      v42 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v41, a3, a4, 1, 1, v39, v40);

      v43 = swift_allocObject();
      *(v43 + 16) = v37;
      *(v43 + 24) = v38;
      *(v43 + 32) = a3;
      *(v43 + 40) = a4;
      *(v43 + 48) = v36;
      *(v43 + 56) = 0;
      *(v43 + 64) = partial apply for closure #1 in FavoritesSectionManager.handleFolderRename(folder:alertPresenting:to:);
      *(v43 + 72) = v32;
      *(v43 + 80) = 0;
      *(v43 + 88) = 0;
      v44 = *((*MEMORY[0x277D85000] & *v42) + 0x190);

      v45 = v36;
      v46 = v37;

      v44(_sSo13FPItemManagerC08DocumentB11ExecutablesE13performRename4node14newDisplayName22shouldDonateAppIntents15alertPresenting25requiresAlertPresentation10completion13finishedBlockySo7DOCNode_p_SSSbSo16UIViewControllerCSbys5Error_pSgcySoAL_pSg_APtcSgtFyAC18DOCRenameOperationC_AQtcfU_TA_2, v43);
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = *((*MEMORY[0x277D85000] & *v42) + 0x148);

      v48(partial apply for closure #2 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v47);

      v49 = swift_allocObject();
      v68 = v46;
      swift_unknownObjectWeakInit();
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = MEMORY[0x277D85000];
      v53 = *((*MEMORY[0x277D85000] & *v42) + 0x160);

      v53(partial apply for closure #3 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v51);

      v54 = *((*v52 & *v42) + 0x178);

      v54(partial apply for closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v38);
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logger.Rename);
      v56 = v42;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v69[0] = v61;
        *v59 = 136315394;
        *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007DLL, 0x8000000249BD2620, v69);
        *(v59 + 12) = 2112;
        *(v59 + 14) = v56;
        *v60 = v42;
        v62 = v56;
        _os_log_impl(&dword_2493AC000, v57, v58, "%s: Adding Rename Operation %@", v59, 0x16u);
        outlined destroy of CharacterSet?(v60, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v60, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x24C1FE850](v61, -1, -1);
        MEMORY[0x24C1FE850](v59, -1, -1);
      }

      (*((*MEMORY[0x277D85000] & *v56) + 0x1B8))();
    }
  }
}

uint64_t specialized FavoritesSectionManager.init(configuration:mutableSectionsData:dataSource:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 2;
  swift_unknownObjectWeakInit();
  *(v2 + 56) = 0;
  *(v2 + 24) = a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t specialized FavoritesSectionManager.generateTabs(using:alertPresenting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**(a2 + 40) + 136))(2);
  v9 = v8;
  ObjectType = swift_getObjectType();
  result = (*(v9 + 72))(2, ObjectType, v9);
  v12 = result;
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  v15 = a4 + 8;
  v16 = result - 16;
  v17 = *(result + 16);
LABEL_2:
  v18 = (v16 + 48 * v13);
  while (1)
  {
    if (v17 == v13)
    {
      swift_unknownObjectRelease();

      return v14;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    ++v13;
    v19 = (v18 + 3);
    v20 = v18[3];
    v21 = v18[4];
    *&v49[9] = *(v18 + 73);
    v48 = v20;
    *v49 = v21;
    v18 += 3;
    if (!v49[24])
    {
      v39 = v16;
      v41 = v7;
      v22 = *v19;
      v23 = v48;
      outlined init with copy of DOCSidebarItem(&v48, &v45);
      v24 = v22;
      v25 = [v23 displayName];
      if (!v25)
      {
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = MEMORY[0x24C1FAD20](v26);
      }

      v42 = a1;
      v43 = a3;
      v44 = a4;
      v40 = v15;
      v27 = (*(a4 + 8))(&v48, a3, a4);
      outlined destroy of DOCSidebarItem(&v48);
      v45 = 0x657469726F766166;
      v46 = 0xE90000000000002ELL;
      v28 = [v23 itemID];
      v29 = [v28 identifier];

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      MEMORY[0x24C1FAEA0](v30, v32);

      v33 = v45;
      v34 = v46;
      v35 = objc_allocWithZone(MEMORY[0x277D75B08]);
      v36 = MEMORY[0x24C1FAD20](v33, v34);

      v37 = [v35 initWithTitle:v25 image:v27 identifier:v36 viewControllerProvider:0];

      [v37 setUserInfo_];
      v38 = outlined destroy of DOCSidebarItem(&v48);
      MEMORY[0x24C1FB090](v38);
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = v47;
      a3 = v43;
      a4 = v44;
      v7 = v41;
      a1 = v42;
      v16 = v39;
      v15 = v40;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id specialized FavoritesSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized FavoritesSectionManager.generateTabs(using:alertPresenting:)(a1, a2, a3, a4);
  if (v4 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [objc_opt_self() mainBundle];
  v19._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0x657469726F766146;
  v6._object = 0xE900000000000073;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v19);

  v9 = MEMORY[0x24C1FAD20](1918989427, 0xE400000000000000);
  v10 = [objc_opt_self() systemImageNamed_];

  v11 = objc_allocWithZone(MEMORY[0x277D75B30]);
  v12 = MEMORY[0x24C1FAD20](v8._countAndFlagsBits, v8._object);

  v13 = MEMORY[0x24C1FAD20](0x657469726F766166, 0xE900000000000073);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in LocationSectionManager.generateTabGroup(using:alertPresenting:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
  aBlock[3] = &block_descriptor_101_1;
  v15 = _Block_copy(aBlock);

  v16 = [v11 initWithTitle:v12 image:v10 identifier:v13 children:isa viewControllerProvider:v15];
  _Block_release(v15);

  return v16;
}

void specialized FavoritesSectionManager.reorderFavorites(_:completion:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  v15[0] = MEMORY[0x277D84F90];
  v5 = *(a1 + 16);

  v6 = 0;
LABEL_2:
  v7 = a1 - 16 + 48 * v6;
  while (v5 != v6)
  {
    if (v6 >= v5)
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_16;
      }

LABEL_12:
      v11 = [objc_opt_self() sharedManager];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for closure #2 in FavoritesSectionManager.displayOrderDidChange(for:);
      *(v13 + 24) = a2;
      v15[4] = partial apply for closure #1 in DOCBrowserHistoryDataSource.refreshUnderlyingNodesIfNecessary(locationMap:_:);
      v15[5] = v13;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 1107296256;
      v15[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v15[3] = &block_descriptor_98_1;
      v14 = _Block_copy(v15);

      [v11 updateFavoritesRanksToMatchOrderedFavorites:isa completion:v14];
      _Block_release(v14);

      return;
    }

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    v9 = *(v7 + 88);
    ++v6;
    v7 += 48;
    if (!v9)
    {
      v10 = *v7;
      MEMORY[0x24C1FB090]();
      if (*((v15[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v15[0];
      v6 = v8;
      goto LABEL_2;
    }
  }

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_16:
  closure #2 in FavoritesSectionManager.displayOrderDidChange(for:)(a2);
}

uint64_t specialized FavoritesSectionManager.validateDropOperation(for:onto:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v39[0] = v40;
  v39[1] = v41;
  if (!*(&v41 + 1))
  {
    outlined destroy of CharacterSet?(v39, &_sypSgMd);
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    v10 = DOCNode.fpfs_syncFetchFPItem()();
    if (!v10)
    {
      swift_unknownObjectRelease();
      return 1;
    }

    v11 = v10;
    v12 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    swift_getObjectType();
    if (specialized static FPItem.sessionContainsDOCNode(_:)(a1, v12))
    {
      static UTType.item.getter();
      v37 = v12;
      v13 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(a1, v9);
      (*(v5 + 8))(v9, v4);
      v38 = v11;
      *&v39[0] = MEMORY[0x277D84F90];
      if (v13 >> 62)
      {
LABEL_40:
        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = 0;
      v4 = MEMORY[0x277D84F90];
      while (v14 != v15)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v15, v13);
          v16 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          swift_unknownObjectRetain();
          v16 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

        swift_getObjectType();
        v17 = DOCNode.fpfs_syncFetchFPItem()();
        v18 = swift_unknownObjectRelease();
        ++v15;
        if (v17)
        {
          MEMORY[0x24C1FB090](v18);
          if (*((*&v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v4 = *&v39[0];
          v15 = v16;
        }
      }

LABEL_27:

      if (v4 >> 62)
      {
        v36 = __CocoaSet.count.getter();
        v24 = v38;
        if (v36)
        {
LABEL_29:
          v25 = [objc_opt_self() defaultManager];
          isa = Array._bridgeToObjectiveC()().super.isa;

          v27 = [v25 eligibleActionsForDroppingItems:isa underItem:v24];

          type metadata accessor for FPAction(0);
          lazy protocol witness table accessor for type FPAction and conformance FPAction();
          v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if (specialized Set.contains(_:)(*MEMORY[0x277CC6048], v28))
          {
            swift_unknownObjectRelease();

            return 3;
          }

          v35 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v28);
          swift_unknownObjectRelease();

          if (v35)
          {
            return 2;
          }

          return 1;
        }
      }

      else
      {
        v24 = v38;
        if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }
      }

      swift_unknownObjectRelease();

      return 1;
    }

    v19 = UIDropSession.uniqueUTIsForDragItems.getter();
    v20 = v19;
    v21 = *(v19 + 16);
    if (v21)
    {
      v22 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v19 + 16), 0);
      v23 = specialized Sequence._copySequenceContents(initializing:)(v39, v22 + 4, v21, v20);
      outlined consume of Set<UITouch>.Iterator._Variant();
      if (v23 != v21)
      {
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
    }

    v30 = [objc_opt_self() defaultManager];
    v31 = Array._bridgeToObjectiveC()().super.isa;

    v32 = [v30 eligibleActionsForDroppingUTIs:v31 underItem:v11];

    type metadata accessor for FPAction(0);
    lazy protocol witness table accessor for type FPAction and conformance FPAction();
    v33 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Set.contains(_:)(*MEMORY[0x277CC6048], v33))
    {

      swift_unknownObjectRelease();

      return 2;
    }

    v34 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v33);

    swift_unknownObjectRelease();

    if (v34)
    {
      return 2;
    }
  }

  return 1;
}

void specialized FavoritesSectionManager.performDrop(session:onto:alertPresenting:completion:)(void *a1, id a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (!*(&v18 + 1))
  {
    v9 = outlined destroy of CharacterSet?(v19, &_sypSgMd);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {
LABEL_11:
    a4(v9);
    return;
  }

  swift_getObjectType();
  v10 = DOCNode.fpfs_syncFetchFPItem()();
  if (!v10)
  {
    v9 = swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v11 = v10;
  v12 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  swift_getObjectType();
  if (specialized static FPItem.sessionContainsDOCNode(_:)(a1, v12))
  {
    v13 = v11;

    specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(a1, a3, v12, v13, a4, a5);

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = [a1 items];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = v11;
    _sSo6FPItemC26DocumentManagerExecutablesE19performExternalDrop_9underItem15alertPresenting10completionySaySo06UIDragI0CG_So7DOCNode_pSo16UIViewControllerCySaySoAK_pGSgcSgtFZTf4nennn_nAB_Tt3g5(v15, v16, a3, 0, 0);

    (a4)();
    swift_unknownObjectRelease();
  }
}

id specialized FavoritesSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:)(void *a1)
{
  if ([a1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  aBlock = v23;
  v20 = v24;
  if (!*(&v24 + 1))
  {
    outlined destroy of CharacterSet?(&aBlock, &_sypSgMd);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  swift_getObjectType();
  v1 = DOCNode.fpfs_syncFetchFPItem()();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = v1;
  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v25._object = 0x8000000249BC9850;
    v5._countAndFlagsBits = 0x65766F6D6552;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v5._object = 0xE600000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0xD000000000000049;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v25);

    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v2;

    v11 = v2;
    v12 = MEMORY[0x24C1FAD20](v8._countAndFlagsBits, v8._object);

    v21 = partial apply for closure #1 in FavoritesSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:);
    v22 = v10;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v20 = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
    *(&v20 + 1) = &block_descriptor_80_0;
    v13 = _Block_copy(&aBlock);
    v14 = [objc_opt_self() contextualActionWithStyle:1 title:v12 handler:v13];

    _Block_release(v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_249BA0290;
    *(v15 + 32) = v14;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextualAction);
    v16 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() configurationWithActions_];
    swift_unknownObjectRelease();

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized FavoritesSectionManager.warnAboutInvalidFolderName(alertPresenting:message:)(void *a1, uint64_t countAndFlagsBits, void *a3)
{
  v6 = _DocumentManagerBundle();
  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v32._object = 0x8000000249BD3ED0;
  v8._object = 0x8000000249BD3EB0;
  v32._countAndFlagsBits = 0xD00000000000004ALL;
  v8._countAndFlagsBits = 0xD000000000000017;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v32);

  if (a3)
  {
    object = a3;
  }

  else
  {
    v13 = _DocumentManagerBundle();
    if (!v13)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v14 = v13;
    v33._object = 0x8000000249BD3F60;
    v15._object = 0x8000000249BD3F20;
    v33._countAndFlagsBits = 0xD00000000000003CLL;
    v15._countAndFlagsBits = 0x1000000000000031;
    v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v16.value._object = 0xEB00000000656C62;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v33);
    countAndFlagsBits = v18._countAndFlagsBits;
    object = v18._object;
  }

  v19 = MEMORY[0x24C1FAD20](v11._countAndFlagsBits, v11._object);

  v20 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

  v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

  v22 = _DocumentManagerBundle();
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = v22;
  v34._object = 0xE200000000000000;
  v24._countAndFlagsBits = 19279;
  v24._object = 0xE200000000000000;
  v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v25.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v34._countAndFlagsBits = 19279;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v34);

  v28 = MEMORY[0x24C1FAD20](v27._countAndFlagsBits, v27._object);

  v30 = [objc_opt_self() actionWithTitle:v28 style:0 handler:0];

  v29 = v21;
  [v29 addAction_];
  [v29 setPreferredAction_];

  [a1 presentViewController:v29 animated:1 completion:0];
}

void DOCCollectionEdit.operationType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t DOCCollectionEdit.init(_:value:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 8);
  *a5 = *a1;
  *(a5 + 8) = v9;
  v10 = type metadata accessor for DOCCollectionEdit();
  result = (*(*(a4 - 8) + 32))(a5 + *(v10 + 36), a2, a4);
  *(a5 + *(v10 + 40)) = a3;
  return result;
}

BOOL static DOCCollectionEdit.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if (v5 != 1)
        {
          v6 = 0;
        }

        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v5 <= 1)
        {
          v6 = 0;
        }

        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v5)
      {
        v6 = 0;
      }

      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v4 != v5)
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = type metadata accessor for DOCCollectionEdit();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return *(a1 + *(v7 + 40)) == *(a2 + *(v7 + 40));
  }

  return 0;
}

BOOL static DOCCollectionEditType.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v4 = *(a2 + 8);
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v7 = *(a2 + 8);
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = *(a2 + 8);
      }

      if (v6)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t DOCCollectionEdit.debugDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      if (v1 != 1)
      {
        _StringGuts.grow(_:)(25);
        v4 = 0x7574697473627553;
        v5 = 0xEB00000000206574;
        goto LABEL_9;
      }

      _StringGuts.grow(_:)(21);
      v2 = 0x6574656C6544;
    }

    else
    {
      _StringGuts.grow(_:)(21);
      v2 = 0x747265736E49;
    }

    v4 = v2 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
    v5 = 0xE700000000000000;
LABEL_9:
    MEMORY[0x24C1FAEA0](v4, v5);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x24C1FAEA0](0x65646E6920746120, 0xEA00000000002078);
    goto LABEL_10;
  }

  _StringGuts.grow(_:)(33);
  MEMORY[0x24C1FAEA0](0x2065766F4DLL, 0xE500000000000000);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x24C1FAEA0](0x6E69206D6F726620, 0xEC00000020786564);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v3);

  MEMORY[0x24C1FAEA0](0x65646E69206F7420, 0xEA00000000002078);
LABEL_10:
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v6);

  return 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCCollectionEditType(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t DOCCollectionDiff.init(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a3 - 8);
  v12 = *(v11 + 16);
  v12(a6, a1);
  v13 = type metadata accessor for DOCCollectionDiff();
  v14 = *(v13 + 44);
  (v12)(a6 + v14, a2, a3);
  v15 = static DOCCollectionDiff.edits(from:to:)(a6, a6 + v14, a3, a4, a5);
  v16 = *(v11 + 8);
  v16(a2, a3);
  result = (v16)(a1, a3);
  *(a6 + *(v13 + 48)) = v15;
  return result;
}

uint64_t static DOCCollectionDiff.edits(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v13);
  v160 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v176 = &v141 - v17;
  v161 = a5;
  v18 = type metadata accessor for DOCCollectionEdit();
  v166 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v146 = (&v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21, v22);
  v152 = &v141 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v156 = (&v141 - v26);
  v177 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v179 = type metadata accessor for Optional();
  v169 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v27);
  v175 = (&v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29, v30);
  v174 = &v141 - v31;
  v167 = type metadata accessor for EnumeratedSequence();
  MEMORY[0x28223BE20](v167, v32);
  v163 = &v141 - v33;
  v178 = v10;
  v180 = type metadata accessor for EnumeratedSequence.Iterator();
  v159 = *(v180 - 8);
  MEMORY[0x28223BE20](v180, v34);
  v36 = &v141 - v35;
  v168 = swift_getAssociatedTypeWitness();
  v37 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v38);
  v164 = &v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v147 = &v141 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v181 = &v141 - v45;
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v141 - v48;
  v171 = a1;
  v145 = dispatch thunk of Collection.count.getter();
  v172 = a2;
  v50 = dispatch thunk of Collection.count.getter();
  result = static Array._allocateUninitialized(_:)();
  v186[0] = result;
  v144 = v50;
  if (__OFADD__(v50, 1))
  {
LABEL_44:
    __break(1u);
  }

  else
  {
    v142 = v37;
    v52 = v50 + 1;
    v53 = type metadata accessor for Array();
    v143 = v52;
    v54 = v18;
    v55 = specialized Array.init(repeating:count:)(v186, v52, v53);

    v189 = v55;
    v151 = Array.init()();
    v170 = v49;
    v162 = a4;
    dispatch thunk of Collection.startIndex.getter();
    v157 = v54;
    v187 = Array.init()();
    v173 = a3;
    MEMORY[0x24C1FAFE0](a3, v178);
    EnumeratedSequence.makeIterator()();
    v169 += 4;
    v56 = TupleTypeMetadata2;
    v167 = (TupleTypeMetadata2 - 2);
    v155 = (v12 + 32);
    v154 = (v166 + 16);
    v153 = (v166 + 8);
    v178 = v53;
    v57 = v36;
    while (1)
    {
      v58 = v175;
      EnumeratedSequence.Iterator.next()();
      v59 = v174;
      (*v169)(v174, v58, v179);
      if ((*(*(v56 - 1) + 48))(v59, 1, v56) == 1)
      {
        break;
      }

      v60 = v12;
      v61 = *v59;
      v62 = v56;
      v63 = v56[12];
      LOBYTE(v186[0]) = 1;
      v64 = v59;
      v65 = *v155;
      v66 = v176;
      v67 = v177;
      (*v155)(v176, &v64[v63], v177);
      v68 = v186[0];
      v69 = v156;
      *v156 = 0;
      *(v69 + 8) = v68;
      v70 = v157;
      v71 = v67;
      v53 = v178;
      v65(v69 + *(v157 + 36), v66, v71);
      *(v69 + *(v70 + 40)) = v61;
      (*v154)(v152, v69, v70);
      result = Array.append(_:)();
      v72 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v73 = v187;
      type metadata accessor for Array();

      Array._makeMutableAndUnique()();
      v74 = v189;
      Array._checkSubscript_mutating(_:)(v72);
      (*v153)(v69, v70);
      *(v74 + 8 * v72 + 32) = v73;

      v12 = v60;
      v56 = v62;
    }

    v159[1](v57, v180);

    v75 = v189;
    if (v145 >= 1)
    {
      v76 = 0;
      TupleTypeMetadata2 = (v142 + 8);
      v167 = (v142 + 32);
      v175 = (v12 + 16);
      v159 = (v12 + 8);
      v158 = 1 - v144;
      v77 = 1;
      v78 = v173;
      while (1)
      {
        v148 = v77;
        v169 = v75;
        dispatch thunk of Collection.startIndex.getter();
        if (v76)
        {
          (*TupleTypeMetadata2)(v181, v168);
        }

        v166 = *v167;
        (v166)(v181, v147, v168);
        v79 = v157;
        v186[0] = static Array._allocateUninitialized(_:)();
        v80 = specialized Array.init(repeating:count:)(v186, v143, v53);

        v188 = v80;
        Array.subscript.getter();
        LOBYTE(v185) = 1;
        v81 = dispatch thunk of Collection.subscript.read();
        v82 = v176;
        v83 = v177;
        v174 = *v175;
        (v174)(v176);
        v81(v186, 0);
        v84 = v148 - 1;
        v85 = v185;
        v86 = v146;
        *v146 = 1;
        *(v86 + 8) = v85;
        v87 = v86 + *(v79 + 36);
        v151 = *v155;
        v151(v87, v82, v83);
        v88 = *(v79 + 40);
        v149 = v84;
        *(v86 + v88) = v84;
        v150 = *v154;
        v150(v156, v86, v79);
        Array.append(_:)();
        v89 = v186[4];
        v163 = type metadata accessor for Array();
        Array._makeMutableAndUnique()();
        v90 = v188;
        result = _swift_isClassOrObjCExistentialType();
        v91 = v90 & 0xFFFFFFFFFFFFFF8;
        if ((result & 1) == 0)
        {
          v91 = v90;
        }

        if (!*(v91 + 16))
        {
          goto LABEL_43;
        }

        *(v90 + 32) = v89;

        v92 = v168;
        v93 = v78;
        if (v144 >= 1)
        {
          v94 = 5;
          while (1)
          {
            v179 = v94;
            v180 = v94 - 4;
            v95 = dispatch thunk of Collection.subscript.read();
            v97 = v176;
            v96 = v177;
            v98 = v174;
            (v174)(v176);
            v95(v186, 0);
            v99 = dispatch thunk of Collection.subscript.read();
            v100 = v160;
            (v98)(v160);
            (v99)(v186, 0);
            LOBYTE(v99) = dispatch thunk of static Equatable.== infix(_:_:)();
            v101 = *v159;
            (*v159)(v100, v96);
            v101(v97, v96);
            if (v99)
            {
              v102 = v179;
              Array.subscript.getter();
              v103 = v186[0];
              Array._makeMutableAndUnique()();
              v104 = v188;
              v105 = v180;
              Array._checkSubscript_mutating(_:)(v180);
              *(v104 + 8 * v102) = v103;

              v93 = v173;
              v92 = v168;
            }

            else
            {
              v105 = v180;
              Array.subscript.getter();
              v106 = v179;
              v107 = v179 - 5;
              Array.subscript.getter();
              Array.subscript.getter();
              v108 = v157;
              v109 = MEMORY[0x24C1FB170](v185, v157);
              v110 = v184;
              v111 = MEMORY[0x24C1FB170](v184, v108);
              v112 = MEMORY[0x24C1FB170](v183, v108);
              v113 = v111 >= v109 ? v109 : v111;
              v114 = v112 >= v113 ? v113 : v112;
              v102 = v106;
              if (v109 == v114)
              {

                v182 = 1;
                v115 = dispatch thunk of Collection.subscript.read();
                v116 = v176;
                v117 = v177;
                (v174)(v176);
                v115(v186, 0);
                v118 = v182;
                v119 = v156;
                *v156 = 1;
                *(v119 + 8) = v118;
                v151(v119 + *(v108 + 36), v116, v117);
                *(v119 + *(v108 + 40)) = v149;
                v120 = &v185;
              }

              else
              {

                if (MEMORY[0x24C1FB170](v110, v108) == v114)
                {

                  v182 = 1;
                  v121 = dispatch thunk of Collection.subscript.read();
                  v122 = v176;
                  v123 = v177;
                  (v174)(v176);
                  v121(v186, 0);
                  v124 = v182;
                  v119 = v156;
                  *v156 = 0;
                  *(v119 + 8) = v124;
                  v151(v119 + *(v108 + 36), v122, v123);
                  *(v119 + *(v108 + 40)) = v107;
                  v120 = &v184;
                }

                else
                {

                  v182 = 1;
                  v125 = dispatch thunk of Collection.subscript.read();
                  v126 = v176;
                  v127 = v177;
                  (v174)(v176);
                  v125(v186, 0);
                  v128 = v182;
                  v119 = v156;
                  *v156 = 2;
                  *(v119 + 8) = v128;
                  v151(v119 + *(v108 + 36), v126, v127);
                  *(v119 + *(v108 + 40)) = v149;
                  v120 = &v183;
                }
              }

              v150(v152, v119, v108);
              Array.append(_:)();
              v129 = *v120;
              Array._makeMutableAndUnique()();
              v130 = v188;
              Array._checkSubscript_mutating(_:)(v105);
              (*v153)(v119, v108);
              *(v130 + 8 * v102) = v129;

              v92 = v168;
              v93 = v173;
            }

            v131 = v158 + v102;
            v132 = v164;
            v133 = v181;
            dispatch thunk of Collection.index(_:offsetBy:)();
            (*TupleTypeMetadata2)(v133, v92);
            result = (v166)(v133, v132, v92);
            if (v131 == 5)
            {
              break;
            }

            v94 = v102 + 1;
            if (__OFADD__(v105, 1))
            {
              __break(1u);
              goto LABEL_42;
            }
          }
        }

        v134 = v92;
        v135 = v188;

        v136 = v164;
        v137 = v170;
        v78 = v93;
        dispatch thunk of Collection.index(_:offsetBy:)();
        (*v153)(v146, v157);
        (*TupleTypeMetadata2)(v137, v134);
        (v166)(v137, v136, v134);
        if (v148 == v145)
        {
          goto LABEL_37;
        }

        v76 = 1;
        v75 = v135;
        v77 = v148 + 1;
        v53 = v178;
        if (__OFADD__(v148, 1))
        {
          __break(1u);
LABEL_37:
          v189 = v135;
          goto LABEL_39;
        }
      }
    }

    v137 = v170;
LABEL_39:
    Array.subscript.getter();
    v138 = static DOCCollectionDiff.reducedDOCCollectionEdits<A>(_:)();

    v139 = *(v142 + 8);
    v140 = v168;
    v139(v137, v168);
    if (v145 >= 1)
    {
      v139(v181, v140);
    }

    return v138;
  }

  return result;
}

uint64_t static DOCCollectionDiff.reducedDOCCollectionEdits<A>(_:)()
{
  type metadata accessor for DOCCollectionEdit();
  Array.init()();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.reduce<A>(_:_:)();

  return v1;
}

uint64_t closure #1 in static DOCCollectionDiff.reducedDOCCollectionEdits<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v44 = a8;
  v42 = a5;
  v43 = a7;
  v40 = a6;
  v41 = a3;
  v39 = a1;
  v10 = type metadata accessor for DOCCollectionEdit();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for Optional();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v36 - v14;
  v36 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v36, v16);
  v18 = &v36 - v17;
  v19 = *(v10 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v36 - v26;
  v45 = *v39;
  v28 = v45;

  v39 = a2;
  static DOCCollectionDiff.move<A>(from:in:)(a2, v28, v41, a4, v42, v40, v43, v15);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
  {
    (*(v37 + 8))(v15, v38);
  }

  else
  {
    v42 = v27;
    v43 = v23;
    v29 = *&v15[*(TupleTypeMetadata2 + 48)];
    v30 = *(v36 + 48);
    v31 = *(v19 + 32);
    v31(v18, v15, v10);
    *&v18[v30] = v29;
    v32 = v42;
    v31(v42, v18, v10);
    if (*(v32 + 8) != 1)
    {
      type metadata accessor for Array();
      v34 = v43;
      Array.remove(at:)();
      v35 = *(v19 + 8);
      v35(v34, v10);
      (*(v19 + 16))(v34, v32, v10);
      Array.append(_:)();
      result = (v35)(v32, v10);
      goto LABEL_7;
    }

    (*(v19 + 8))(v32, v10);
    v23 = v43;
  }

  (*(v19 + 16))(v23, v39, v10);
  type metadata accessor for Array();
  result = Array.append(_:)();
LABEL_7:
  *v44 = v45;
  return result;
}

uint64_t static DOCCollectionDiff.move<A>(from:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v16 = type metadata accessor for DOCCollectionEdit();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v20, v21);
  if (*(a1 + 8) != 1)
  {
    goto LABEL_8;
  }

  if (!*a1)
  {
    v49 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = v26;
    v51 = v25;
    v52 = a8;
    v48 = &v47;
    v53 = a2;
    MEMORY[0x28223BE20](v22, v23);
    *(&v47 - 6) = a3;
    *(&v47 - 5) = a4;
    *(&v47 - 4) = a5;
    *(&v47 - 3) = a6;
    *(&v47 - 2) = a7;
    *(&v47 - 1) = a1;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.firstIndex(where:)();
    if ((v55 & 1) == 0)
    {
      v39 = v54;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v41 = *(TupleTypeMetadata2 + 48);
      Array.subscript.getter();
      v42 = *&v19[*(v16 + 40)];
      (*(v50 + 8))(v19, v16);
      v43 = v51;
      v44 = v49;
      (*(v51 + 16))(v49, a1 + *(v16 + 36), a4);
      v45 = *(a1 + *(v16 + 40));
      v46 = v52;
      *v52 = v42;
      *(v46 + 8) = 0;
      (*(v43 + 32))(v46 + *(v16 + 36), v44, a4);
      *(v46 + *(v16 + 40)) = v45;
      *(v46 + v41) = v39;
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v46, 0, 1, TupleTypeMetadata2);
    }

    goto LABEL_7;
  }

  if (*a1 == 1)
  {
    v49 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = v26;
    v51 = v25;
    v52 = a8;
    v48 = &v47;
    v53 = a2;
    MEMORY[0x28223BE20](v22, v23);
    *(&v47 - 6) = a3;
    *(&v47 - 5) = a4;
    *(&v47 - 4) = a5;
    *(&v47 - 3) = a6;
    *(&v47 - 2) = a7;
    *(&v47 - 1) = a1;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.firstIndex(where:)();
    if ((v55 & 1) == 0)
    {
      v27 = v54;
      v28 = swift_getTupleTypeMetadata2();
      v29 = *(v28 + 48);
      v30 = *(v16 + 36);
      v31 = *(a1 + *(v16 + 40));
      LOBYTE(v54) = 0;
      v32 = v51;
      v33 = v49;
      (*(v51 + 16))(v49, a1 + v30, a4);
      Array.subscript.getter();
      v34 = *&v19[*(v16 + 40)];
      (*(v50 + 8))(v19, v16);
      v35 = v54;
      v36 = v52;
      *v52 = v31;
      *(v36 + 8) = v35;
      (*(v32 + 32))(v36 + *(v16 + 36), v33, a4);
      *(v36 + *(v16 + 40)) = v34;
      *(v36 + v29) = v27;
      return (*(*(v28 - 8) + 56))(v36, 0, 1, v28);
    }

LABEL_7:
    a8 = v52;
  }

LABEL_8:
  v38 = swift_getTupleTypeMetadata2();
  return (*(*(v38 - 8) + 56))(a8, 1, 1, v38);
}

BOOL closure #1 in static DOCCollectionDiff.move<A>(from:in:)(uint64_t a1)
{
  result = 0;
  if (*(a1 + 8) == 1 && !*a1)
  {
    type metadata accessor for DOCCollectionEdit();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      return 1;
    }
  }

  return result;
}

BOOL closure #2 in static DOCCollectionDiff.move<A>(from:in:)(uint64_t a1)
{
  result = 0;
  if (*(a1 + 8) == 1 && *a1 == 1)
  {
    type metadata accessor for DOCCollectionEdit();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      return 1;
    }
  }

  return result;
}

uint64_t DOCCollectionDiff.debugDescription.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for DOCCollectionEdit();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v15 - v7;
  strcpy(v19, "==============");
  HIBYTE(v19[1]) = -18;
  v9 = *(v1 + *(a1 + 48));

  if (!MEMORY[0x24C1FB1B0](v10, v3))
  {
LABEL_11:

    MEMORY[0x24C1FAEA0](0xD000000000000012, 0x8000000249BF2F70);
    return v19[0];
  }

  v16 = v5;
  v11 = 0;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v4 + 16))(v8, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v3);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v16 != 8)
    {
      break;
    }

    v17 = result;
    (*(v4 + 16))(v8, &v17, v3);
    swift_unknownObjectRelease();
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    v17 = 0;
    v18 = 0xE000000000000000;
    MEMORY[0x24C1FAEA0](2314, 0xE200000000000000);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x24C1FAEA0](v17, v18);

    (*(v4 + 8))(v8, v3);
    ++v11;
    if (v13 == MEMORY[0x24C1FB1B0](v9, v3))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for DOCCollectionEdit()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCCollectionEdit(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
  }

  v7 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 9) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a2 - v5;
  v9 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8 + 1;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v5 + (v9 | v14) + 1;
}

unsigned int *storeEnumTagSinglePayload for DOCCollectionEdit(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + ((v7 + 9) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v12 = 0;
    v13 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a3 - v6;
    if (((*(v5 + 64) + ((v7 + 9) & ~v7) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v8) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v8) = 0;
      }

      else if (v12)
      {
        *(result + v8) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v17 = *(v5 + 56);
      v18 = (result + v7 + 9) & ~v7;

      return v17(v18);
    }
  }

  if (((*(v5 + 64) + ((v7 + 9) & ~v7) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v5 + 64) + ((v7 + 9) & ~v7) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v15 = ~v6 + a2;
    v16 = result;
    bzero(result, ((*(v5 + 64) + ((v7 + 9) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v16;
    *v16 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(result + v8) = v14;
    }

    else
    {
      *(result + v8) = v14;
    }
  }

  else if (v12)
  {
    *(result + v8) = v14;
  }

  return result;
}

uint64_t type metadata completion function for DOCCollectionDiff()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for DOCCollectionEdit();
    v0 = type metadata accessor for Array();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t getEnumTagSinglePayload for DOCCollectionDiff(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v20 = *((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

_BYTE *storeEnumTagSinglePayload for DOCCollectionDiff(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = v8 + 7;
  v13 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v17 = 0;
    v18 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v7;
    if (((v12 + v11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v23 = ((v12 + (&result[v10] & ~v9)) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24 = a2 - 1;
        }

        *v23 = v24;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v7 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static Array._allocateUninitialized(_:)();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    type metadata accessor for Array();
    return v8;
  }

  return result;
}

id static DOCSharedByGrouping.categorize(_:)(void *a1)
{
  v2 = type metadata accessor for PersonNameComponents();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v18 - v10;
  if (![a1 isShared])
  {
    return 0;
  }

  if ([a1 isSharedByCurrentUser])
  {
    return 0;
  }

  result = [a1 ownerNameComponents];
  if (result)
  {
    v13 = result;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v11, v6, v2);
    v14 = objc_opt_self();
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v16 = [v14 localizedStringFromPersonNameComponents:isa style:0 options:0];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v3 + 8))(v11, v2);
    return v17;
  }

  return result;
}

objc_class *DOCItemSharedByGroupCategory.localizedTitle.getter(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      result = _DocumentManagerBundle();
      if (result)
      {
        v3 = result;
        v21 = 0x8000000249BF3030;
        v4 = 0x6220646572616853;
        v8 = 0xEC000000654D2079;
        v5 = 0x617A696C61636F4CLL;
        v6 = 0xEB00000000656C62;
        v9.super.isa = v3;
        v10 = 0;
        v11 = 0xE000000000000000;
        v7 = 0xD000000000000033;
        goto LABEL_11;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    case 1:
      result = _DocumentManagerBundle();
      if (result)
      {
        v3 = result;
        v21 = 0x8000000249BF2FA0;
        v4 = 0x646572616853;
        v5 = 0x617A696C61636F4CLL;
        v6 = 0xEB00000000656C62;
        v7 = 0xD000000000000042;
        v8 = 0xE600000000000000;
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_15;
    case 2:
      result = _DocumentManagerBundle();
      if (result)
      {
        v3 = result;
        v21 = 0x8000000249BF03D0;
        v4 = 0x7261685320746F4ELL;
        v5 = 0x617A696C61636F4CLL;
        v6 = 0xEB00000000656C62;
        v7 = 0xD00000000000003ALL;
        v8 = 0xEA00000000006465;
LABEL_8:
        v9.super.isa = v3;
        v10 = 0;
        v11 = 0xE000000000000000;
LABEL_11:
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v5, v9, *&v10, *&v7)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      goto LABEL_16;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v15 = result;
    v22._object = 0x8000000249BF2FF0;
    v16._countAndFlagsBits = 0x6220646572616853;
    v16._object = 0xEC00000040252079;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v22._countAndFlagsBits = 0xD00000000000003FLL;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_249B9A480;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v19 + 32) = a1;
    *(v19 + 40) = a2;
    v20 = static String.localizedStringWithFormat(_:_:)();

    return v20;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t DOCItemSharedByGroupCategory.groupIdentifier.getter(uint64_t a1, uint64_t a2)
{
  result = 0x6220646572616853;
  if (a2)
  {
    if (a2 == 1)
    {
      return 0x646572616853;
    }

    else if (a2 == 2)
    {
      return 0x7261685320746F4ELL;
    }

    else
    {
      MEMORY[0x24C1FAEA0](a1);
      return 0x6220646572616853;
    }
  }

  return result;
}

uint64_t static DOCItemSharedByGroupCategory.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
  }

  if (a4 < 3)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t DOCItemSharedByGroupCategory.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x24C1FCBD0](v3);
    case 1:
      v3 = 2;
      return MEMORY[0x24C1FCBD0](v3);
    case 2:
      v3 = 3;
      return MEMORY[0x24C1FCBD0](v3);
  }

  MEMORY[0x24C1FCBD0](1);

  return String.hash(into:)();
}

Swift::Int DOCItemSharedByGroupCategory.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (a2 != 2)
      {
        MEMORY[0x24C1FCBD0](1);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x24C1FCBD0](v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCItemSharedByGroupCategory()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 2;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x24C1FCBD0](1);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCItemSharedByGroupCategory()
{
  v1 = *(v0 + 8);
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x24C1FCBD0](v2);
    case 1:
      v2 = 2;
      return MEMORY[0x24C1FCBD0](v2);
    case 2:
      v2 = 3;
      return MEMORY[0x24C1FCBD0](v2);
  }

  MEMORY[0x24C1FCBD0](1);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemSharedByGroupCategory()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 2;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x24C1FCBD0](1);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for DOCItemGroupCategory.groupIdentifier.getter in conformance DOCItemSharedByGroupCategory()
{
  result = 0x6220646572616853;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      return 0x646572616853;
    }

    else if (v2 == 2)
    {
      return 0x7261685320746F4ELL;
    }

    else
    {
      MEMORY[0x24C1FAEA0](*v0);
      return 0x6220646572616853;
    }
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCItemSharedByGroupCategory(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t lazy protocol witness table accessor for type DOCItemSharedByGroupCategory and conformance DOCItemSharedByGroupCategory()
{
  result = lazy protocol witness table cache variable for type DOCItemSharedByGroupCategory and conformance DOCItemSharedByGroupCategory;
  if (!lazy protocol witness table cache variable for type DOCItemSharedByGroupCategory and conformance DOCItemSharedByGroupCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemSharedByGroupCategory and conformance DOCItemSharedByGroupCategory);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for DOCItemSharedByGroupCategory(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DOCItemSharedByGroupCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void DOCItemCollectionViewController.handlePressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v2) + 0x1448))() & 1) == 0)
  {
    v6 = (*((*v5 & *v2) + 0x1010))();
    v7 = [v6 isFirstResponder];

    if ((v7 & 1) == 0)
    {
      (*((*v5 & **(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController)) + 0x128))(a1, a2);
    }
  }
}

uint64_t DOCItemCollectionViewController.handlePressesChanged(_:with:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x1448))();
  if ((result & 1) == 0)
  {
    result = [objc_opt_self() typeToFocusIsSupported];
    if ((result & 1) == 0)
    {
      return (*((*v5 & **(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController)) + 0x130))(a1, a2);
    }
  }

  return result;
}

uint64_t DOCItemCollectionViewController.handlePressesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x1448))();
  if ((result & 1) == 0)
  {
    result = [objc_opt_self() typeToFocusIsSupported];
    if ((result & 1) == 0)
    {
      return (*((*v5 & **(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController)) + 0x138))(a1, a2);
    }
  }

  return result;
}

uint64_t DOCItemCollectionViewController.handlePressesCancelled(_:with:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x1448))();
  if ((result & 1) == 0)
  {
    result = [objc_opt_self() typeToFocusIsSupported];
    if ((result & 1) == 0)
    {
      return (*((*v5 & **(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController)) + 0x140))(a1, a2);
    }
  }

  return result;
}

uint64_t DOCItemCollectionViewController.rememberLastFocusedItem(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v19 - v9;
  outlined init with copy of IndexPath?(a1, v6);
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v6, 1, v11);
  v15 = MEMORY[0x277D85000];
  if (v14 == 1)
  {
    v16 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))();
    v17 = (*((*v15 & *v16) + 0xF0))();
    (*(*v17 + 104))(v17);

    if (v13(v6, 1, v11) != 1)
    {
      outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
    }
  }

  else
  {
    (*(v12 + 32))(v10, v6, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
  }

  return (*((*v15 & *v1) + 0xE38))(v10);
}

Swift::Void __swiftcall DOCItemCollectionViewController.clearFocus(removingLastColumn:)(Swift::Bool removingLastColumn)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v24 - v7;
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))(v6);
  specialized DOCFocusableCollectionView.resignFocus()();

  v11 = *((*v9 & *v2) + 0xBD8);
  if (v11() == 3 && removingLastColumn)
  {
    v12 = (*((*v9 & *v2) + 0xCB8))();
    v13 = v12 >> 62 ? __CocoaSet.count.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v13 >= 1)
    {
      DOCItemCollectionViewController.getCurrentLocation()(v14);
      if (v15)
      {
        v16 = v15;
        v17 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
        if (v17)
        {
          v18 = (*((*v9 & *v17) + 0xB0))();
          if (v18)
          {
            v19 = v18;
            v20 = [v18 hierarchyController];
            DOCHierarchyController.remove(after:animated:completion:)(v16, 1, 0, 0);
          }
        }
      }
    }
  }

  v21 = type metadata accessor for IndexPath();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v22 = (*((*v9 & *v2) + 0xE38))(v8);
  if ((v11)(v22) != 3)
  {
    v23 = [objc_opt_self() sharedManager];
    [v23 requestCurrentFocus_];
  }
}

uint64_t DOCItemCollectionViewController.focusNextItemAndThen(_:)(uint64_t (*a1)(uint64_t), void (*a2)(void, void))
{
  v53 = a2;
  v54 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v6);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v44 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v43 - v18;
  v20 = MEMORY[0x277D85000];
  v21 = *((*MEMORY[0x277D85000] & *v2) + 0x1010);
  v22 = v21(v17);
  v23 = (*((*v20 & *v22) + 0xF0))();
  (*(*v23 + 104))(v23);

  v24 = type metadata accessor for IndexPath();
  LODWORD(v22) = (*(*(v24 - 8) + 48))(v19, 1, v24);
  v25 = outlined destroy of CharacterSet?(v19, &_s10Foundation9IndexPathVSgMd);
  if (v22 == 1)
  {
    return v54(v25);
  }

  v27 = v53;
  v28 = (*((*v20 & *v2) + 0xBD8))(v25);
  if ((v28 - 1) >= 3)
  {
    if (v28)
    {
      aBlock[0] = v28;
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v30 = v27;
    v31 = (v21)();
    v32 = [v31 effectiveUserInterfaceLayoutDirection];

    if (v32)
    {
      v29 = 3;
    }

    else
    {
      v29 = 4;
    }
  }

  else
  {
    v29 = 2;
    v30 = v27;
  }

  v33 = (v21)();
  specialized DOCFocusableCollectionView.performNavigation(into:modifierFlags:)(v29, 0);

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v34 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v35 = v44;
  + infix(_:_:)();
  v53 = *(v45 + 8);
  v36 = v11;
  v37 = v46;
  v53(v36, v46);
  v38 = swift_allocObject();
  *(v38 + 16) = v54;
  *(v38 + 24) = v30;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_127;
  v39 = _Block_copy(aBlock);

  v40 = v47;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_12(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v41 = v49;
  v42 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB940](v35, v40, v41, v39);
  _Block_release(v39);

  (*(v51 + 8))(v41, v42);
  (*(v48 + 8))(v40, v50);
  return (v53)(v35, v37);
}

Swift::Bool __swiftcall DOCItemCollectionViewController.becomeKeyboardFocused()()
{
  v1 = v0;
  if (([*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration] isPopoverOrWidget] & 1) == 0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.UI);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v62 = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000249BF3070, &v62);
      _os_log_impl(&dword_2493AC000, v4, v5, "Focusing DOCItemCollectionViewController %s -- if no more logging then (isFirstResponder && isInKeyWindow) is true", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v6, -1, -1);
    }

    v8 = [v1 viewIfLoaded];
    if (v8 && (v9 = v8, v10 = [v8 window], v9, v10))
    {
      v11 = [v10 isKeyWindow];

      if ([v1 isFirstResponder] && (v11 & 1) != 0)
      {
        LOBYTE(v2) = 1;
        return v2;
      }
    }

    else
    {
      [v1 isFirstResponder];
    }

    v12 = v1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v62 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000249BF3070, &v62);
      *(v15 + 12) = 2080;
      v17 = v12;
      v18 = [v17 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v62);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_2493AC000, v13, v14, "%s will make self or collection view first responder. self: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v16, -1, -1);
      MEMORY[0x24C1FE850](v15, -1, -1);
    }

    v23 = [v12 viewIfLoaded];
    v24 = [v23 window];

    [v24 makeKeyAndVisible];
    v25 = *((*MEMORY[0x277D85000] & *v12) + 0x1010);
    v26 = v25();
    v27 = [v26 isFocused];

    v61 = v25;
    v28 = v25();
    v29 = [v28 isFirstResponder];

    v60 = objc_opt_self();
    v30 = [v60 topFirstResponder_];
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v62 = v34;
      *v33 = 136315650;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000249BF3070, &v62);
      *(v33 + 12) = 1024;
      *(v33 + 14) = v27;
      *(v33 + 18) = 1024;
      *(v33 + 20) = v29;
      _os_log_impl(&dword_2493AC000, v31, v32, "%s becomeFocused--collectionView wants keyboard focus: %{BOOL}d, collectionView is first responder: %{BOOL}d", v33, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1FE850](v34, -1, -1);
      MEMORY[0x24C1FE850](v33, -1, -1);
    }

    v35 = v12;
    v36 = v30;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v62 = v40;
      *v39 = 67109378;
      v41 = v61();
      v42 = [v41 canBecomeFirstResponder];

      *(v39 + 4) = v42;
      *(v39 + 8) = 2080;
      v43 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11UIResponderCSgMd);
      v44 = String.init<A>(describing:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v62);

      *(v39 + 10) = v46;
      _os_log_impl(&dword_2493AC000, v37, v38, "  --collectionView.canBecomeFirstResponder: %{BOOL}d, firstResponder is: %s", v39, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x24C1FE850](v40, -1, -1);
      MEMORY[0x24C1FE850](v39, -1, -1);
    }

    else
    {
    }

    if ([objc_opt_self() typeToFocusIsSupported])
    {
      if (!v36 || (v47 = v61(), v48 = [v60 topFirstResponder_], v47, !v48) || (v49 = objc_msgSend(v48, sel_resignFirstResponder), v48, v49))
      {
        v50 = v61();
        v2 = [v50 becomeFirstResponder];

        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v51, v52))
        {
LABEL_35:

          goto LABEL_36;
        }

        v53 = swift_slowAlloc();
        *v53 = 67109120;
        *(v53 + 4) = v2;
        _os_log_impl(&dword_2493AC000, v51, v52, "  --try to make CV first responder (success: %{BOOL}d)", v53, 8u);
LABEL_33:
        MEMORY[0x24C1FE850](v53, -1, -1);
        goto LABEL_35;
      }

      v51 = Logger.logObject.getter();
      v58 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v51, v58))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_2493AC000, v51, v58, "  --couldn't resign firstResponder", v53, 2u);
        goto LABEL_32;
      }
    }

    else
    {
      if ([v35 becomeFirstResponder])
      {
        LOBYTE(v2) = 1;
LABEL_36:

        return v2;
      }

      v54 = v35;
      v51 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v55))
      {
        v53 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v53 = 138412290;
        *(v53 + 4) = v54;
        *v56 = v12;
        v57 = v54;
        _os_log_impl(&dword_2493AC000, v51, v55, "Unable to make first responder: %@", v53, 0xCu);
        outlined destroy of CharacterSet?(v56, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v56, -1, -1);
LABEL_32:
        LOBYTE(v2) = 0;
        goto LABEL_33;
      }
    }

    LOBYTE(v2) = 0;
    goto LABEL_35;
  }

  LOBYTE(v2) = 0;
  return v2;
}

id DOCItemCollectionViewController.isInKeyWindow.getter()
{
  result = [v0 viewIfLoaded];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3)
    {
      v4 = [v3 isKeyWindow];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DOCItemCollectionViewController.acceptsKeyboardFocus.getter()
{
  v1 = [v0 viewIfLoaded];
  v2 = [v1 superview];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 presentedViewController];
  if (v3)
  {

    result = [v0 presentedViewController];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = [result isBeingDismissed];

    if (!v6)
    {
      return 0;
    }
  }

  v7 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x1448))())
  {
    return 0;
  }

  result = [v0 canBecomeFirstResponder];
  if (result)
  {
    if (((*((*v7 & *v0) + 0x998))() & 1) == 0)
    {
      return 0;
    }

    if ((*((*v7 & *v0) + 0xBD8))() == 3)
    {
      v8 = (*((*v7 & *v0) + 0xEF0))();
      if (v8 >> 62)
      {
        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v9 > 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void DOCItemCollectionViewController.absoluteFrame.getter()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x1010);
  v2 = v1();
  v3 = [v2 superview];

  if (v3)
  {
    v4 = v1();
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v3 convertRect:0 toView:{v6, v8, v10, v12}];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.requestFocusAfterFirstInsertionIfNeeded()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0xED0))() & 1) != 0 && [v0 canBecomeFirstResponder])
  {
    v2 = [objc_opt_self() sharedManager];
    [v2 requestCurrentFocus_];

    v3 = *((*v1 & *v0) + 0xED8);

    v3(0);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.firstItemInsertionRequestsFocusExpired()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xED8))(0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.UI);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2493AC000, oslog, v2, "Action for firstItemInsertionRequestsFocusExpired expired", v3, 2u);
    MEMORY[0x24C1FE850](v3, -1, -1);
  }
}

uint64_t DOCItemCollectionViewController.numberOfItemsPerRow.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))())
  {
    return 1;
  }

  v3 = (*((*v1 & *v0) + 0x11C0))();
  if (!v3)
  {
    return 1;
  }

  (*(*v3 + 160))(v19);

  v5 = (*((*v1 & *v0) + 0x1010))(v4);
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.width = v11;
  v20.size.height = v13;
  Width = CGRectGetWidth(v20);
  v15 = *v19;
  [v19[3] spacing];
  v17 = v16;
  result = outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v19);
  v18 = Width / (v15 + v17);
  if (COERCE__INT64(fabs(v18)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v18 < 9.22337204e18)
  {
    return v18;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t DOCItemCollectionViewController.effectiveMaximumTotalItemCount(in:)(uint64_t a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))();
  v4 = [v3 numberOfItemsInSection_];

  result = DOCItemCollectionViewController.numberOfItemsPerRow.getter();
  v6 = ceil(v4 / result);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  result = DOCItemCollectionViewController.numberOfItemsPerRow.getter();
  v8 = v7 * result;
  if ((v7 * result) >> 64 != (v7 * result) >> 63)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if ([v9 maximumNumberOfRows] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v8;
  }

  v10 = [v9 maximumNumberOfRows];
  result = DOCItemCollectionViewController.numberOfItemsPerRow.getter();
  if ((v10 * result) >> 64 != (v10 * result) >> 63)
  {
    goto LABEL_15;
  }

  if (v10 * result >= v8)
  {
    return v8;
  }

  result *= v10;
  return result;
}

void DOCItemCollectionViewController.indexPath(forNearestFocusableItemTo:from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v67 = a3;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v62 = &v60 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v61 = &v60 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v68 = &v60 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v60 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v64 = &v60 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v63 = &v60 - v29;
  v65 = a2;
  v66 = a1;
  DOCItemCollectionViewController.indexPaths(from:to:includingLast:)(a1, a2, 0);
  v31 = v30;
  v32 = *(v30 + 16);
  if (v32)
  {
    v33 = 0;
    while (1)
    {
      if (v33 >= *(v31 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      (*(v8 + 16))(v23, v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v33, v7);
      if ((*((*MEMORY[0x277D85000] & *v4) + 0x1788))(v23))
      {
        break;
      }

      ++v33;
      (*(v8 + 8))(v23, v7);
      if (v32 == v33)
      {
        goto LABEL_6;
      }
    }

    v52 = *(v8 + 32);
    v53 = v64;
    v52(v64, v23, v7);
    v54 = v63;
    v52(v63, v53, v7);
    v55 = v67;
    v52(v67, v54, v7);
LABEL_21:
    v56 = 0;
    goto LABEL_22;
  }

LABEL_6:

  v34 = v66;
  v35 = IndexPath.item.getter();
  if (v35 < IndexPath.item.getter())
  {
    v36 = v68;
    v37 = 0;
    v38 = 0;
LABEL_11:
    MEMORY[0x24C1F8100](v37, v38);
    DOCItemCollectionViewController.indexPaths(from:to:includingLast:)(v34, v36, 1);
    v46 = v45;
    v47 = *(v45 + 16);
    if (!v47)
    {
      v51 = *(v8 + 8);
LABEL_19:
      v51(v36, v7);

      v56 = 1;
      v55 = v67;
LABEL_22:
      (*(v8 + 56))(v55, v56, 1, v7);
      return;
    }

    v48 = 0;
    v49 = (v8 + 8);
    v66 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (v48 < *(v46 + 16))
    {
      v50 = v69;
      (*(v8 + 16))(v69, v46 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v48, v7);
      if ((*((*MEMORY[0x277D85000] & *v4) + 0x1788))(v50))
      {
        (*(v8 + 8))(v68, v7);

        v57 = *(v8 + 32);
        v58 = v62;
        v57(v62, v50, v7);
        v59 = v61;
        v57(v61, v58, v7);
        v55 = v67;
        v57(v67, v59, v7);
        goto LABEL_21;
      }

      ++v48;
      v51 = *v49;
      (*v49)(v50, v7);
      if (v47 == v48)
      {
        v36 = v68;
        goto LABEL_19;
      }
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = *((*MEMORY[0x277D85000] & *v4) + 0x1010);
  v40 = v39();
  v41 = [v40 numberOfSections];

  if (__OFSUB__(v41, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v42 = (v41 - 1) & ~((v41 - 1) >> 63);
  v43 = v39();
  v44 = [v43 numberOfItemsInSection_];

  if (!__OFSUB__(v44, 1))
  {
    v37 = (v44 - 1) & ~((v44 - 1) >> 63);
    v36 = v68;
    v38 = v42;
    goto LABEL_11;
  }

LABEL_26:
  __break(1u);
}

void DOCItemCollectionViewController.indexPaths(from:to:includingLast:)(uint64_t a1, uint64_t a2, int a3)
{
  v124 = type metadata accessor for IndexPath();
  v115 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v6);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v109 = &v106 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v106 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v106 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v111 = &v106 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v121 = &v106 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v106 - v28;
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v106 - v32;
  v34 = a1;
  v35 = IndexPath.section.getter();
  if (v35 == IndexPath.section.getter())
  {
    v36 = IndexPath.item.getter();
    if (IndexPath.item.getter() < v36)
    {
      v37 = -1;
    }

    else
    {
      v37 = 1;
    }

    v38 = IndexPath.item.getter();
    v39 = IndexPath.item.getter();
    if (a3)
    {
      v41 = v37;
    }

    else
    {
      v41 = 0;
    }

    if (!__OFADD__(v39, v41))
    {
      MEMORY[0x28223BE20](v39, v40);
      *(&v106 - 2) = a1;
      _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs8StrideToVySiG_10Foundation9IndexPathVs5NeverOTg5(closure #1 in IndexPath.doc_indexPaths(to:includingLast:)partial apply, (&v106 - 4), v38, v42, v37);
      return;
    }

    goto LABEL_68;
  }

  v125 = MEMORY[0x277D84F90];
  v122 = MEMORY[0x24C1F80A0](a1, a2);
  v110 = a2;
  v107 = v8;
  v117 = v19;
  v118 = v15;
  if (v122)
  {
    v43 = IndexPath.section.getter();
    MEMORY[0x24C1F8100](0, v43);
    v44 = IndexPath.item.getter();
    if (IndexPath.item.getter() < v44)
    {
      v45 = -1;
    }

    else
    {
      v45 = 1;
    }

    v46 = IndexPath.item.getter();
    v47 = IndexPath.item.getter();
    if (__OFADD__(v47, v45))
    {
      goto LABEL_71;
    }

    MEMORY[0x28223BE20](v47, v48);
    *(&v106 - 2) = a1;
    v50 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs8StrideToVySiG_10Foundation9IndexPathVs5NeverOTg5(closure #1 in IndexPath.doc_indexPaths(to:includingLast:)partial apply, (&v106 - 4), v46, v49, v45);
    v51 = -1;
    v33 = v29;
  }

  else
  {
    v52 = (*((*MEMORY[0x277D85000] & *v123) + 0x1010))();
    v53 = [v52 numberOfItemsInSection_];

    if (__OFSUB__(v53, 1))
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v54 = IndexPath.section.getter();
    MEMORY[0x24C1F8100](v53 - 1, v54);
    v55 = IndexPath.item.getter();
    if (IndexPath.item.getter() < v55)
    {
      v56 = -1;
    }

    else
    {
      v56 = 1;
    }

    v57 = IndexPath.item.getter();
    v58 = IndexPath.item.getter();
    if (__OFADD__(v58, v56))
    {
      goto LABEL_73;
    }

    MEMORY[0x28223BE20](v58, v59);
    *(&v106 - 2) = v34;
    v50 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs8StrideToVySiG_10Foundation9IndexPathVs5NeverOTg5(closure #1 in IndexPath.doc_indexPaths(to:includingLast:)partial apply, (&v106 - 4), v57, v60, v56);
    v51 = 1;
  }

  v61 = v115;
  v119 = *(v115 + 8);
  v120 = v115 + 8;
  v119(v33, v124);
  specialized Array.append<A>(contentsOf:)(v50);
  v62 = IndexPath.section.getter();
  v63 = v62 + v51;
  v64 = v111;
  if (__OFADD__(v62, v51))
  {
    goto LABEL_69;
  }

  v108 = a3;
  v65 = IndexPath.section.getter();
  v66 = v65 - v51;
  if (__OFSUB__(v65, v51))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v67 = v66 >= v63;
  if ((v122 & 1) == 0)
  {
    v67 = v63 >= v66;
  }

  if (!v67)
  {
    if (v122)
    {
      v68 = 0x8000000000000000;
    }

    else
    {
      v68 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v115 = v61 + 16;
    v116 = v68;
    if (v122)
    {
      v69 = v64;
    }

    else
    {
      v69 = v121;
    }

    if (v122)
    {
      v70 = v121;
    }

    else
    {
      v70 = v64;
    }

    v113 = v70;
    v114 = v69;
    v112 = v51;
    v71 = v117;
    while (1)
    {
      v72 = __OFADD__(v63, v51) ? v116 : v63 + v51;
      v73 = MEMORY[0x24C1F8100](0, v63);
      v74 = (*((*MEMORY[0x277D85000] & *v123) + 0x1010))(v73);
      v75 = [v74 numberOfItemsInSection_];

      if (__OFSUB__(v75, 1))
      {
        break;
      }

      MEMORY[0x24C1F8100](v75 - 1, v63);
      v76 = *v115;
      v77 = v124;
      (*v115)(v71, v114, v124);
      v78 = v64;
      v79 = v118;
      v76(v118, v113, v77);
      v80 = IndexPath.item.getter();
      if (IndexPath.item.getter() < v80)
      {
        v81 = -1;
      }

      else
      {
        v81 = 1;
      }

      v82 = IndexPath.item.getter();
      v83 = IndexPath.item.getter();
      if (__OFADD__(v83, v81))
      {
        goto LABEL_67;
      }

      MEMORY[0x28223BE20](v83, v84);
      *(&v106 - 2) = v71;
      v86 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs8StrideToVySiG_10Foundation9IndexPathVs5NeverOTg5(closure #1 in IndexPath.doc_indexPaths(to:includingLast:)partial apply, (&v106 - 4), v82, v85, v81);
      specialized Array.append<A>(contentsOf:)(v86);
      v87 = v79;
      v88 = v119;
      v119(v87, v77);
      v88(v78, v77);
      v88(v121, v77);
      v88(v71, v77);
      v89 = v66 >= v72;
      if ((v122 & 1) == 0)
      {
        v89 = v72 >= v66;
      }

      v63 = v72;
      v64 = v78;
      v51 = v112;
      if (v89)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_48:
  if ((v122 & 1) == 0)
  {
    v101 = IndexPath.section.getter();
    v94 = v109;
    MEMORY[0x24C1F8100](0, v101);
    v102 = IndexPath.item.getter();
    if (IndexPath.item.getter() < v102)
    {
      v96 = -1;
    }

    else
    {
      v96 = 1;
    }

    v97 = IndexPath.item.getter();
    v98 = IndexPath.item.getter();
    if (v108)
    {
      v103 = v96;
    }

    else
    {
      v103 = 0;
    }

    v92 = v124;
    if (__OFADD__(v98, v103))
    {
      goto LABEL_75;
    }

LABEL_65:
    MEMORY[0x28223BE20](v98, v99);
    *(&v106 - 2) = v94;
    v105 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs8StrideToVySiG_10Foundation9IndexPathVs5NeverOTg5(closure #1 in IndexPath.doc_indexPaths(to:includingLast:)partial apply, (&v106 - 4), v97, v104, v96);
    v119(v94, v92);
    specialized Array.append<A>(contentsOf:)(v105);
    return;
  }

  v90 = (*((*MEMORY[0x277D85000] & *v123) + 0x1010))();
  v91 = [v90 numberOfItemsInSection_];

  v92 = v124;
  if (!__OFSUB__(v91, 1))
  {
    v93 = IndexPath.section.getter();
    v94 = v107;
    MEMORY[0x24C1F8100](v91 - 1, v93);
    v95 = IndexPath.item.getter();
    if (IndexPath.item.getter() < v95)
    {
      v96 = -1;
    }

    else
    {
      v96 = 1;
    }

    v97 = IndexPath.item.getter();
    v98 = IndexPath.item.getter();
    if (v108)
    {
      v100 = v96;
    }

    else
    {
      v100 = 0;
    }

    if (__OFADD__(v98, v100))
    {
      goto LABEL_76;
    }

    goto LABEL_65;
  }

LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

void DOCItemCollectionViewController.collectionView(_:indexPathForInitiallyFocusedItemFor:ignoringPreviouslyFocusedItem:)(void *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, char *a4@<X8>)
{
  LOBYTE(v5) = a3;
  v76 = a2;
  v77 = a4;
  v72 = a1;
  v6 = type metadata accessor for IndexPath();
  v78 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v73 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v74 = &v71 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v71 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v71 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v75 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v71 - v29;
  v33.n128_f64[0] = MEMORY[0x28223BE20](v31, v32);
  v35 = &v71 - v34;
  v36 = (*((*MEMORY[0x277D85000] & *v4) + 0xCB8))(v33);
  if (v36 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (i < 1)
    {
      v52 = v77;
      v53 = *(v78 + 56);

      v53(v52, 1, 1, v6);
      return;
    }

    v39 = MEMORY[0x277D85000];
    if ((v5 & 1) == 0)
    {
      (*((*MEMORY[0x277D85000] & *v4) + 0xE30))(v38);
      if ((*(v78 + 48))(v35, 1, v6) != 1)
      {
        v54 = v77;
        (*(v78 + 32))(v77, v35, v6);
        v55 = *(v78 + 56);
        v78 += 56;
        v55(v30, 1, 1, v6);
        (*((*v39 & *v4) + 0xE38))(v30);
        v55(v54, 0, 1, v6);
        return;
      }

      v38 = outlined destroy of CharacterSet?(v35, &_s10Foundation9IndexPathVSgMd);
    }

    if (v76 == 1)
    {
      v56 = (*((*v39 & *v4) + 0xFC8))(v38);
      v57 = [v56 configuration];

      v58 = [v57 scrollDirection];
      if (v58 == 1)
      {
        v59 = v74;
        MEMORY[0x24C1F80E0](0, 0);
        v60 = v73;
        MEMORY[0x24C1F8100](0, 0);
        DOCItemCollectionViewController.indexPath(forNearestFocusableItemTo:from:)(v59, v60, v77);
        v61 = *(v78 + 8);
        v78 += 8;
        v61(v60, v6);
        v61(v59, v6);
        return;
      }

      v62 = v72;
      v63 = [v72 numberOfSections];
      if (!__OFSUB__(v63, 1))
      {
        v64 = (v63 - 1) & ~((v63 - 1) >> 63);
        v65 = DOCItemCollectionViewController.effectiveMaximumTotalItemCount(in:)(v64);
        v66 = [v62 numberOfItemsInSection_];
        if (v66 >= v65)
        {
          v67 = v65;
        }

        else
        {
          v67 = v66;
        }

        if (!__OFSUB__(v67, 1))
        {
          v68 = v74;
          MEMORY[0x24C1F80E0](v67 - 1, v64);
          v69 = v73;
          MEMORY[0x24C1F8100](0, 0);
          DOCItemCollectionViewController.indexPath(forNearestFocusableItemTo:from:)(v68, v69, v77);
          v70 = *(v78 + 8);
          v78 += 8;
          v70(v69, v6);
          v70(v68, v6);
          return;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    if (v76 != 4 && v76 != 2)
    {
      (*(v78 + 56))(v77, 1, 1, v6);
      return;
    }

    v40 = MEMORY[0x24C1F8100](0, 0);
    v41 = *((*v39 & *v4) + 0x1010);
    v42 = (v41)(v40);
    v43 = [v42 numberOfSections];

    if (__OFSUB__(v43, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v44 = (v43 - 1) & ~((v43 - 1) >> 63);
    v45 = v41();
    v46 = [v45 numberOfItemsInSection_];

    if (__OFSUB__(v46, 1))
    {
      goto LABEL_36;
    }

    MEMORY[0x24C1F8100]((v46 - 1) & ~((v46 - 1) >> 63), v44);
    DOCItemCollectionViewController.indexPaths(from:to:includingLast:)(v23, v19, 1);
    v48 = v47;
    v30 = (v78 + 8);
    v35 = *(v78 + 8);
    (v35)(v19, v6);
    (v35)(v23, v6);
    v49 = *(v48 + 16);
    if (!v49)
    {
      break;
    }

    v5 = 0;
    v19 = (v78 + 16);
    v23 = 6024;
    while (v5 < *(v48 + 16))
    {
      (*(v78 + 16))(v15, v48 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v5, v6);
      if ((*((*MEMORY[0x277D85000] & *v4) + 0x1788))(v15))
      {

        v51 = v75;
        (*(v78 + 32))(v75, v15, v6);
        v50 = 0;
        goto LABEL_26;
      }

      ++v5;
      (v35)(v15, v6);
      if (v49 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    ;
  }

LABEL_17:

  v50 = 1;
  v51 = v75;
LABEL_26:
  (*(v78 + 56))(v51, v50, 1, v6);
  outlined init with take of IndexPath?(v51, v77);
}

uint64_t DOCItemCollectionViewController.collectionView(_:indexPathForFocusedItemNextTo:direction:includingItem:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, char *a5@<X8>)
{
  v188 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v187 = (&v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v14);
  v190 = (&v177 - v15);
  MEMORY[0x28223BE20](v16, v17);
  v183 = &v177 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v184 = &v177 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v182 = &v177 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v185 = &v177 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v180 = &v177 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v181 = &v177 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v177 - v36;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v177 - v40;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v177 - v44;
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v177 - v48;
  v52.n128_f64[0] = MEMORY[0x28223BE20](v50, v51);
  v189 = &v177 - v53;
  v54 = MEMORY[0x277D85000];
  v55 = v5 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  if ((a4 & 1) == 0 || (v56 = MEMORY[0x277D85000], v57 = (*((*MEMORY[0x277D85000] & *v5) + 0x1788))(a2, v52.n128_f64[0]), v54 = v56, (v57 & 1) == 0))
  {
    v179 = a1;
    v186 = a5;
    v61 = *((*v54 & *v5) + 0xBD8);
    if (v61(v52) == 1 || (v61)() == 3 || (v61)() == 2)
    {
      if (v188 == 2)
      {
        DOCItemCollectionViewController.indexPath(after:)(v37);
        v70 = type metadata accessor for IndexPath();
        v71 = *(v70 - 8);
        v72 = *(v71 + 48);
        v73 = v72(v37, 1, v70);
        v69 = v186;
        if (v73 == 1)
        {
          (*(v71 + 16))(v41, a2, v70);
          v74 = v72(v37, 1, v70);
          v75 = v189;
          if (v74 != 1)
          {
            outlined destroy of CharacterSet?(v37, &_s10Foundation9IndexPathVSgMd);
          }
        }

        else
        {
          (*(v71 + 32))(v41, v37, v70);
          v75 = v189;
        }

        (*(v71 + 56))(v41, 0, 1, v70);
        outlined init with take of IndexPath?(v41, v75);
      }

      else
      {
        if (v188 == 1)
        {
          DOCItemCollectionViewController.indexPath(before:)(v45);
          v62 = type metadata accessor for IndexPath();
          v63 = *(v62 - 8);
          v64 = *(v63 + 48);
          v65 = v64(v45, 1, v62);
          v66 = v187;
          v67 = v190;
          if (v65 == 1)
          {
            (*(v63 + 16))(v49, a2, v62);
            v68 = v64(v45, 1, v62);
            v69 = v186;
            if (v68 != 1)
            {
              outlined destroy of CharacterSet?(v45, &_s10Foundation9IndexPathVSgMd);
            }
          }

          else
          {
            (*(v63 + 32))(v49, v45, v62);
            v69 = v186;
          }

          (*(v63 + 56))(v49, 0, 1, v62);
          v77 = v49;
          v75 = v189;
          goto LABEL_20;
        }

        v76 = type metadata accessor for IndexPath();
        v75 = v189;
        (*(*(v76 - 8) + 56))(v189, 1, 1, v76);
        v69 = v186;
      }

      v66 = v187;
      v67 = v190;
LABEL_24:
      outlined init with copy of IndexPath?(v75, v67);
      v78 = type metadata accessor for IndexPath();
      v79 = *(v78 - 8);
      v80 = *(v79 + 48);
      if (v80(v67, 1, v78) == 1)
      {
        outlined destroy of CharacterSet?(v75, &_s10Foundation9IndexPathVSgMd);
        outlined destroy of CharacterSet?(v67, &_s10Foundation9IndexPathVSgMd);
        return (*(v79 + 56))(v69, 1, 1, v78);
      }

      outlined destroy of CharacterSet?(v67, &_s10Foundation9IndexPathVSgMd);
      outlined init with copy of IndexPath?(v75, v66);
      if (v80(v66, 1, v78) != 1)
      {
        DOCItemCollectionViewController.indexPath(forNearestFocusableItemTo:from:)(v66, a2, v69);
        outlined destroy of CharacterSet?(v75, &_s10Foundation9IndexPathVSgMd);
        return (*(v79 + 8))(v66, v78);
      }

      goto LABEL_177;
    }

    v81 = IndexPath.section.getter();
    v66 = &selRef_setCancelsTouchesInView_;
    v82 = v179;
    v178 = [v179 numberOfItemsInSection_];
    v83 = (*((*MEMORY[0x277D85000] & *v5) + 0xFC8))();
    v84 = [v83 configuration];

    v85 = [v84 scrollDirection];
    if (v188 <= 2)
    {
      v69 = v186;
      v75 = v189;
      v67 = v190;
      if (v188 != 1)
      {
        if (v188 == 2 && v85 != 1)
        {
          v86 = IndexPath.section.getter();
          if (DOCItemCollectionViewController.sectionIsHorizontallyScrollable(at:)(v86))
          {
            v87 = IndexPath.section.getter();
            v88 = [v179 numberOfSections];
            if (!__OFSUB__(v88, 1))
            {
              v66 = v187;
              if (v87 >= v88 - 1)
              {
                v148 = type metadata accessor for IndexPath();
                v91 = v181;
                (*(*(v148 - 8) + 56))(v181, 1, 1, v148);
                goto LABEL_118;
              }

              v89 = IndexPath.section.getter();
              v90 = v89 + 1;
              if (!__OFADD__(v89, 1))
              {
                v91 = v181;
                v92 = 0;
LABEL_89:
                MEMORY[0x24C1F8100](v92, v90);
                v133 = type metadata accessor for IndexPath();
                (*(*(v133 - 8) + 56))(v91, 0, 1, v133);
LABEL_118:
                v77 = v91;
                goto LABEL_20;
              }

              goto LABEL_163;
            }

            goto LABEL_151;
          }

          v115 = IndexPath.item.getter();
          v116 = IndexPath.section.getter();
          v117 = DOCItemCollectionViewController.effectiveMaximumTotalItemCount(in:)(v116);
          v118 = DOCItemCollectionViewController.numberOfItemsPerRow.getter();
          if (__OFSUB__(v117, v118))
          {
LABEL_152:
            __break(1u);
            goto LABEL_153;
          }

          if (v115 < v117 - v118)
          {
            v119 = IndexPath.item.getter();
            v120 = DOCItemCollectionViewController.numberOfItemsPerRow.getter();
            if (__OFADD__(v119, v120))
            {
LABEL_164:
              __break(1u);
              goto LABEL_165;
            }

            v66 = v187;
            if (__OFSUB__(v178, 1))
            {
LABEL_167:
              __break(1u);
              goto LABEL_168;
            }

            if ((v178 - 1) >= v119 + v120)
            {
              v111 = (v119 + v120);
            }

            else
            {
              v111 = v178 - 1;
            }

LABEL_104:
            v147 = IndexPath.section.getter();
LABEL_125:
            v162 = v111;
LABEL_126:
            MEMORY[0x24C1F8100](v162, v147);
            v163 = type metadata accessor for IndexPath();
            (*(*(v163 - 8) + 56))(v75, 0, 1, v163);
            goto LABEL_24;
          }

          v149 = IndexPath.section.getter();
          v150 = [v179 numberOfSections];
          if (__OFSUB__(v150, 1))
          {
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          if (v149 < v150 - 1)
          {
            v151 = IndexPath.section.getter();
            if (__OFADD__(v151, 1))
            {
LABEL_173:
              __break(1u);
              goto LABEL_174;
            }

            if ([v179 numberOfItemsInSection_] >= 1)
            {
              v152 = IndexPath.section.getter();
              v108 = __OFADD__(v152, 1);
              v153 = v152 + 1;
              if (v108)
              {
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
LABEL_177:
                __break(1u);
                goto LABEL_178;
              }

              v154 = DOCItemCollectionViewController.sectionIsHorizontallyScrollable(at:)(v153);
              v155 = IndexPath.section.getter();
              v142 = v155 + 1;
              v156 = __OFADD__(v155, 1);
              if (!v154)
              {
                if (v156)
                {
LABEL_185:
                  __break(1u);
                  goto LABEL_186;
                }

                v171 = [v179 numberOfItemsInSection_];
                v172 = IndexPath.item.getter();
                v173 = DOCItemCollectionViewController.numberOfItemsPerRow.getter();
                if (!v173)
                {
LABEL_186:
                  __break(1u);
LABEL_187:
                  __break(1u);
                  goto LABEL_188;
                }

                v174 = v173;
                v66 = v187;
                if (v172 == 0x8000000000000000 && v173 == -1)
                {
                  goto LABEL_190;
                }

                v108 = __OFSUB__(v171, 1);
                v175 = v171 - 1;
                if (v108)
                {
                  goto LABEL_187;
                }

                v176 = IndexPath.section.getter();
                v90 = v176 + 1;
                if (__OFADD__(v176, 1))
                {
LABEL_188:
                  __break(1u);
LABEL_189:
                  __break(1u);
LABEL_190:
                  __break(1u);
                  goto LABEL_191;
                }

                if (v175 >= v172 % v174)
                {
                  v92 = v172 % v174;
                }

                else
                {
                  v92 = v175;
                }

                v91 = v180;
                goto LABEL_89;
              }

              if (v156)
              {
LABEL_184:
                __break(1u);
                goto LABEL_185;
              }

LABEL_116:
              MEMORY[0x24C1F8100](0, v142);
              v157 = type metadata accessor for IndexPath();
              (*(*(v157 - 8) + 56))(v75, 0, 1, v157);
              goto LABEL_48;
            }
          }
        }

LABEL_47:
        v99 = type metadata accessor for IndexPath();
        (*(*(v99 - 8) + 56))(v75, 1, 1, v99);
LABEL_48:
        v66 = v187;
        goto LABEL_24;
      }

      if (v85 == 1)
      {
        goto LABEL_47;
      }

      v104 = IndexPath.section.getter();
      if (DOCItemCollectionViewController.sectionIsHorizontallyScrollable(at:)(v104))
      {
        if (IndexPath.section.getter() >= 1)
        {
          v105 = IndexPath.section.getter();
          if (__OFSUB__(v105, 1))
          {
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          v106 = [v82 numberOfItemsInSection_];
          v107 = IndexPath.section.getter();
          v108 = __OFSUB__(v107, 1);
          v109 = v107 - 1;
          if (v108)
          {
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

          v110 = DOCItemCollectionViewController.sectionIsHorizontallyScrollable(at:)(v109);
          v66 = v187;
          if (v110)
          {
            v111 = 0;
          }

          else
          {
            v108 = __OFSUB__(v106, 1);
            v159 = v106 - 1;
            if (v108)
            {
LABEL_169:
              __break(1u);
              goto LABEL_170;
            }

            v160 = DOCItemCollectionViewController.numberOfItemsPerRow.getter();
            if (!v160)
            {
LABEL_170:
              __break(1u);
              goto LABEL_171;
            }

            if (v159 == 0x8000000000000000 && v160 == -1)
            {
              goto LABEL_176;
            }

            v108 = __OFSUB__(v159, v159 % v160);
            v111 = (v159 - v159 % v160);
            if (v108)
            {
              goto LABEL_172;
            }
          }

          v161 = IndexPath.section.getter();
          v147 = v161 - 1;
          if (__OFSUB__(v161, 1))
          {
            goto LABEL_160;
          }

          goto LABEL_125;
        }

        goto LABEL_47;
      }

      v134 = IndexPath.item.getter();
      if (v134 >= DOCItemCollectionViewController.numberOfItemsPerRow.getter())
      {
        v145 = IndexPath.item.getter();
        v146 = DOCItemCollectionViewController.numberOfItemsPerRow.getter();
        v108 = __OFSUB__(v145, v146);
        v111 = (v145 - v146);
        v66 = v187;
        if (v108)
        {
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        goto LABEL_104;
      }

      v135 = IndexPath.section.getter();
      v136 = v179;
      if (v135 < 1)
      {
        goto LABEL_47;
      }

      v137 = IndexPath.section.getter();
      if (__OFSUB__(v137, 1))
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      if ([v136 numberOfItemsInSection_] < 1)
      {
        goto LABEL_47;
      }

      v138 = IndexPath.section.getter();
      v108 = __OFSUB__(v138, 1);
      v139 = v138 - 1;
      if (v108)
      {
LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

      v140 = DOCItemCollectionViewController.sectionIsHorizontallyScrollable(at:)(v139);
      v141 = IndexPath.section.getter();
      v142 = v141 - 1;
      v143 = __OFSUB__(v141, 1);
      if (!v140)
      {
        if (v143)
        {
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v164 = [v179 numberOfItemsInSection_];
        v165 = v164 - 1;
        if (__OFSUB__(v164, 1))
        {
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

        v166 = DOCItemCollectionViewController.numberOfItemsPerRow.getter();
        v66 = v187;
        if (!v166)
        {
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        if (v165 == 0x8000000000000000 && v166 == -1)
        {
          goto LABEL_189;
        }

        v167 = v165 - v165 % v166;
        if (__OFSUB__(v165, v165 % v166))
        {
          goto LABEL_181;
        }

        v168 = IndexPath.item.getter();
        v108 = __OFADD__(v167, v168);
        v169 = v167 + v168;
        if (v108)
        {
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        v170 = IndexPath.section.getter();
        v147 = v170 - 1;
        if (__OFSUB__(v170, 1))
        {
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }

        if (v165 >= v169)
        {
          v162 = v169;
        }

        else
        {
          v162 = v165;
        }

        goto LABEL_126;
      }

      if (!v143)
      {
        goto LABEL_116;
      }

      __break(1u);
      goto LABEL_101;
    }

    v69 = v186;
    v75 = v189;
    v67 = v190;
    if (v188 == 3)
    {
      if (v85 != 1)
      {
        v100 = IndexPath.section.getter();
        if (!DOCItemCollectionViewController.sectionIsHorizontallyScrollable(at:)(v100))
        {
          v129 = IndexPath.item.getter();
          v130 = DOCItemCollectionViewController.numberOfItemsPerRow.getter();
          if (!v130)
          {
LABEL_154:
            __break(1u);
            goto LABEL_155;
          }

          v66 = v187;
          v91 = v182;
          if (v129 == 0x8000000000000000 && v130 == -1)
          {
            goto LABEL_162;
          }

          if (!(v129 % v130))
          {
            v158 = type metadata accessor for IndexPath();
            (*(*(v158 - 8) + 56))(v91, 1, 1, v158);
            goto LABEL_118;
          }

          if (IndexPath.item.getter() >= 1)
          {
            v131 = IndexPath.item.getter();
            v132 = v131 - 1;
            if (!__OFSUB__(v131, 1))
            {
              v90 = IndexPath.section.getter();
              v92 = v132;
              goto LABEL_89;
            }

            goto LABEL_158;
          }

          goto LABEL_191;
        }
      }

      if (IndexPath.item.getter() < 1)
      {
        v113 = type metadata accessor for IndexPath();
        v114 = v185;
        (*(*(v113 - 8) + 56))(v185, 1, 1, v113);
        v66 = v187;
        v77 = v114;
        goto LABEL_20;
      }

      v101 = IndexPath.item.getter();
      v66 = v187;
      if (v101 < 1)
      {
LABEL_191:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v102 = IndexPath.item.getter();
      v96 = v102 - 1;
      if (!__OFSUB__(v102, 1))
      {
        v97 = IndexPath.section.getter();
        v98 = v185;
        goto LABEL_55;
      }
    }

    else
    {
      if (v188 != 4)
      {
        goto LABEL_47;
      }

      if (v85 != 1)
      {
        v93 = IndexPath.section.getter();
        if (!DOCItemCollectionViewController.sectionIsHorizontallyScrollable(at:)(v93))
        {
          v121 = IndexPath.item.getter();
          v122 = v121 + 1;
          if (__OFADD__(v121, 1))
          {
LABEL_153:
            __break(1u);
            goto LABEL_154;
          }

          v123 = DOCItemCollectionViewController.numberOfItemsPerRow.getter();
          v55 = v183;
          if (!v123)
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          v66 = v187;
          if (v122 == 0x8000000000000000 && v123 == -1)
          {
            goto LABEL_166;
          }

          if (!(v122 % v123))
          {
            goto LABEL_101;
          }

          v124 = IndexPath.item.getter();
          if (__OFSUB__(v178, 1))
          {
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
            goto LABEL_161;
          }

          if (v124 >= (v178 - 1))
          {
LABEL_101:
            v144 = type metadata accessor for IndexPath();
            (*(*(v144 - 8) + 56))(v55, 1, 1, v144);
LABEL_102:
            v77 = v55;
            goto LABEL_20;
          }

          if (IndexPath.item.getter() <= 0x7FFFFFFFFFFFFFFDLL)
          {
            v125 = IndexPath.item.getter();
            v126 = v125 + 1;
            if (__OFADD__(v125, 1))
            {
LABEL_171:
              __break(1u);
LABEL_172:
              __break(1u);
              goto LABEL_173;
            }

            v127 = IndexPath.section.getter();
            MEMORY[0x24C1F8100](v126, v127);
            v128 = type metadata accessor for IndexPath();
            (*(*(v128 - 8) + 56))(v55, 0, 1, v128);
            goto LABEL_102;
          }

          goto LABEL_191;
        }
      }

      v94 = IndexPath.item.getter();
      if (!__OFADD__(v94, 1))
      {
        v66 = v187;
        if (v94 + 1 >= v178)
        {
          v112 = type metadata accessor for IndexPath();
          v98 = v184;
          (*(*(v112 - 8) + 56))(v184, 1, 1, v112);
          goto LABEL_63;
        }

        if (IndexPath.item.getter() <= 0x7FFFFFFFFFFFFFFDLL)
        {
          v95 = IndexPath.item.getter();
          v96 = v95 + 1;
          if (!__OFADD__(v95, 1))
          {
            v97 = IndexPath.section.getter();
            v98 = v184;
LABEL_55:
            MEMORY[0x24C1F8100](v96, v97);
            v103 = type metadata accessor for IndexPath();
            (*(*(v103 - 8) + 56))(v98, 0, 1, v103);
LABEL_63:
            v77 = v98;
LABEL_20:
            outlined init with take of IndexPath?(v77, v75);
            goto LABEL_24;
          }

LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        goto LABEL_191;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_150;
  }

  v58 = type metadata accessor for IndexPath();
  v190 = *(v58 - 8);
  v190[2](a5, a2, v58);
  v59 = v190[7];

  return (v59)(a5, 0, 1, v58);
}

uint64_t DOCItemCollectionViewController.indexPath(before:)@<X0>(uint64_t a1@<X8>)
{
  if (IndexPath.item.getter() < 1)
  {
    if (IndexPath.section.getter() >= 1)
    {
      v7 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
      v8 = v7();
      v9 = IndexPath.section.getter();
      if (__OFSUB__(v9, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = [v8 numberOfItemsInSection_];

      if (v10 >= 1)
      {
        v11 = v7();
        v12 = IndexPath.section.getter();
        if (__OFSUB__(v12, 1))
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v13 = [v11 numberOfItemsInSection_];

        v4 = v13 - 1;
        if (__OFSUB__(v13, 1))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v14 = IndexPath.section.getter();
        v5 = v14 - 1;
        if (!__OFSUB__(v14, 1))
        {
          goto LABEL_5;
        }

        __break(1u);
      }
    }

    v6 = 1;
    goto LABEL_15;
  }

  if (IndexPath.item.getter() < 1)
  {
LABEL_22:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v3 = IndexPath.item.getter();
  v4 = (v3 - 1);
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = IndexPath.section.getter();
LABEL_5:
  MEMORY[0x24C1F8100](v4, v5);
  v6 = 0;
LABEL_15:
  v15 = type metadata accessor for IndexPath();
  v16 = *(*(v15 - 8) + 56);

  return v16(a1, v6, 1, v15);
}

uint64_t DOCItemCollectionViewController.indexPath(after:)@<X0>(uint64_t a1@<X8>)
{
  v3 = IndexPath.item.getter();
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v5 = v4();
  v6 = [v5 numberOfItemsInSection_];

  if (__OFSUB__(v6, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 >= v6 - 1)
  {
    v11 = IndexPath.section.getter();
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      v13 = v4();
      v14 = [v13 numberOfSections];

      if (v12 < v14)
      {
        v15 = v4();
        v16 = IndexPath.section.getter();
        if (__OFADD__(v16, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v17 = [v15 numberOfItemsInSection_];

        if (v17 >= 1)
        {
          v18 = IndexPath.section.getter();
          v9 = v18 + 1;
          if (!__OFADD__(v18, 1))
          {
            v10 = 0;
            goto LABEL_12;
          }

          goto LABEL_21;
        }
      }

      v19 = 1;
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (IndexPath.item.getter() > 0x7FFFFFFFFFFFFFFDLL)
  {
LABEL_22:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v7 = IndexPath.item.getter();
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    goto LABEL_19;
  }

  v9 = IndexPath.section.getter();
  v10 = v8;
LABEL_12:
  MEMORY[0x24C1F8100](v10, v9);
  v19 = 0;
LABEL_14:
  v20 = type metadata accessor for IndexPath();
  v21 = *(*(v20 - 8) + 56);

  return v21(a1, v19, 1, v20);
}

void IndexPath.doc_previous.getter()
{
  if (IndexPath.item.getter() >= 1)
  {
    if (!__OFSUB__(IndexPath.item.getter(), 1))
    {
      IndexPath.section.getter();

LABEL_8:
      JUMPOUT(0x24C1F8100);
    }

    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  goto LABEL_8;
}

void IndexPath.doc_next.getter()
{
  if (IndexPath.item.getter() <= 0x7FFFFFFFFFFFFFFDLL)
  {
    if (!__OFADD__(IndexPath.item.getter(), 1))
    {
      IndexPath.section.getter();

LABEL_8:
      JUMPOUT(0x24C1F8100);
    }

    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  goto LABEL_8;
}

uint64_t DOCItemCollectionViewController.collectionView(_:indexPathsForSelectedItemsFrom:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DOCItemCollectionViewController.indexPaths(from:to:includingLast:)(a4, a5, 1);
  v8 = v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a1, a5, v9);
  (*(v10 + 56))(a1, 0, 1, v9);
  return v8;
}

uint64_t DOCItemCollectionViewController.collectionView(_:shouldExtendSelectionToBoundaryIn:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xBD8);
  result = v1();
  if (result != 1)
  {
    return v1() == 3 || v1() == 2;
  }

  return result;
}

uint64_t DOCItemCollectionViewController.collectionView(_:shouldChangeFocusTo:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [v5 presentedViewController];
  if (v23)
  {

    return 0;
  }

  v44 = v18;
  v42 = a1;
  v25 = *((*MEMORY[0x277D85000] & *v5) + 0xBD8);
  v26 = (*MEMORY[0x277D85000] & *v5) + 3032;
  if (v25() != 1 && v25() != 3 && v25() != 2)
  {
    return 1;
  }

  v41 = v26;
  v43 = v25;
  v27 = a4;
  v28 = MEMORY[0x277D85000];
  v29 = (*((*MEMORY[0x277D85000] & *v5) + 0x1010))();
  v30 = [v29 effectiveUserInterfaceLayoutDirection];

  v31 = 3;
  if (!v30)
  {
    v31 = 4;
  }

  if (v31 != a3)
  {
    return 1;
  }

  v32 = v27;
  (*((*v28 & *v5) + 0x18A0))(v27);
  v33 = v28;
  v34 = v44;
  if ((*(v44 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of CharacterSet?(v16, &_s10Foundation9IndexPathVSgMd);
    return 0;
  }

  (*(v34 + 32))(v22, v16, v17);
  v35 = IndexPath.item.getter();
  result = (*((*v33 & *v5) + 0xCB8))();
  if ((result & 0xC000000000000001) == 0)
  {
    v36 = v43;
    if ((v35 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v35 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v37 = *(result + 8 * v35 + 32);
      swift_unknownObjectRetain();
      goto LABEL_17;
    }

    __break(1u);
    return result;
  }

  v37 = MEMORY[0x24C1FC540](v35, result);
  v36 = v43;
LABEL_17:

  v38 = [v37 isFolder];
  swift_unknownObjectRelease();
  if (v38)
  {
    (*(v34 + 16))(v12, v32, v17);
    (*(v34 + 56))(v12, 0, 1, v17);
    DOCItemCollectionViewController.rememberLastFocusedItem(_:)(v12);
    v39 = outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd);
    if ((v36)(v39) == 1 || v36() == 2)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v5 collectionView:v42 performPrimaryActionForItemAtIndexPath:isa];

      (*(v44 + 8))(v22, v17);
      return 0;
    }

    (*(v44 + 8))(v22, v17);
    return 1;
  }

  else
  {
    (*(v34 + 8))(v22, v17);
    return 1;
  }
}

void DOCItemCollectionViewController.collectionView(_:indexPathsForSelectedItemsFrom:toBoundaryIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v9, v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 == 2)
  {
    v17 = *((*MEMORY[0x277D85000] & *v5) + 0x1010);
    v18 = v17(v12.n128_f64[0]);
    v19 = [v18 numberOfSections];

    if (__OFSUB__(v19, 1))
    {
      __break(1u);
    }

    else
    {
      v20 = (v19 - 1) & ~((v19 - 1) >> 63);
      v21 = (v17)();
      v22 = [v21 numberOfItemsInSection_];

      if (!__OFSUB__(v22, 1))
      {
        v15 = (v22 - 1) & ~((v22 - 1) >> 63);
        v16 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    if (a5 == 1)
    {
      v15 = 0;
      v16 = 0;
LABEL_7:
      MEMORY[0x24C1F8100](v15, v16, v12);
      DOCItemCollectionViewController.indexPaths(from:to:includingLast:)(a4, v14, 1);
      (*(v10 + 32))(a1, v14, v9);
      (*(v10 + 56))(a1, 0, 1, v9);
      return;
    }

    (*(v10 + 56))(a1, 1, 1, v9, v12.n128_f64[0]);
  }
}

void DOCItemCollectionViewController.collectionView(_:beginSelectionWithSelectedItems:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (([v4 isEditing] & 1) == 0 && objc_msgSend(a1, sel_isEditing))
  {
    [v4 setEditing:1 animated:1];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_249B9A480;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSgMd);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:type:_:)();
  }

  ObjectType = swift_getObjectType();
  v14.value._rawValue = a3;
  v14.is_nil = 0;
  DOCFocusableCollectionView.setIndexPathsForSelectedItems(_:animated:scrollPosition:)(v14, 0, ObjectType);
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
  v12 = [v4 viewIfLoaded];
  v13 = [v12 window];

  if (v13)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

void DOCItemCollectionViewController.updateHasFocusOnCells()()
{
  v1 = v0;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSg_ADtMd);
  MEMORY[0x28223BE20](v73, v2);
  v84 = &v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v79 = &v62 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v78 = &v62 - v13;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v62 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v72 = &v62 - v20;
  v23.n128_f64[0] = MEMORY[0x28223BE20](v21, v22);
  v83 = &v62 - v24;
  v25 = (*MEMORY[0x277D85000] & *v0) + 4112;
  v74 = *((*MEMORY[0x277D85000] & *v0) + 0x1010);
  v26 = v74(v23);
  v27 = [v26 preparedCells];

  if (!v27)
  {
    __break(1u);
    return;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v28 >> 62)
  {
LABEL_32:
    v29 = __CocoaSet.count.getter();
    if (v29)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_4:
      v30 = 0;
      v80 = v28 & 0xC000000000000001;
      v66 = (v15 + 7);
      v67 = (v15 + 2);
      v64 = v28 & 0xFFFFFFFFFFFFFF8;
      v65 = (v15 + 6);
      v76 = (v15 + 4);
      v77 = (v15 + 1);
      v70 = v1;
      v63 = v7;
      v68 = v25;
      v69 = v29;
      v71 = v28;
      while (1)
      {
        if (v80)
        {
          v31 = MEMORY[0x24C1FC540](v30, v28);
        }

        else
        {
          if (v30 >= *(v64 + 16))
          {
            goto LABEL_31;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v15 = v31;
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        type metadata accessor for DOCItemCollectionCell();
        v33 = swift_dynamicCastClass();
        if (v33)
        {
          break;
        }

LABEL_6:
        ++v30;
        if (v32 == v29)
        {
          goto LABEL_35;
        }
      }

      v34 = v33;
      v82 = v30 + 1;
      v35 = v74;
      v36 = (v74)();
      v37 = [v36 indexPathForCell_];

      if (!v37)
      {

        v59 = MEMORY[0x277D85000];
        v60 = (*((*MEMORY[0x277D85000] & *v34) + 0x208))(v58);
        if (v60)
        {
          v61 = v60;
          (*((*v59 & *v60) + 0x4C8))(0);
        }

        return;
      }

      v81 = v15;
      v38 = v72;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = v83;
      v75 = *v76;
      v75(v83, v38, v14);
      v40 = v84;
      v41 = v78;
      (*v67)(v78, v39, v14);
      v42 = (*v66)(v41, 0, 1, v14);
      v43 = (v35)(v42);
      v44 = (*((*MEMORY[0x277D85000] & *v43) + 0xF0))();
      v45 = v79;
      (*(*v44 + 104))(v44);

      v46 = *(v73 + 48);
      outlined init with copy of IndexPath?(v41, v40);
      outlined init with copy of IndexPath?(v45, v40 + v46);
      v47 = *v65;
      if ((*v65)(v40, 1, v14) == 1)
      {
        v48 = v45;
        v7 = &_s10Foundation9IndexPathVSgMR;
        outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd);
        outlined destroy of CharacterSet?(v41, &_s10Foundation9IndexPathVSgMd);
        v49 = v47(v40 + v46, 1, v14);
        v29 = v69;
        v32 = v82;
        if (v49 == 1)
        {
          v50 = outlined destroy of CharacterSet?(v84, &_s10Foundation9IndexPathVSgMd);
          v51 = 1;
LABEL_20:
          v1 = v70;
          v15 = MEMORY[0x277D85000];
LABEL_22:
          v55 = (*((*v15 & *v34) + 0x208))(v50);
          if (v55)
          {
            v56 = v55;
            (*((*v15 & *v55) + 0x4C8))(v51 & 1);

            v57 = v56;
            v25 = v68;
            v28 = v71;
          }

          else
          {
            v25 = v68;
            v28 = v71;
            v57 = v81;
          }

          (*v77)(v83, v14);
          goto LABEL_6;
        }
      }

      else
      {
        v7 = v63;
        outlined init with copy of IndexPath?(v40, v63);
        v52 = v47(v40 + v46, 1, v14);
        v29 = v69;
        if (v52 != 1)
        {
          v53 = v62;
          v75(v62, (v84 + v46), v14);
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_12(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
          v51 = dispatch thunk of static Equatable.== infix(_:_:)();
          v54 = *v77;
          (*v77)(v53, v14);
          outlined destroy of CharacterSet?(v79, &_s10Foundation9IndexPathVSgMd);
          outlined destroy of CharacterSet?(v78, &_s10Foundation9IndexPathVSgMd);
          v54(v7, v14);
          v50 = outlined destroy of CharacterSet?(v84, &_s10Foundation9IndexPathVSgMd);
          v1 = v70;
          v15 = MEMORY[0x277D85000];
          v32 = v82;
          goto LABEL_22;
        }

        outlined destroy of CharacterSet?(v79, &_s10Foundation9IndexPathVSgMd);
        outlined destroy of CharacterSet?(v78, &_s10Foundation9IndexPathVSgMd);
        (*v77)(v7, v14);
        v32 = v82;
      }

      v50 = outlined destroy of CharacterSet?(v84, &_s10Foundation9IndexPathVSg_ADtMd);
      v51 = 0;
      goto LABEL_20;
    }
  }

LABEL_35:
}

uint64_t DOCItemCollectionViewController.collectionViewDidResignFocus(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a1;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v28 - v16;
  DOCItemCollectionViewController.updateHasFocusOnCells()();
  if ((*((*MEMORY[0x277D85000] & *v3) + 0xA98))())
  {
    v19 = v18;
    v20 = v9;
    v21 = a3;
    ObjectType = swift_getObjectType();
    (*(v6 + 56))(v17, 1, 1, v5);
    memset(v32, 0, sizeof(v32));
    v33 = 1;
    v23 = ObjectType;
    a3 = v21;
    v9 = v20;
    (*(v19 + 24))(v3, v17, v32, v23, v19);
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v17, &_s10Foundation9IndexPathVSgMd);
  }

  outlined init with copy of IndexPath?(a3, v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    return outlined destroy of CharacterSet?(v13, &_s10Foundation9IndexPathVSgMd);
  }

  (*(v6 + 32))(v9, v13, v5);
  if ([v3 isEditing])
  {
    (*(v6 + 16))(v17, v9, v5);
  }

  else
  {
    v29 = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
    v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v26 = swift_allocObject();
    *(v26 + 1) = xmmword_249B9A480;
    v27 = *(v6 + 16);
    v27(&v26[v25], v9, v5);
    v34.value._rawValue = v26;
    v34.is_nil = 0;
    DOCFocusableCollectionView.setIndexPathsForSelectedItems(_:animated:scrollPosition:)(v34, 0, v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v27(v17, v9, v5);
  }

  (*(v6 + 56))(v17, 0, 1, v5);
  DOCItemCollectionViewController.rememberLastFocusedItem(_:)(v17);
  outlined destroy of CharacterSet?(v17, &_s10Foundation9IndexPathVSgMd);
  return (*(v6 + 8))(v9, v5);
}

void DOCItemCollectionViewController.collectionView(_:didFocusItemAt:byUserInteraction:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v46 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v42 - v15;
  DOCItemCollectionViewController.updateHasFocusOnCells()();
  v17 = MEMORY[0x277D85000];
  v18 = (*((*MEMORY[0x277D85000] & *v4) + 0x1010))();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [v18 layoutAttributesForItemAtIndexPath_];

  if (v20)
  {
    [v20 frame];
    v43 = v21;
    v44 = v22;
    v42 = v23;
    v45 = v24;

    *&v26 = v42;
    *&v25 = v43;
    *(&v25 + 1) = v44;
    *(&v26 + 1) = v45;
  }

  else
  {
    v25 = 0uLL;
    v26 = 0uLL;
  }

  v47[0] = v25;
  v47[1] = v26;
  v48 = v20 == 0;
  if ([v5 isEditing])
  {
    *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v27 = [v5 viewIfLoaded];
    v28 = [v27 window];

    if (v28)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()();
    }

    else
    {

      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }
  }

  else
  {
    *&v45 = a3;
    v29 = (*((*v17 & *v5) + 0xA98))();
    if (v29)
    {
      v31 = v30;
      ObjectType = swift_getObjectType();
      v33 = a2;
      v34 = a1;
      v35 = type metadata accessor for IndexPath();
      v36 = *(v35 - 8);
      (*(v36 + 16))(v16, v45, v35);
      v37 = v35;
      a1 = v34;
      a2 = v33;
      (*(v36 + 56))(v16, 0, 1, v37);
      v17 = MEMORY[0x277D85000];
      (*(v31 + 24))(v5, v16, v47, ObjectType, v31);
      swift_unknownObjectRelease();
      v29 = outlined destroy of CharacterSet?(v16, &_s10Foundation9IndexPathVSgMd);
    }

    if (*((*v17 & *v5) + 0xBD8))(v29) == 3 && (v46)
    {
      v38 = swift_getObjectType();
      DOCFocusableCollectionView.indexPathForMostRecentlySelectedItem.getter(v38, a2);
      v39 = type metadata accessor for IndexPath();
      v40 = (*(*(v39 - 8) + 48))(v12, 1, v39);
      outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd);
      if (v40 != 1)
      {
        (*((*v17 & *v5) + 0x1288))(0);
        v41 = IndexPath._bridgeToObjectiveC()().super.isa;
        [v5 collectionView:a1 didSelectItemAtIndexPath:v41];
      }
    }
  }
}

uint64_t protocol witness for DOCFocusableCollectionViewDelegate.collectionView(_:indexPathsForSelectedItemsFrom:to:) in conformance DOCItemCollectionViewController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DOCItemCollectionViewController.indexPaths(from:to:includingLast:)(a4, a5, 1);
  v8 = v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a1, a5, v9);
  (*(v10 + 56))(a1, 0, 1, v9);
  return v8;
}

uint64_t protocol witness for DOCFocusableCollectionViewDelegate.collectionView(_:shouldExtendSelectionToBoundaryIn:) in conformance DOCItemCollectionViewController()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xBD8);
  result = v1();
  if (result != 1)
  {
    return v1() == 3 || v1() == 2;
  }

  return result;
}

uint64_t DOCItemCollectionViewController.typeToFocusController(_:indexPathFor:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  outlined init with copy of DOCSidebarItemIconProvider(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCTypeToFocusItem_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_249BA0290;
    *(v4 + 32) = v11;
    v5 = *((*MEMORY[0x277D85000] & *v2) + 0xDB0);
    swift_unknownObjectRetain();
    v6 = v5(v4);

    if (*(v6 + 16))
    {
      v7 = type metadata accessor for IndexPath();
      v8 = *(v7 - 8);
      (*(v8 + 16))(a2, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
      swift_unknownObjectRelease();

      return (*(v8 + 56))(a2, 0, 1, v7);
    }

    else
    {
      swift_unknownObjectRelease();

      v10 = type metadata accessor for IndexPath();
      return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.handlePressesBeganIfNeeded(_:with:)(uint64_t a1, void *a2)
{
  v3 = specialized Collection.first.getter(a1);
  if (v3)
  {
    v8 = v3;
    v4 = [v3 key];
    if (v4)
    {
      v5 = v4;
      v6 = (*((*MEMORY[0x277D85000] & *a2) + 0x1010))();
      DOCItemCollectionViewBeginTypeSelect();

      v7 = v6;
    }

    else
    {
      v7 = v8;
    }
  }
}

void DOCItemCollectionViewController.pressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
    lazy protocol witness table accessor for type UIPress and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v5 = v33;
    v4 = v34;
    v6 = v35;
    v7 = v36;
    v8 = v37;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);
    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (v5 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress), swift_dynamicCast(), v17 = v31, v15 = v7, v16 = v8, !v31))
    {
LABEL_23:
      outlined consume of Set<UITouch>.Iterator._Variant();
      type metadata accessor for DOCColumnViewController(0);
      v20 = [v2 parentViewController];
      if (v20)
      {
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        while (([v20 isKindOfClass_] & 1) == 0)
        {
          v22 = [v20 parentViewController];

          v20 = v22;
          if (!v22)
          {
            goto LABEL_27;
          }
        }

        v28 = swift_dynamicCastClassUnconditional();
        v24 = MEMORY[0x277D85000];
        v23 = a1;
        if ((*((*MEMORY[0x277D85000] & *v28) + 0x258))(v3, a1))
        {
          goto LABEL_32;
        }
      }

      else
      {
LABEL_27:
        v23 = a1;
        v24 = MEMORY[0x277D85000];
      }

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
      lazy protocol witness table accessor for type UIPress and conformance NSObject();
      isa = Set._bridgeToObjectiveC()().super.isa;
      v32.receiver = v3;
      v32.super_class = type metadata accessor for DOCItemCollectionViewController(0);
      objc_msgSendSuper2(&v32, sel_pressesBegan_withEvent_, isa, v29);

      if (((*((*v24 & *v3) + 0x1448))() & 1) == 0)
      {
        v26 = (*((*v24 & *v3) + 0x1010))();
        v27 = [v26 isFirstResponder];

        if ((v27 & 1) == 0)
        {
          (*((*v24 & **(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController)) + 0x128))(v23, v29);
        }
      }

LABEL_32:

      return;
    }

LABEL_19:
    v18 = [v17 key];
    if (v18)
    {
      v19 = v18;
      if (([v18 modifierFlags] & 0x80000) != 0)
      {
        (*((*MEMORY[0x277D85000] & *v2) + 0x768))(1);
      }
    }

    else
    {
      v19 = v17;
    }

    v7 = v15;
    v8 = v16;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_23;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t DOCItemCollectionViewController.pressesChanged(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  objc_msgSendSuper2(&v8, sel_pressesChanged_withEvent_, isa, a2);

  v6 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x1448))();
  if ((result & 1) == 0)
  {
    result = [objc_opt_self() typeToFocusIsSupported];
    if (!result)
    {
      return (*((*v6 & **(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController)) + 0x130))(a1, a2);
    }
  }

  return result;
}

void DOCItemCollectionViewController.pressesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v22.receiver = v3;
  v22.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  objc_msgSendSuper2(&v22, sel_pressesEnded_withEvent_, isa, a2);

  if (((*((*MEMORY[0x277D85000] & *v3) + 0x1448))() & 1) == 0 && ![objc_opt_self() typeToFocusIsSupported])
  {
    (*((*MEMORY[0x277D85000] & **(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController)) + 0x138))(a1, a2);
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    a1 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
    v10 = v27;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  while (a1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v18 = v21, v16 = v9, v17 = v10, !v21))
    {
LABEL_25:
      outlined consume of Set<UITouch>.Iterator._Variant();
      return;
    }

LABEL_21:
    v19 = [v18 key];
    if (v19)
    {
      v20 = v19;
      if (([v19 modifierFlags] & 0x80000) != 0)
      {
        (*((*MEMORY[0x277D85000] & *v3) + 0x768))(0);
      }
    }

    else
    {
      v20 = v18;
    }

    v9 = v16;
    v10 = v17;
  }

  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_17:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v8 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v15 = *(v7 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t @objc DOCItemCollectionViewController.pressesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

uint64_t DOCItemCollectionViewController.pressesCancelled(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  objc_msgSendSuper2(&v8, sel_pressesCancelled_withEvent_, isa, a2);

  v6 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x1448))();
  if ((result & 1) == 0)
  {
    result = [objc_opt_self() typeToFocusIsSupported];
    if (!result)
    {
      return (*((*v6 & **(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController)) + 0x140))(a1, a2);
    }
  }

  return result;
}

uint64_t IndexPath.doc_indexPaths(to:includingLast:)(uint64_t a1, char a2)
{
  v4 = IndexPath.item.getter();
  if (IndexPath.item.getter() < v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  v6 = IndexPath.item.getter();
  result = IndexPath.item.getter();
  if (a2)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (__OFADD__(result, v9))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result, v8);
    v11[2] = v2;
    return _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs8StrideToVySiG_10Foundation9IndexPathVs5NeverOTg5(partial apply for closure #1 in IndexPath.doc_indexPaths(to:includingLast:), v11, v6, v10, v5);
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs8StrideToVySiG_10Foundation9IndexPathVs5NeverOTg5(void (*a1)(int64_t *), uint64_t a2, int64_t a3, int64_t a4, uint64_t a5)
{
  v6 = v5;
  v39 = a4;
  v36 = a1;
  v37 = a2;
  v35 = type metadata accessor for IndexPath();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = 0;
  v16 = a3;
  while (1)
  {
    v17 = v16 <= v39;
    if (a5 > 0)
    {
      v17 = v16 >= v39;
    }

    if (v17)
    {
      break;
    }

    v18 = __OFADD__(v16, a5);
    v16 += a5;
    if (v18)
    {
      v16 = (v16 >> 63) ^ 0x8000000000000000;
    }

    v18 = __OFADD__(v15++, 1);
    if (v18)
    {
      __break(1u);
      break;
    }
  }

  v33 = &v32 - v14;
  v42 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  v19 = v42;
  if (v15)
  {
    v34 = v38 + 32;
    while (1)
    {
      v20 = a3 <= v39;
      if (a5 > 0)
      {
        v20 = a3 >= v39;
      }

      if (v20)
      {
        break;
      }

      if (__OFADD__(a3, a5))
      {
        v21 = ((a3 + a5) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v21 = a3 + a5;
      }

      v40 = a3;
      v41 = 0;
      v22 = v11;
      v36(&v40);
      if (v6)
      {
        goto LABEL_39;
      }

      v6 = 0;
      v42 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1);
        v19 = v42;
      }

      *(v19 + 16) = v24 + 1;
      v25 = v19 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v24;
      v11 = v22;
      (*(v38 + 32))(v25, v22, v35);
      a3 = v21;
      if (!--v15)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_39:

    __break(1u);
  }

  else
  {
    v21 = a3;
LABEL_24:
    v26 = v21 <= v39;
    if (a5 > 0)
    {
      v26 = v21 >= v39;
    }

    if (v26)
    {
      return v19;
    }

    while (1)
    {
      v28 = __OFADD__(v21, a5) ? ((v21 + a5) >> 63) ^ 0x8000000000000000 : v21 + a5;
      v40 = v21;
      v36(&v40);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v42 = v19;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
        v19 = v42;
      }

      *(v19 + 16) = v30 + 1;
      (*(v38 + 32))(v19 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30, v33, v35);
      v31 = v28 <= v39;
      if (a5 > 0)
      {
        v31 = v28 >= v39;
      }

      v21 = v28;
      if (v31)
      {
        return v19;
      }
    }
  }

  __break(1u);
  return result;
}

void specialized DOCItemCollectionViewController.handlePressesBeganIfNeeded(_:with:)(uint64_t a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))();
  v4 = [v3 isFirstResponder];

  if ((v4 & 1) == 0)
  {
    v5 = [objc_opt_self() topFirstResponder_];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.UI);
    v7 = v5;
    v8 = v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v26 = a1;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136315650;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BF3280, &v27);
      *(v11 + 12) = 2080;
      v13 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11UIResponderCSgMd);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v27);

      *(v11 + 14) = v16;
      *(v11 + 22) = 2080;
      v17 = v8;
      v18 = [v17 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v27);

      *(v11 + 24) = v22;
      _os_log_impl(&dword_2493AC000, v9, v10, "%s Type to Focus: establishing collectionView first responder. Current firstResponder: %s and self: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v12, -1, -1);
      v23 = v11;
      a1 = v26;
      MEMORY[0x24C1FE850](v23, -1, -1);
    }

    [v8 establishFirstResponder];
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    *(v24 + 24) = v8;
    v25 = v8;

    DOCRunInMainThread(_:)();
  }
}

void *specialized DOCItemCollectionViewController.items(for:)()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xEF0))();
  v2 = v1;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v10 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v10;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v5, v2);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      DOCNode.typeToFocusItem.getter(v9);
      swift_unknownObjectRelease();
      v10 = v6;
      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v10;
      }

      ++v5;
      *(v6 + 16) = v8 + 1;
      outlined init with take of DOCGoToFolderCandidate(v9, v6 + 40 * v8 + 32);
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

void specialized DOCItemCollectionViewController.collectionView(_:edgeAdjustmentsForFocusedItemAt:)()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v7, v8);
  v11 = &v26 - v10;
  v12 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v0) + 0xBD8))(v9))
  {
    goto LABEL_6;
  }

  v13 = *((*v12 & *v0) + 0x1010);
  v14 = v13();
  v15 = [v14 numberOfSections];

  if (__OFSUB__(v15, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = (v15 - 1) & ~((v15 - 1) >> 63);
  v17 = v13();
  v18 = [v17 numberOfItemsInSection_];

  if (__OFSUB__(v18, 1))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  MEMORY[0x24C1F8100]((v18 - 1) & ~((v18 - 1) >> 63), v16);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_12(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v3 + 8);
  v20(v11, v2);
  if ((v19 & 1) == 0)
  {
    MEMORY[0x24C1F8100](0, 0);
    dispatch thunk of static Equatable.== infix(_:_:)();
    v20(v6, v2);
  }

LABEL_6:
  if (IndexPath.section.getter())
  {
    goto LABEL_11;
  }

  v21 = IndexPath.item.getter();
  v22 = DOCItemCollectionViewController.numberOfItemsPerRow.getter();
  if (!v22)
  {
    goto LABEL_16;
  }

  if (v21 != 0x8000000000000000 || v22 != -1)
  {
    if (!(v21 / v22))
    {
      v23 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v25 = [v23 layoutAttributesForItemAtIndexPath_];

      if (v25)
      {
        [v25 frame];

        return;
      }
    }

LABEL_11:
    DOCItemCollectionViewController.sectionHeaderHeightForItem(at:)();
    return;
  }

LABEL_17:
  __break(1u);
}

id specialized DOCItemCollectionViewController.typeToFocusController(_:focusItem:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))();
  specialized DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(a2, 1);

  result = [v3 isFirstResponder];
  if ((result & 1) == 0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315394;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BF32B0, &v19);
      *(v11 + 12) = 2080;
      v13 = v8;
      v14 = [v13 description];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v19);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_2493AC000, v9, v10, "%s Taking first responder for Type Ahead: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v12, -1, -1);
      MEMORY[0x24C1FE850](v11, -1, -1);
    }

    return [v8 establishFirstResponder];
  }

  return result;
}

uint64_t specialized DOCItemCollectionViewController.collectionView(_:adjacentCollectionViewIn:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 sharedManager];
  if ((a1 - 1) < 4)
  {
    v6 = v5;
    v7 = [v5 adjacentFocusableToFocusable:v2 direction:?];

    if (!v7)
    {
      return 0;
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = [v4 sharedManager];
      [v10 requestCurrentFocus_];

      v11 = (*((*MEMORY[0x277D85000] & *v9) + 0x1010))();
      swift_unknownObjectRelease();
      return v11;
    }

    swift_unknownObjectRelease();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UIPress and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIPress and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIPress and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for UIPress);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIPress and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #1 in IndexPath.doc_indexPaths(to:includingLast:)(uint64_t *a1)
{
  return partial apply for closure #1 in IndexPath.doc_indexPaths(to:includingLast:)(a1);
}

{
  v1 = *a1;
  v2 = IndexPath.section.getter();
  return MEMORY[0x24C1F80E0](v1, v2);
}

void specialized DOCItemCollectionViewController.focusNextItemAndThen(_:)(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v9);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchTime();
  v46 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v11);
  v44 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v45 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v44 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = MEMORY[0x277D85000];
  v22 = *((*MEMORY[0x277D85000] & *a1) + 0x1010);

  v23 = a3;
  v24 = v22();
  v25 = (*((*v21 & *v24) + 0xF0))();
  (*(*v25 + 104))(v25);

  v26 = type metadata accessor for IndexPath();
  LODWORD(a3) = (*(*(v26 - 8) + 48))(v19, 1, v26);
  v27 = outlined destroy of CharacterSet?(v19, &_s10Foundation9IndexPathVSgMd);
  if (a3 == 1)
  {
    v28 = [objc_opt_self() defaultManager];
    FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(4u, a2, 0, 0, 0, 1, *&v23[OBJC_IVAR___DOCActionContext_presentingViewController], 0, 0);

    return;
  }

  v29 = (*((*v21 & *a1) + 0xBD8))(v27);
  if ((v29 - 1) >= 3)
  {
    v31 = v20;
    if (v29)
    {
      v43 = v29;

      aBlock[0] = v43;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    v32 = v22();
    v33 = [v32 effectiveUserInterfaceLayoutDirection];

    if (v33)
    {
      v30 = 3;
    }

    else
    {
      v30 = 4;
    }
  }

  else
  {
    v30 = 2;
    v31 = v20;
  }

  v34 = v22();
  specialized DOCFocusableCollectionView.performNavigation(into:modifierFlags:)(v30, 0);

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v35 = static OS_dispatch_queue.main.getter();
  v36 = v44;
  static DispatchTime.now()();
  v37 = v45;
  + infix(_:_:)();
  v46 = *(v46 + 8);
  (v46)(v36, v53);
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for untrashItems #1 () in closure #1 in static UIDocumentBrowserAction.untrashAction();
  *(v38 + 24) = v31;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_29_2;
  v39 = _Block_copy(aBlock);

  v40 = v47;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_12(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v41 = v49;
  v42 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB940](v37, v40, v41, v39);
  _Block_release(v39);

  (*(v51 + 8))(v41, v42);
  (*(v48 + 8))(v40, v50);
  (v46)(v37, v53);
}