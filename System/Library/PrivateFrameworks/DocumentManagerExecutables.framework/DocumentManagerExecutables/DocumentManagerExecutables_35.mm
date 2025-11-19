uint64_t specialized _NativeSet.isSubset<A>(of:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v20 = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  v7 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v7 = v12, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v7);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    specialized closure #1 in _NativeSet.isSubset<A>(of:)(v9, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    partial apply for specialized closure #1 in _NativeSet.isSubset<A>(of:)(v13, &v17);
    v14 = v17;
    MEMORY[0x24C1FE850](v13, -1, -1);
    v10 = v14;
  }

  return v10 & 1;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n0110_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC29StringWidthCalculationContextC6update5usingyO12_tFSbSSXEfU_0sT11Executables0vwxY0C29StringWidthCalculationContextCTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized DOCItemCollectionViewController.move(nodes:to:completion:)(unint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, void *a5)
{
  v51 = a5;
  v52 = a3;
  v53 = a4;
  v56 = a1;
  v55 = type metadata accessor for DOCOperationItem();
  v6 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v7);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10, v11);
  v49 = &v48 - v13;
  v14 = *MEMORY[0x277CC6028];
  v50 = a2;
  if (![a2 canPerform_])
  {
    return v52(0);
  }

  v15 = v56;
  v48 = v56 >> 62;
  if (!(v56 >> 62))
  {
    v54 = v56 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      v17 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    return v52(0);
  }

LABEL_35:
  v54 = v15 & 0xFFFFFFFFFFFFFF8;
  v47 = __CocoaSet.count.getter();
  if (v47 < 1)
  {
    return v52(0);
  }

  v16 = v47;
  v17 = __CocoaSet.count.getter();
LABEL_5:
  v18 = 0;
  v19 = v56 & 0xC000000000000001;
  v20 = (v56 + 32);
  v21 = *MEMORY[0x277CC6048];
  while (v17 != v18)
  {
    if (v19)
    {
      v22 = MEMORY[0x24C1FC540](v18, v56);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = v56;
      if (v18 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v22 = *(v56 + 8 * v18 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v18, 1))
      {
LABEL_14:
        __break(1u);
        break;
      }
    }

    v23 = [v22 canPerform_];
    swift_unknownObjectRelease();
    ++v18;
    if ((v23 & 1) == 0)
    {
      return v52(0);
    }
  }

  v57 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
  v24 = v57;
  if (v19)
  {
    v25 = 0;
    v26 = v56;
    do
    {
      *v9 = MEMORY[0x24C1FC540](v25, v26);
      swift_storeEnumTagMultiPayload();
      v57 = v24;
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
        v24 = v57;
      }

      ++v25;
      *(v24 + 16) = v28 + 1;
      outlined init with take of ScrollPositionInfo.ItemOffset(v9, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v28, type metadata accessor for DOCOperationItem);
    }

    while (v16 != v25);
  }

  else
  {
    v29 = v49;
    do
    {
      *v29 = *v20;
      swift_storeEnumTagMultiPayload();
      v57 = v24;
      v30 = *(v24 + 16);
      v31 = *(v24 + 24);
      swift_unknownObjectRetain();
      if (v30 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v30 + 1, 1);
        v24 = v57;
      }

      *(v24 + 16) = v30 + 1;
      outlined init with take of ScrollPositionInfo.ItemOffset(v29, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30, type metadata accessor for DOCOperationItem);
      ++v20;
      --v16;
    }

    while (v16);
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.UI);

  v33 = v50;
  swift_unknownObjectRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v57 = v37;
    *v36 = 136315906;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BE0F20, &v57);
    *(v36 + 12) = 2048;
    if (v48)
    {
      *(v36 + 14) = __CocoaSet.count.getter();
      *(v36 + 22) = 2048;
      v38 = __CocoaSet.count.getter();
    }

    else
    {
      v38 = *(v54 + 16);
      *(v36 + 14) = v38;
      *(v36 + 22) = 2048;
    }

    *(v36 + 24) = v38;

    *(v36 + 32) = 2080;
    v39 = [v33 displayName];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v57);

    *(v36 + 34) = v43;
    _os_log_impl(&dword_2493AC000, v34, v35, "%s Requested to move %ld nodes. Moving %ld eligible to newly created folder: %s", v36, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v37, -1, -1);
    MEMORY[0x24C1FE850](v36, -1, -1);
  }

  else
  {
  }

  v44 = [objc_opt_self() defaultManager];
  v45 = swift_allocObject();
  *(v45 + 16) = v52;
  *(v45 + 24) = v53;

  FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(0, v24, v33, 1, 1, 0, v51, partial apply for closure #3 in DOCItemCollectionViewController.move(nodes:to:completion:), v45);
}

uint64_t specialized startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(void *a1, void *a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Rename);

  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v41);
    v39 = v13;
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0FF0, &v41);
    *(v14 + 22) = 2080;
    v15 = a3;
    v16 = [v11 description];
    v17 = v11;
    v18 = a4;
    v19 = a2;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    a3 = v15;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v41);

    *(v14 + 24) = v23;
    a2 = v19;
    a4 = v18;
    v11 = v17;
    _os_log_impl(&dword_2493AC000, v12, v39, "%s > %s: item: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v40, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  a5[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder] = 1;
  type metadata accessor for DOCInlineRenameController();
  v24 = swift_allocObject();
  v25 = v11;
  v26 = a5;
  v27 = a2;
  v28 = specialized DOCInlineRenameController.init(delegate:cell:node:)(v26, v27, v25, v24);

  (*(*v28 + 232))(1);
  v29 = MEMORY[0x277D85000];
  v30 = *((*MEMORY[0x277D85000] & *v26) + 0x14A0);

  v30(v31);
  *(v26 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
  v32 = swift_allocObject();
  v32[2] = a3;
  v32[3] = a4;
  v32[4] = v28;
  v32[5] = v26;
  v33 = *((*v29 & *v26) + 0x8D8);

  v34 = v26;

  v36 = v33(v35);
  if (v36)
  {

    v37 = *((*v29 & *v34) + 0x910);

    v37(partial apply for closure #1 in startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:), v32);
  }

  else
  {
    closure #1 in startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a3, a4, v28, v34);
  }
}

{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Rename);

  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v11, v12))
  {
    v38 = a3;
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, a4, &v39);
    v37 = a2;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0FF0, &v39);
    *(v13 + 22) = 2080;
    v14 = [a1 description];
    v15 = a5;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = v16;
    a5 = v15;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v39);
    a2 = v37;

    *(v13 + 24) = v20;
    _os_log_impl(&dword_2493AC000, v11, v12, "%s > %s: item: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v36, -1, -1);
    v21 = v13;
    a3 = v38;
    MEMORY[0x24C1FE850](v21, -1, -1);
  }

  a5[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder] = 1;
  type metadata accessor for DOCInlineRenameController();
  v22 = swift_allocObject();
  swift_unknownObjectRetain();
  v23 = a5;
  v24 = a2;
  v25 = specialized DOCInlineRenameController.init(delegate:cell:node:)(v23, v24, a1, v22);

  swift_unknownObjectRelease();
  (*(*v25 + 232))(1);
  v26 = MEMORY[0x277D85000];
  v27 = *((*MEMORY[0x277D85000] & *v23) + 0x14A0);

  v27(v28);
  *(v23 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
  v29 = swift_allocObject();
  v29[2] = a3;
  v29[3] = a4;
  v29[4] = v25;
  v29[5] = v23;
  v30 = *((*v26 & *v23) + 0x8D8);

  v31 = v23;

  v33 = v30(v32);
  if (v33)
  {

    v34 = *((*v26 & *v31) + 0x910);

    v34(closure #1 in startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)partial apply, v29);
  }

  else
  {
    closure #1 in startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(a3, a4, v25, v31);
  }
}

uint64_t specialized static DOCItemCollectionViewController.RestorableSettingsCacheKey.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    return 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v9 & 1;
  }
}

uint64_t specialized static RestorableSearchInfo.restorableInfo(for:)(void *a1)
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *a1) + 0xBB8))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = (*((*v1 & *v2) + 0x340))();
  if ((*((*v1 & *v3) + 0x338))())
  {
    v5 = String.count.getter();

    if (v5 > 0)
    {
      return v4;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return 0;
}

void specialized Sequence.forEach(_:)(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      closure #1 in DOCItemCollectionViewController.visibleCellsBySection.getter(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *a4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *a4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;

  return swift_unknownObjectRelease();
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);

    v15 = String.count.getter();
    v16 = (*(*a4 + 136))(v15);

    if (v15 != v16)
    {
      *(v19 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:

        return specialized _NativeSet.extractSubset(using:count:)(v19, a2, v20, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v32 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = v8;
    v28 = v3;
    v26[1] = v26;
    MEMORY[0x28223BE20](v10, v11);
    v29 = v26 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v9);
    v30 = 0;
    v31 = v5;
    v8 = 0;
    v13 = *(v5 + 56);
    v5 += 56;
    v12 = v13;
    v14 = 1 << *(v5 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v9 = (v14 + 63) >> 6;
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v3 = v17 | (v8 << 6);

      v20 = String.count.getter();
      v21 = (*(*a2 + 136))();

      if (v20 != v21)
      {
        *&v29[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v23 = specialized _NativeSet.extractSubset(using:count:)(v29, v27, v30, v31);

          return v23;
        }
      }
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        goto LABEL_16;
      }

      v19 = *(v5 + 8 * v8);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v16 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();

  v23 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n0110_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC29StringWidthCalculationContextC6update5usingyO12_tFSbSSXEfU_0sT11Executables0vwxY0C29StringWidthCalculationContextCTf1nnc_n(v25, v8, v5, a2);

  MEMORY[0x24C1FE850](v25, -1, -1);

  return v23;
}

void specialized closure #1 in _NativeSet.isSubset<A>(of:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 62)
  {
LABEL_26:
    v24 = a2 & 0xFFFFFFFFFFFFFF8;
    v19 = a2;
    v26 = __CocoaSet.count.getter();
    v3 = v19;
  }

  else
  {
    v24 = a2 & 0xFFFFFFFFFFFFFF8;
    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = a2;
  }

  v21 = 0;
  v4 = 0;
  v25 = v3 & 0xC000000000000001;
  v20 = v3;
  v23 = v3 + 32;
  v27 = a3 + 56;
LABEL_4:
  if (v4 != v26)
  {
    while (1)
    {
      if (v25)
      {
        v5 = MEMORY[0x24C1FC540](v4, v20);
      }

      else
      {
        if (v4 >= *(v24 + 16))
        {
          goto LABEL_25;
        }

        v5 = *(v23 + 8 * v4);
      }

      v6 = v5;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v8 = NSObject._rawHashValue(seed:)(*(a3 + 40));
      v9 = -1 << *(a3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if (((1 << v10) & *(v27 + 8 * (v10 >> 6))) == 0)
      {
        goto LABEL_6;
      }

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
      v13 = *(*(a3 + 48) + 8 * v10);
      v14 = static NSObject.== infix(_:_:)();

      if ((v14 & 1) == 0)
      {
        break;
      }

LABEL_17:

      v18 = *(a1 + 8 * v11);
      *(a1 + 8 * v11) = v18 | v12;
      if ((v18 & v12) == 0)
      {
        if (__OFADD__(v21, 1))
        {
          __break(1u);
        }

        else if (++v21 != *(a3 + 16))
        {
          goto LABEL_4;
        }

        return;
      }

LABEL_7:
      if (v4 == v26)
      {
        return;
      }
    }

    v15 = ~v9;
    while (1)
    {
      v10 = (v10 + 1) & v15;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if (((1 << v10) & *(v27 + 8 * (v10 >> 6))) == 0)
      {
        break;
      }

      v16 = *(*(a3 + 48) + 8 * v10);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_17;
      }
    }

LABEL_6:

    goto LABEL_7;
  }
}

uint64_t specialized DOCItemCollectionViewController.footerView(createIfNeeded:)(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView;
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView) || (result & 1) == 0)
  {
    return *(v2 + v3);
  }

  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v4)
  {
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x1B0))();
    v7 = *((*v5 & *v2) + 0xA50);
    v8 = v4;
    v7(v16);
    v9 = specialized DOCStatusFooterView.__allocating_init(folderNode:nodeCollection:itemCollectionConfiguration:)(v6, v8, v16);
    if (v9)
    {
      v10 = v9;
      v11 = v9;
      v12 = (*((*v5 & *v2) + 0xBD8))([v11 setTranslatesAutoresizingMaskIntoConstraints_]);
      DOCStatusFooterView.displayMode.setter(v12);
      v13 = &v11[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate];
      swift_beginAccess();
      *(v13 + 1) = &protocol witness table for DOCItemCollectionViewController;
      swift_unknownObjectWeakAssign();
      [v11 setAccessibilityIdentifier_];

      v14 = &v11[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_gestureDelegate];
      swift_beginAccess();
      *(v14 + 1) = &protocol witness table for DOCItemCollectionViewController;
      swift_unknownObjectWeakAssign();
      v15 = *(v2 + v3);
      *(v2 + v3) = v10;
    }

    return *(v2 + v3);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(unint64_t a1, uint64_t a2, void *a3)
{
  i = v3;
  v38 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v27 - v9;
  v39 = type metadata accessor for ImageOptions();
  v11 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15, v16);
  v19 = &v27 - v18;
  v43 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_23:
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = __CocoaSet.count.getter();
    if (v20)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v42 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v33 = a3;
  v34 = v19;
  v32 = v14;
  v14 = 0;
  v41 = a1 & 0xC000000000000001;
  v37 = (v11 + 6);
  v30 = (v11 + 4);
  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_imageCache;
  v28 = (v11 + 1);
  v29 = (v11 + 2);
  v21 = MEMORY[0x277D84F90];
  v11 = &_s21DocumentManagerUICore12ImageOptionsVSgMd;
  a3 = &_s21DocumentManagerUICore12ImageOptionsVSgMR;
  v40 = v20;
  v36 = i;
  do
  {
    v35 = v21;
    for (i = v14; ; ++i)
    {
      if (v41)
      {
        v19 = a1;
        a1 = MEMORY[0x24C1FC540](i, a1, v17);
        v14 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *(v42 + 16))
        {
          goto LABEL_22;
        }

        v19 = a1;
        a1 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v14 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      swift_getObjectType();
      v22 = v11;
      if (!DOCNode.isCreateDocumentSentinel()())
      {
        break;
      }

LABEL_6:
      swift_unknownObjectRelease();
      a1 = v19;
      if (v14 == v40)
      {
        return v35;
      }
    }

    outlined init with copy of DOCGridLayout.Spec?(v38, v10, v11);
    if ((*v37)(v10, 1, v39) == 1)
    {
      outlined destroy of CharacterSet?(v10, v11);
      goto LABEL_6;
    }

    v23 = v34;
    v24 = v39;
    (*v30)(v34, v10, v39);
    (*v29)(v32, v23, v24);
    objc_allocWithZone(type metadata accessor for NodeThumbnail());
    swift_unknownObjectRetain();

    v35 = NodeThumbnail.init(node:imageOptions:imageCache:)();
    (*v28)(v34, v24);
    v25 = swift_unknownObjectRelease();
    MEMORY[0x24C1FB090](v25);
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = v43;
    a1 = v19;
    v11 = v22;
  }

  while (v14 != v40);
  return v21;
}

uint64_t specialized DOCItemCollectionViewController.renameFinished(_:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.Rename);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v25 = v1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000249BCE890, aBlock);
    *(v13 + 12) = 2080;
    v15 = (*((*MEMORY[0x277D85000] & *v10) + 0x1498))();
    if (v15)
    {
      (*(*v15 + 272))(v15);

      swift_getObjectType();
      v16 = DOCNode.nodeDescription.getter();
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 4271950;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, aBlock);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_2493AC000, v11, v12, "%s node: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);

    v1 = v25;
  }

  else
  {
  }

  *(v10 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_endingInlineRename) = 1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v10;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.renameFinished(_:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_924;
  v22 = _Block_copy(aBlock);
  v23 = v10;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v8, v4, v22);
  _Block_release(v22);

  (*(v28 + 8))(v4, v1);
  return (*(v26 + 8))(v8, v27);
}

uint64_t specialized DOCItemCollectionViewController.cell(_:canPerform:)(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *a1) + 0x208))();
  if (v4 && (v5 = *((*v3 & *v4) + 0x3D0), v6 = v4, v7 = v5(), v6, v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v7;
    swift_unknownObjectRetain();
    v9 = specialized static DOCActionManager.canPerform(_:on:)(a2, inited);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t specialized DOCItemCollectionViewController.cellShouldStartInlineRenaming(_:)()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1010))();
  if ([v1 isDragging] || objc_msgSend(v1, sel_isDecelerating))
  {

    return 0;
  }

  v3 = [v1 isTracking];

  if (v3)
  {
    return 0;
  }

  return [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPickerUI] ^ 1;
}

id specialized DOCItemCollectionViewController.cell(_:actionContextFrom:)(uint64_t a1)
{
  outlined init with copy of DOCGridLayout.Spec?(a1, v3, &_sypSgMd);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCActionPerformer_pMd);
    swift_dynamicCast();
  }

  else
  {
    outlined destroy of CharacterSet?(v3, &_sypSgMd);
  }

  v1 = DOCItemCollectionViewController.actionContext(from:)();
  swift_unknownObjectRelease();
  return v1;
}

void specialized DOCItemCollectionViewController.configureSupplementaryItems(for:footerContentInsets:)(void *a1)
{
  v20 = MEMORY[0x277D84F90];
  if (DOCItemCollectionViewController.needsHeaderView.getter())
  {
    v2 = objc_opt_self();
    v3 = [v2 fractionalWidthDimension_];
    v4 = [v2 estimatedDimension_];
    v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

    v6 = v5;
    v7 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC6130);
    v8 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v6 elementKind:v7 alignment:1];

    v9 = v8;
    MEMORY[0x24C1FB090]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v10 = objc_opt_self();
  v11 = [v10 fractionalWidthDimension_];
  v12 = [v10 estimatedDimension_];
  v13 = [objc_opt_self() sizeWithWidthDimension:v11 heightDimension:v12];

  v14 = v13;
  v15 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC5E50);
  v16 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v14 elementKind:v15 alignment:5];

  v17 = v16;
  MEMORY[0x24C1FB090]();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v19 = [a1 configuration];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setBoundarySupplementaryItems_];

  [v19 setContentInsetsReference_];
  [a1 setConfiguration_];
}

void specialized DOCItemCollectionViewController.nodeCollectionDidStartGathering(_:)()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xA40))();
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v1)
  {
    if ([v1 isGathering])
    {
      *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preventLoadingView) = 0;

      DOCItemCollectionViewController.showLoadingViewIfNeeded()();
    }

    else
    {
      DOCItemCollectionViewController.notifyContentDidLoad()();
      v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
      if (v2)
      {
        v3 = v2;
        DOCStatusFooterView.updateQuotaLabel()();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized DOCItemCollectionViewController.nodeCollectionDidFinishGathering(_:)()
{
  v1 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for DOCItemCollectionViewDidFinishGathering != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:static NSNotificationName.DOCItemCollectionViewDidFinishGathering object:v0];

  specialized DOCItemCollectionViewController.updateOverlay(animated:)();
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v2)
  {
    v3 = DOCItemCollectionViewController.data(forNodeCollectionShouldBeReloaded:)(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection));
    (*((*MEMORY[0x277D85000] & *v0) + 0xA40))(v3);
    if ([v2 isGathering])
    {
      *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preventLoadingView) = 0;

      DOCItemCollectionViewController.showLoadingViewIfNeeded()();
    }

    else
    {
      DOCItemCollectionViewController.notifyContentDidLoad()();
      v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
      if (v4)
      {
        v5 = v4;
        DOCStatusFooterView.updateQuotaLabel()();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized DOCItemCollectionViewController.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_editingMode) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsManager) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___familySharedFolderTip) = 1;
  v2 = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_subscriptions) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingTasks) = v2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isOptionKeyPressed) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview) = 0;
  v3 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_existingOverlayTitleBeforeRename);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fiNodeDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fpNodeDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isActiveDragSource) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_familyFetcher);
  v5 = type metadata accessor for FamilyFetcher();
  v6 = swift_allocObject();
  v4[3] = v5;
  v4[4] = &protocol witness table for FamilyFetcher;
  *v4 = v6;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipViewIsAvailable) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDragSession) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDropSession) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbMenu) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbConfiguration) = 0;
  v7 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_blockToRunWhenMenuInteractionFinishedDismissing);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registeredItemCellClassByIdentifier;
  v9 = MEMORY[0x277D84F90];
  *(v1 + v8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_26DocumentManagerExecutables21DOCItemCollectionCellCmTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemHierarchyEventListener + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortOptionsAccessibilityModelView;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_multiselectActionStatus) = 2;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastDropIndexPath;
  v12 = type metadata accessor for IndexPath();
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_dropTargetHighlightedCell) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_titleMenuContext) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingTitleMenuContext) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_valuesPendingUntilNextReload) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_contentUnavailableUIAllowed) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_urlToItemCache) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_interactionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationIsProtected) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationHasAuthenticated) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___outlineManager) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_outerScrollView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkCreateFolderInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkTrashFileInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetFileExtensionVisibilityInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetGroupingModeInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___visibleItemsCorpus) = 0;
  v14 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionListCellIdentifier);
  *v14 = 0xD000000000000020;
  v14[1] = 0x8000000249BDE7A0;
  v15 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier);
  *v15 = 0xD000000000000023;
  v15[1] = 0x8000000249BDE7D0;
  v16 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGridCellIdentifier);
  *v16 = 0xD000000000000020;
  v16[1] = 0x8000000249BDE800;
  v17 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionLargeTextListCellIdentifier);
  *v17 = 0xD000000000000029;
  v17[1] = 0x8000000249BDE830;
  v18 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionCreateCellIdentifier);
  *v18 = 0xD000000000000022;
  v18[1] = 0x8000000249BDE860;
  v19 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier);
  *v19 = 0xD00000000000002BLL;
  v19[1] = 0x8000000249BDE890;
  v20 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier);
  *v20 = 0xD000000000000030;
  v20[1] = 0x8000000249BDE8C0;
  v21 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier);
  *v21 = 0xD00000000000002BLL;
  v21[1] = 0x8000000249BDE900;
  v22 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier);
  *v22 = 0xD00000000000002CLL;
  v22[1] = 0x8000000249BDE930;
  v23 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyHeaderIdentifier);
  *v23 = 0xD000000000000030;
  v23[1] = 0x8000000249BDE960;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_searchPresentationState) = 4;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_displayMode) = 0;
  v24 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentLoadingProgress);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentTransitionVisibility);
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool;
  type metadata accessor for DOCItemCollectionCellContentPool();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v27[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0jK7PromiseOTt0g5Tf4g_n(v9);
  *(v1 + v26) = v27;
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *(v1 + v28) = ImageCache.init()();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isApplyingSnapshot) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsUpdateDiffableSnapshot) = 1;
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_appLaunchOptimizationsActive;
  v30 = [objc_opt_self() shared];
  LOBYTE(v28) = [v30 locked];

  *(v1 + v29) = v28;
  v13(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentFocusEngineIndexPath, 1, 1, v12);
  v31 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController;
  *v31 = v9;
  *(v31 + 8) = v9;
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_So7DOCNode_pTt0g5Tf4g_n(v9);
  *(v31 + 16) = v32;
  *(v31 + 24) = 11;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__groupingBehavior) = 10;
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldShowAllFilenameExtensionPublisher;
  if (one-time initialization token for shared != -1)
  {
    v32 = swift_once();
  }

  *(v1 + v33) = (*(*static DOCFileExtensionManager.shared + 192))(v32);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsBeforeModelUpdate) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringObservation) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsOriginObservation) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_defaultSaveLocationDidChangeNotificationToken) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeThumbnailBatchingTokens) = v9;
  v13(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathForRememberedFocusNode, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_postBatchUpdateBlocks) = v9;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderContainerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_firstItemInsertionRequestsFocus) = 0;
  v34 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController;
  *(v1 + v34) = [objc_allocWithZone(type metadata accessor for DOCTypeToFocusController()) init];
  v13(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathOfSwipedItem, 1, 1, v12);
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___listLayoutConfiguration;
  v36 = type metadata accessor for UICollectionLayoutListConfiguration();
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___collectionViewLayout) = 0;
  v37 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tableLayoutSidebarPlainAppearanceMetrics;
  *v37 = 0;
  *(v37 + 8) = xmmword_249BAA8A0;
  *(v37 + 24) = xmmword_249BAA8B0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___promptView) = 1;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetricsSourceTraits) = 0;
  v38 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v39 = v1 + v38;
  v40 = qword_27EEE8FE0;
  v41 = *algn_27EEE8FD0;
  *v39 = static DOCItemCollectionCellStackMetrics.zero;
  *(v39 + 16) = v41;
  *(v39 + 32) = v40;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsBarButton) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSpringLoading) = 0;
  v42 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  *v42 = 0;
  *(v42 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__showsCreateButton) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewLayoutTraits) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringThumbnails) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updatedIsScrollEnabled) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_didKickstartNotifyContentDidLoad) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sourceEjectableObservation) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastPreviewedFPItem) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__selectedChildNode) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_selectedIndexPathWasAlreadySelected) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchSelection) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForBrowserLayoutChanges) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForUIPChanges) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForInsetChanges) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForceLayoutForFooter) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_updateSnapshot) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_computeStackMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_endingInlineRename) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_inlineRenameController) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = 0;
  v43 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController) = 0;
  v44 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___untitledFolderName);
  *v44 = 0;
  v44[1] = 0;
  v45 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_overridenEstimatedCollectionViewSize;
  *v45 = 0;
  *(v45 + 8) = 0;
  *(v45 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts) = v9;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal) = v9;
  v46 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll;
  *v46 = 0;
  *(v46 + 8) = 0;
  v47 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
  v48 = type metadata accessor for ScrollPositionInfo(0);
  (*(*(v48 - 8) + 56))(v1 + v47, 1, 1, v48);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticApplyRestorableSettingsAllowed) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticSaveRestorableSettingsAllowed) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForcedUnderNavBarAppearanceOnAppear) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_hasDeferredRepositionInlineEditingCell) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldDeferRepositionInlineEditingCell) = 0;
  v49 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastCollectionViewSafeInsets;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 0;
  v50 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_bbiStorage;
  type metadata accessor for DOCItemCollectionViewController.BBIStorage();
  swift_allocObject();
  DOCItemCollectionViewController.BBIStorage.init()();
  *(v1 + v50) = v51;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_viewOptionsViewController) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedCreatedFolderToBeRenamed) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToBeMovedIntoCreatedFolder) = v9;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_newFolderReadyForRenameTimer) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_repositionRenamingCellTimer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized DOCItemCollectionViewController.init(configuration:documentManager:actionManager:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_editingMode) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsManager) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___familySharedFolderTip) = 1;
  v2 = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_subscriptions) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingTasks) = v2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isOptionKeyPressed) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview) = 0;
  v3 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_existingOverlayTitleBeforeRename);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fiNodeDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fpNodeDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isActiveDragSource) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_familyFetcher);
  v5 = type metadata accessor for FamilyFetcher();
  v6 = swift_allocObject();
  v4[3] = v5;
  v4[4] = &protocol witness table for FamilyFetcher;
  *v4 = v6;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipViewIsAvailable) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDragSession) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDropSession) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbMenu) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbConfiguration) = 0;
  v7 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_blockToRunWhenMenuInteractionFinishedDismissing);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registeredItemCellClassByIdentifier;
  v9 = MEMORY[0x277D84F90];
  *(v1 + v8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_26DocumentManagerExecutables21DOCItemCollectionCellCmTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemHierarchyEventListener + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortOptionsAccessibilityModelView;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_multiselectActionStatus) = 2;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastDropIndexPath;
  v12 = type metadata accessor for IndexPath();
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_dropTargetHighlightedCell) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_titleMenuContext) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingTitleMenuContext) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_valuesPendingUntilNextReload) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_contentUnavailableUIAllowed) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_urlToItemCache) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_interactionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationIsProtected) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationHasAuthenticated) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___outlineManager) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_outerScrollView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkCreateFolderInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkTrashFileInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetFileExtensionVisibilityInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetGroupingModeInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___visibleItemsCorpus) = 0;
  v14 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionListCellIdentifier);
  *v14 = 0xD000000000000020;
  v14[1] = 0x8000000249BDE7A0;
  v15 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier);
  *v15 = 0xD000000000000023;
  v15[1] = 0x8000000249BDE7D0;
  v16 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGridCellIdentifier);
  *v16 = 0xD000000000000020;
  v16[1] = 0x8000000249BDE800;
  v17 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionLargeTextListCellIdentifier);
  *v17 = 0xD000000000000029;
  v17[1] = 0x8000000249BDE830;
  v18 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionCreateCellIdentifier);
  *v18 = 0xD000000000000022;
  v18[1] = 0x8000000249BDE860;
  v19 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier);
  *v19 = 0xD00000000000002BLL;
  v19[1] = 0x8000000249BDE890;
  v20 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier);
  *v20 = 0xD000000000000030;
  v20[1] = 0x8000000249BDE8C0;
  v21 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier);
  *v21 = 0xD00000000000002BLL;
  v21[1] = 0x8000000249BDE900;
  v22 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier);
  *v22 = 0xD00000000000002CLL;
  v22[1] = 0x8000000249BDE930;
  v23 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyHeaderIdentifier);
  *v23 = 0xD000000000000030;
  v23[1] = 0x8000000249BDE960;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_searchPresentationState) = 4;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_displayMode) = 0;
  v24 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentLoadingProgress);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentTransitionVisibility);
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool;
  type metadata accessor for DOCItemCollectionCellContentPool();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v27[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0jK7PromiseOTt0g5Tf4g_n(v9);
  *(v1 + v26) = v27;
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *(v1 + v28) = ImageCache.init()();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isApplyingSnapshot) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsUpdateDiffableSnapshot) = 1;
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_appLaunchOptimizationsActive;
  v30 = [objc_opt_self() shared];
  LOBYTE(v28) = [v30 locked];

  *(v1 + v29) = v28;
  v13(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentFocusEngineIndexPath, 1, 1, v12);
  v31 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController;
  *v31 = v9;
  *(v31 + 8) = v9;
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_So7DOCNode_pTt0g5Tf4g_n(v9);
  *(v31 + 16) = v32;
  *(v31 + 24) = 11;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__groupingBehavior) = 10;
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldShowAllFilenameExtensionPublisher;
  if (one-time initialization token for shared != -1)
  {
    v32 = swift_once();
  }

  *(v1 + v33) = (*(*static DOCFileExtensionManager.shared + 192))(v32);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsBeforeModelUpdate) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringObservation) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsOriginObservation) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_defaultSaveLocationDidChangeNotificationToken) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeThumbnailBatchingTokens) = v9;
  v13(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathForRememberedFocusNode, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_postBatchUpdateBlocks) = v9;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderContainerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_firstItemInsertionRequestsFocus) = 0;
  v34 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController;
  *(v1 + v34) = [objc_allocWithZone(type metadata accessor for DOCTypeToFocusController()) init];
  v13(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathOfSwipedItem, 1, 1, v12);
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___listLayoutConfiguration;
  v36 = type metadata accessor for UICollectionLayoutListConfiguration();
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___collectionViewLayout) = 0;
  v37 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tableLayoutSidebarPlainAppearanceMetrics;
  *v37 = 0;
  *(v37 + 8) = xmmword_249BAA8A0;
  *(v37 + 24) = xmmword_249BAA8B0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___promptView) = 1;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetricsSourceTraits) = 0;
  v38 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v39 = v1 + v38;
  v40 = qword_27EEE8FE0;
  v41 = *algn_27EEE8FD0;
  *v39 = static DOCItemCollectionCellStackMetrics.zero;
  *(v39 + 16) = v41;
  *(v39 + 32) = v40;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsBarButton) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSpringLoading) = 0;
  v42 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  *v42 = 0;
  *(v42 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__showsCreateButton) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewLayoutTraits) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringThumbnails) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updatedIsScrollEnabled) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_didKickstartNotifyContentDidLoad) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sourceEjectableObservation) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastPreviewedFPItem) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__selectedChildNode) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_selectedIndexPathWasAlreadySelected) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchSelection) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForBrowserLayoutChanges) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForUIPChanges) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForInsetChanges) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForceLayoutForFooter) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_updateSnapshot) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_computeStackMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_endingInlineRename) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_inlineRenameController) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = 0;
  v43 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController) = 0;
  v44 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___untitledFolderName);
  *v44 = 0;
  v44[1] = 0;
  v45 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_overridenEstimatedCollectionViewSize;
  *v45 = 0;
  *(v45 + 8) = 0;
  *(v45 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts) = v9;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal) = v9;
  v46 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll;
  *v46 = 0;
  *(v46 + 8) = 0;
  v47 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
  v48 = type metadata accessor for ScrollPositionInfo(0);
  (*(*(v48 - 8) + 56))(v1 + v47, 1, 1, v48);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticApplyRestorableSettingsAllowed) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticSaveRestorableSettingsAllowed) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForcedUnderNavBarAppearanceOnAppear) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_hasDeferredRepositionInlineEditingCell) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldDeferRepositionInlineEditingCell) = 0;
  v49 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastCollectionViewSafeInsets;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 0;
  v50 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_bbiStorage;
  type metadata accessor for DOCItemCollectionViewController.BBIStorage();
  swift_allocObject();
  DOCItemCollectionViewController.BBIStorage.init()();
  *(v1 + v50) = v51;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_viewOptionsViewController) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedCreatedFolderToBeRenamed) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToBeMovedIntoCreatedFolder) = v9;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_newFolderReadyForRenameTimer) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_repositionRenamingCellTimer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type UIView and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIView and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIView and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for UIView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIView and conformance NSObject);
  }

  return result;
}

void *outlined copy of (progress: NSProgress, node: DOCNode)?(void *result)
{
  if (result)
  {
    v1 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t outlined consume of (offset: Int, element: DOCCollectionSection)?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

id partial apply for closure #3 in closure #1 in DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:)()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 removeFromSuperview];
}

void *specialized DOCItemCollectionViewController.FooterView.preferredLayoutAttributesFitting(_:)(void *a1)
{
  [a1 frame];
  Width = CGRectGetWidth(v16);
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1112014848;
  [v1 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v4, v5}];
  v7 = v6;
  [a1 frame];
  [a1 setSize_];
  [a1 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [a1 size];
  [a1 setFrame_];
  return a1;
}

void specialized DOCItemCollectionViewController.title.setter()
{
  _StringGuts.grow(_:)(31);

  swift_getObjectType();
  v0 = _typeName(_:qualified:)();
  MEMORY[0x24C1FAEA0](v0);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t outlined init with copy of ScrollPositionInfo.ItemOffset(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id outlined copy of DOCItemCollectionViewController.RestorableSettingsCacheKey?(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t outlined destroy of RestorableSettings(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of ScrollPositionInfo.ItemOffset(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ScrollPositionInfo.ItemOffset(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #1 in DOCItemCollectionViewController.willTransition(to:with:)()
{
  v1 = *(v0 + 24);
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x1448))())
  {
    DOCItemCollectionViewController.updateNavBarHiddenForActiveRename(traitCollection:)(v1);
  }
}

unint64_t lazy protocol witness table accessor for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait()
{
  result = lazy protocol witness table cache variable for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait;
  if (!lazy protocol witness table cache variable for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait);
  }

  return result;
}

uint64_t specialized closure #3 in DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = partial apply for closure #1 in closure #3 in DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1347;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v9, v5, v12);
  _Block_release(v12);

  (*(v16 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v15);
}

uint64_t specialized DOCItemCollectionViewController.collectionView(_:prefetchItemsAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v46 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v55 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v56 = &v46 - v14;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15, v16);
  v19 = &v46 - v18;
  v20 = *(a1 + 16);
  v57 = v2;
  if (v20)
  {
    v21 = *((*MEMORY[0x277D85000] & *v2) + 0x18A0);
    v53 = ((*MEMORY[0x277D85000] & *v2) + 6304);
    v54 = v21;
    v22 = *(v9 + 16);
    v47 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v23 = a1 + v47;
    v24 = *(v9 + 72);
    v50 = (v9 + 8);
    v51 = v22;
    v25 = (v9 + 48);
    v58 = MEMORY[0x277D84F90];
    v52 = v9 + 16;
    v48 = v9;
    v49 = (v9 + 32);
    v22(v19, a1 + v47, v8, v17);
    while (1)
    {
      v54(v19);
      (*v50)(v19, v8);
      if ((*v25)(v7, 1, v8) == 1)
      {
        outlined destroy of CharacterSet?(v7, &_s10Foundation9IndexPathVSgMd);
      }

      else
      {
        v26 = *v49;
        (*v49)(v55, v7, v8);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v27 = v58;
        }

        else
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v29 = v27[2];
        v28 = v27[3];
        if (v29 >= v28 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v27);
        }

        v27[2] = v29 + 1;
        v58 = v27;
        v26(v27 + v47 + v29 * v24, v55, v8);
        v2 = v57;
        v9 = v48;
      }

      v23 += v24;
      if (!--v20)
      {
        break;
      }

      v51(v19, v23, v8, v17);
    }
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

  v59 = MEMORY[0x277D84F90];
  v30 = v58[2];
  if (!v30)
  {

    v37 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_22;
    }

LABEL_25:
    v41 = __CocoaSet.count.getter();
    if (v41)
    {
      goto LABEL_23;
    }
  }

  v31 = *((*MEMORY[0x277D85000] & *v2) + 0xD88);
  v54 = ((*MEMORY[0x277D85000] & *v2) + 3464);
  v55 = v31;
  v33 = *(v9 + 16);
  v32 = v9 + 16;
  v53 = v33;
  v34 = v58 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
  v35 = *(v32 + 56);
  v36 = (v32 - 8);
  v37 = MEMORY[0x277D84F90];
  do
  {
    v38 = v56;
    v53(v56, v34, v8, v17);
    v39 = (v55)(v38, 0);
    v40 = (*v36)(v38, v8);
    if (v39)
    {
      MEMORY[0x24C1FB090](v40);
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v48 = v32;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v48;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v37 = v59;
    }

    v34 += v35;
    --v30;
  }

  while (v30);

  v2 = v57;
  if (v37 >> 62)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    v43 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool);
    v44 = MEMORY[0x28223BE20](v41, v42);
    *(&v46 - 2) = v2;
    (*(*v43 + 184))(v37, closure #1 in DOCItemCollectionViewController.prefetchCellContent(for:)partial apply, v44);
  }
}

double _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t specialized DOCItemCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for IndexPath();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v51 = &v40 - v12;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v40 - v16;
  v44 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool);
  result = (*(*v18 + 160))(v15);
  if ((result & 1) == 0)
  {
    v40 = v18;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = *((*MEMORY[0x277D85000] & *v44) + 0x18A0);
      v49 = (*MEMORY[0x277D85000] & *v44) + 6304;
      v47 = *(v41 + 16);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v22 = a1 + v42;
      v23 = v44;
      v24 = *(v41 + 72);
      v46 = (v41 + 8);
      v25 = (v41 + 48);
      v52 = MEMORY[0x277D84F90];
      v48 = (v41 + 16);
      v45 = (v41 + 32);
      v43 = v21;
      v47(v17, v22, v7);
      while (1)
      {
        v21(v17);
        (*v46)(v17, v7);
        if ((*v25)(v6, 1, v7) == 1)
        {
          outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
        }

        else
        {
          v26 = *v45;
          (*v45)(v50, v6, v7);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v27 = v52;
          }

          else
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
          }

          v29 = v27[2];
          v28 = v27[3];
          if (v29 >= v28 >> 1)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v27);
          }

          v27[2] = v29 + 1;
          v52 = v27;
          v26(v27 + v42 + v29 * v24, v50, v7);
          v21 = v43;
          v23 = v44;
        }

        v22 += v24;
        if (!--v20)
        {
          break;
        }

        v47(v17, v22, v7);
      }
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
      v23 = v44;
    }

    v53 = MEMORY[0x277D84F90];
    v30 = v52[2];
    if (v30)
    {
      v31 = *((*MEMORY[0x277D85000] & *v23) + 0xD88);
      v49 = (*MEMORY[0x277D85000] & *v23) + 3464;
      v50 = v31;
      v48 = *(v41 + 16);
      v32 = v52 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v33 = *(v41 + 72);
      v34 = (v41 + 8);
      v47 = MEMORY[0x277D84F90];
      v35 = v51;
      v48(v51, v32, v7);
      while (1)
      {
        v36 = (v50)(v35, 0);
        v37 = (*v34)(v35, v7);
        if (v36)
        {
          MEMORY[0x24C1FB090](v37);
          if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v47 = v53;
        }

        v32 += v33;
        if (!--v30)
        {
          break;
        }

        v48(v35, v32, v7);
      }

      v38 = v47;
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    v39 = v40;
    if (v38 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
      }
    }

    else if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

    (*(*v39 + 200))(v38, closure #3 in DOCItemCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:), 0);
  }

  return result;
}

uint64_t specialized DOCItemCollectionViewController.collectionView(_:canFocusItemAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x1448))())
  {
    v5 = (*((*v4 & *v1) + 0x1498))();
    if (v5)
    {
      v6 = (*(*v5 + 296))();

      if (v6)
      {
        v8 = (*((*v4 & *v6) + 0x390))(v7);

        if (v8)
        {
          v9 = [v8 isFirstResponder];

          if (v9)
          {
            return 0;
          }
        }
      }
    }
  }

  v11 = *((*v4 & *v2) + 0x1788);

  return v11(a1);
}

uint64_t specialized DOCItemCollectionViewController._collectionView(_:typeSelectStringForItemAt:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v15, v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D85000];
  v22 = (*((*MEMORY[0x277D85000] & *v1) + 0x1448))(v18);
  result = 0;
  if ((v22 & 1) == 0)
  {
    outlined init with copy of DOCGridLayout.Spec?(a1, v14, &_s10Foundation9IndexPathVSgMd);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      outlined destroy of CharacterSet?(v14, &_s10Foundation9IndexPathVSgMd);
    }

    else
    {
      (*(v16 + 32))(v20, v14, v15);
      v24 = (*((*v21 & *v1) + 0xD88))(v20, 0);
      if (v24)
      {
        v25 = DOCItemCollectionViewController.fastTitle(forNode:)(v24);
        swift_unknownObjectRelease();
        (*(v16 + 8))(v20, v15);
        return v25;
      }

      (*(v16 + 8))(v20, v15);
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.UI);
    outlined init with copy of DOCGridLayout.Spec?(a1, v10, &_s10Foundation9IndexPathVSgMd);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 136315138;
      outlined init with copy of DOCGridLayout.Spec?(v10, v6, &_s10Foundation9IndexPathVSgMd);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      outlined destroy of CharacterSet?(v10, &_s10Foundation9IndexPathVSgMd);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v36);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2493AC000, v27, v28, "typeSelectStringForItemAt result nil, indexPath: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    else
    {

      outlined destroy of CharacterSet?(v10, &_s10Foundation9IndexPathVSgMd);
    }

    return 0;
  }

  return result;
}

void specialized DOCItemCollectionViewController._collectionView(_:updateTypeSelectResultFor:at:with:animator:)(void *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v44 - v7;
  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  type metadata accessor for DOCItemCollectionCell();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    return;
  }

  v15 = MEMORY[0x277D85000];
  v16 = *((*MEMORY[0x277D85000] & *v14) + 0x208);
  v17 = (*MEMORY[0x277D85000] & *v14) + 520;
  v18 = a1;
  v48 = v17;
  v49 = v18;
  v19 = v16();
  if (!v19)
  {
    goto LABEL_19;
  }

  v20 = v19;
  v47 = v16;
  v21 = (*((*v15 & *v19) + 0x640))();
  v23 = v22;
  if (!a3)
  {

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.UI);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v33, v34);
    v16 = v47;
    if (v35)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2493AC000, v33, v34, "updateTypeSelectResultFor itemResult nil", v36, 2u);
      MEMORY[0x24C1FE850](v36, -1, -1);
    }

    goto LABEL_18;
  }

  v24 = v21;
  v46 = a3;
  v45 = [v46 item];
  v25 = [v45 string];
  if (!v25)
  {

    goto LABEL_17;
  }

  v26 = v25;
  v44 = v10;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v27 == v24 && v29 == v23)
  {

    v10 = v44;
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = v44;
    if ((v31 & 1) == 0)
    {

      v15 = MEMORY[0x277D85000];
LABEL_17:
      v33 = v46;
      v16 = v47;
      v20 = v45;
LABEL_18:

LABEL_19:
      v37 = v16();
      if (v37)
      {
        v38 = v37;
        (*(v10 + 56))(v8, 1, 1, v9);
        (*((*v15 & *v38) + 0x4B0))(v8);
      }

      else
      {
        v39 = v49;
      }

      return;
    }
  }

  v40 = v46;
  v41 = [v46 matchingRanges];
  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = IndexSet.isEmpty.getter();
  v43 = MEMORY[0x277D85000];
  if (v42)
  {
    IndexSet.init()();
  }

  else
  {
    (*(v10 + 16))(v8, v13, v9);
  }

  (*(v10 + 56))(v8, 0, 1, v9);
  (*((*v43 & *v20) + 0x4B0))(v8);

  (*(v10 + 8))(v13, v9);
}

uint64_t specialized DOCItemCollectionViewController.isColumnNavigationAction(in:at:)()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() != 3)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.UI);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BE0C00, &v14);
      _os_log_impl(&dword_2493AC000, v4, v5, "%s should never be called outside of column mode", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v6, -1, -1);
    }
  }

  if (*((*v2 & *v1) + 0xA98))() && (v9 = v8, ObjectType = swift_getObjectType(), LOBYTE(v9) = (*(v9 + 48))(v1, ObjectType, v9), v11 = swift_unknownObjectRelease(), (v9))
  {
    v12 = (*((*v2 & *v1) + 0x1280))(v11) ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

void specialized DOCItemCollectionViewController.collectionView(_:didSelectItemAt:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v79 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v85 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v79 - v22;
  v26.n128_f64[0] = MEMORY[0x28223BE20](v24, v25);
  v28 = &v79 - v27;
  v29 = MEMORY[0x277D85000];
  v30 = *((*MEMORY[0x277D85000] & *v2) + 0x1898);
  v86 = a1;
  if ((v30(a1, v26) & 1) == 0)
  {
    if ((*((*v29 & *v2) + 0x998))())
    {
      v80 = v12;
      v31 = (*((*v29 & *v2) + 0x1010))();
      v81 = *(v5 + 16);
      v82 = v5 + 16;
      v81(v28, v86, v4);
      v83 = v5;
      v84 = v4;
      v32 = (*(v5 + 56))(v28, 0, 1, v4);
      v33 = (*((*v29 & *v31) + 0xF0))(v32);
      outlined init with copy of DOCGridLayout.Spec?(v28, v23, &_s10Foundation9IndexPathVSgMd);
      (*(*v33 + 112))(v23);

      outlined destroy of CharacterSet?(v28, &_s10Foundation9IndexPathVSgMd);
      if ([v2 isEditing])
      {
        *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
        v34 = [v2 viewIfLoaded];
        v35 = [v34 window];

        if (v35)
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
        v40 = (*((*v29 & *v2) + 0xBD8))();
        v41 = v84;
        if (v40 == 3)
        {
          if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) == 1 && ((v42 = *((*MEMORY[0x277D85000] & *v2) + 0x1338), v43 = v42(), v43 >> 62) ? (v44 = __CocoaSet.count.getter(), v41 = v84) : (v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v44 >= 1) && (type metadata accessor for DOCConcreteSelectionLocation(), v45 = v42(), v41 = v84, (v46 = DOCConcreteSelectionLocation.__allocating_init(selectedNodes:)(v45)) != 0)))
          {
            v47 = v46;
            v48 = MEMORY[0x277D85000];
            v49 = (*((*MEMORY[0x277D85000] & *v2) + 0xE8))();
            if (v49)
            {
              v50 = v49;
              (*((*v48 & *v2) + 0xA50))(v87);
              v51 = v87[3];
              outlined destroy of DOCItemCollectionConfiguration(v87);
              [v50 didSelectLocation:v47 atParentLocation:v51];

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          else if (specialized DOCItemCollectionViewController.isColumnNavigationAction(in:at:)())
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v53 = type metadata accessor for Logger();
            __swift_project_value_buffer(v53, static Logger.UI);
            v81(v16, v86, v41);
            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.debug.getter();
            v56 = os_log_type_enabled(v54, v55);
            v57 = v83;
            if (v56)
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v87[0] = v59;
              *v58 = 136315394;
              *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BE0C30, v87);
              *(v58 + 12) = 2080;
              _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
              v60 = dispatch thunk of CustomStringConvertible.description.getter();
              v62 = v61;
              v63 = *(v57 + 8);
              v63(v16, v84);
              v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v87);

              *(v58 + 14) = v64;
              v41 = v84;
              _os_log_impl(&dword_2493AC000, v54, v55, "%s %s navigation action, handling", v58, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1FE850](v59, -1, -1);
              MEMORY[0x24C1FE850](v58, -1, -1);
            }

            else
            {

              v63 = *(v57 + 8);
              v63(v16, v41);
            }

            v76 = MEMORY[0x277D85000];
            v77 = v85;
            (*((*MEMORY[0x277D85000] & *v2) + 0x18A0))(v86);
            if ((*(v57 + 48))(v77, 1, v41) == 1)
            {
              outlined destroy of CharacterSet?(v77, &_s10Foundation9IndexPathVSgMd);
            }

            else
            {
              v78 = v80;
              (*(v57 + 32))(v80, v77, v41);
              if ((*((*v76 & *v2) + 0xD88))(v78, 0))
              {
                (*((*v76 & *v2) + 0x18E0))();
                v41 = v84;
                swift_unknownObjectRelease();
              }

              v63(v80, v41);
            }
          }

          else
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v65 = type metadata accessor for Logger();
            __swift_project_value_buffer(v65, static Logger.UI);
            v81(v8, v86, v41);
            v66 = Logger.logObject.getter();
            v67 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v87[0] = v69;
              *v68 = 136315394;
              *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BE0C30, v87);
              *(v68 + 12) = 2080;
              _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
              v70 = dispatch thunk of CustomStringConvertible.description.getter();
              v71 = v41;
              v72 = v70;
              v74 = v73;
              (*(v83 + 8))(v8, v71);
              v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v87);

              *(v68 + 14) = v75;
              _os_log_impl(&dword_2493AC000, v66, v67, "%s %s performPrimaryAction will handle opening", v68, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1FE850](v69, -1, -1);
              MEMORY[0x24C1FE850](v68, -1, -1);
            }

            else
            {

              (*(v83 + 8))(v8, v41);
            }
          }
        }
      }
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.UI);
      v86 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v86, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v87[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BE0C30, v87);
        _os_log_impl(&dword_2493AC000, v86, v37, "%s called while isUserInteractionEnabled=false. Ignoring", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x24C1FE850](v39, -1, -1);
        MEMORY[0x24C1FE850](v38, -1, -1);
      }

      else
      {
        v52 = v86;
      }
    }
  }
}

void specialized DOCItemCollectionViewController.collectionView(_:didDeselectItemAt:)()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1898))() & 1) == 0)
  {
    v3 = MEMORY[0x24C1FDA70]();
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v4 = [v0 viewIfLoaded];
    v5 = [v4 window];

    if (v5)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()();
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }

    objc_autoreleasePoolPop(v3);
    if ((*((*v2 & *v1) + 0xBD8))() == 3 && *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) == 1)
    {
      type metadata accessor for DOCConcreteSelectionLocation();
      v6 = (*((*v2 & *v1) + 0x1338))();
      v7 = DOCConcreteSelectionLocation.__allocating_init(selectedNodes:)(v6);
      if (v7)
      {
        v11 = v7;
        if (([v1 isEditing] & 1) != 0 || (v8 = (*((*v2 & *v1) + 0xE8))()) == 0)
        {
        }

        else
        {
          v9 = v8;
          (*((*v2 & *v1) + 0xA50))(v12);
          v10 = v12[3];
          outlined destroy of DOCItemCollectionConfiguration(v12);
          [v9 didSelectLocation:v11 atParentLocation:v10];

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void *specialized DOCItemCollectionViewController.collectionView(_:canPerformAction:forItemAt:withSender:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x18A0))(a1, v10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    result = (*((*v13 & *v1) + 0xD88))(v12, 0);
    if (result)
    {
      v15 = [result isPending];
      swift_unknownObjectRelease();
      (*(v8 + 8))(v12, v7);
      return (v15 ^ 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized DOCItemCollectionViewController.collectionView(_:didUpdateFocusIn:with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v21 - v10;
  v12 = [a1 nextFocusedView];
  if (v12 && (v13 = v12, type metadata accessor for DOCItemCollectionCell(), v14 = swift_dynamicCastClass(), v13, v14))
  {
    v15 = [a1 nextFocusedIndexPath];
    if (v15)
    {
      v16 = v15;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = type metadata accessor for IndexPath();
      (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
    }

    else
    {
      v19 = type metadata accessor for IndexPath();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    }

    outlined init with take of (key: URL, value: FPItem)(v6, v11, &_s10Foundation9IndexPathVSgMd);
  }

  else
  {
    v18 = type metadata accessor for IndexPath();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  }

  return (*((*MEMORY[0x277D85000] & *v1) + 0xC88))(v11);
}

void specialized DOCItemCollectionViewController.collectionView(_:didEndDisplaying:forItemAt:)(void *a1)
{
  v2 = v1;
  type metadata accessor for DOCItemCollectionCell();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D85000];
    v7 = *((*MEMORY[0x277D85000] & *v4) + 0x208);
    v17 = a1;
    v8 = v7();
    if (v8)
    {
      v9 = v8;
      v10 = (*((*v6 & *v8) + 0x3D0))();

      if (v10)
      {
        (*((*v6 & *v5) + 0x220))();
        v11 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
        v12 = [v11 sceneIdentifier];
        v13 = specialized static DOCInteractionManager.sharedManager(for:)(v12);

        v14 = (*((*v6 & *v13) + 0x78))();
        if (v14)
        {
          swift_getObjectType();
          if (DOCNode.isEqualTo(node:)())
          {
            v15 = [v11 sceneIdentifier];
            v16 = specialized static DOCInteractionManager.sharedManager(for:)(v15);

            (*((*v6 & *v16) + 0x80))(0);
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void specialized DOCItemCollectionViewController.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xEF8))())
  {
    type metadata accessor for DOCItemCollectionViewSectionHeader();
    v4 = swift_dynamicCastClass();
    if (!v4)
    {
LABEL_12:
      type metadata accessor for DOCOutlineHeaderView();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22 = v21;
        v23 = a1;
        DOCItemCollectionViewController.updateLayout(for:at:)(v22);
      }

      return;
    }

    v5 = v4;
    v6 = a1;
    if (MEMORY[0x24C1F8130]() == 2)
    {
      v7 = IndexPath.section.getter();
    }

    else
    {
      type metadata accessor for IndexPath();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v25[5] == v25[0])
      {
        goto LABEL_17;
      }

      v8 = dispatch thunk of Collection.subscript.read();
      v7 = *v9;
      v8(v25, 0);
    }

    v10 = (*((*v3 & *v1) + 0xD60))();
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *(v10 + 16))
    {
      v24 = v6;
      v11 = (v10 + 40 * v7);
      v12 = v11[4];
      v13 = v11[5];
      v15 = v11[6];
      v14 = v11[7];
      v16 = v11[8];

      v25[0] = v12;
      v25[1] = v13;
      v25[2] = v15;
      v25[3] = v14;
      v25[4] = v16;
      v17 = *((*MEMORY[0x277D85000] & *v5) + 0x418);

      v18 = v17(v25);
      v19 = MEMORY[0x277D85000];
      if (!(*((*MEMORY[0x277D85000] & *v1) + 0xBD8))(v18))
      {
        v20 = (*(*v16 + 136))();
        (*((*v19 & *v5) + 0x458))(v20 & 1);
      }

      DOCItemCollectionViewController.updateLayout(for:at:)(v5);

      goto LABEL_12;
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void specialized DOCItemCollectionViewController.collectionView(_:willDisplayContextMenu:animator:)(void *a1, void *a2)
{
  v4 = [a1 contextMenuInteraction];
  v5 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x8E0))(v4);
  type metadata accessor for DOCNodeContextMenuConfiguration();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = *((*v5 & *v2) + 0x8F8);
  v22 = a2;
  v8(v7);
  if (![v2 isEditing] || (*((*v5 & *v2) + 0xBD8))())
  {

    return;
  }

  v9 = (*((*v5 & *v7) + 0x60))();
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v22;
    if (!v11)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  v11 = __CocoaSet.count.getter();
  v12 = v22;
  if (v11)
  {
LABEL_10:
    if (v11 < 1)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    v14 = *((*v5 & *v2) + 0x18D0);
    v23 = v10 & 0xC000000000000001;
    v21 = v10;
    while (1)
    {
      if (v23)
      {
        v17 = MEMORY[0x24C1FC540](v13, v10);
      }

      else
      {
        v17 = *(v10 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      v18 = v14(v17);
      if (v18)
      {
        v19 = v18;
        swift_getObjectType();
        type metadata accessor for DOCItemCollectionGridCell();
        v20 = dynamic_cast_existential_1_superclass_conditional(v19);
        if (!v20)
        {
          swift_unknownObjectRelease();

          goto LABEL_14;
        }

        v15 = *((*MEMORY[0x277D85000] & *v20) + 0x570);
        v16 = v19;
        v15(1);
        v10 = v21;
      }

      swift_unknownObjectRelease();
LABEL_14:
      if (v11 == ++v13)
      {
        v12 = v22;
        break;
      }
    }
  }

LABEL_22:
}

void specialized DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:)(void *a1, void *a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x908))();
  v8 = v7;
  (*((*v5 & *v2) + 0x910))(0, 0);
  (*((*v5 & *v2) + 0x8E0))(0);
  (*((*v5 & *v2) + 0x8F8))(0);
  type metadata accessor for DOCNodeContextMenuConfiguration();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
LABEL_6:

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
    return;
  }

  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v10;
  if (a2)
  {
    v12 = swift_allocObject();
    v12[2] = partial apply for closure #1 in DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:);
    v12[3] = v11;
    v12[4] = v6;
    v12[5] = v8;
    aBlock[4] = partial apply for closure #2 in DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:);
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_1042;
    v13 = _Block_copy(aBlock);
    v14 = a1;
    v15 = v2;
    swift_unknownObjectRetain();

    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);

    [a2 addCompletion_];

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
    _Block_release(v13);
    swift_unknownObjectRelease();
    return;
  }

  v17 = a1;
  closure #1 in DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:)(v2, v10);
  if (v6)
  {

    v6(v16);

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
    goto LABEL_6;
  }
}

void partial apply for closure #1 in DOCItemCollectionViewController.collectionView(_:willPerformPreviewActionForMenuWith:animator:)()
{
  type metadata accessor for IndexPath();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  closure #1 in DOCItemCollectionViewController.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(v1, v2);
}

void specialized DOCItemCollectionViewController.contextMenuInteraction(_:willEndFor:animator:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x908))();
  v7 = v6;
  (*((*v4 & *v1) + 0x910))(0, 0);
  (*((*v4 & *v1) + 0x8E0))(0);
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    v14[4] = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuInteraction(_:willEndFor:animator:);
    v14[5] = v8;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v14[3] = &block_descriptor_1018;
    v9 = _Block_copy(v14);
    swift_unknownObjectRetain();
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);

    [a1 addCompletion_];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else if (v5)
  {

    v5(v10);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
  }

  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview;
  v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview);
  if (v12)
  {
    [v12 removeFromSuperview];
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
    v13 = *(v2 + v11);
    *(v2 + v11) = 0;
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
  }
}

void specialized DOCItemCollectionViewController.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(void *a1)
{
  if (![*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration] browserViewContext])
  {
    v3 = [v1 viewIfLoaded];
    [a1 locationInView_];
    v5 = v4;
    v7 = v6;

    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview;
    v9 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview];
    if (v9)
    {
      [v9 setFrame_];
    }

    else
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
      v11 = *&v1[v8];
      *&v1[v8] = v10;
      v12 = v10;

      if (v12)
      {
        v13 = [objc_opt_self() clearColor];
        [v12 setBackgroundColor_];
      }
    }

    v14 = [v1 view];
    if (v14)
    {
      if (*&v1[v8])
      {
        v15 = v14;
        [v14 addSubview_];

        v16 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
        v17 = [objc_opt_self() clearColor];
        [v16 setBackgroundColor_];

        v18 = *&v1[v8];
        if (v18)
        {
          v19 = objc_allocWithZone(MEMORY[0x277D75B90]);
          v20 = v18;
          [v19 initWithView:v20 parameters:v16];

          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

void specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v42 = a2;
    v13 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v13 = 136315138;
    v14 = [a1 displayName];
    v43 = a5;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = a3;
    v17 = a4;
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v19, &v45);
    a4 = v17;
    a3 = v16;

    *(v13 + 4) = v20;
    a5 = v43;
    _os_log_impl(&dword_2493AC000, v11, v12, "Getting current collection for item %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x24C1FE850](v41, -1, -1);
    v21 = v13;
    a2 = v42;
    MEMORY[0x24C1FE850](v21, -1, -1);
  }

  v22 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))();
  swift_getObjectType();
  v23 = specialized Array<A>.contains(node:)(a1, v22);

  if (v23)
  {
    v24 = a1;
    v25 = a2;
  }

  else
  {
    swift_unknownObjectRetain();
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v29 = 138412546;
      *(v29 + 4) = v26;
      *v30 = a2;
      *(v29 + 12) = 2080;
      v31 = v26;
      v32 = [a1 displayName];
      v33 = a5;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = a3;
      v36 = a4;
      v38 = v37;

      v39 = v34;
      a5 = v33;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v45);
      a4 = v36;
      a3 = v35;

      *(v29 + 14) = v40;
      _os_log_impl(&dword_2493AC000, v27, v28, "The current collection %@ doesn't contain item %s", v29, 0x16u);
      outlined destroy of CharacterSet?(v30, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x24C1FE850](v44, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    v24 = 0;
    v25 = 0;
  }

  closure #1 in DOCItemCollectionViewController.getTransitionController(forURL:completionBlock:)(v24, v25, a3, a4, a5);
}

{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.UI);
  swift_unknownObjectRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v12 = 136315138;
    v13 = [a1 displayName];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = a2;
    v16 = a5;
    v17 = a3;
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v19, &v42);
    a3 = v17;
    a5 = v16;
    a2 = v15;

    *(v12 + 4) = v20;
    _os_log_impl(&dword_2493AC000, v10, v11, "Getting current collection for item %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x24C1FE850](v39, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }

  v21 = MEMORY[0x277D85000];
  v22 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))();
  swift_getObjectType();
  v23 = specialized Array<A>.contains(node:)(a1, v22);

  if (v23)
  {
    v24 = *((*v21 & *a2) + 0x18D0);
    v25 = a2;
    v41 = v24(a5);
    a3();
  }

  else
  {
    swift_unknownObjectRetain();
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v27, v28))
    {
      v40 = a3;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v31;
      *v29 = 138412546;
      *(v29 + 4) = v26;
      *v30 = a2;
      *(v29 + 12) = 2080;
      v32 = v26;
      v33 = [a1 displayName];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v42);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_2493AC000, v27, v28, "The current collection %@ doesn't contain item %s", v29, 0x16u);
      outlined destroy of CharacterSet?(v30, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C1FE850](v31, -1, -1);
      v38 = v29;
      a3 = v40;
      MEMORY[0x24C1FE850](v38, -1, -1);
    }

    (a3)(0);
  }
}

void specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(void *a1, void *a2, void (*a3)(void))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v38 = a3;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136315138;
    v11 = [a1 displayName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v41);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_2493AC000, v7, v8, "Getting current collection for item %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1FE850](v10, -1, -1);
    v16 = v9;
    a3 = v38;
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  v17 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))();
  swift_getObjectType();
  v18 = specialized Array<A>.contains(node:)(a1, v17);

  if (v18)
  {
    v19 = type metadata accessor for DOCServiceItemPopoverTrackerController();
    v20 = objc_allocWithZone(v19);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v21 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
    *&v20[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_configuration] = v21;
    *&v20[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_node] = a1;
    v40.receiver = v20;
    v40.super_class = v19;
    swift_unknownObjectRetain_n();
    v22 = a2;
    v23 = v21;
    v24 = objc_msgSendSuper2(&v40, sel_init);
    a3();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    v25 = a2;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = a3;
      v30 = swift_slowAlloc();
      v41 = v30;
      *v28 = 138412546;
      *(v28 + 4) = v25;
      *v29 = a2;
      *(v28 + 12) = 2080;
      v31 = v25;
      v32 = [a1 displayName];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v41);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_2493AC000, v26, v27, "The current collection %@ doesn't contain item %s", v28, 0x16u);
      outlined destroy of CharacterSet?(v29, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v30);
      v37 = v30;
      a3 = v39;
      MEMORY[0x24C1FE850](v37, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    (a3)(0);
  }
}

void specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(void *a1, void *a2, void *a3, uint64_t a4, char a5, void *aBlock)
{
  v6 = aBlock;
  _Block_copy(aBlock);
  _Block_copy(v6);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v53 = a5;
    v14 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    *v14 = 136315138;
    v15 = [a1 displayName];
    v16 = a1;
    v17 = v6;
    v18 = a2;
    v19 = a4;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = v20;
    a4 = v19;
    a2 = v18;
    v6 = v17;
    a1 = v16;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v55);

    *(v14 + 4) = v24;
    _os_log_impl(&dword_2493AC000, v12, v13, "Getting current collection for item %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x24C1FE850](v52, -1, -1);
    v25 = v14;
    a5 = v53;
    MEMORY[0x24C1FE850](v25, -1, -1);
  }

  v26 = MEMORY[0x277D85000];
  v27 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))();
  swift_getObjectType();
  v28 = specialized Array<A>.contains(node:)(a1, v27);

  if (v28)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = v6;
    _Block_copy(v6);
    _Block_copy(v6);
    v30 = a2;
    v31 = [a3 traitCollection];
    v32 = [v31 preferredContentSizeCategory];

    LOBYTE(v31) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v33 = (v31 & 1) != 0 && (*((*v26 & *a3) + 0xBD8))();
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIView?, @unowned UIBezierPath?) -> ();
    *(v50 + 24) = v29;
    v51 = *((*v26 & *v30) + 0x17F8);

    v51(a4, v33, a5 & 1, 0, partial apply for closure #1 in closure #2 in DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:), v50);
  }

  else
  {
    swift_unknownObjectRetain();
    v34 = a2;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v55 = v39;
      *v37 = 138412546;
      *(v37 + 4) = v34;
      *v38 = a2;
      *(v37 + 12) = 2080;
      v40 = v34;
      v41 = [a1 displayName];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v55);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_2493AC000, v35, v36, "The current collection %@ doesn't contain item %s", v37, 0x16u);
      outlined destroy of CharacterSet?(v38, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x24C1FE850](v39, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    _Block_copy(v6);
    _Block_copy(v6);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55 = v49;
      *v48 = 136315138;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BE0900, &v55);
      _os_log_impl(&dword_2493AC000, v46, v47, "[Presentation Error] %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v48, -1, -1);
    }

    (*(v6 + 2))(v6, 0, 0);
    _Block_release(v6);
  }

  _Block_release(v6);
  _Block_release(v6);

  _Block_release(v6);
}

uint64_t specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(uint64_t a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4, void *a5, uint64_t a6, char a7)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.UI);
  swift_unknownObjectRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v55 = a1;
    v15 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v57 = v53;
    *v15 = 136315138;
    v16 = [v55 displayName];
    v17 = a7;
    v18 = a6;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = a4;
    v22 = v21;

    v23 = v19;
    a6 = v18;
    a7 = v17;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v57);
    a4 = v20;

    *(v15 + 4) = v24;
    _os_log_impl(&dword_2493AC000, v13, v14, "Getting current collection for item %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x24C1FE850](v53, -1, -1);
    v25 = v15;
    a1 = v55;
    MEMORY[0x24C1FE850](v25, -1, -1);
  }

  v26 = MEMORY[0x277D85000];
  v27 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))();
  swift_getObjectType();
  v28 = specialized Array<A>.contains(node:)(a1, v27);

  if (v28)
  {
    v29 = a2;
    v30 = [a5 traitCollection];
    v31 = [v30 preferredContentSizeCategory];

    LOBYTE(v30) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v32 = (v30 & 1) != 0 && (*((*v26 & *a5) + 0xBD8))();
    v51 = swift_allocObject();
    *(v51 + 16) = a3;
    *(v51 + 24) = a4;
    v52 = *((*v26 & *v29) + 0x17F8);

    v52(a6, v32, a7 & 1, 0, closure #1 in closure #2 in DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:)partial apply, v51);
  }

  else
  {
    swift_unknownObjectRetain();
    v33 = a1;
    v34 = a2;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v57 = v39;
      *v37 = 138412546;
      *(v37 + 4) = v34;
      *v38 = a2;
      *(v37 + 12) = 2080;
      v40 = v34;
      v41 = [v33 displayName];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v57);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_2493AC000, v35, v36, "The current collection %@ doesn't contain item %s", v37, 0x16u);
      outlined destroy of CharacterSet?(v38, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x24C1FE850](v39, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v57 = v49;
      *v48 = 136315138;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BE0900, &v57);
      _os_log_impl(&dword_2493AC000, v46, v47, "[Presentation Error] %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v48, -1, -1);
    }

    return a3(0, 0);
  }
}

void specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v108 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v101 = &v98[-v11];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v100 = &v98[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v105 = v19;
  v106 = &v98[-v18];
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v98[-v22];
  v24 = swift_allocObject();
  v103 = a3;
  v104 = a4;
  *(v24 + 2) = a3;
  *(v24 + 3) = a4;
  v110 = v24;
  *(v24 + 4) = a5;
  v25 = one-time initialization token for UI;

  v102 = a5;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, static Logger.UI);
  v28 = *(v13 + 16);
  v112 = v13 + 16;
  v113 = a1;
  v111 = v28;
  v28(v23, a1, v12);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = os_log_type_enabled(v29, v30);
  v109 = v13;
  v107 = v12;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = v27;
    v34 = v12;
    v35 = swift_slowAlloc();
    v114 = v35;
    *v32 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = v34;
    v27 = v33;
    v40 = *(v13 + 8);
    v40(v23, v39);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v114);

    *(v32 + 4) = v41;
    _os_log_impl(&dword_2493AC000, v29, v30, "Getting current collection for url %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v32, -1, -1);
  }

  else
  {

    v40 = *(v13 + 8);
    v42 = (v40)(v23, v12);
  }

  v43 = v108;
  v44 = MEMORY[0x277D85000];
  v45 = *((*MEMORY[0x277D85000] & *v108) + 0xA80);
  v46 = (v45)(v42);
  v47 = v113;
  if (*(v46 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v113), (v49 & 1) != 0))
  {
    v106 = v40;
    v50 = v27;
    v51 = *(*(v46 + 56) + 8 * v48);
    swift_unknownObjectRetain();

    v52 = v100;
    v53 = v107;
    v111(v100, v47, v107);
    swift_unknownObjectRetain();
    v105 = v50;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v114 = v57;
      *v56 = 136315394;
      v58 = v52;
      v59 = [v51 displayName];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v55;
      v61 = v60;
      v63 = v62;

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v114);

      *(v56 + 4) = v64;
      *(v56 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v68 = v109;
      v69 = v58;
      v44 = MEMORY[0x277D85000];
      (v106)(v69, v53);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v114);

      *(v56 + 14) = v70;
      _os_log_impl(&dword_2493AC000, v54, v99, "Getting item from the cache item %s url %s", v56, 0x16u);
      swift_arrayDestroy();
      v71 = v57;
      v47 = v113;
      MEMORY[0x24C1FE850](v71, -1, -1);
      MEMORY[0x24C1FE850](v56, -1, -1);
    }

    else
    {

      v68 = v109;
      (v106)(v52, v53);
    }

    v92 = v101;
    v111(v101, v47, v53);
    (*(v68 + 56))(v92, 0, 1, v53);
    v93 = (*((*v44 & *v43) + 0xDA0))(v51, v92);
    outlined destroy of CharacterSet?(v92, &_s10Foundation3URLVSgMd);
    if (v93)
    {
      v94 = swift_unknownObjectRetain();
      closure #1 in DOCItemCollectionViewController.getTransitionController(forURL:completionBlock:)(v94, v43, v103, v104, v102);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
    }

    else
    {
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_2493AC000, v95, v96, "Item is not part of the current collection", v97, 2u);
        MEMORY[0x24C1FE850](v97, -1, -1);
      }

      closure #1 in DOCItemCollectionViewController.getTransitionController(forURL:completionBlock:)(0, 0, v103, v104, v102);

      swift_unknownObjectRelease();
    }
  }

  else
  {

    v72 = v43;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v114 = v76;
      *v75 = 136315138;
      v45();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v77 = v107;
      v78 = Dictionary.description.getter();
      v80 = v79;

      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v114);

      *(v75 + 4) = v81;
      _os_log_impl(&dword_2493AC000, v73, v74, "Failed to get the item from the cache: %s trying to get the item from the URL", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x24C1FE850](v76, -1, -1);
      MEMORY[0x24C1FE850](v75, -1, -1);
    }

    else
    {

      v77 = v107;
    }

    v82 = [objc_opt_self() defaultManager];
    v83 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v84 = v106;
    v85 = v113;
    v111(v106, v113, v77);
    v86 = v109;
    v87 = (*(v109 + 80) + 16) & ~*(v109 + 80);
    v88 = (v105 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    (*(v86 + 32))(v89 + v87, v84, v77);
    v90 = (v89 + v88);
    v91 = v110;
    *v90 = partial apply for closure #1 in DOCItemCollectionViewController.getTransitionController(forURL:completionBlock:);
    v90[1] = v91;
    *(v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8)) = v83;

    specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v85, closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)partial apply, v89);
  }
}

void specialized DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:)(void *a1, int a2, void *a3, void *a4)
{
  v57 = a3;
  v52 = a2;
  v54 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5, v6);
  v56 = &v51[-v7];
  v53 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v9);
  v11 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v51[-v19];
  v21 = swift_allocBox();
  v23 = v22;
  v24 = type metadata accessor for URL();
  v25 = *(*(v24 - 8) + 56);
  v55 = v23;
  v25(v23, 1, 1, v24);
  v59 = a4;
  _Block_copy(a4);
  v26 = dispatch_semaphore_create(0);
  v27 = swift_allocObject();
  *(v27 + 16) = v21;
  *(v27 + 24) = v26;
  aBlock[4] = closure #1 in DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:)partial apply;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_834;
  v28 = _Block_copy(aBlock);
  v58 = v21;

  v29 = v26;

  v30 = v54;
  [v54 fetchURL_];
  _Block_release(v28);
  static DispatchTime.now()();
  *v11 = 100;
  v31 = v53;
  (*(v8 + 104))(v11, *MEMORY[0x277D85178], v53);
  MEMORY[0x24C1FAA90](v16, v11);
  (*(v8 + 8))(v11, v31);
  v32 = *(v13 + 8);
  v32(v16, v12);
  v33 = v29;
  MEMORY[0x24C1FBB60](v20);
  v32(v20, v12);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.UI);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDF020, aBlock);
      _os_log_impl(&dword_2493AC000, v35, v36, "[Presentation Error] %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C1FE850](v38, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }
  }

  v39 = v55;
  swift_beginAccess();
  v40 = v56;
  outlined init with copy of DOCGridLayout.Spec?(v39, v56, &_s10Foundation3URLVSgMd);
  v41 = v57;
  v42 = (*((*MEMORY[0x277D85000] & *v57) + 0xDA0))(v30, v40);
  outlined destroy of CharacterSet?(v40, &_s10Foundation3URLVSgMd);
  if (v42)
  {
    v43 = v59;
    _Block_copy(v59);
    v44 = v41;
    v45 = swift_unknownObjectRetain();
    specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v45, v44, v44, v42, v52 & 1, v43);
    _Block_release(v43);

    swift_unknownObjectRelease_n();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.UI);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v60 = v50;
      *v49 = 136315138;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BDEFE0, &v60);
      _os_log_impl(&dword_2493AC000, v47, v48, "[Presentation Error] %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x24C1FE850](v50, -1, -1);
      MEMORY[0x24C1FE850](v49, -1, -1);
    }

    v43 = v59;
    (*(v59 + 2))(v59, 0, 0);
  }

  _Block_release(v43);
}

uint64_t specialized DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)(void *a1, uint64_t a2, void *a3, void (*a4)(void, void, void), uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v107 = a2;
  v106 = type metadata accessor for IndexPath();
  v108 = *(v106 - 8);
  v15 = *(v108 + 64);
  MEMORY[0x28223BE20](v106, v16);
  v104 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v103 = &v96 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v98 = &v96 - v22;
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85000];
  v25 = *MEMORY[0x277D85000] & *a3;
  v23[2] = a4;
  v23[3] = a5;
  v99 = a5;
  v23[4] = a6;
  v23[5] = a7;
  v105 = v23;
  v23[6] = a8;
  v26 = *(v25 + 6352);
  v102 = a4;
  swift_unknownObjectRetain();
  v100 = a6;

  v27 = a7;
  v101 = a8;

  v28 = v26(a1);
  v29 = a1;
  if (v28)
  {
    v30 = v28;
    if ((*((*v24 & *a3) + 0xF70))(a1))
    {
      v31 = (*((*v24 & *a3) + 0x1010))();
      [v30 frame];
      v32 = [v31 _isRectFullyVisible_];

      if (v32)
      {
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        v34 = __swift_project_value_buffer(v33, static Logger.Rename);
        v35 = v108;
        v36 = v98;
        v37 = v106;
        (*(v108 + 16))(v98, v107, v106);
        swift_unknownObjectRetain();
        v107 = v34;
        v38 = Logger.logObject.getter();
        LODWORD(v34) = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        LODWORD(v104) = v34;
        if (os_log_type_enabled(v38, v34))
        {
          v39 = swift_slowAlloc();
          v103 = v27;
          v40 = v39;
          v97 = swift_slowAlloc();
          v109 = v97;
          *v40 = 136315650;
          *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0F80, &v109);
          *(v40 + 12) = 2080;
          v41 = [v29 description];
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v36;
          v45 = v44;

          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, &v109);

          *(v40 + 14) = v46;
          *(v40 + 22) = 2080;
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v48;
          (*(v35 + 8))(v43, v37);
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v109);

          *(v40 + 24) = v50;
          _os_log_impl(&dword_2493AC000, v38, v104, "%s: Immediately found cell for node: %s indexPath: %s", v40, 0x20u);
          v51 = v97;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v51, -1, -1);
          v52 = v40;
          v27 = v103;
          MEMORY[0x24C1FE850](v52, -1, -1);
        }

        else
        {

          (*(v35 + 8))(v36, v37);
        }

        v82 = v99;
        v83 = v30;
        v84 = v100;

        v85 = v83;
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v109 = v89;
          *v88 = 136315394;
          *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v109);
          *(v88 + 12) = 2080;
          *(v88 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, &v109);
          _os_log_impl(&dword_2493AC000, v86, v87, "%s > %s: Beginning rename steps starting with validateNodeSelectionAndPerformDidPickIfNeeded", v88, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v89, -1, -1);
          MEMORY[0x24C1FE850](v88, -1, -1);
        }

        v90 = swift_allocObject();
        v90[2] = v82;
        v90[3] = v84;
        v92 = v101;
        v91 = v102;
        v90[4] = v27;
        v90[5] = v91;
        v90[6] = v92;
        v90[7] = v85;
        v93 = *((*MEMORY[0x277D85000] & *v27) + 0x18E0);
        swift_unknownObjectRetain();

        v94 = v27;

        v95 = v85;
        v93(v91, 0, partial apply for closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:), v90);
      }
    }
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.Rename);
  v54 = v108;
  v55 = v103;
  v56 = v106;
  v102 = *(v108 + 16);
  v102(v103, v107, v106);
  swift_unknownObjectRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v109 = v101;
    *v59 = 136315650;
    *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0F80, &v109);
    *(v59 + 12) = 2080;
    v60 = [v29 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v29;
    v62 = v61;
    v64 = v63;

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v109);
    v56 = v106;

    *(v59 + 14) = v65;
    *(v59 + 22) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v67;
    v69 = v55;
    v70 = v100;
    (*(v108 + 8))(v69, v56);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v109);

    *(v59 + 24) = v71;
    _os_log_impl(&dword_2493AC000, v57, v58, "%s: Did not immediately find cell for node: %s indexPath: %s. Scrolling index path on screen", v59, 0x20u);
    v72 = v101;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v72, -1, -1);
    v73 = v59;
    v54 = v108;
    MEMORY[0x24C1FE850](v73, -1, -1);
  }

  else
  {

    (*(v54 + 8))(v55, v56);
    v70 = v29;
  }

  v74 = v104;
  v75 = v107;
  v102(v104, v107, v56);
  v76 = (*(v54 + 80) + 48) & ~*(v54 + 80);
  v77 = swift_allocObject();
  *(v77 + 2) = a3;
  *(v77 + 3) = v70;
  v78 = v105;
  *(v77 + 4) = partial apply for closure #1 in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:);
  *(v77 + 5) = v78;
  (*(v54 + 32))(&v77[v76], v74, v56);
  v79 = *((*MEMORY[0x277D85000] & *a3) + 0x18D8);
  swift_unknownObjectRetain();
  v80 = a3;

  v79(v75, partial apply for closure #1 in DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:), v77);
}

void specialized DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)(void *a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t, uint64_t), unint64_t a5, void *a6, void *a7)
{
  v89 = a2;
  v13 = type metadata accessor for IndexPath();
  v88 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v86 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v81 - v18;
  v87 = v20;
  MEMORY[0x28223BE20](v21, v22);
  v82 = &v81 - v23;
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85000];
  v26 = *MEMORY[0x277D85000] & *a3;
  v84 = a4;
  v85 = a5;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v27 = *(v26 + 6352);
  v28 = a7;
  v29 = v25;

  v83 = a6;
  swift_unknownObjectRetain();
  v30 = v27(a1);
  v31 = a1;
  if (v30)
  {
    v32 = v30;
    if ((*((*v29 & *a3) + 0xF70))(v31))
    {
      v33 = (*((*v29 & *a3) + 0x1010))();
      [v32 frame];
      v34 = [v33 _isRectFullyVisible_];

      if (v34)
      {
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static Logger.Rename);
        v36 = v88;
        v37 = v82;
        (*(v88 + 16))(v82, v89, v13);
        swift_unknownObjectRetain();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v87 = v13;
          v89 = v41;
          v90 = v41;
          *v40 = 136315650;
          *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0F80, &v90);
          *(v40 + 12) = 2080;
          v42 = [v31 description];
          LODWORD(v86) = v39;
          v43 = v42;
          v44 = v37;
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v90);

          *(v40 + 14) = v48;
          *(v40 + 22) = 2080;
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
          v49 = v87;
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v52 = v51;
          (*(v36 + 8))(v44, v49);
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v90);

          *(v40 + 24) = v53;
          _os_log_impl(&dword_2493AC000, v38, v86, "%s: Immediately found cell for node: %s indexPath: %s", v40, 0x20u);
          v54 = v89;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v54, -1, -1);
          MEMORY[0x24C1FE850](v40, -1, -1);
        }

        else
        {

          (*(v36 + 8))(v37, v13);
        }

        swift_getObjectType();
        v80 = v32;
        specialized startRenaming #1 (node:itemCell:) in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:)(v28, v80, v84, v85, v83);

        return;
      }
    }
  }

  v85 = v24;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Logger.Rename);
  v56 = v88;
  v84 = *(v88 + 16);
  v84(v19, v89, v13);
  swift_unknownObjectRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v90 = v83;
    *v59 = 136315650;
    *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0F80, &v90);
    *(v59 + 12) = 2080;
    v60 = [v31 description];
    LODWORD(v82) = v58;
    v61 = v60;
    v62 = v31;
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v90);

    *(v59 + 14) = v66;
    *(v59 + 22) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    v70 = v88;
    (*(v88 + 8))(v19, v13);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v90);

    *(v59 + 24) = v71;
    _os_log_impl(&dword_2493AC000, v57, v82, "%s: Did not immediately find cell for node: %s indexPath: %s. Scrolling index path on screen", v59, 0x20u);
    v72 = v83;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v72, -1, -1);
    MEMORY[0x24C1FE850](v59, -1, -1);
  }

  else
  {

    (*(v56 + 8))(v19, v13);
    v70 = v56;
    v62 = v31;
  }

  v73 = v86;
  v74 = v89;
  v84(v86, v89, v13);
  v75 = (*(v70 + 80) + 48) & ~*(v70 + 80);
  v76 = swift_allocObject();
  *(v76 + 2) = a3;
  *(v76 + 3) = v62;
  v77 = v85;
  *(v76 + 4) = partial apply for closure #1 in otherViewModesRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:);
  *(v76 + 5) = v77;
  (*(v70 + 32))(&v76[v75], v73, v13);
  v78 = *((*MEMORY[0x277D85000] & *a3) + 0x18D8);
  swift_unknownObjectRetain();
  v79 = a3;

  v78(v74, closure #1 in DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)partial apply, v76);
}

uint64_t specialized DOCItemCollectionViewController.move(nodes:to:completion:)(unint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6, void *a7, void *a8)
{
  v75 = a3;
  v84 = a1;
  v82 = type metadata accessor for DOCOperationItem();
  v14 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v15);
  v17 = (&v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18, v19);
  v73 = &v72 - v20;
  v21 = swift_allocObject();
  v79 = a4;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v81 = v21;
  v21[6] = a8;
  v22 = *MEMORY[0x277CC6028];
  v80 = a5;

  v78 = a6;
  v77 = a7;
  v76 = a8;
  v74 = a2;
  if (![a2 canPerform_])
  {
    goto LABEL_37;
  }

  v23 = v84;
  v72 = v84 >> 62;
  if (!(v84 >> 62))
  {
    v83 = v84 & 0xFFFFFFFFFFFFFF8;
    v24 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      v25 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

LABEL_37:
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.Rename);
    v58 = v80;

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();

    v61 = os_log_type_enabled(v59, v60);
    v62 = v79;
    if (v61)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v85 = v64;
      *v63 = 136315650;
      *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v58, &v85);
      *(v63 + 12) = 2080;
      *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x8000000249BE0FC0, &v85);
      *(v63 + 22) = 1024;
      *(v63 + 24) = 0;
      _os_log_impl(&dword_2493AC000, v59, v60, "%s > %s: move success finished with success: %{BOOL}d. Starting rename", v63, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v64, -1, -1);
      MEMORY[0x24C1FE850](v63, -1, -1);
    }

    v65 = swift_allocObject();
    v65[2] = v62;
    v65[3] = v58;
    v67 = v77;
    v66 = v78;
    v65[4] = v78;
    v65[5] = v67;
    v68 = v76;
    v65[6] = v76;

    v69 = v66;
    v70 = v67;
    v71 = v68;
    DOCRunInMainThread(_:)();
  }

LABEL_35:
  v83 = v23 & 0xFFFFFFFFFFFFFF8;
  v56 = __CocoaSet.count.getter();
  if (v56 < 1)
  {
    goto LABEL_37;
  }

  v24 = v56;
  v25 = __CocoaSet.count.getter();
LABEL_5:
  v26 = 0;
  v27 = v84 & 0xC000000000000001;
  v28 = (v84 + 32);
  v29 = *MEMORY[0x277CC6048];
  while (v25 != v26)
  {
    if (v27)
    {
      v30 = MEMORY[0x24C1FC540](v26, v84);
      if (__OFADD__(v26, 1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = v84;
      if (v26 >= *(v83 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v30 = *(v84 + 8 * v26 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v26, 1))
      {
LABEL_14:
        __break(1u);
        break;
      }
    }

    v31 = [v30 canPerform_];
    swift_unknownObjectRelease();
    ++v26;
    if ((v31 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v85 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
  v32 = v85;
  if (v27)
  {
    v33 = 0;
    v34 = v84;
    do
    {
      *v17 = MEMORY[0x24C1FC540](v33, v34);
      swift_storeEnumTagMultiPayload();
      v85 = v32;
      v36 = *(v32 + 16);
      v35 = *(v32 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
        v32 = v85;
      }

      ++v33;
      *(v32 + 16) = v36 + 1;
      outlined init with take of ScrollPositionInfo.ItemOffset(v17, v32 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v36, type metadata accessor for DOCOperationItem);
    }

    while (v24 != v33);
  }

  else
  {
    v37 = v73;
    do
    {
      *v37 = *v28;
      swift_storeEnumTagMultiPayload();
      v85 = v32;
      v38 = *(v32 + 16);
      v39 = *(v32 + 24);
      swift_unknownObjectRetain();
      if (v38 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v38 + 1, 1);
        v32 = v85;
      }

      *(v32 + 16) = v38 + 1;
      outlined init with take of ScrollPositionInfo.ItemOffset(v37, v32 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v38, type metadata accessor for DOCOperationItem);
      ++v28;
      --v24;
    }

    while (v24);
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.UI);

  v41 = v74;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v85 = v45;
    *v44 = 136315906;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BE0F20, &v85);
    *(v44 + 12) = 2048;
    if (v72)
    {
      *(v44 + 14) = __CocoaSet.count.getter();
      *(v44 + 22) = 2048;
      v46 = __CocoaSet.count.getter();
    }

    else
    {
      v46 = *(v83 + 16);
      *(v44 + 14) = v46;
      *(v44 + 22) = 2048;
    }

    *(v44 + 24) = v46;

    *(v44 + 32) = 2080;
    v47 = [v41 displayName];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v85);

    *(v44 + 34) = v51;
    _os_log_impl(&dword_2493AC000, v42, v43, "%s Requested to move %ld nodes. Moving %ld eligible to newly created folder: %s", v44, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v45, -1, -1);
    MEMORY[0x24C1FE850](v44, -1, -1);
  }

  else
  {
  }

  v52 = [objc_opt_self() defaultManager];
  v53 = swift_allocObject();
  v54 = v81;
  *(v53 + 16) = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in beginRenameSteps #1 (folderNode:itemCell:) in columnViewRenameAndMove #1 () in prepareToRename #1 () in DOCItemCollectionViewController.renameNewlyCreatedFolder(_:moveNodes:);
  *(v53 + 24) = v54;

  FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(0, v32, v41, 1, 1, 0, v75, closure #3 in DOCItemCollectionViewController.move(nodes:to:completion:)partial apply, v53);
}

void specialized DOCItemCollectionViewController.cell(_:didSpringLoadWith:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v26 - v14;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v26 - v19;
  if (([v1 isEditing] & 1) == 0)
  {
    v21 = MEMORY[0x277D85000];
    v22 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))();
    v23 = [v22 indexPathForCell_];

    if (v23)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = *(v8 + 32);
      v24(v20, v15, v7);
      (*((*v21 & *v1) + 0x18A0))(v20);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        (*(v8 + 8))(v20, v7);
        outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
      }

      else
      {
        v24(v11, v6, v7);
        if ((*((*v21 & *v1) + 0xD88))(v11, 0))
        {
          (*((*v21 & *v1) + 0x18E0))();
          swift_unknownObjectRelease();
        }

        v25 = *(v8 + 8);
        v25(v11, v7);
        v25(v20, v7);
      }
    }
  }
}

uint64_t specialized DOCItemCollectionViewController.adaptivePresentationStyle(for:traitCollection:)(void *a1)
{
  v1 = [a1 presentedViewController];
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (v1)
  {
    if (Strong)
    {
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
      v4 = static NSObject.== infix(_:_:)();

      if ((v4 & 1) == 0)
      {
        return -2;
      }

      return -1;
    }

    v3 = v1;
  }

  else if (!Strong)
  {
    return -1;
  }

  return -2;
}

unint64_t lazy protocol witness table accessor for type DOCItemHierarchyEvent and conformance DOCItemHierarchyEvent()
{
  result = lazy protocol witness table cache variable for type DOCItemHierarchyEvent and conformance DOCItemHierarchyEvent;
  if (!lazy protocol witness table cache variable for type DOCItemHierarchyEvent and conformance DOCItemHierarchyEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemHierarchyEvent and conformance DOCItemHierarchyEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionRowColumn and conformance DOCItemCollectionRowColumn()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionRowColumn and conformance DOCItemCollectionRowColumn;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionRowColumn and conformance DOCItemCollectionRowColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionRowColumn and conformance DOCItemCollectionRowColumn);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionViewController.DOCMultiSelectActionStatus and conformance DOCItemCollectionViewController.DOCMultiSelectActionStatus()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionViewController.DOCMultiSelectActionStatus and conformance DOCItemCollectionViewController.DOCMultiSelectActionStatus;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionViewController.DOCMultiSelectActionStatus and conformance DOCItemCollectionViewController.DOCMultiSelectActionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionViewController.DOCMultiSelectActionStatus and conformance DOCItemCollectionViewController.DOCMultiSelectActionStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionViewController.RestorableSettingsCacheKey and conformance DOCItemCollectionViewController.RestorableSettingsCacheKey()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionViewController.RestorableSettingsCacheKey and conformance DOCItemCollectionViewController.RestorableSettingsCacheKey;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionViewController.RestorableSettingsCacheKey and conformance DOCItemCollectionViewController.RestorableSettingsCacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionViewController.RestorableSettingsCacheKey and conformance DOCItemCollectionViewController.RestorableSettingsCacheKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionViewController.DOCItemCollectionCellType and conformance DOCItemCollectionViewController.DOCItemCollectionCellType()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionViewController.DOCItemCollectionCellType and conformance DOCItemCollectionViewController.DOCItemCollectionCellType;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionViewController.DOCItemCollectionCellType and conformance DOCItemCollectionViewController.DOCItemCollectionCellType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionViewController.DOCItemCollectionCellType and conformance DOCItemCollectionViewController.DOCItemCollectionCellType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionViewController.DisplayInfoCoordinateSpace and conformance DOCItemCollectionViewController.DisplayInfoCoordinateSpace()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionViewController.DisplayInfoCoordinateSpace and conformance DOCItemCollectionViewController.DisplayInfoCoordinateSpace;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionViewController.DisplayInfoCoordinateSpace and conformance DOCItemCollectionViewController.DisplayInfoCoordinateSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionViewController.DisplayInfoCoordinateSpace and conformance DOCItemCollectionViewController.DisplayInfoCoordinateSpace);
  }

  return result;
}

void type metadata completion function for DOCItemCollectionViewController()
{
  type metadata accessor for IndexPath?(319, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x277CC9AF8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for IndexPath?(319, &lazy cache variable for type metadata for UICollectionLayoutListConfiguration?, MEMORY[0x277D74DB0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for IndexPath?(319, &lazy cache variable for type metadata for ScrollPositionInfo?, type metadata accessor for ScrollPositionInfo);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for IndexPath?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionViewController.NextReloadPendingValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionViewController.TableLayoutSidebarPlainAppearanceMetrics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionViewController.TableLayoutSidebarPlainAppearanceMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionViewController.RestorableConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for DOCItemCollectionViewController.RestorableConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for DOCItemCollectionViewController.PendingNodeContext()
{
  type metadata accessor for IndexPath?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionViewController.DiffableReloadType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for DOCItemCollectionViewController.DiffableReloadType(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_WORD *destructiveInjectEnumTag for DOCItemCollectionViewController.DiffableReloadType(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t dispatch thunk of DOCItemCollectionViewControllerInteractionDelegate.itemCollectionViewController(_:willSelectItemAt:cellFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  v6 = *(a3 + 32);
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v10 = v6;
  return v5(a1, a2, v9);
}

uint64_t dispatch thunk of DOCItemCollectionViewControllerInteractionDelegate.itemCollectionViewController(_:didFocusItemAt:cellFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 24);
  v6 = *(a3 + 32);
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v10 = v6;
  return v5(a1, a2, v9);
}

unint64_t type metadata completion function for ScrollPositionInfo.ItemOffset()
{
  result = type metadata accessor for DOCNode();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IndexPath();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for DOCNode()
{
  result = lazy cache variable for type metadata for DOCNode;
  if (!lazy cache variable for type metadata for DOCNode)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DOCNode);
  }

  return result;
}

void type metadata completion function for RestorableSettings()
{
  type metadata accessor for ScrollPositionInfo(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RestorableSearchInfo?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for RestorableSearchInfo?()
{
  if (!lazy cache variable for type metadata for RestorableSearchInfo?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RestorableSearchInfo?);
    }
  }
}

uint64_t getEnumTagSinglePayload for RestorableSearchInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RestorableSearchInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for ScrollPositionInfo()
{
  type metadata accessor for ScrollPositionInfo.ItemOffset(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [DOCCollectionSection : ScrollPositionInfo.ItemOffset]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection()
{
  result = lazy protocol witness table cache variable for type DOCCollectionSection and conformance DOCCollectionSection;
  if (!lazy protocol witness table cache variable for type DOCCollectionSection and conformance DOCCollectionSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCCollectionSection and conformance DOCCollectionSection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCCollectionSection and conformance DOCCollectionSection;
  if (!lazy protocol witness table cache variable for type DOCCollectionSection and conformance DOCCollectionSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCCollectionSection and conformance DOCCollectionSection);
  }

  return result;
}

uint64_t partial apply for closure #1 in DOCItemCollectionViewController.applyNavBarHidden(_:to:animated:)()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = 0;
  return (*((*MEMORY[0x277D85000] & *v1) + 0xF60))();
}

uint64_t outlined consume of DOCCollectionSection?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined copy of DOCCollectionSection?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.createNewFolder(_:inFolder:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5NeverOGMd);

  return closure #1 in closure #1 in DOCItemCollectionViewController.createNewFolder(_:inFolder:)(a1);
}

uint64_t outlined assign with copy of IndexPath?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #2 in closure #1 in DOCItemCollectionViewController.getPopoverTracker(for:completionBlock:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v2, v1, v3);
}

uint64_t objectdestroy_292Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void partial apply for closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(a1, a2, (v2 + v6), v10, v11, v12);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v0 + v2, v5, v6, v8, v9);
}

uint64_t partial apply for closure #1 in DOCItemCollectionViewController.contextMenuInteraction(_:willEndFor:animator:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in DOCFocusableCollectionView.focusItem(at:isUserInteraction:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return specialized closure #1 in DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(v2, v3, v4);
}

void *partial apply for closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:)()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t partial apply for closure #2 in DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:)()
{
  v1 = *(v0 + 32);
  result = (*(v0 + 16))();
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #4 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)()
{
  return partial apply for closure #4 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)();
}

{
  v1 = *(type metadata accessor for IndexPath() - 8);
  return closure #3 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));
}

uint64_t objectdestroy_1059Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void partial apply for closure #1 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  closure #1 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)(a1, a2, v6, v7, v8, v9, v10, v11);
}

void partial apply for closure #1 in closure #1 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)()
{
  type metadata accessor for IndexPath();
  v1 = *(v0 + 16);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v1 deselectItemAtIndexPath:isa animated:1];
}

uint64_t objectdestroy_1085Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_242Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + v5;
  swift_unknownObjectRelease();
  if (*(v0 + v5 + 8))
  {
  }

  if (*(v6 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 73, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 72);

  return closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(v3, v4, v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t partial apply for closure #3 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  swift_beginAccess();
  *(v1 + 16) = 1;
  return v2(v3);
}

uint64_t objectdestroy_981Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void partial apply for specialized closure #1 in _NativeSet.isSubset<A>(of:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  specialized closure #1 in _NativeSet.isSubset<A>(of:)(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = v5 & 1;
  }
}

uint64_t objectdestroy_129Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

void partial apply for closure #1 in closure #1 in DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem()()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in DOCItemCollectionViewController._resumeRenamingOnEnqueuedItem()(v0 + v2, v4, v5);
}

uint64_t objectdestroy_914Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t objectdestroy_1265Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_1245Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_1242Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void partial apply for closure #1 in DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  closure #1 in DOCItemCollectionViewController.fetchCellByScrollingToIfNeeded(for:at:completion:)(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_1278Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.viewDidLoad()()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in DOCItemCollectionViewController.viewDidLoad()(v0 + v2, v3);
}

uint64_t partial apply for closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(uint64_t a1)
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
  v10[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #2 in closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation) = 0;

  return (*((*MEMORY[0x277D85000] & *v2) + 0x178))();
}

uint64_t objectdestroy_81Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t partial apply for closure #1 in DOCItemCollectionViewController.setCurrentPrimaryEntity(with:)(uint64_t a1)
{
  v4 = *(type metadata accessor for FINodeEntity() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCItemCollectionViewController.setCurrentPrimaryEntity(with:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_316Tm(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t outlined assign with take of IndexPath?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id partial apply for closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:)()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];
  [v1 setAlpha_];

  return [v1 layoutBelowIfNeeded];
}

uint64_t objectdestroy_148Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_32Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t partial apply for closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_22Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t type metadata instantiation function for SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t UIButton.Configuration.configureWithZeroInsetsIfAllowed()()
{

  return UIButton.Configuration.contentInsets.setter();
}

void AttributedString.init(_:textStyle:compatibleWith:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v6 - 8, v7);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  [objc_opt_self() preferredFontForTextStyle:a3 compatibleWithTraitCollection:a4];
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
  AttributedString.subscript.setter();
}

uint64_t static UIButton.Configuration.plainGazeable(commonSetup:whenStandard:whenGazeable:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = objc_opt_self();

  static UIButton.Configuration.borderless()();
  a1(a3);

  return a2(a3);
}

uint64_t UIButton.Configuration.configureWithZeroCornerRadiusIfAllowed()()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];

  (*(v1 + 104))(v4, *MEMORY[0x277D74FC0], v0);
  UIButton.Configuration.cornerStyle.setter();
  v5 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  return v5(v7, 0);
}

uint64_t static UIButton.Configuration.plainNonGazeable(commonSetup:whenStandard:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  static UIButton.Configuration.borderless()();
  a1(a3);
  return a2(a3);
}

uint64_t UIButton.init(configuration:doc_primaryActionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  (*(v7 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  type metadata accessor for UIAction();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v12 = UIButton.init(configuration:primaryAction:)();

  (*(v7 + 8))(a1, v6);
  return v12;
}

unint64_t type metadata accessor for UIAction()
{
  result = lazy cache variable for type metadata for UIAction;
  if (!lazy cache variable for type metadata for UIAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIAction);
  }

  return result;
}

id @objc UIButton.doc_primaryAction.getter(void *a1)
{
  v1 = a1;
  v2 = UIButton.doc_primaryAction.getter();

  return v2;
}

uint64_t UIButton.doc_primaryAction.getter()
{
  v3 = MEMORY[0x277D84F90];
  UIControl.enumerateEventHandlers(_:)();
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x24C1FC540](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(v3 + 32);
LABEL_6:
    v2 = v1;

    return v2;
  }

  __break(1u);
  return result;
}

void @objc UIButton.doc_primaryAction.setter(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  UIButton.doc_primaryAction.setter(a3);
}

void UIButton.doc_primaryAction.setter(void *a1)
{
  v8 = MEMORY[0x277D84F90];
  UIControl.enumerateEventHandlers(_:)();
  if (v8 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1FC540](v4, v8);
      }

      else
      {
        if (v4 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v8 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v1 removeAction:v5 forControlEvents:0x2000];

      ++v4;
      if (v7 == i)
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

  if (a1)
  {
    [v1 addAction:a1 forControlEvents:0x2000];
  }
}

void *closure #1 in UIButton._allPrimaryActions.getter(void *result, uint64_t a2, __int16 a3, uint64_t a4, void *a5)
{
  if ((a3 & 0x2000) != 0 && result)
  {
    v6 = result;
    MEMORY[0x24C1FB090]();
    if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return result;
}

uint64_t static UIButtonConfiguration.plainGazeableConfiguration()()
{

  return static UIButton.Configuration.borderless()();
}

Class @objc static UIButtonConfiguration.plainGazeableConfiguration()()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  static UIButton.Configuration.borderless()();
  v5.super.isa = UIButton.Configuration._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);

  return v5.super.isa;
}

Class @objc static UIButtonConfiguration.plainNonGazeableConfiguration()()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.borderless()();
  v5.super.isa = UIButton.Configuration._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);

  return v5.super.isa;
}

Swift::Void __swiftcall UIButtonConfiguration.configureWithZeroInsetsIfAllowed()()
{
  v1 = *MEMORY[0x277D75060];
  v2 = *(MEMORY[0x277D75060] + 8);
  v3 = *(MEMORY[0x277D75060] + 16);
  v4 = *(MEMORY[0x277D75060] + 24);

  [v0 setContentInsets_];
}

void @objc UIButtonConfiguration.configureWithZeroInsetsIfAllowed()(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;

  [v3 setContentInsets_];
}

uint64_t AttributedString.init(_:font:)()
{
  v0 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v0 - 8, v1);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
  return AttributedString.subscript.setter();
}

void *DOCTrashOperation.__allocating_init(items:undoManager:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager] = a2;
  type metadata accessor for FPItem();
  v5 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11.receiver = v4;
  v11.super_class = v2;
  v7 = objc_msgSendSuper2(&v11, sel_initWithItems_, isa);

  v8 = *((*MEMORY[0x277D85000] & *v7) + 0x98);
  v9 = v7;
  v8();

  return v9;
}

void *DOCTrashOperation.sourceParentFolderItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCTrashOperation.sourceParentFolderItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCTrashOperation.init(items:undoManager:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager] = a2;
  type metadata accessor for FPItem();
  v4 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10.receiver = v2;
  v10.super_class = type metadata accessor for DOCTrashOperation();
  v6 = objc_msgSendSuper2(&v10, sel_initWithItems_, isa);

  v7 = *((*MEMORY[0x277D85000] & *v6) + 0x98);
  v8 = v6;
  v7();

  return v8;
}

Swift::Void __swiftcall DOCTrashOperation.actionMain()()
{
  v1 = v0;
  v2 = [v0 items];
  type metadata accessor for FPItem();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v4 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v4 = v3;
  }

  v5 = specialized static UIDocumentBrowserAction.fetchParent(nodes:)(v4);

  if (v5)
  {
    swift_getObjectType();
    v6 = DOCNode.fpfs_syncFetchFPItem()();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  (*((*MEMORY[0x277D85000] & *v1) + 0x68))(v6);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DOCTrashOperation();
  objc_msgSendSuper2(&v7, sel_actionMain);
}

void DOCTrashOperation.actionNameForUndoing.getter()
{
  v1 = _DocumentManagerBundle();
  if (!v1)
  {
    goto LABEL_19;
  }

  v2 = v1;
  v27._object = 0x8000000249BCFC20;
  v3._countAndFlagsBits = 0x1000000000000026;
  v3._object = 0x8000000249BCFBD0;
  v4._object = 0x8000000249BCFC00;
  v27._countAndFlagsBits = 0xD000000000000039;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 0x1000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v5, v2, v4, v27);

  v6 = _DocumentManagerBundle();
  if (!v6)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v7 = v6;
  v28._object = 0x8000000249BCFC90;
  v8._object = 0x8000000249BCFC60;
  v28._countAndFlagsBits = 0xD00000000000003FLL;
  v8._countAndFlagsBits = 0xD000000000000027;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v28);

  v11 = [v0 items];
  type metadata accessor for FPItem();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = [v0 items];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_16:

    __break(1u);
    goto LABEL_17;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_16;
  }

LABEL_7:

  if ((v16 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v17 = MEMORY[0x24C1FC540](0, v16);
    goto LABEL_10;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = *(v16 + 32);
LABEL_10:
  v18 = v17;

  v19 = [v18 displayName];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v13 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_249B9A480;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v20;
    *(v23 + 40) = v22;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D83B88];
    *(v24 + 16) = xmmword_249B9A480;
    v26 = MEMORY[0x277D83C10];
    *(v24 + 56) = v25;
    *(v24 + 64) = v26;
    *(v24 + 32) = v13;
  }

  static String.localizedStringWithFormat(_:_:)();
}

void *DOCTrashOperation.operationForRedoing()()
{
  v1 = [v0 items];
  type metadata accessor for FPItem();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 1)
  {
    return 0;
  }

  isa = [v0 items];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager];
  v6 = type metadata accessor for DOCTrashOperation();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem] = 0;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager] = v5;
  v14.receiver = v7;
  v14.super_class = v6;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v14, sel_initWithItems_, isa);

  v10 = *((*MEMORY[0x277D85000] & *v9) + 0x98);
  v11 = v9;
  v10(v11, v12);

  return v9;
}

void *DOCTrashOperation.operationForUndoing()()
{
  v1 = [v0 items];
  type metadata accessor for FPItem();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 1)
  {
    return 0;
  }

  v4 = [v0 items];
  isa = v4;
  if (!v4)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x60))(v4);
  v8 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager);
  v9 = type metadata accessor for DOCUntrashOperation();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_restoreDirectory] = v7;
  *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_undoManager] = v8;
  v18.receiver = v10;
  v18.super_class = v9;
  v11 = v7;
  v12 = v8;
  v13 = objc_msgSendSuper2(&v18, sel_initWithItems_restoreDirectory_, isa, v11);

  v14 = *((*v6 & *v13) + 0x80);
  v15 = v13;
  v14(v15, v16);

  return v13;
}

id DOCTrashOperation.__allocating_init(items:)()
{
  v1 = objc_allocWithZone(v0);
  type metadata accessor for FPItem();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithItems_];

  return v3;
}

id DOCTrashOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCTrashOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCSidebarCell.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v48 = a3;
  v4 = *v3;
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  MEMORY[0x28223BE20](a1, a2);
  v47 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v41 - v10;
  v42 = type metadata accessor for UIBackgroundConfiguration();
  v12 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v13);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((v5 & v4) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v18);
  v44 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v41 - v22;
  v24 = type metadata accessor for UICellConfigurationState();
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  DOCSidebarCell.ensureHasContentViewConfiguration()();
  v28 = [v3 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x24C1FBB10](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pSgMd);
  v45 = AssociatedTypeWitness;
  swift_dynamicCast();
  v29 = type metadata accessor for DOCSidebarCell();
  v50.receiver = v3;
  v50.super_class = v29;
  v30 = objc_msgSendSuper2(&v50, sel_contentView);
  v46 = v15;
  v49 = v6;
  swift_getAssociatedTypeWitness();
  v31 = swift_dynamicCastUnknownClassUnconditional();
  MEMORY[0x24C1FBB30]();
  v32 = *(v12 + 48);
  v33 = v42;
  if ((v32)(v11, 1) == 1)
  {
    v34 = v43;
    static UIBackgroundConfiguration.clear()();
    if (v32(v11, 1, v33) != 1)
    {
      outlined destroy of UIBackgroundConfiguration?(v11);
    }
  }

  else
  {
    v35 = v43;
    (*(v12 + 32))(v43, v11, v33);
    v34 = v35;
  }

  v36 = *(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x60));
  v37 = v47;
  DOCSidebarCell._contentBindings.getter(v47);
  v39 = v44;
  v38 = v45;
  (*(v17 + 16))(v44, v23, v45);
  DOCSidebarCell.Content.init(valid:state:bindings:view:configuration:background:)(v36, v27, v37, v31, v39, v34, v49, v48);
  return (*(v17 + 8))(v23, v38);
}

uint64_t DOCSidebarCell._contentBindings.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t DOCSidebarCell._contentBindings.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t DOCSidebarCell._resetBindings()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](*((v3 & v2) + 0x50), v9);
  v12 = &v15 - v11;
  (*(*((v3 & v2) + 0x58) + 32))(v10);
  DOCSidebarCell._contentBindings.setter(v12);
  v13 = [v1 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  DOCSidebarCell.reloadContentViewConfiguration(with:)(v8);
  return (*(v5 + 8))(v8, v4);
}

id DOCSidebarCell.updateContentBindings(_:)(void (*isEscapingClosureAtFileLocation)(char *), uint64_t a2)
{
  v5 = &selRef_setNavigationTitleForTagListInInfoPanel_;
  result = [v2 window];
  if (!result)
  {
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v8, v9);
  v15 = isEscapingClosureAtFileLocation;
  v16 = a2;
  v17 = v2;
  while (1)
  {
    v10 = objc_opt_self();
    a2 = swift_allocObject();
    *(a2 + 16) = partial apply for closure #1 in DOCSidebarCell.updateContentBindings(_:);
    *(a2 + 24) = &v14;
    v2 = swift_allocObject();
    v2[2] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v2[3] = a2;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v19 = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_63;
    v11 = _Block_copy(aBlock);
    v5 = v19;

    [v10 performWithoutAnimation_];
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v12 = MEMORY[0x28223BE20](result, v7);
    v15 = isEscapingClosureAtFileLocation;
    v16 = a2;
    v17 = v2;
    v13 = [v2 v5[365]];
    if (v13)
    {

      return closure #1 in DOCSidebarCell.updateContentBindings(_:)(isEscapingClosureAtFileLocation, a2, v2);
    }
  }

  return result;
}

uint64_t DOCSidebarCell.reloadContentViewConfiguration(with:)(uint64_t a1)
{
  v38 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & v2;
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v31 - v10;
  v12 = *((v3 & v2) + 0x58);
  v13 = *((v3 & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v35 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v17 = &v31 - v16;
  v18 = type metadata accessor for DOCSidebarCell.Content();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v31 - v22;
  (*(v4 + 128))(v21);
  v24 = v38;
  if (DOCSidebarCell.Content.needsUpdate(for:)())
  {
    v25 = *(v12 + 40);
    v32 = v17;
    v25(v24, v13, v12);
    (*(v12 + 48))(v24, v13, v12);
    v27 = v36;
    v26 = v37;
    v28 = v33;
    (*(v36 + 16))(v33, v11, v37);
    (*(v27 + 8))(v11, v26);
    (*(v27 + 32))(v11, v28, v26);
    (*(v34 + 40))(&v23[*(v18 + 48)], v32, v35);
    (*(v27 + 40))(&v23[*(v18 + 52)], v11, v26);
  }

  (*(v12 + 56))(&v23[*(v18 + 48)], v13, v12);
  specialized DOCSidebarCell.content.setter(v23, v29);
  return (*(v19 + 8))(v23, v18);
}

uint64_t DOCSidebarCell.isRenaming.getter()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarCell.isRenaming.setter(char a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return DOCSidebarCell.isRenaming.didset(v4);
}

void (*DOCSidebarCell.isRenaming.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return DOCSidebarCell.isRenaming.modify;
}

void DOCSidebarCell.isRenaming.modify(uint64_t a1)
{
  v1 = *a1;
  DOCSidebarCell.isRenaming.setter(*(*a1 + 32));

  free(v1);
}

uint64_t DOCSidebarCell.backgroundByApplyingDefaultSettings(toBase:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t DOCSidebarCell.ensureHasContentViewConfiguration()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v23 = type metadata accessor for UICellConfigurationState();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v5);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v3 & v2) + 0x58);
  v9 = *((v3 & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v24[-1] - v15;
  MEMORY[0x24C1FBB10](v24, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pSgMd);
  v17 = swift_dynamicCast();
  v18 = *(*(AssociatedTypeWitness - 8) + 56);
  v19 = (v12 + 8);
  if (v17)
  {
    v18(v16, 0, 1, AssociatedTypeWitness);
    return (*v19)(v16, v11);
  }

  else
  {
    v18(v16, 1, 1, AssociatedTypeWitness);
    (*v19)(v16, v11);
    v21 = [v1 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v8 + 40);
    v24[3] = AssociatedTypeWitness;
    v24[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v24);
    v22(v7, v9, v8);
    (*(v4 + 8))(v7, v23);
    return MEMORY[0x24C1FBB20](v24);
  }
}

uint64_t outlined destroy of UIBackgroundConfiguration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DOCSidebarCell.accessoryItems.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCSidebarCell.addAccessoryItem(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_22:
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v7 != i; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](i, v6);
      if (__OFADD__(i, 1))
      {
LABEL_16:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(v6 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }
    }

    if (*(v9 + 16) == *(a1 + 16) && *(v9 + 24) == *(a1 + 24))
    {
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
    }
  }

  v12 = *((*v4 & *v2) + 0x78);
  swift_beginAccess();

  MEMORY[0x24C1FB090](v13);
  if (*((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v14 = swift_endAccess();
  return (*((*v4 & *v2) + 0x150))(v14);
}

Swift::Void __swiftcall DOCSidebarCell.removeAccessoryItem(named:)(Swift::String named)
{
  v2 = v1;
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *((*v5 & *v2) + 0x78);
  swift_beginAccess();

  v10 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v2 + v9), countAndFlagsBits, object);

  v11 = *(v2 + v9);
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= v10)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = __CocoaSet.count.getter();
  if (v12 < v10)
  {
    goto LABEL_11;
  }

LABEL_5:
  specialized Array.replaceSubrange<A>(_:with:)(v10, v12, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  swift_endAccess();
  v13 = *((*v5 & *v2) + 0x78);
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_12:
  if (__CocoaSet.count.getter() == v8)
  {
    return;
  }

LABEL_7:
  (*((*v5 & *v2) + 0x150))();
}

uint64_t DOCSidebarCell.accessoryItem(named:)(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_22:
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v9 = *(v6 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }
      }

      v11 = *(v9 + 16) == a1 && *(v9 + 24) == a2;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return v9;
      }

      ++v8;
    }

    while (v10 != v7);
  }

  return 0;
}

Swift::Void __swiftcall DOCSidebarCell.reloadDisplayedAccessories()()
{
  v1 = type metadata accessor for UICellAccessory();
  v2 = *(v1 - 8);
  v37 = v1;
  v38 = v2;
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v0) + 0xE0))(v4);
  v9 = [v0 traitCollection];
  v10 = [v9 sourceOutlineStyle];

  v11 = *((*v7 & *v0) + 0x78);
  swift_beginAccess();
  v36 = v0;
  v12 = *(v0 + v11);
  v39 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
LABEL_34:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v34 = v6;
    v35 = v12;
    v15 = 0;
    v16 = v12 & 0xC000000000000001;
    v6 = (v12 & 0xFFFFFFFFFFFFFF8);
    v17 = v12 + 32;
    while (1)
    {
LABEL_6:
      if (v16)
      {
        v12 = MEMORY[0x24C1FC540](v15, v35);
        v18 = __OFADD__(v15++, 1);
        if (v18)
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v23 = v39;
          v6 = v34;
          v14 = MEMORY[0x277D84F90];
          goto LABEL_21;
        }
      }

      else
      {
        if (v15 >= *(v6 + 2))
        {
          __break(1u);
          goto LABEL_34;
        }

        v12 = *(v17 + 8 * v15);

        v18 = __OFADD__(v15++, 1);
        if (v18)
        {
          goto LABEL_18;
        }
      }

      if ((v8 & 1) == 0 || ((*(*v12 + 120))() & 1) == 0)
      {
        v19 = *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles);
        v20 = *(v19 + 16);
        v21 = (v19 + 32);
        while (v20)
        {
          v22 = *v21++;
          --v20;
          if (v22 == v10)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            if (v15 != v13)
            {
              goto LABEL_6;
            }

            goto LABEL_19;
          }
        }
      }

      if (v15 == v13)
      {
        goto LABEL_19;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_21:

  if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
  {
    v24 = *(v23 + 16);
    if (v24)
    {
      goto LABEL_24;
    }

LABEL_36:

    UICollectionViewListCell.accessories.setter();
    return;
  }

  v24 = __CocoaSet.count.getter();
  if (!v24)
  {
    goto LABEL_36;
  }

LABEL_24:
  v39 = v14;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = v39;
    v27 = v23;
    v28 = v23 & 0xC000000000000001;
    v29 = v27;
    do
    {
      if (v28)
      {
        v30 = MEMORY[0x24C1FC540](v25);
      }

      else
      {
        v30 = *(v27 + 8 * v25 + 32);
      }

      (*(*v30 + 168))();

      v39 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
        v26 = v39;
      }

      ++v25;
      *(v26 + 16) = v32 + 1;
      (*(v38 + 32))(v26 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, v6, v37);
      v27 = v29;
    }

    while (v24 != v25);
    goto LABEL_36;
  }

  __break(1u);
}

id DOCSidebarCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCSidebarCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  v10 = MEMORY[0x277D85000];
  v11 = *MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x60)) = 0;
  (*(*((v11 & v9) + 0x58) + 32))(*((v11 & v9) + 0x50), *((v11 & v9) + 0x58));
  *(v4 + *((*v10 & *v4) + 0x70)) = 0;
  *(v4 + *((*v10 & *v4) + 0x78)) = MEMORY[0x277D84F90];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for DOCSidebarCell();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  DOCSidebarCell._resetBindings()();

  return v12;
}

id @objc DOCSidebarCell.description.getter(void *a1)
{
  v1 = a1;
  v2 = DOCSidebarCell.description.getter();
  v4 = v3;

  v5 = MEMORY[0x24C1FAD20](v2, v4);

  return v5;
}

uint64_t DOCSidebarCell.description.getter()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for DOCSidebarCell();
  v1 = objc_msgSendSuper2(&v11, sel_description);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = [v0 accessibilityLabel];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    MEMORY[0x24C1FAEA0](v7, v9);

    MEMORY[0x24C1FAEA0](8285, 0xE200000000000000);
    MEMORY[0x24C1FAEA0](v2, v4);

    return 91;
  }

  return v2;
}

Swift::Void __swiftcall DOCSidebarCell.prepareForReuse()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DOCSidebarCell();
  objc_msgSendSuper2(&v1, sel_prepareForReuse);
  DOCSidebarCell.accessoryItems.setter(MEMORY[0x277D84F90]);
  UICollectionViewListCell.accessories.setter();
  DOCSidebarCell._resetBindings()();
}

void @objc DOCSidebarCell.prepareForReuse()(void *a1)
{
  v1 = a1;
  DOCSidebarCell.prepareForReuse()();
}

uint64_t DOCSidebarCell.Content.state.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t DOCSidebarCell.Content.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t DOCSidebarCell.Content.configuration.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 40);

  return v6(v2 + v4, a1, AssociatedTypeWitness);
}

uint64_t DOCSidebarCell.Content.background.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t DOCSidebarCell.Content.background.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t DOCSidebarCell.Content.needsUpdate(for:)()
{
  type metadata accessor for UICellConfigurationState();
  lazy protocol witness table accessor for type UICellConfigurationState and conformance UICellConfigurationState();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v1 = *v0 ^ 1;
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t DOCSidebarCell.Content.init(valid:state:bindings:view:configuration:background:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  *a8 = a1;
  v15 = type metadata accessor for DOCSidebarCell.Content();
  v16 = v15[9];
  v17 = type metadata accessor for UICellConfigurationState();
  (*(*(v17 - 8) + 32))(&a8[v16], a2, v17);
  (*(*(a7 - 8) + 32))(&a8[v15[10]], a3, a7);
  *&a8[v15[11]] = a4;
  v18 = v15[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a8[v18], a5, AssociatedTypeWitness);
  v20 = v15[13];
  v21 = type metadata accessor for UIBackgroundConfiguration();
  v22 = *(*(v21 - 8) + 32);

  return v22(&a8[v20], a6, v21);
}

uint64_t closure #1 in DOCSidebarCell.updateContentBindings(_:)(void (*a1)(char *), uint64_t a2, char *a3)
{
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((*MEMORY[0x277D85000] & *a3) + 0x68);
  swift_beginAccess();
  a1(&a3[v10]);
  swift_endAccess();
  v11 = [a3 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  DOCSidebarCell.reloadContentViewConfiguration(with:)(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t DOCSidebarCell.updateConfiguration(using:)(uint64_t a1)
{
  DOCSidebarCell.reloadContentViewConfiguration(with:)(a1);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x158);

  return v3(a1);
}

uint64_t @objc DOCSidebarCell.updateConfiguration(using:)(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  DOCSidebarCell.updateConfiguration(using:)(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t DOCSidebarCell.isRenaming.didset(char a1)
{
  v2 = a1 & 1;
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  result = swift_beginAccess();
  if (*(v1 + v4) != v2)
  {
    return (*((*v3 & *v1) + 0x150))(result);
  }

  return result;
}

uint64_t @objc static DOCSidebarCell._contentViewClass()()
{
  swift_getObjCClassMetadata();
  static DOCSidebarCell._contentViewClass()();

  return swift_getObjCClassFromMetadata();
}

Swift::Void __swiftcall DOCSidebarCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = MEMORY[0x277D85000];
  v12.receiver = v1;
  v12.super_class = type metadata accessor for DOCSidebarCell();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, isa);
  v4 = *((*v3 & *v1) + 0x78);
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
LABEL_21:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_16;
        }
      }

      v10 = *(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCSidebarCellAccessoryItem_applicableStyles);
      if (*(v10 + 16) != 2 || v10 != &outlined read-only object #0 of DOCSidebarCell.traitCollectionDidChange(_:) && (*(v10 + 32) != qword_285C81AC8 || *(v10 + 40) != qword_285C81AD0))
      {

        (*((*MEMORY[0x277D85000] & *v1) + 0x150))(v11);
        return;
      }

      ++v7;
    }

    while (v9 != v6);
  }
}

void @objc DOCSidebarCell.traitCollectionDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  DOCSidebarCell.traitCollectionDidChange(_:)(v9);
}

id DOCSidebarCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id @objc DOCSidebarCell.contentView.getter(void *a1)
{
  v1 = a1;
  v2 = DOCSidebarCell.contentView.getter();

  return v2;
}

uint64_t DOCSidebarCell.contentView.getter()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCSidebarCell();
  v1 = objc_msgSendSuper2(&v3, sel_contentView);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    return v1;
  }

  __break(1u);
  return result;
}

id DOCSidebarCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSidebarCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc DOCSidebarCell.__ivar_destroyer(char *a1)
{
  (*(*(*((*MEMORY[0x277D85000] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x68)]);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, a4, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, a4, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, _BYTE *a2, __int128 *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](v8, a1);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    if (*(v9 + 16) == a2 && *(v9 + 24) == a3)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return v8;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_21;
    }
  }

  return v8;
}

{
  if (a1 >> 62)
  {
LABEL_22:
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v18 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v6, a1);
    }

    else
    {
      if (v6 >= *(v17 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [*&v7[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == a2 && v12 == a3)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return v6;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2, a3);
  v10 = v8;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == __CocoaSet.count.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1FC540](v11, v7);
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v13 = *(v7 + 8 * v11 + 32);

LABEL_16:
    if (*(v13 + 16) == a2 && *(v13 + 24) == a3)
    {
LABEL_8:
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        if (v10 != v11)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x24C1FC540](v10, v7);
            v15 = MEMORY[0x24C1FC540](v11, v7);
          }

          else
          {
            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v10 >= v16)
            {
              goto LABEL_51;
            }

            if (v11 >= v16)
            {
              goto LABEL_52;
            }

            v15 = *(v7 + 32 + 8 * v11);
            v21 = *(v7 + 32 + 8 * v10);
          }

          v17 = v6;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            v18 = (v7 >> 62) & 1;
          }

          else
          {
            LODWORD(v18) = 0;
          }

          v19 = v7 & 0xFFFFFFFFFFFFFF8;
          *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v15;

          if ((v7 & 0x8000000000000000) != 0 || v18)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            v19 = v7 & 0xFFFFFFFFFFFFFF8;
            if ((v11 & 0x8000000000000000) != 0)
            {
LABEL_43:
              __break(1u);
              return v10;
            }
          }

          else if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v11 >= *(v19 + 16))
          {
            goto LABEL_49;
          }

          v6 = v17;
          *(v19 + 8 * v11 + 32) = v21;

          *v17 = v7;
        }

        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          goto LABEL_48;
        }
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_46:
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
LABEL_52:
  __break(1u);
  return __CocoaSet.count.getter();
}

{
  v8 = *a1;
  v9 = specialized Collection.firstIndex(where:)(*a1, a2, a3);
  v11 = v9;
  if (v3)
  {
    return v11;
  }

  v34 = a3;
  if (v10)
  {
    if (v8 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = 0;
  v33 = a1;
  v12 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v8 >> 62)
    {
      if (v12 == __CocoaSet.count.getter())
      {
        return v11;
      }
    }

    else if (v12 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v11;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1FC540](v12, v8);
      goto LABEL_16;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v14 = *(v8 + 8 * v12 + 32);
LABEL_16:
    v4 = v14;
    v15 = [*&v14[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] identifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v16 == a2 && v18 == v34)
    {
LABEL_8:
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        if (v11 != v12)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x24C1FC540](v11, v8);
            v22 = MEMORY[0x24C1FC540](v12, v8);
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_52;
            }

            v23 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v11 >= v23)
            {
              goto LABEL_53;
            }

            if (v12 >= v23)
            {
              goto LABEL_54;
            }

            v24 = *(v8 + 32 + 8 * v12);
            v21 = *(v8 + 32 + 8 * v11);
            v22 = v24;
          }

          v25 = v22;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
            v26 = (v8 >> 62) & 1;
          }

          else
          {
            LODWORD(v26) = 0;
          }

          v27 = v8 & 0xFFFFFFFFFFFFFF8;
          v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20);
          *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20) = v25;

          if ((v8 & 0x8000000000000000) != 0 || v26)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
            v27 = v8 & 0xFFFFFFFFFFFFFF8;
            if ((v12 & 0x8000000000000000) != 0)
            {
LABEL_45:
              __break(1u);
              return v11;
            }
          }

          else if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          if (v12 >= *(v27 + 16))
          {
            goto LABEL_51;
          }

          v29 = v27 + 8 * v12;
          v30 = *(v29 + 32);
          *(v29 + 32) = v21;

          *v33 = v8;
        }

        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          goto LABEL_50;
        }
      }
    }

    v13 = __OFADD__(v12++, 1);
    if (v13)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t specialized DOCSidebarCell.content.setter(_BYTE *a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v20[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v20[-1] - v9;
  v11 = type metadata accessor for DOCSidebarCell.Content();
  v12 = v11[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20[3] = AssociatedTypeWitness;
  v20[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, &a1[v12], AssociatedTypeWitness);
  MEMORY[0x24C1FBB20](v20);
  v15 = v11[13];
  v16 = type metadata accessor for UIBackgroundConfiguration();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, &a1[v15], v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  MEMORY[0x24C1FBB40](v10);
  *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60)) = *a1;
  (*(v19 + 16))(v6, &a1[v11[10]], v4);
  return DOCSidebarCell._contentBindings.setter(v6);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (__CocoaSet.count.getter() < v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v3 >> 62))
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v10 = __CocoaSet.count.getter();
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v14, 1);

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v5, v10, v3);
}

void specialized DOCSidebarCell.init(reuseIdentifier:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60)) = 0;
  (*(*((v3 & v2) + 0x58) + 32))();
  *(v0 + *((*v1 & *v0) + 0x70)) = 0;
  *(v0 + *((*v1 & *v0) + 0x78)) = MEMORY[0x277D84F90];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata completion function for DOCSidebarCell()
{
  result = swift_checkMetadataState();
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

uint64_t type metadata completion function for DOCSidebarCell.Content()
{
  result = type metadata accessor for UICellConfigurationState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v3 <= 0x3F)
      {
        result = swift_getAssociatedTypeWitness();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for UIBackgroundConfiguration();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarCell.Content(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v41 = type metadata accessor for UICellConfigurationState();
  v5 = *(v41 - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a3 + 16) - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v40 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v39 = *(v10 + 84);
  if (v9 <= v39)
  {
    v9 = *(v10 + 84);
  }

  v11 = *(type metadata accessor for UIBackgroundConfiguration() - 8);
  v12 = *(v5 + 80);
  v13 = *(v5 + 64);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v17 = *(v11 + 84);
  }

  else
  {
    v17 = v9;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v7 + 64) + 7;
  v20 = v15 + 8;
  v21 = *(v10 + 64) + v16;
  if (a2 <= v18)
  {
    goto LABEL_36;
  }

  v22 = ((v21 + ((v20 + ((v19 + ((v13 + ((v12 + 1) & ~v12) + v14) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v16) + *(v11 + 64);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_15;
  }

  v26 = ((a2 - v18 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v26))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v26 <= 0xFF)
    {
      if (v26 < 2)
      {
        goto LABEL_36;
      }

LABEL_15:
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_36;
      }

LABEL_23:
      v27 = (v24 - 1) << v23;
      if (v22 > 3)
      {
        v27 = 0;
      }

      if (v22)
      {
        if (v22 <= 3)
        {
          v28 = v22;
        }

        else
        {
          v28 = 4;
        }

        if (v28 > 2)
        {
          if (v28 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v29 = *a1;
          }
        }

        else if (v28 == 1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *a1;
        }
      }

      else
      {
        v29 = 0;
      }

      return v18 + (v29 | v27) + 1;
    }

    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_23;
    }
  }

LABEL_36:
  v30 = (a1 + v12 + 1) & ~v12;
  if (v6 == v18)
  {
    v31 = *(v5 + 48);
    v32 = v6;
    v33 = v41;
LABEL_40:

    return v31(v30, v32, v33);
  }

  v30 = (v30 + v13 + v14) & ~v14;
  if (v8 == v18)
  {
    v31 = *(v7 + 48);
    v32 = v8;
    v33 = v40;
    goto LABEL_40;
  }

  v34 = ((v19 + v30) & 0xFFFFFFFFFFFFFFF8);
  if ((v17 & 0x80000000) != 0)
  {
    v30 = (v34 + v20) & ~v15;
    if (v39 == v18)
    {
      v31 = *(v10 + 48);
      v32 = v39;
      v33 = AssociatedTypeWitness;
      goto LABEL_40;
    }

    v36 = *(v11 + 48);
    v37 = (v21 + v30) & ~v16;

    return v36(v37);
  }

  else
  {
    v35 = *v34;
    if (*v34 >= 0xFFFFFFFF)
    {
      LODWORD(v35) = -1;
    }

    return (v35 + 1);
  }
}

void storeEnumTagSinglePayload for DOCSidebarCell.Content(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(type metadata accessor for UICellConfigurationState() - 8);
  v40 = v5;
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 16) - 8);
  v39 = v7;
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v44 = v10;
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v9 = *(v10 + 84);
  }

  v12 = *(type metadata accessor for UIBackgroundConfiguration() - 8);
  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  v19 = *(v12 + 80);
  if (v9 <= *(v12 + 84))
  {
    v20 = *(v12 + 84);
  }

  else
  {
    v20 = v9;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v22 = v16 + 7;
  v23 = (v17 + 8 + ((v16 + 7 + ((v14 + ((v13 + 1) & ~v13) + v15) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v17;
  v24 = v18 + v19;
  v25 = ((v18 + v19 + v23) & ~v19) + *(v12 + 64);
  if (a3 <= v21)
  {
    v27 = 0;
    v26 = a1;
  }

  else
  {
    v26 = a1;
    if (v25 <= 3)
    {
      v30 = ((a3 - v21 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  if (v21 < a2)
  {
    v28 = ~v21 + a2;
    if (v25 < 4)
    {
      v29 = (v28 >> (8 * v25)) + 1;
      if (v25)
      {
        v32 = v28 & ~(-1 << (8 * v25));
        bzero(v26, v25);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *v26 = v32;
            if (v27 > 1)
            {
LABEL_59:
              if (v27 == 2)
              {
                *&v26[v25] = v29;
              }

              else
              {
                *&v26[v25] = v29;
              }

              return;
            }
          }

          else
          {
            *v26 = v28;
            if (v27 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *v26 = v32;
        v26[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      bzero(v26, v25);
      *v26 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v27)
    {
      v26[v25] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&v26[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&v26[v25] = 0;
  }

  else if (v27)
  {
    v26[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  v33 = &v26[v13 + 1] & ~v13;
  if (v6 == v21)
  {
    v34 = *(v40 + 56);

LABEL_66:
    v34(v33);
    return;
  }

  v33 = (v33 + v14 + v15) & ~v15;
  if (v8 == v21)
  {
    v34 = *(v39 + 56);

    goto LABEL_66;
  }

  v35 = ((v22 + v33) & 0xFFFFFFFFFFFFFFF8);
  if ((v20 & 0x80000000) != 0)
  {
    v33 = (v35 + v17 + 8) & ~v17;
    if (v11 == v21)
    {
      v34 = *(v44 + 56);

      goto LABEL_66;
    }

    v37 = *(v12 + 56);
    v38 = (v24 + v33) & ~v19;

    v37(v38);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v36 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v36 = a2 - 1;
    }

    *v35 = v36;
  }
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 24) >> 1)
  {
    v8 = a5();
    *v6 = v8;
  }

  result = a6(v10, a2, 1, a3, a4);
  *v6 = v8;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    v17 = a5;
    if (!v11)
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v13 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 1 - v13;
  if (__OFSUB__(1, v13))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v11)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (v16)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v17(v9, v7, 1, v5);
}

void *DOCSidebarDropContext.__allocating_init(session:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[3] = 0;
  type metadata accessor for DOCSidebarDropContext.DebugInfo(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  v5 = type metadata accessor for IndexPath();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal) = 0;
  v2[4] = v3;
  v2[2] = a1;
  return v2;
}

void *DOCSidebarDropContext.init(session:)(uint64_t a1)
{
  v1[3] = 0;
  type metadata accessor for DOCSidebarDropContext.DebugInfo(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  v5 = type metadata accessor for IndexPath();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal) = 0;
  v1[4] = v3;
  v1[2] = a1;
  return v1;
}

uint64_t DOCSidebarDropContext.currentProposal.didset()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = DOCSidebarDropProposal.debugInfo.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  _StringGuts.grow(_:)(27);

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x2A6C696E2ALL;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v6, v7);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = *(*static DOCSidebarViewController.dbg.shared + 152);

  v8(0xD00000000000001BLL, 0x8000000249BE1880, 0xD000000000000019, 0x8000000249BE1860);
}

void *DOCSidebarDropContext.currentProposal.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}