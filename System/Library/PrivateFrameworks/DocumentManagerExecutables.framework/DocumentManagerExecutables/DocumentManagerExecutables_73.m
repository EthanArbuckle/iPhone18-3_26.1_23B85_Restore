void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type FINode and conformance NSObject, &lazy cache variable for type metadata for FINode);
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v42 = type metadata accessor for UTType();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10, v11);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42, v12);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void specialized makeDOCCopyOperation(urls:destinationFolder:undoManager:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ([objc_opt_self() useFIOperations])
  {
    v8 = objc_allocWithZone(type metadata accessor for DOC_FICopyOperation());

    v9 = a3;
    swift_unknownObjectRetain();
    specialized DOC_FICopyOperation.init(urls:destinationFolder:undoManager:)(a1, a2, v9, v8, a4);
  }

  else
  {
    v10 = DOCNode.fpfs_syncFetchFPItem()();
    if (v10)
    {
      v11 = v10;
      objc_allocWithZone(type metadata accessor for DOCCopyOperation());

      DOCCopyOperation.init(urls:destinationFolder:undoManager:)(a1, v11, a3);
    }
  }
}

unint64_t specialized makeDOCCopyOperation(nodes:destinationFolder:isDuplication:undoManager:)(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  if ([objc_opt_self() useFIOperations])
  {
    v8 = objc_allocWithZone(type metadata accessor for DOC_FICopyOperation());

    v9 = a4;
    swift_unknownObjectRetain();
    return specialized DOC_FICopyOperation.init(nodes:destinationFolder:isDuplication:undoManager:)(a1, a2, a3 & 1, v9, v8);
  }

  else
  {
    result = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (result)
    {
      v11 = result;
      v12 = DOCNode.fpfs_syncFetchFPItem()();
      if (v12)
      {
        v13 = v12;
        v14 = type metadata accessor for DOCCopyOperation();
        v15 = objc_allocWithZone(v14);
        v15[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_allowDSCopyEngine] = 1;
        *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsTransferResults] = 0;
        *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceNodeToURL] = 0;
        *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceURLToNode] = 0;
        *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsItemIDToPlaceholderID] = 0;
        *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation__doc_targetFilenamesByNode] = 0;
        v15[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_engineTypeUsed] = 0;
        v16 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication;
        v15[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication] = 0;
        *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs] = MEMORY[0x277D84F90];
        *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems] = v11;
        *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem] = v13;
        swift_beginAccess();
        v15[v16] = a3 & 1;
        *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_undoManager] = a4;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
        v17 = a4;

        v18 = v13;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v23.receiver = v15;
        v23.super_class = v14;
        v20 = objc_msgSendSuper2(&v23, sel_initWithItems_destinationFolder_, isa, v18);

        v21 = *((*MEMORY[0x277D85000] & *v20) + 0x1A0);
        v22 = v20;
        v21();

        return v20;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t specialized DOCHashableNode.__allocating_init(for:)(uint64_t a1)
{
  type metadata accessor for DOCHashableNode();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void specialized DOC_FICopyOperation.init(urls:destinationFolder:undoManager:)(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4, uint64_t a5)
{
  v46 = a5;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_fiOperation] = 0;
  v14 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_actionCompletionBlock];
  *v14 = 0;
  v14[1] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_doc_transferResults] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_targetFilenamesByURL] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_doc_targetFilenamesByNode] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_lastUsageUpdatePolicy] = 2;
  a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_shouldBounceOnCollision] = 0;
  a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_engineTypeUsed] = 0;
  a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_isDuplication] = 0;
  v15 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_resolutionForRemainingConflicts];
  *v15 = 0;
  v15[4] = 1;
  v16 = MEMORY[0x277D84F90];
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceItems] = MEMORY[0x277D84F90];
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceURLs] = a1;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_destinationFolder] = a2;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_undoManager] = a3;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_resultNodes] = v16;
  v17 = type metadata accessor for DOC_FICopyOperation();
  v51.receiver = a4;
  v51.super_class = v17;

  v47 = a2;
  swift_unknownObjectRetain();
  v44 = a3;
  v18 = objc_msgSendSuper2(&v51, sel_init);
  v19 = v18;
  v50 = v16;
  v20 = *(a1 + 16);
  v45 = a1;
  v43 = v18;
  if (v20)
  {
    v49 = objc_opt_self();
    v21 = v10 + 16;
    v22 = *(v10 + 16);
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v24 = *(v21 + 56);
    v25 = (v21 - 8);
    v26 = v19;
    v48 = MEMORY[0x277D84F90];
    do
    {
      v22(v13, v23, v9);
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v30 = [v49 fiNodeFromURL_];

      v31 = (*v25)(v13, v9);
      if (v30)
      {
        MEMORY[0x24C1FB090](v31);
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v48 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v48 = v50;
      }

      v23 += v24;
      --v20;
    }

    while (v20);
  }

  else
  {
    v32 = v18;
    v48 = MEMORY[0x277D84F90];
  }

  v33 = DOCNode.fpfs_syncFetchFINode()();
  if (v34)
  {
  }

  else if (v33)
  {
    v35 = v33;

    v36 = objc_allocWithZone(MEMORY[0x277D046D0]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v38 = [v36 initWithSourceNodes:isa destinationFolder:v35];

    v39 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_fiOperation;
    v40 = v43;
    swift_beginAccess();
    v41 = *(v40 + v39);
    *(v40 + v39) = v38;

    DOC_FICopyOperation.setUpCallbacks()();
    (*((*MEMORY[0x277D85000] & *v40) + 0x238))();

    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

uint64_t specialized DOC_FICopyOperation.init(nodes:destinationFolder:isDuplication:undoManager:)(unint64_t a1, uint64_t a2, char a3, void *a4, _BYTE *a5)
{
  v9 = &unk_27EEF2000;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_fiOperation] = 0;
  v10 = &a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_actionCompletionBlock];
  *v10 = 0;
  v10[1] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_doc_transferResults] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_targetFilenamesByURL] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_doc_targetFilenamesByNode] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_lastUsageUpdatePolicy] = 2;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_shouldBounceOnCollision] = 0;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_engineTypeUsed] = 0;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_isDuplication;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_isDuplication] = 0;
  v12 = &a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_resolutionForRemainingConflicts];
  *v12 = 0;
  v12[4] = 1;
  v13 = MEMORY[0x277D84F90];
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceURLs] = MEMORY[0x277D84F90];
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceItems] = a1;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_destinationFolder] = a2;
  swift_beginAccess();
  a5[v11] = a3;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_undoManager] = a4;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_resultNodes] = v13;
  v41.receiver = a5;
  v41.super_class = type metadata accessor for DOC_FICopyOperation();

  swift_unknownObjectRetain();
  v14 = a4;
  v15 = objc_msgSendSuper2(&v41, sel_init);
  v16 = a1 >> 62;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_21:
    v30 = v15;
    goto LABEL_22;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v38 = v15;
    MEMORY[0x24C1FC540](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = v15;
    swift_unknownObjectRetain();
LABEL_6:
    swift_getObjectType();
    v19 = DOCNode.isFINode.getter();
    swift_unknownObjectRelease();
    if (v19)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = v20;
        if (v16)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);

          swift_unknownObjectRetain();
          _bridgeCocoaArray<A>(_:)();
          swift_bridgeObjectRelease_n();
        }

        else
        {

          swift_unknownObjectRetain();
          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
          if (swift_dynamicCastMetatype())
          {
          }

          else
          {
            v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v28)
            {
              v39 = v14;
              v29 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
              do
              {
                objc_opt_self();
                if (!swift_dynamicCastObjCClass())
                {
                  break;
                }

                v29 += 8;
                --v28;
              }

              while (v28);

              v9 = &unk_27EEF2000;
              v14 = v39;
            }

            else
            {

              v9 = &unk_27EEF2000;
            }
          }
        }

        v22 = [v21 fileOpNode];
        v23 = objc_allocWithZone(MEMORY[0x277D046D0]);
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v25 = [v23 initWithSourceNodes:isa destinationFolder:v22];
        swift_unknownObjectRelease();

        v26 = v9[261];
        swift_beginAccess();
        v27 = *(v15 + v26);
        *(v15 + v26) = v25;
LABEL_27:

        DOC_FICopyOperation.setUpCallbacks()();
        (*((*MEMORY[0x277D85000] & *v15) + 0x238))();

        swift_unknownObjectRelease();
        return v15;
      }
    }

LABEL_22:
    v40 = v14;
    if (v16)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

      _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      if (swift_dynamicCastMetatype() || (v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
      }

      else
      {
        v37 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        do
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          v37 += 8;
          --v36;
        }

        while (v36);

        v9 = &unk_27EEF2000;
      }
    }

    objc_opt_self();
    v31 = swift_dynamicCastObjCClassUnconditional();
    v32 = objc_allocWithZone(MEMORY[0x277D046D0]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    swift_unknownObjectRetain();
    v33 = Array._bridgeToObjectiveC()().super.isa;

    v34 = [v32 initWithSourceItems:v33 destinationItem:v31];

    swift_unknownObjectRelease();
    v35 = v9[261];
    swift_beginAccess();
    v27 = *(v15 + v35);
    *(v15 + v35) = v34;
    v14 = v40;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type DOC_FICopyOperation.DOCCopyUndoingOperationType and conformance DOC_FICopyOperation.DOCCopyUndoingOperationType()
{
  result = lazy protocol witness table cache variable for type DOC_FICopyOperation.DOCCopyUndoingOperationType and conformance DOC_FICopyOperation.DOCCopyUndoingOperationType;
  if (!lazy protocol witness table cache variable for type DOC_FICopyOperation.DOCCopyUndoingOperationType and conformance DOC_FICopyOperation.DOCCopyUndoingOperationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOC_FICopyOperation.DOCCopyUndoingOperationType and conformance DOC_FICopyOperation.DOCCopyUndoingOperationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOC_FICopyOperation.EngineType and conformance DOC_FICopyOperation.EngineType()
{
  result = lazy protocol witness table cache variable for type DOC_FICopyOperation.EngineType and conformance DOC_FICopyOperation.EngineType;
  if (!lazy protocol witness table cache variable for type DOC_FICopyOperation.EngineType and conformance DOC_FICopyOperation.EngineType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOC_FICopyOperation.EngineType and conformance DOC_FICopyOperation.EngineType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCCopyOperation.DOCCopyUndoingOperationType and conformance DOCCopyOperation.DOCCopyUndoingOperationType()
{
  result = lazy protocol witness table cache variable for type DOCCopyOperation.DOCCopyUndoingOperationType and conformance DOCCopyOperation.DOCCopyUndoingOperationType;
  if (!lazy protocol witness table cache variable for type DOCCopyOperation.DOCCopyUndoingOperationType and conformance DOCCopyOperation.DOCCopyUndoingOperationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCCopyOperation.DOCCopyUndoingOperationType and conformance DOCCopyOperation.DOCCopyUndoingOperationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCCopyOperation.EngineType and conformance DOCCopyOperation.EngineType()
{
  result = lazy protocol witness table cache variable for type DOCCopyOperation.EngineType and conformance DOCCopyOperation.EngineType;
  if (!lazy protocol witness table cache variable for type DOCCopyOperation.EngineType and conformance DOCCopyOperation.EngineType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCCopyOperation.EngineType and conformance DOCCopyOperation.EngineType);
  }

  return result;
}

uint64_t specialized DOC_FICopyOperation.askUserToReplaceKeepBothOrStop(_:)(void *a1)
{
  responseFlags[20] = *MEMORY[0x277D85DE8];
  v2 = _DocumentManagerBundle();
  if (!v2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = v2;
  v4._countAndFlagsBits = 0xD000000000000015;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  v64._countAndFlagsBits = 0xD000000000000031;
  v64._object = 0x8000000249BC95B0;
  v5._object = 0x8000000249BC9570;
  v4._object = 0x8000000249BC9590;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v3, v4, v64);

  v8 = _DocumentManagerBundle();
  if (!v8)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v8;
  v10._countAndFlagsBits = 0xD00000000000001DLL;
  v65._countAndFlagsBits = 0xD000000000000033;
  v65._object = 0x8000000249BC9690;
  v10._object = 0x8000000249BC95F0;
  v11._object = 0x8000000249BC9610;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0x1000000000000070;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v12, v9, v11, v65);

  v13 = _DocumentManagerBundle();
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v13;
  v15._countAndFlagsBits = 0xD000000000000028;
  v66._object = 0x8000000249BC9700;
  v16._countAndFlagsBits = 0x746F42207065654BLL;
  v15._object = 0x8000000249BC96D0;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v16._object = 0xE900000000000068;
  v66._countAndFlagsBits = 0xD000000000000038;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v17, v14, v16, v66);

  v19 = _DocumentManagerBundle();
  if (!v19)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v20 = v19;
  v21._countAndFlagsBits = 0xD000000000000023;
  v67._object = 0x8000000249BC9700;
  v21._object = 0x8000000249BC9740;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v23._countAndFlagsBits = 1886352467;
  v23._object = 0xE400000000000000;
  v67._countAndFlagsBits = 0xD000000000000038;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v67);

  v25 = _DocumentManagerBundle();
  if (!v25)
  {
    goto LABEL_26;
  }

  v26 = v25;
  v27._countAndFlagsBits = 0xD000000000000026;
  v68._object = 0x8000000249BC9700;
  v28._countAndFlagsBits = 0x6563616C706552;
  v27._object = 0x8000000249BC9770;
  v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v29.value._object = 0xEB00000000656C62;
  v28._object = 0xE700000000000000;
  v68._countAndFlagsBits = 0xD000000000000038;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v29, v26, v28, v68);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_249B9A480;
  v32 = [a1 source];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 fileName];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  if (v37)
  {
    v38 = v35;
  }

  else
  {
    v38 = 0;
  }

  v39 = 0xE000000000000000;
  if (v37)
  {
    v39 = v37;
  }

  *(v31 + 32) = v38;
  *(v31 + 40) = v39;
  v40 = String.init(format:_:)();
  v42 = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_SStGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA54A0;
  v44 = *MEMORY[0x277CBF188];
  *(inited + 32) = *MEMORY[0x277CBF188];
  *(inited + 40) = v7;
  v45 = *MEMORY[0x277CBF198];
  v46 = MEMORY[0x277CBF1E8];
  *(inited + 56) = *MEMORY[0x277CBF198];
  *(inited + 64) = v40;
  v47 = *v46;
  *(inited + 72) = v42;
  *(inited + 80) = v47;
  *(inited + 88) = v24;
  v48 = *MEMORY[0x277CBF1C0];
  v49 = MEMORY[0x277CBF218];
  *(inited + 104) = *MEMORY[0x277CBF1C0];
  *(inited + 112) = v30._countAndFlagsBits;
  v50 = *v49;
  *(inited + 120) = v30._object;
  *(inited + 128) = v50;
  *(inited + 136) = v18;
  v51 = v50;
  v52 = v44;
  v53 = v45;
  v54 = v47;
  v55 = v48;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSg_SStMd);
  v56 = 5;
  swift_arrayDestroy();
  v57 = *MEMORY[0x277CBECE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSgMd);
  lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v59 = CFUserNotificationCreate(v57, 0.0, 3uLL, 0, isa);

  responseFlags[0] = 0;
  LODWORD(isa) = CFUserNotificationReceiveResponse(v59, 0.0, responseFlags);

  if (!isa)
  {
    v60 = responseFlags[0] & 3;
    if (v60 == 1)
    {
      v61 = 2;
    }

    else
    {
      v61 = 5;
    }

    if (v60 == 2)
    {
      return 3;
    }

    else
    {
      return v61;
    }
  }

  return v56;
}

uint64_t outlined init with take of (key: DOCItemDateGroupCategory, value: Date)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Dictionary<>.doc_firstKey(forValue:)(uint64_t result, double a2, double a3)
{
  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v3;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(result + 56) + 16 * v10);
    if (*v11 == a2 && v11[1] == a3)
    {
      return *(*(result + 48) + v10);
    }
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return 17;
    }

    v6 = *(result + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

Swift::Int DOCItemCollectionSizeClass.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

void *one-time initialization function for sizeClassToSize()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables26DOCItemCollectionSizeClassO_So6CGSizeVTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for sizeClassToSize);
  static DOCItemCollectionSizeClass.sizeClassToSize = result;
  return result;
}

DocumentManagerExecutables::DOCItemCollectionSizeClass_optional __swiftcall DOCItemCollectionSizeClass.init(rawValue:)(CGSize rawValue)
{
  if (one-time initialization token for sizeClassToSize != -1)
  {
    height = rawValue.height;
    width = rawValue.width;
    swift_once();
    rawValue.width = width;
    rawValue.height = height;
  }

  v2 = static DOCItemCollectionSizeClass.sizeClassToSize;

  return specialized Dictionary<>.doc_firstKey(forValue:)(v2, rawValue.width, rawValue.height);
}

DocumentManagerExecutables::DOCItemCollectionSizeClass_optional __swiftcall DOCItemCollectionSizeClass.init(exactlyMatch:)(CGSize exactlyMatch)
{
  height = exactlyMatch.height;
  width = exactlyMatch.width;
  if (one-time initialization token for sizeClassToSize != -1)
  {
    swift_once();
  }

  result.value = specialized Dictionary<>.doc_firstKey(forValue:)(static DOCItemCollectionSizeClass.sizeClassToSize, width, height);
  if (result.value == DocumentManagerExecutables_DOCItemCollectionSizeClass_unknownDefault)
  {

    return specialized static DOCItemCollectionSizeClass.almostExactSizeClass(for:)(width, height);
  }

  return result;
}

uint64_t DOCItemCollectionSizeClass.size.getter(uint64_t a1)
{
  if (one-time initialization token for sizeClassToSize != -1)
  {
    swift_once();
  }

  if (!*(static DOCItemCollectionSizeClass.sizeClassToSize + 2) || (result = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v3 & 1) == 0))
  {
    _StringGuts.grow(_:)(26);
    MEMORY[0x24C1FAEA0](0xD000000000000018, 0x8000000249C004C0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t DOCItemCollectionSizeClass.init(closestToHeight:)(double a1)
{
  if (one-time initialization token for sizeClassToSize != -1)
  {
LABEL_19:
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  result = 0;
  v2 = 0;
  v3 = 1 << *(static DOCItemCollectionSizeClass.sizeClassToSize + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(static DOCItemCollectionSizeClass.sizeClassToSize + 8);
  v6 = 1.79769313e308;
  v7 = (v3 + 63) >> 6;
  if (v5)
  {
    while (1)
    {
      v8 = v2;
LABEL_10:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v8 << 6);
      v11 = vabdd_f64(*(*(static DOCItemCollectionSizeClass.sizeClassToSize + 7) + 16 * v10 + 8), a1);
      if (v11 >= v6)
      {
        result = result;
      }

      else
      {
        result = *(*(static DOCItemCollectionSizeClass.sizeClassToSize + 6) + v10);
      }

      if (v11 < v6)
      {
        v6 = v11;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v8 >= v7)
    {
      return result;
    }

    v5 = *(static DOCItemCollectionSizeClass.sizeClassToSize + v8 + 8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }
}

uint64_t specialized static DOCItemCollectionSizeClass.almostExactSizeClass(for:)(double a1, double a2)
{
  if (one-time initialization token for sizeClassToSize != -1)
  {
LABEL_15:
    v12 = a2;
    v13 = a1;
    swift_once();
    a1 = v13;
    a2 = v12;
  }

  v2 = 0;
  v3 = 1 << *(static DOCItemCollectionSizeClass.sizeClassToSize + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(static DOCItemCollectionSizeClass.sizeClassToSize + 8);
  v6 = (v3 + 63) >> 6;
  do
  {
    if (!v5)
    {
      while (1)
      {
        v7 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v7 >= v6)
        {
          return 17;
        }

        v5 = *(static DOCItemCollectionSizeClass.sizeClassToSize + v7 + 8);
        ++v2;
        if (v5)
        {
          v2 = v7;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = v8 | (v2 << 6);
    v10 = (*(static DOCItemCollectionSizeClass.sizeClassToSize + 7) + 16 * v9);
  }

  while (vabdd_f64(*v10, a1) > 1.0 || vabdd_f64(v10[1], a2) > 1.0);
  return *(*(static DOCItemCollectionSizeClass.sizeClassToSize + 6) + v9);
}

uint64_t specialized DOCItemCollectionSizeClass.init(exactlyMatchWidth:)(double a1)
{
  if (one-time initialization token for sizeClassToSize != -1)
  {
LABEL_21:
    swift_once();
  }

  v2 = 0;
  v3 = 0;
  v4 = 1 << *(static DOCItemCollectionSizeClass.sizeClassToSize + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(static DOCItemCollectionSizeClass.sizeClassToSize + 8);
  v7 = 1.79769313e308;
  v8 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v9 = v3;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = v10 | (v9 << 6);
      v12 = vabdd_f64(*(*(static DOCItemCollectionSizeClass.sizeClassToSize + 7) + 16 * v11), a1);
      if (v12 >= v7)
      {
        v2 = v2;
      }

      else
      {
        v2 = *(*(static DOCItemCollectionSizeClass.sizeClassToSize + 6) + v11);
      }

      if (v12 < v7)
      {
        v7 = v12;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v9 >= v8)
    {
      break;
    }

    v6 = *(static DOCItemCollectionSizeClass.sizeClassToSize + v9 + 8);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  DOCItemCollectionSizeClass.size.getter(v2);
  if (v13 == a1)
  {
    return v2;
  }

  else
  {
    return 17;
  }
}

uint64_t specialized DOCItemCollectionSizeClass.init(exactlyMatchHeight:)(double a1)
{
  if (one-time initialization token for sizeClassToSize != -1)
  {
LABEL_21:
    swift_once();
  }

  v2 = 0;
  v3 = 0;
  v4 = 1 << *(static DOCItemCollectionSizeClass.sizeClassToSize + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(static DOCItemCollectionSizeClass.sizeClassToSize + 8);
  v7 = 1.79769313e308;
  v8 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v9 = v3;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = v10 | (v9 << 6);
      v12 = vabdd_f64(*(*(static DOCItemCollectionSizeClass.sizeClassToSize + 7) + 16 * v11 + 8), a1);
      if (v12 >= v7)
      {
        v2 = v2;
      }

      else
      {
        v2 = *(*(static DOCItemCollectionSizeClass.sizeClassToSize + 6) + v11);
      }

      if (v12 < v7)
      {
        v7 = v12;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v9 >= v8)
    {
      break;
    }

    v6 = *(static DOCItemCollectionSizeClass.sizeClassToSize + v9 + 8);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  DOCItemCollectionSizeClass.size.getter(v2);
  if (v13 == a1)
  {
    return v2;
  }

  else
  {
    return 17;
  }
}

uint64_t specialized DOCItemCollectionSizeClass.init(closestToWidth:)(double a1)
{
  if (one-time initialization token for sizeClassToSize != -1)
  {
LABEL_19:
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  result = 0;
  v2 = 0;
  v3 = 1 << *(static DOCItemCollectionSizeClass.sizeClassToSize + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(static DOCItemCollectionSizeClass.sizeClassToSize + 8);
  v6 = 1.79769313e308;
  v7 = (v3 + 63) >> 6;
  if (v5)
  {
    while (1)
    {
      v8 = v2;
LABEL_10:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v8 << 6);
      v11 = vabdd_f64(*(*(static DOCItemCollectionSizeClass.sizeClassToSize + 7) + 16 * v10), a1);
      if (v11 >= v6)
      {
        result = result;
      }

      else
      {
        result = *(*(static DOCItemCollectionSizeClass.sizeClassToSize + 6) + v10);
      }

      if (v11 < v6)
      {
        v6 = v11;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v8 >= v7)
    {
      return result;
    }

    v5 = *(static DOCItemCollectionSizeClass.sizeClassToSize + v8 + 8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionSizeClass and conformance DOCItemCollectionSizeClass()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionSizeClass and conformance DOCItemCollectionSizeClass;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionSizeClass and conformance DOCItemCollectionSizeClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionSizeClass and conformance DOCItemCollectionSizeClass);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionSizeClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionSizeClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Void __swiftcall DOCSidebarViewController.observeRemoveableMediaState()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x3F8))();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for OS_dispatch_queue();
    v3 = static OS_dispatch_queue.main.getter();
    DASessionSetDispatchQueue(v2, v3);

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = partial apply for closure #1 in DOCSidebarViewController.observeRemoveableMediaState();
    v14 = v4;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ();
    v12 = &block_descriptor_172;
    v5 = _Block_copy(&v9);
    v6 = v2;

    DARegisterDiskAppearedCallbackBlock();
    _Block_release(v5);
    v13 = partial apply for closure #2 in DOCSidebarViewController.observeRemoveableMediaState();
    v14 = v4;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ();
    v12 = &block_descriptor_3_7;
    v7 = _Block_copy(&v9);

    DARegisterDiskDisappearedCallbackBlock();
    _Block_release(v7);
    v13 = partial apply for closure #3 in DOCSidebarViewController.observeRemoveableMediaState();
    v14 = v4;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
    v12 = &block_descriptor_6_10;
    v8 = _Block_copy(&v9);

    DARegisterDiskDescriptionChangedCallbackBlock();
    _Block_release(v8);
  }
}

Swift::Bool __swiftcall DOCSidebarViewController.overrideLocationsSectionItemsForUSBErase(sources:)(Swift::OpaquePointer sources)
{
  v2 = v1;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Rename);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v117[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249C00530, v117);
    _os_log_impl(&dword_2493AC000, v5, v6, "[Erase] %s 1. START", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v118[0] = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = (*(*static DOCUSBFormatting.shared + 136))();
  if (!v9)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v117[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249C00530, v117);
      _os_log_impl(&dword_2493AC000, v36, v37, "[Erase] %s 8. No current erase operation", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x24C1FE850](v39, -1, -1);
      MEMORY[0x24C1FE850](v38, -1, -1);
    }

    goto LABEL_79;
  }

  v10 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v112 = v2;
  v116 = v10;
  rawValue = sources._rawValue;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v117[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249C00530, v117);
    *(v13 + 12) = 2080;
    v15 = v10;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v117);

    *(v13 + 14) = v20;
    v10 = v116;
    _os_log_impl(&dword_2493AC000, v11, v12, "[Erase] %s 2. erase operation: %s", v13, 0x16u);
    swift_arrayDestroy();
    v21 = v14;
    sources._rawValue = rawValue;
    MEMORY[0x24C1FE850](v21, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  if (sources._rawValue >> 62)
  {
    v22 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = *((sources._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v115 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source;
  if (!v22)
  {
LABEL_37:
    v65 = *&v10[v115];
    type metadata accessor for DOCExternalDeviceSource();
    v66 = swift_dynamicCastClass();
    if (v66)
    {
      v67 = v66;
      v68 = v65;
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v117[0] = v72;
        *v71 = 136315394;
        *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249C00530, v117);
        *(v71 + 12) = 2080;
        [v67 identifier];
        type metadata accessor for DOCDocumentSourceIdentifier(0);
        v73 = String.init<A>(describing:)();
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v117);

        *(v71 + 14) = v75;
        _os_log_impl(&dword_2493AC000, v69, v70, "[Erase] %s 6. Source Observer There is an erase operation item: %s", v71, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v72, -1, -1);
        v76 = v71;
        sources._rawValue = rawValue;
        MEMORY[0x24C1FE850](v76, -1, -1);
      }

      v77 = v112;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA0290;
      *(inited + 32) = v67;
      v117[0] = sources._rawValue;
      v79 = v68;

      specialized Array.append<A>(contentsOf:)(inited);
      v80 = specialized static DOCSourceOrderStrategy.sortedSources(from:orderedIdentifiers:)(v117[0], MEMORY[0x277D84F90]);

      v81 = *(**(v112 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

      v82 = v81(3);

      LOBYTE(v81) = closure #3 in DOCSidebarViewController.overrideLocationsSectionItemsForUSBErase(sources:)(v82, v80, v67, v118);

      if (v81)
      {
        v84 = (*((*MEMORY[0x277D85000] & *v112) + 0x550))(v83);
        if (*(v84 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v85 = Hasher._finalize()(), v86 = -1 << *(v84 + 32), v87 = v85 & ~v86, ((*(v84 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) != 0))
        {
          v88 = ~v86;
          while (1)
          {
            v89 = *(*(v84 + 48) + v87);
            if (v89 > 2 && v89 != 4 && v89 != 5)
            {
              break;
            }

            v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v90 & 1) == 0)
            {
              v87 = (v87 + 1) & v88;
              if ((*(v84 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87))
              {
                continue;
              }
            }

            v91 = v90 ^ 1;
            goto LABEL_50;
          }

          v91 = 0;
LABEL_50:
          v77 = v112;
        }

        else
        {
          v91 = 1;
        }

        if (*(v77 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
        {
          DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(v91 & 1, 1);
        }

        else
        {
          DOCSidebarViewController.markModelDidUpdateDuringUIChange()();
        }
      }
    }

    else
    {
    }

    goto LABEL_79;
  }

  v23 = 0;
  v113 = (sources._rawValue & 0xC000000000000001);
  v24 = sources._rawValue & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v113)
    {
      v25 = MEMORY[0x24C1FC540](v23, sources._rawValue);
    }

    else
    {
      if (v23 >= *(v24 + 16))
      {
        goto LABEL_84;
      }

      v25 = *(sources._rawValue + v23 + 4);
    }

    v26 = v25;
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v28 = [v25 identifier];
    v29 = [*&v10[v115] identifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
    {
      break;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_30;
    }

    ++v23;
    v10 = v116;
    sources._rawValue = rawValue;
    if (v27 == v22)
    {
      goto LABEL_37;
    }
  }

LABEL_30:
  type metadata accessor for DOCExternalDeviceSource();
  v40 = swift_dynamicCastClass();
  sources._rawValue = rawValue;
  if (!v40)
  {

    v10 = v116;
    goto LABEL_37;
  }

  v41 = v40;
  v42 = v116;
  v43 = v26;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  v113 = v43;
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v117[0] = v47;
    *v46 = 136315650;
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249C00530, v117);
    *(v46 + 12) = 2080;
    v48 = [*&v116[v115] identifier];
    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v49 = String.init<A>(describing:)();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v117);

    *(v46 + 14) = v51;
    sources._rawValue = rawValue;
    *(v46 + 22) = 2080;
    [v41 identifier];
    v52 = String.init<A>(describing:)();
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v117);

    *(v46 + 24) = v54;
    _os_log_impl(&dword_2493AC000, v44, v45, "[Erase] %s 3. Found real source: %s matching USB erase source: %s.", v46, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v47, -1, -1);
    MEMORY[0x24C1FE850](v46, -1, -1);
  }

  v55 = v112;
  v56 = [v42 operationState];
  v23 = v42;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();

  v59 = os_log_type_enabled(v57, v58);
  if (v56 != 2)
  {
    if (v59)
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v117[0] = v93;
      *v92 = 136315394;
      *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249C00530, v117);
      *(v92 + 12) = 2080;
      [v23 operationState];
      v94 = String.init<A>(describing:)();
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v117);

      *(v92 + 14) = v96;
      _os_log_impl(&dword_2493AC000, v57, v58, "[Erase] %s 5. Operation isn't finished. Its state is: %s. Attempting to hide the re-mounted disk until finished. ", v92, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v93, -1, -1);
      MEMORY[0x24C1FE850](v92, -1, -1);
    }

    v97 = *(**(v112 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

    v98 = v97(3);

    if ((closure #2 in DOCSidebarViewController.overrideLocationsSectionItemsForUSBErase(sources:)(v98, sources._rawValue, v41, v118) & 1) == 0)
    {
      goto LABEL_76;
    }

    v99 = (*((*MEMORY[0x277D85000] & *v112) + 0x550))();
    if (*(v99 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v100 = Hasher._finalize()();
      v101 = -1 << *(v99 + 32);
      v102 = v100 & ~v101;
      if ((*(v99 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102))
      {
        v103 = ~v101;
        while (1)
        {
          v104 = *(*(v99 + 48) + v102);
          if (v104 > 2 && v104 != 4 && v104 != 5)
          {
            break;
          }

          v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v105 & 1) == 0)
          {
            v102 = (v102 + 1) & v103;
            if ((*(v99 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102))
            {
              continue;
            }
          }

          v106 = v105 ^ 1;
          goto LABEL_67;
        }

LABEL_85:

        v106 = 0;
LABEL_67:
        v55 = v112;
        goto LABEL_73;
      }

      v106 = 1;
    }

    else
    {
      v106 = 1;
    }

LABEL_73:

    if (*(v55 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
    {
      DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(v106 & 1, 1);
    }

    else
    {
      DOCSidebarViewController.markModelDidUpdateDuringUIChange()();
    }

LABEL_76:

    goto LABEL_77;
  }

  if (!v59)
  {

    goto LABEL_78;
  }

  v60 = swift_slowAlloc();
  v61 = swift_slowAlloc();
  v117[0] = v61;
  *v60 = 136315394;
  *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249C00530, v117);
  *(v60 + 12) = 2080;
  [*&v116[v115] identifier];
  type metadata accessor for DOCDocumentSourceIdentifier(0);
  v62 = String.init<A>(describing:)();
  v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v117);

  *(v60 + 14) = v64;
  _os_log_impl(&dword_2493AC000, v57, v58, "[Erase] %s 4. Operation state is finished: %s. Not adding fake sidebar item.", v60, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x24C1FE850](v61, -1, -1);
  MEMORY[0x24C1FE850](v60, -1, -1);

LABEL_77:
LABEL_78:

LABEL_79:
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v117[0] = v110;
    *v109 = 136315138;
    *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249C00530, v117);
    _os_log_impl(&dword_2493AC000, v107, v108, "[Erase] %s 9. Source observer update END", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v110);
    MEMORY[0x24C1FE850](v110, -1, -1);
    MEMORY[0x24C1FE850](v109, -1, -1);
  }

  return v118[0];
}

uint64_t closure #2 in DOCSidebarViewController.overrideLocationsSectionItemsForUSBErase(sources:)(char *a1, unint64_t a2, void *a3, _BYTE *a4)
{
  v5 = a2;
  if (a2 >> 62)
  {
LABEL_37:
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  v74 = a1;
  v75 = a4;
  if (v7)
  {
    *&v82 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v8 = v82;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = MEMORY[0x24C1FC540](v9, v5);
        *&v82 = v8;
        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v14 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v10 = v14;
          v8 = v82;
        }

        *(v8 + 2) = v12 + 1;
        v13 = &v8[48 * v12];
        *(v13 + 4) = v10;
        ++v9;
        *(v13 + 40) = 0u;
        *(v13 + 56) = 0u;
        v13[72] = 1;
      }

      while (v7 != v9);
    }

    else
    {
      v15 = (v5 + 32);
      do
      {
        v16 = *v15;
        *&v82 = v8;
        v18 = *(v8 + 2);
        v17 = *(v8 + 3);
        v5 = v18 + 1;
        v19 = v16;
        if (v18 >= v17 >> 1)
        {
          v21 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v19 = v21;
          v8 = v82;
        }

        *(v8 + 2) = v5;
        v20 = &v8[48 * v18];
        *(v20 + 4) = v19;
        *(v20 + 40) = 0u;
        *(v20 + 56) = 0u;
        v20[72] = 1;
        ++v15;
        --v7;
      }

      while (v7);
    }
  }

  a4 = *(v8 + 2);

  if (!a4)
  {
LABEL_24:
    swift_bridgeObjectRelease_n();
    if (one-time initialization token for Rename == -1)
    {
LABEL_25:
      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.Rename);
      v44 = a3;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v78 = v48;
        *v47 = 136315394;
        *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249C00530, &v78);
        *(v47 + 12) = 2080;
        v77 = [v44 identifier];
        type metadata accessor for DOCDocumentSourceIdentifier(0);
        v49 = String.init<A>(describing:)();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v78);

        *(v47 + 14) = v51;
        _os_log_impl(&dword_2493AC000, v45, v46, "[Erase] %s 5.1 Did not find an existing sidebar item to replace for source ID: %s. Skipping", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v48, -1, -1);
        MEMORY[0x24C1FE850](v47, -1, -1);
      }

      return 0;
    }

LABEL_39:
    swift_once();
    goto LABEL_25;
  }

  v22 = 0;
  v23 = 0;
  a1 = v8 + 32;
  while (1)
  {
    if (v23 >= *(v8 + 2))
    {
      __break(1u);
      goto LABEL_37;
    }

    v24 = *&a1[v22];
    v25 = *&a1[v22 + 16];
    *&v83[9] = *&a1[v22 + 25];
    v82 = v24;
    *v83 = v25;
    v26 = outlined init with copy of DOCSidebarItem(&v82, &v78);
    v32 = DOCSidebarItem.representedLocation.getter(v26, v27, v28, v29, v30, v31);
    v33 = [v32 sourceIdentifier];

    v34 = [a3 identifier];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v35;
    v5 = v38;
    if (v40 == v39 && v37 == v38)
    {
      break;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined destroy of DOCSidebarItem(&v82);

    if (v42)
    {
      goto LABEL_29;
    }

    ++v23;
    v22 += 48;
    if (a4 == v23)
    {
      goto LABEL_24;
    }
  }

  outlined destroy of DOCSidebarItem(&v82);

LABEL_29:

  v53 = a3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  }

  if (v23 >= *(v8 + 2))
  {
    __break(1u);
    goto LABEL_41;
  }

  v54 = &v8[v22];
  v55 = *&v8[v22 + 32];
  v56 = *&v8[v22 + 40];
  v57 = *&v8[v22 + 48];
  v58 = *&v8[v22 + 56];
  v59 = *&v8[v22 + 64];
  *(v54 + 4) = a3;
  *(v54 + 40) = 0u;
  *(v54 + 56) = 0u;
  v60 = v8[v22 + 72];
  v54[72] = 4;
  outlined consume of DOCSidebarItem(v55, v56, v57, v58, v59, v60);
  (*(*v74 + 392))(v8);

  if (one-time initialization token for Rename != -1)
  {
LABEL_41:
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Logger.Rename);
  v62 = v53;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v77 = v66;
    *v65 = 136315906;
    *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249C00530, &v77);
    *(v65 + 12) = 2048;
    *(v65 + 14) = v23;
    *(v65 + 22) = 2080;
    v78 = [v62 identifier];
    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v67 = String.init<A>(describing:)();
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v77);

    *(v65 + 24) = v69;
    *(v65 + 32) = 2080;
    v78 = a3;
    v79 = 0u;
    v80 = 0u;
    v81 = 4;
    v70 = v62;
    v71 = String.init<A>(describing:)();
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v77);

    *(v65 + 34) = v73;
    _os_log_impl(&dword_2493AC000, v63, v64, "[Erase] %s 5.1 Replacing item at index: %ld of source ID: %s with item: %s", v65, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v66, -1, -1);
    MEMORY[0x24C1FE850](v65, -1, -1);
  }

  result = 1;
  *v75 = 1;
  return result;
}

char *closure #3 in DOCSidebarViewController.overrideLocationsSectionItemsForUSBErase(sources:)(unint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  if (!*(a2 + 16))
  {
    goto LABEL_33;
  }

  v6 = a3;
  v4 = a1;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  if (v9)
  {
    v5 = *(*(a2 + 56) + 8 * v8);
    if (!(v5 >> 62))
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
LABEL_34:
    __break(1u);
  }

  v10 = __CocoaSet.count.getter();
LABEL_5:
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v54 = MEMORY[0x277D84F90];

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v44 = v4;
      v13 = 0;
      v50 = v5 & 0xC000000000000001;
      v11 = v54;
      v46 = v5 & 0xFFFFFFFFFFFFFF8;
      v49 = v10;
      v47 = v5;
      v45 = v6;
      while (1)
      {
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v51 = v13 + 1;
        v52 = v11;
        if (v50)
        {
          v14 = MEMORY[0x24C1FC540](v13, v5);
        }

        else
        {
          if (v13 >= *(v46 + 16))
          {
            goto LABEL_32;
          }

          v14 = *(v5 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = [v14 identifier];
        v17 = [v6 identifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_20;
        }

        v24 = 1;
LABEL_26:
        v11 = v52;
        v54 = v52;
        v4 = *(v52 + 16);
        v42 = *(v52 + 24);
        if (v4 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v4 + 1, 1);
          v11 = v54;
        }

        *(v11 + 16) = v4 + 1;
        v43 = v11 + 48 * v4;
        *(v43 + 32) = v15;
        *(v43 + 40) = 0u;
        *(v43 + 56) = 0u;
        *(v43 + 72) = v24;
        ++v13;
        if (v51 == v49)
        {

          v4 = v44;
          goto LABEL_30;
        }
      }

LABEL_20:
      v25 = one-time initialization token for Rename;
      v26 = v6;
      v27 = v6;
      if (v25 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.Rename);
      v29 = v27;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v53 = v33;
        *v32 = 136315650;
        *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249C00530, &v53);
        *(v32 + 12) = 2080;
        v24 = 4;
        v34 = v29;
        v35 = String.init<A>(describing:)();
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v53);

        *(v32 + 14) = v37;
        *(v32 + 22) = 2080;
        [v34 identifier];
        type metadata accessor for DOCDocumentSourceIdentifier(0);
        v38 = String.init<A>(describing:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v53);

        *(v32 + 24) = v40;
        v41 = v31;
        v6 = v45;
        _os_log_impl(&dword_2493AC000, v30, v41, "[Erase] %s 7. Source Observer There is an Erase item adding sidebar item: %s for source id: %s", v32, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v33, -1, -1);
        MEMORY[0x24C1FE850](v32, -1, -1);

        *a4 = 1;
        v15 = v45;
      }

      else
      {

        *a4 = 1;
        v24 = 4;
        v6 = v26;
        v15 = v26;
      }

      v5 = v47;
      goto LABEL_26;
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    (*(*v4 + 392))(v11);

    return 1;
  }

  return result;
}

void DOCSidebarViewController.updateDisk(_:updateType:)(__DADisk *a1, unsigned __int8 a2)
{
  v3 = v2;
  specialized DOCSidebarViewController.sidebarItem(for:)(a1, &v29);
  v6 = v32;
  if (v32 != 255)
  {
    v7 = v29;
    v8 = v30;
    v9 = v31;
    v34[0] = v29;
    v34[1] = v30;
    v35 = v31;
    v10 = a2 | 2;
    v36 = v32;
    v11 = MEMORY[0x277D85000];
    if (v10 == 2 && (specialized DOCSidebarViewController.isRepairing(for:)(a1) & 1) != 0)
    {
      v12 = *((*v11 & *v3) + 0x420);
      outlined copy of DOCSidebarItem(v7, *(&v7 + 1), v8, *(&v8 + 1), v9, v6);
      v13 = v12(v33);
      specialized Set._Variant.insert(_:)(v27, v34);
      outlined consume of DOCSidebarItem(v27[0], v27[1], v27[2], v27[3], v27[4], v28);
      v13(v33, 0);
    }

    else
    {
      v14 = (*((*v11 & *v3) + 0x410))();
      v15 = specialized Set.contains(_:)(v34, v14);

      if (v15)
      {
        v16 = (*((*v11 & *v3) + 0x420))(v27);
        specialized Set._Variant.remove(_:)(v33);
        outlined destroy of DOCSidebarItem?(v33);
        v16(v27, 0);
      }
    }

    v17 = *(**(v3 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

    v18 = v17(3);

    if (closure #1 in DOCSidebarViewController.updateDisk(_:updateType:)(v18, v3))
    {
      v19 = (*((*v11 & *v3) + 0x550))();
      if (*(v19 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v20 = Hasher._finalize()(), v21 = -1 << *(v19 + 32), v22 = v20 & ~v21, ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = *(*(v19 + 48) + v22);
          if (v24 > 2 && v24 != 4 && v24 != 5)
          {
            break;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v25 & 1) == 0)
          {
            v22 = (v22 + 1) & v23;
            if ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
            {
              continue;
            }
          }

          v26 = v25 ^ 1;
          goto LABEL_18;
        }

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

LABEL_18:

      if (*(v3 + OBJC_IVAR___DOCSidebarViewController__updatingModelForUIChangeCount) <= 0)
      {
        DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(v26 & 1, 1);
      }

      else
      {
        DOCSidebarViewController.markModelDidUpdateDuringUIChange()();
      }
    }

    outlined destroy of DOCSidebarItem?(&v29);
  }
}

void closure #1 in DOCSidebarViewController.observeRemoveableMediaState()(void *a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      DOCSidebarViewController.updateDisk(_:updateType:)(v7, a3);

      v6 = v7;
    }
  }
}

void closure #3 in DOCSidebarViewController.observeRemoveableMediaState()(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = a1;
      DOCSidebarViewController.updateDisk(_:updateType:)(v4, 2u);

      v3 = v4;
    }
  }
}

Swift::Int DOCSidebarViewController.DiskUpdateType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

double DOCSidebarViewController.sidebarItem(for:)@<D0>(__DADisk *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized DOCSidebarViewController.sidebarItem(for:)(a1, &v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

uint64_t closure #1 in DOCSidebarViewController.updateDisk(_:updateType:)(uint64_t a1, void *a2)
{
  result = (*(*a1 + 312))();
  v5 = result;
  v6 = 0;
  v7 = *(result + 16);
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = v5 + 48 * v6;
  while (1)
  {
    if (v7 == v6)
    {

      v19 = (*((*MEMORY[0x277D85000] & *a2) + 0x410))(v18);
      specialized Array.append<A>(contentsOf:)(v19);
      (*(*a1 + 392))(v8);

      return 1;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    ++v6;
    v10 = (v9 + 48);
    v11 = *(v9 + 72);
    v9 += 48;
    if (v11 != 5)
    {
      v12 = *(v10 - 2);
      v13 = v10[1];
      v14 = v10[2];
      v20 = *v10;
      v21 = *(v10 - 1);
      outlined copy of DOCSidebarItem(v12, v21, *v10, v13, v14, v11);
      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v12;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
      }

      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 48 * v16;
      *(v17 + 32) = v22;
      *(v17 + 40) = v21;
      *(v17 + 48) = v20;
      *(v17 + 56) = v13;
      *(v17 + 64) = v14;
      *(v17 + 72) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void specialized DOCSidebarViewController.sidebarItem(for:)(__DADisk *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = DADiskCopyDescription(a1);
  if (v3)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

      v3 = 0;
    }

    else
    {

      v3 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;
  *(a2 + 40) = -1;
}

uint64_t outlined destroy of DOCSidebarItem?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CFDictionaryRef specialized DOCSidebarViewController.isRepairing(for:)(__DADisk *a1)
{
  result = DADiskCopyDescription(a1);
  if (result)
  {
    v2 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSidebarViewController.DiskUpdateType and conformance DOCSidebarViewController.DiskUpdateType()
{
  result = lazy protocol witness table cache variable for type DOCSidebarViewController.DiskUpdateType and conformance DOCSidebarViewController.DiskUpdateType;
  if (!lazy protocol witness table cache variable for type DOCSidebarViewController.DiskUpdateType and conformance DOCSidebarViewController.DiskUpdateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarViewController.DiskUpdateType and conformance DOCSidebarViewController.DiskUpdateType);
  }

  return result;
}

void *makeDOCMoveOperation(nodes:destinationFolder:undoManager:)(unint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();

  return specialized makeDOCMoveOperation(nodes:destinationFolder:undoManager:)(a1, a2, a3);
}

uint64_t *DOCMoveOperation.didFinish.unsafeMutableAddressor()
{
  if (one-time initialization token for didFinish != -1)
  {
    swift_once();
  }

  return &static DOCMoveOperation.didFinish;
}

uint64_t (*protocol witness for SomeOperation.actionCompletionBlock.modify in conformance DOC_FIMoveOperation(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xD8))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t (*protocol witness for SomeOperation.qualityOfService.modify in conformance DOC_FIMoveOperation(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  return protocol witness for DOCFileOperationsProviding.didUpdateInProgressFileOperationsHandler.modify in conformance DOCFileProviderSyncStateProvider;
}

uint64_t *DOCMoveOperation.willBegin.unsafeMutableAddressor()
{
  if (one-time initialization token for willBegin != -1)
  {
    swift_once();
  }

  return &static DOCMoveOperation.willBegin;
}

uint64_t DOC_FIMoveOperation.__allocating_init(nodes:destinationFolder:undoManager:)(unint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();

  return specialized DOC_FIMoveOperation.__allocating_init(nodes:destinationFolder:undoManager:)(a1, a2, a3);
}

uint64_t one-time initialization function for willBegin()
{
  result = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249C00680);
  static DOC_FIMoveOperation.willBegin = result;
  return result;
}

{
  result = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249C00680);
  static DOCMoveOperation.willBegin = result;
  return result;
}

uint64_t *DOC_FIMoveOperation.willBegin.unsafeMutableAddressor()
{
  if (one-time initialization token for willBegin != -1)
  {
    swift_once();
  }

  return &static DOC_FIMoveOperation.willBegin;
}

uint64_t one-time initialization function for didFinish()
{
  result = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249C00660);
  static DOC_FIMoveOperation.didFinish = result;
  return result;
}

{
  result = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249C00660);
  static DOCMoveOperation.didFinish = result;
  return result;
}

uint64_t *DOC_FIMoveOperation.didFinish.unsafeMutableAddressor()
{
  if (one-time initialization token for didFinish != -1)
  {
    swift_once();
  }

  return &static DOC_FIMoveOperation.didFinish;
}

Swift::Void __swiftcall DOC_FIMoveOperation.schedule()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_fiOperation);
  if (v1)
  {
    [v1 schedule];
  }
}

void *DOC_FIMoveOperation.sourceParentFolderItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceParentFolderItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOC_FIMoveOperation.sourceParentFolderItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceParentFolderItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for DOC_FIMoveOperation.actionCompletionBlock : DOC_FIMoveOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC8))();
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

uint64_t key path setter for DOC_FIMoveOperation.actionCompletionBlock : DOC_FIMoveOperation(uint64_t *a1, void **a2)
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

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xD0);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOC_FIMoveOperation.actionCompletionBlock.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_actionCompletionBlock);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1);
  return v2;
}

uint64_t DOC_FIMoveOperation.actionCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_actionCompletionBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

id DOC_FIMoveOperation.qualityOfService.getter()
{
  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_fiOperation);
  if (result)
  {
    return [result qualityOfService];
  }

  __break(1u);
  return result;
}

id DOC_FIMoveOperation.qualityOfService.setter(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_fiOperation);
  if (result)
  {
    return [result setQualityOfService_];
  }

  __break(1u);
  return result;
}

void *DOC_FIMoveOperation.qualityOfService.modify(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_fiOperation;
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

uint64_t DOC_FIMoveOperation.doc_transferResults.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_doc_transferResults;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *DOC_FIMoveOperation.undoManager.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_undoManager);
  v2 = v1;
  return v1;
}

void DOC_FIMoveOperation.init(urls:destinationFolder:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_fiOperation] = 0;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceParentFolderItem;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceParentFolderItem] = 0;
  v11 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_actionCompletionBlock];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_doc_transferResults] = 0;
  v12 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceItems] = MEMORY[0x277D84F90];
  swift_beginAccess();
  *&v2[v10] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceURLs] = a1;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_destinationFolderItem] = a2;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_undoManager] = 0;
  v13 = type metadata accessor for DOC_FIMoveOperation();
  v46.receiver = v2;
  v46.super_class = v13;

  v42 = a2;
  swift_unknownObjectRetain();
  v14 = objc_msgSendSuper2(&v46, sel_init);
  v15 = v14;
  v45 = v12;
  v16 = *(a1 + 16);
  v40 = a1;
  v41 = v14;
  if (v16)
  {
    v44 = objc_opt_self();
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v17 = v19;
    v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v21 = *(v18 + 56);
    v22 = (v18 - 8);
    v23 = v15;
    v43 = MEMORY[0x277D84F90];
    do
    {
      v24 = v18;
      v17(v9, v20, v5);
      URL._bridgeToObjectiveC()(v25);
      v27 = v26;
      v28 = [v44 fiNodeFromURL_];

      v29 = (*v22)(v9, v5);
      if (v28)
      {
        MEMORY[0x24C1FB090](v29);
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v43 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v43 = v45;
      }

      v20 += v21;
      --v16;
      v18 = v24;
    }

    while (v16);
  }

  else
  {
    v30 = v14;
    v43 = MEMORY[0x277D84F90];
  }

  swift_getObjectType();
  v31 = DOCNode.fpfs_syncFetchFINode()();
  if (v32)
  {

    goto LABEL_15;
  }

  v33 = v41;
  if (!v31)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v34 = v31;

  v35 = objc_allocWithZone(MEMORY[0x277D046F8]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v37 = [v35 initWithSourceNodes:isa destinationFolder:v34];

  v38 = *&v33[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_fiOperation];
  *&v33[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_fiOperation] = v37;

  DOC_FIMoveOperation.setUpCallbacks()();
  v39 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willBegin != -1)
  {
    swift_once();
  }

  [v39 postNotificationName:static DOCMoveOperation.willBegin object:{v33, v40}];

  swift_unknownObjectRelease();
}

uint64_t DOC_FIMoveOperation.init(nodes:destinationFolder:undoManager:)(unint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();

  return specialized DOC_FIMoveOperation.init(nodes:destinationFolder:undoManager:)(a1, a2, a3, v3);
}

void DOC_FIMoveOperation.setUpCallbacks()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_fiOperation);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = partial apply for closure #1 in DOC_FIMoveOperation.setUpCallbacks();
    v14 = v2;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed [FINode]) -> ();
    v12 = &block_descriptor_30_2;
    v3 = _Block_copy(&v9);
    v4 = v1;

    [v4 setCompletionHandler_];
    _Block_release(v3);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = partial apply for closure #2 in DOC_FIMoveOperation.setUpCallbacks();
    v14 = v5;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed FIOperationError) -> (@owned FIOperationReply?);
    v12 = &block_descriptor_34_7;
    v6 = _Block_copy(&v9);

    [v4 setErrorHandler_];
    _Block_release(v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = partial apply for closure #3 in DOC_FIMoveOperation.setUpCallbacks();
    v14 = v7;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @unowned OperationConflict, @guaranteed FIOperationRecord) -> (@unowned OperationResolution);
    v12 = &block_descriptor_38_6;
    v8 = _Block_copy(&v9);

    [v4 setConflictHandler_];
    _Block_release(v8);
  }
}

void closure #1 in DOC_FIMoveOperation.setUpCallbacks()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v22 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    aBlock[4] = partial apply for closure #1 in closure #1 in DOC_FIMoveOperation.setUpCallbacks();
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_44_7;
    v13 = _Block_copy(aBlock);
    v14 = v11;
    v21 = v5;
    v15 = v14;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v22;
    MEMORY[0x24C1FB9A0](0, v9, v4, v13);
    _Block_release(v13);

    (*(v1 + 8))(v4, v0);
    v17 = (*(v6 + 8))(v9, v21);
    v18 = (*((*MEMORY[0x277D85000] & *v15) + 0xC8))(v17);
    if (v18)
    {
      v19 = v18;
      v18(0);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v19);
    }

    else
    {
    }
  }
}

id closure #2 in DOC_FIMoveOperation.setUpCallbacks()(int a1, id a2)
{
  v2 = [a2 error];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((*MEMORY[0x277D85000] & *Strong) + 0xC8))();
    if (v5)
    {
      v6 = v5;
      v7 = v2;
      v6(v2);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
    }

    v8 = objc_allocWithZone(MEMORY[0x277D04718]);
    v9 = v2;
    v10 = _convertErrorToNSError(_:)();

    v11 = [v8 initWithResolution:5 error:v10];
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x277D04718]);
    v13 = v2;
    v10 = _convertErrorToNSError(_:)();

    v11 = [v12 initWithResolution:5 error:v10];
  }

  return v11;
}

uint64_t closure #3 in DOC_FIMoveOperation.setUpCallbacks()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 5;
  }

  return 0;
}

id DOC_FIMoveOperation.actionNameForUndoing.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceItems);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (__CocoaSet.count.getter() < 1)
  {
    return 0;
  }

LABEL_3:
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = result;
  v22._object = 0x8000000249BCFC20;
  v4._countAndFlagsBits = 0x1000000000000026;
  v4._object = 0x8000000249BCFBD0;
  v5._object = 0x8000000249BCFC00;
  v22._countAndFlagsBits = 0xD000000000000039;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0x1000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v6, v3, v5, v22);

  result = _DocumentManagerBundle();
  if (result)
  {
    v7 = result;
    v23._object = 0x8000000249BCFC90;
    v8._object = 0x8000000249BCFC60;
    v23._countAndFlagsBits = 0xD00000000000003FLL;
    v8._countAndFlagsBits = 0xD000000000000027;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v23);

    if (v1 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = result;
    }

    if (result)
    {
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v12 = *(v1 + 32);
          swift_unknownObjectRetain();
LABEL_12:
          v13 = [v12 displayName];
          swift_unknownObjectRelease();
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          if (v11 == 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v17 = swift_allocObject();
            *(v17 + 16) = xmmword_249B9A480;
            *(v17 + 56) = MEMORY[0x277D837D0];
            *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v17 + 32) = v14;
            *(v17 + 40) = v16;
          }

          else
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v19 = swift_allocObject();
            v20 = MEMORY[0x277D83B88];
            *(v19 + 16) = xmmword_249B9A480;
            v21 = MEMORY[0x277D83C10];
            *(v19 + 56) = v20;
            *(v19 + 64) = v21;
            *(v19 + 32) = v11;
          }

          v18 = static String.localizedStringWithFormat(_:_:)();

          return v18;
        }

        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    v12 = MEMORY[0x24C1FC540](0, v1);
    goto LABEL_12;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t DOC_FIMoveOperation.operationForRedoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_undoManager);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceItems);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_destinationFolderItem);
  v4 = objc_allocWithZone(type metadata accessor for DOC_FIMoveOperation());
  swift_getObjectType();
  v5 = v1;

  swift_unknownObjectRetain();
  return specialized DOC_FIMoveOperation.init(nodes:destinationFolder:undoManager:)(v2, v3, v5, v4);
}

objc_class *DOC_FIMoveOperation.operationForUndoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_undoManager);
  if (!v1)
  {
    return 0;
  }

  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v4 = v1;
  v5 = v3();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {

LABEL_8:

    return 0;
  }

  v7 = v5;
  v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5(*(v5 + 16), 0);
  v9 = specialized Sequence._copySequenceContents(initializing:)(&v14, (v8 + 32), v6, v7);
  result = outlined consume of Set<UITouch>.Iterator._Variant();
  if (v9 != v6)
  {
    __break(1u);
    return result;
  }

  v11 = (*((*v2 & *v0) + 0xB0))(result);
  if (v11)
  {
    v12 = v11;
    v13 = objc_allocWithZone(type metadata accessor for DOC_FIMoveOperation());
    return specialized DOC_FIMoveOperation.init(nodes:destinationFolder:undoManager:)(v8, v12, v4, v13);
  }

  return 0;
}

Swift::Void __swiftcall DOC_FIMoveOperation.registerUndo()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_undoManager);
  if (v1)
  {
    [v1 registerUndoOperationForSender_];
  }
}

id DOC_FIMoveOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *DOCMoveOperation.sourceParentFolderItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceParentFolderItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCMoveOperation.sourceParentFolderItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceParentFolderItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCMoveOperation.undoManager.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_undoManager);
  v2 = v1;
  return v1;
}

id DOCMoveOperation.init(urls:destinationFolder:)(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceParentFolderItem;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceParentFolderItem] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceItems] = MEMORY[0x277D84F90];
  swift_beginAccess();
  *&v2[v5] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceURLs] = a1;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_destinationFolderItem] = a2;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_undoManager] = 0;
  type metadata accessor for URL();
  v6 = a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v10.receiver = v2;
  v10.super_class = type metadata accessor for DOCMoveOperation();
  v8 = objc_msgSendSuper2(&v10, sel_initWithURLs_destinationFolder_, isa, v6);

  return v8;
}

void *DOCMoveOperation.init(items:destinationFolder:undoManager:)(uint64_t a1, void *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceParentFolderItem] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceURLs] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceItems] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_destinationFolderItem] = a2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_undoManager] = a3;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

  v6 = a2;
  v7 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13.receiver = v3;
  v13.super_class = type metadata accessor for DOCMoveOperation();
  v9 = objc_msgSendSuper2(&v13, sel_initWithItems_destinationFolder_, isa, v6);

  v10 = *((*MEMORY[0x277D85000] & *v9) + 0xB0);
  v11 = v9;
  v10();

  return v11;
}

Swift::Void __swiftcall DOCMoveOperation.presendNotifications()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCMoveOperation();
  objc_msgSendSuper2(&v2, sel_presendNotifications);
  v1 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willBegin != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:static DOCMoveOperation.willBegin object:v0];
}

Swift::Void __swiftcall DOCMoveOperation.actionMain()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceItems);
  if (v2 >> 62)
  {
    if (__CocoaSet.count.getter() < 1)
    {
      goto LABEL_11;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_11;
  }

  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_undoManager))
  {

    if (v2 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v3 = _bridgeCocoaArray<A>(_:)();

      v2 = v3;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    v4 = specialized static UIDocumentBrowserAction.fetchParent(nodes:)(v2);

    if (v4)
    {
      swift_getObjectType();
      v5 = DOCNode.fpfs_syncFetchFPItem()();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0;
    }

    (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v5);
  }

LABEL_11:
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCMoveOperation();
  objc_msgSendSuper2(&v6, sel_actionMain);
}

uint64_t DOCMoveOperation.finish(withResult:error:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(a1, aBlock);
  v14 = v32;
  if (!v32)
  {
    v20 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = __swift_project_boxed_opaque_existential_1(aBlock, v32);
  v16 = *(v14 - 1);
  v17 = MEMORY[0x28223BE20](v15, v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v20 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v16 + 8))(v19, v14);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (a2)
  {
LABEL_3:
    a2 = _convertErrorToNSError(_:)();
  }

LABEL_4:
  v21 = type metadata accessor for DOCMoveOperation();
  v35.receiver = v3;
  v35.super_class = v21;
  objc_msgSendSuper2(&v35, sel_finishWithResult_error_, v20, a2);
  swift_unknownObjectRelease();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  v33 = partial apply for closure #1 in DOCMoveOperation.finish(withResult:error:);
  v34 = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = &block_descriptor_173;
  v24 = _Block_copy(aBlock);
  v25 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v13, v9, v24);
  _Block_release(v24);

  (*(v30 + 8))(v9, v6);
  return (*(v28 + 8))(v13, v29);
}

void closure #1 in closure #1 in DOC_FIMoveOperation.setUpCallbacks()(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (one-time initialization token for didFinish != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:static DOCMoveOperation.didFinish object:a1];
}

id @objc DOC_FIMoveOperation.actionNameForUndoing.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x24C1FAD20](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id DOCMoveOperation.actionNameForUndoing.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceItems);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (__CocoaSet.count.getter() < 1)
  {
    return 0;
  }

LABEL_3:
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = result;
  v23._object = 0x8000000249BCFC20;
  v4._countAndFlagsBits = 0x1000000000000026;
  v4._object = 0x8000000249BCFBD0;
  v5._object = 0x8000000249BCFC00;
  v23._countAndFlagsBits = 0xD000000000000039;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0x1000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v6, v3, v5, v23);

  result = _DocumentManagerBundle();
  if (result)
  {
    v7 = result;
    v24._object = 0x8000000249BCFC90;
    v8._object = 0x8000000249BCFC60;
    v24._countAndFlagsBits = 0xD00000000000003FLL;
    v8._countAndFlagsBits = 0xD000000000000027;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v24);

    if (v1 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = result;
    }

    if (result)
    {
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v12 = *(v1 + 32);
LABEL_12:
          v13 = v12;
          v14 = [v12 displayName];

          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          if (v11 == 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v18 = swift_allocObject();
            *(v18 + 16) = xmmword_249B9A480;
            *(v18 + 56) = MEMORY[0x277D837D0];
            *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v18 + 32) = v15;
            *(v18 + 40) = v17;
          }

          else
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v20 = swift_allocObject();
            v21 = MEMORY[0x277D83B88];
            *(v20 + 16) = xmmword_249B9A480;
            v22 = MEMORY[0x277D83C10];
            *(v20 + 56) = v21;
            *(v20 + 64) = v22;
            *(v20 + 32) = v11;
          }

          v19 = static String.localizedStringWithFormat(_:_:)();

          return v19;
        }

        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    v12 = MEMORY[0x24C1FC540](0, v1);
    goto LABEL_12;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *DOCMoveOperation.operationForRedoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_undoManager);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceItems);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_destinationFolderItem);
  v4 = objc_allocWithZone(type metadata accessor for DOCMoveOperation());
  v5 = v1;

  return DOCMoveOperation.init(items:destinationFolder:undoManager:)(v2, v3, v5);
}

void *DOCMoveOperation.operationForUndoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_undoManager);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v0 transferResults];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = *(v5 + 16);
  if (!v6)
  {

LABEL_8:

    return 0;
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5(*(v5 + 16), 0);
  v8 = specialized Sequence._copySequenceContents(initializing:)(&v13, (v7 + 32), v6, v5);
  result = outlined consume of Set<UITouch>.Iterator._Variant();
  if (v8 != v6)
  {
    __break(1u);
    return result;
  }

  v10 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))(result);
  if (v10)
  {
    v11 = v10;
    v12 = objc_allocWithZone(type metadata accessor for DOCMoveOperation());
    return DOCMoveOperation.init(items:destinationFolder:undoManager:)(v7, v11, v2);
  }

  return 0;
}

Swift::Void __swiftcall DOCMoveOperation.registerUndo()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_undoManager);
  if (v1)
  {
    [v1 registerUndoOperationForSender_];
  }
}

id DOCMoveOperation.__allocating_init(items:destinationFolder:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithItems:isa destinationFolder:a2];

  return v6;
}

id DOCMoveOperation.__allocating_init(items:destinationURL:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = objc_allocWithZone(v3);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [v5 initWithItems:isa destinationURL:v8];

  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 8))(a2, v11);
  return v10;
}

id DOCMoveOperation.__allocating_init(sourceURLsAndNames:destinationFolder:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  type metadata accessor for URL();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithSourceURLsAndNames:isa destinationFolder:a2];

  return v6;
}

id DOC_FIMoveOperation.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *specialized makeDOCMoveOperation(nodes:destinationFolder:undoManager:)(unint64_t a1, uint64_t a2, void *a3)
{
  if ([objc_opt_self() useFIOperations])
  {
    v6 = objc_allocWithZone(type metadata accessor for DOC_FIMoveOperation());

    v7 = a3;
    swift_unknownObjectRetain();
    return specialized DOC_FIMoveOperation.init(nodes:destinationFolder:undoManager:)(a1, a2, v7, v6);
  }

  else
  {
    result = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (result)
    {
      v9 = result;
      v10 = DOCNode.fpfs_syncFetchFPItem()();
      if (v10)
      {
        v11 = v10;
        objc_allocWithZone(type metadata accessor for DOCMoveOperation());
        return DOCMoveOperation.init(items:destinationFolder:undoManager:)(v9, v11, a3);
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t specialized DOC_FIMoveOperation.__allocating_init(nodes:destinationFolder:undoManager:)(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(type metadata accessor for DOC_FIMoveOperation());

  return specialized DOC_FIMoveOperation.init(nodes:destinationFolder:undoManager:)(a1, a2, a3, v6);
}

objc_class *specialized DOC_FIMoveOperation.init(nodes:destinationFolder:undoManager:)(unint64_t a1, void *a2, void *a3, char *a4)
{
  v7 = &unk_27EEF2000;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_fiOperation] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceParentFolderItem] = 0;
  v8 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_actionCompletionBlock];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_doc_transferResults] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceURLs] = MEMORY[0x277D84F90];
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceItems] = a1;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_destinationFolderItem] = a2;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_undoManager] = a3;
  v34.receiver = a4;
  v34.super_class = type metadata accessor for DOC_FIMoveOperation();

  v9 = a2;
  v10 = a3;
  v11 = objc_msgSendSuper2(&v34, sel_init);
  v12 = a1 >> 62;
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_19:
    v25 = v11;
    goto LABEL_20;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v32 = v11;
    MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    v14 = v11;
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v15 = DOCNode.isFINode.getter();
  swift_unknownObjectRelease();
  if (v15)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      if (v12)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);

        _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
        if (swift_dynamicCastMetatype())
        {
        }

        else
        {
          v33 = v10;
          v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18)
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
          }

          v10 = v33;
        }
      }

      v20 = [v17 fileOpNode];
      v21 = objc_allocWithZone(MEMORY[0x277D046F8]);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = [v21 initWithSourceNodes:v22.super.isa destinationFolder:v20];
      isa = v9;
      v9 = v20;
      v7 = &unk_27EEF2000;
      goto LABEL_30;
    }
  }

LABEL_20:
  if (v12)
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
      v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        v27 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        while (1)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          v27 += 8;
          if (!--v26)
          {
            v7 = &unk_27EEF2000;
            goto LABEL_28;
          }
        }

        v7 = &unk_27EEF2000;
      }
    }
  }

LABEL_28:
  result = specialized DOCNode.fpfs_syncFetchFPItem()();
  if (!result)
  {
    goto LABEL_36;
  }

  v22.super.isa = result;

  v28 = objc_allocWithZone(MEMORY[0x277D046F8]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = [v28 initWithSourceItems:isa destinationItem:v22.super.isa];
LABEL_30:

  v29 = v7[288];
  v30 = *(v11 + v29);
  *(v11 + v29) = v23;

  DOC_FIMoveOperation.setUpCallbacks()();
  (*((*MEMORY[0x277D85000] & *v11) + 0x148))();
  v31 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willBegin != -1)
  {
    swift_once();
  }

  [v31 postNotificationName:static DOCMoveOperation.willBegin object:v11];

  return v11;
}

uint64_t specialized DOC_FIMoveOperation.init(nodes:destinationFolder:undoManager:)(unint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v6 = &unk_27EEF2000;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_fiOperation] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceParentFolderItem] = 0;
  v7 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_actionCompletionBlock];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_doc_transferResults] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceURLs] = MEMORY[0x277D84F90];
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceItems] = a1;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_destinationFolderItem] = a2;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_undoManager] = a3;
  v33.receiver = a4;
  v33.super_class = type metadata accessor for DOC_FIMoveOperation();

  swift_unknownObjectRetain();
  v8 = a3;
  v9 = objc_msgSendSuper2(&v33, sel_init);
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_21:
    v22 = v9;
    goto LABEL_22;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v31 = v9;
    MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    }

    v12 = v9;
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v13 = DOCNode.isFINode.getter();
  swift_unknownObjectRelease();
  if (v13)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      if (v10)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);

        _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
        if (swift_dynamicCastMetatype())
        {
        }

        else
        {
          v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            v32 = v8;
            v21 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
            do
            {
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
                break;
              }

              v21 += 8;
              --v20;
            }

            while (v20);

            v8 = v32;
            v6 = &unk_27EEF2000;
          }

          else
          {

            v6 = &unk_27EEF2000;
          }
        }
      }

      v16 = [v15 fileOpNode];
      v17 = objc_allocWithZone(MEMORY[0x277D046F8]);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v19 = [v17 initWithSourceNodes:isa destinationFolder:v16];
      swift_unknownObjectRelease();

      goto LABEL_32;
    }
  }

LABEL_22:
  if (v10)
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
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        do
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          v24 += 8;
          --v23;
        }

        while (v23);
        v6 = &unk_27EEF2000;
      }
    }
  }

  result = DOCNode.fpfs_syncFetchFPItem()();
  if (!result)
  {
    goto LABEL_38;
  }

  v25 = result;

  v26 = objc_allocWithZone(MEMORY[0x277D046F8]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v27 = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v26 initWithSourceItems:v27 destinationItem:v25];

  swift_unknownObjectRelease();
LABEL_32:
  v28 = v6[288];
  v29 = *(v9 + v28);
  *(v9 + v28) = v19;

  DOC_FIMoveOperation.setUpCallbacks()();
  (*((*MEMORY[0x277D85000] & *v9) + 0x148))();
  v30 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willBegin != -1)
  {
    swift_once();
  }

  [v30 postNotificationName:static DOCMoveOperation.willBegin object:v9];

  return v9;
}

void specialized makeDOCMoveOperation(urls:destinationFolder:undoManager:)(uint64_t a1, uint64_t a2)
{
  if ([objc_opt_self() useFIOperations])
  {
    objc_allocWithZone(type metadata accessor for DOC_FIMoveOperation());

    swift_unknownObjectRetain();
    DOC_FIMoveOperation.init(urls:destinationFolder:)(a1, a2);
  }

  else
  {
    swift_getObjectType();
    v4 = DOCNode.fpfs_syncFetchFPItem()();
    if (v4)
    {
      v5 = v4;
      v6 = objc_allocWithZone(type metadata accessor for DOCMoveOperation());
      type metadata accessor for URL();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v6 initWithURLs:isa destinationFolder:v5];
    }
  }
}

uint64_t one-time initialization function for supportedMediaTypes()
{
  v0 = [objc_opt_self() audiovisualTypes];
  type metadata accessor for AVFileType(0);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = 32;
    v4 = v13;
    do
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v13[2];
      v7 = v13[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
      }

      v13[2] = v8 + 1;
      v9 = &v13[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  supportedMediaTypes._rawValue = v4;
  return result;
}

uint64_t MetadataItem.key.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x656475746974616CLL;
    v7 = 0x64757469676E6F6CLL;
    if (a1 != 10)
    {
      v7 = 0x6572617774666F73;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 1701869940;
    v9 = 0x747369747261;
    if (a1 != 7)
    {
      v9 = 0x6D614E6D75626C61;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6F69736E656D6944;
    v2 = 0x656C746974;
    v3 = 0x726F7461657263;
    if (a1 != 4)
    {
      v3 = 0x6867697279706F63;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6E6F697461727544;
    if (a1 != 1)
    {
      v4 = 0x736365646F43;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetadataItem(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = MetadataItem.key.getter(*a1);
  v5 = v4;
  if (v3 == MetadataItem.key.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetadataItem()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MetadataItem.key.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MetadataItem()
{
  MetadataItem.key.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetadataItem()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MetadataItem.key.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetadataItem@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MetadataItem.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MetadataItem@<X0>(uint64_t *a1@<X8>)
{
  result = MetadataItem.key.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t DOCAssetMetadataFetcher.__allocating_init(asset:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DOCMediaMetadataProvider.metadataValues.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    if (v1 == 1)
    {

      return DOCMediaMetadataProvider.fullMetadataValues.getter();
    }

    else
    {
      _StringGuts.grow(_:)(17);
      MEMORY[0x24C1FAEA0](0x656C646E61686E55, 0xEF20657361632064);
      type metadata accessor for DOCMetadataLevelOfDetail(0);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {

    return DOCMediaMetadataProvider.compactMetadataValues.getter();
  }

  return result;
}

uint64_t DOCMediaMetadataProvider.fullMetadataValues.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = DOCMediaMetadataProvider.loadCache(with:)(&outlined read-only object #0 of DOCMediaMetadataProvider.fullMetadataValues.getter);
  }

  *(v0 + 32) = v1;

  v2 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd);
  OS_dispatch_queue.sync<A>(execute:)();

  return v4;
}

uint64_t DOCMediaMetadataProvider.compactMetadataValues.getter()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = DOCMediaMetadataProvider.loadCache(with:)(&outlined read-only object #0 of DOCMediaMetadataProvider.compactMetadataValues.getter);
  }

  *(v0 + 40) = v1;

  v2 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd);
  OS_dispatch_queue.sync<A>(execute:)();

  return v4;
}

uint64_t DOCMediaMetadataProvider.loadCache(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  type metadata accessor for MetadataValueCache();
  swift_allocObject();
  v8 = MetadataValueCache.init()();
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = *(v2 + 16);
  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = v10;
  v12[6] = v8;
  v12[7] = v9;

  v13 = v9;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in DOCMediaMetadataProvider.loadCache(with:), v12);

  outlined destroy of CharacterSet?(v7, &_sScPSgMd);
  OS_dispatch_group.wait()();

  return v8;
}

uint64_t closure #1 in DOCMediaMetadataProvider.loadCache(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](closure #1 in DOCMediaMetadataProvider.loadCache(with:), 0, 0);
}

uint64_t closure #1 in DOCMediaMetadataProvider.loadCache(with:)()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  v4 = MEMORY[0x277D84F78] + 8;
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v3, v4, v5, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:), v2, v6);
}

{
  dispatch_group_leave(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in DOCMediaMetadataProvider.loadCache(with:)()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](closure #1 in DOCMediaMetadataProvider.loadCache(with:), 0, 0);
  }
}

uint64_t closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:), 0, 0);
}

uint64_t closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:)()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = **(v0 + 72);
    v3 = (v1 + 32);
    v4 = type metadata accessor for TaskPriority();
    v5 = *(v4 - 8);
    v26 = *(v5 + 56);
    v25 = (v5 + 48);
    v24 = (v5 + 8);
    v6 = &_sScPSgMd;
    v7 = &_sScPSgMR;
    do
    {
      v29 = v2;
      v11 = *(v0 + 104);
      v10 = *(v0 + 112);
      v12 = *(v0 + 88);
      v28 = *(v0 + 96);
      v13 = v7;
      v14 = v6;
      v15 = *v3;
      v30 = v3 + 1;
      v26(v10, 1, 1, v4);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      v17 = (v16 + 16);
      *(v16 + 24) = 0;
      *(v16 + 32) = v15;
      v6 = v14;
      v7 = v13;
      *(v16 + 40) = v12;
      *(v16 + 48) = v28;
      outlined init with copy of DOCGridLayout.Spec?(v10, v11, v6);
      LODWORD(v11) = (*v25)(v11, 1, v4);

      v18 = *(v0 + 104);
      if (v11 == 1)
      {
        outlined destroy of CharacterSet?(*(v0 + 104), v6);
        if (*v17)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v24)(v18, v4);
        if (*v17)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v19 = dispatch thunk of Actor.unownedExecutor.getter();
          v20 = v21;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v19 = 0;
      v20 = 0;
LABEL_10:

      if (v20 | v19)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v20;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 112);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v27;
      swift_task_create();

      outlined destroy of CharacterSet?(v9, v6);
      v3 = v30;
      v2 = v29 - 1;
    }

    while (v29 != 1);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 528) = a6;
  *(v6 + 520) = a5;
  *(v6 + 704) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:)()
{
  v1 = *(v0 + 704);
  if (v1 <= 5)
  {
    if (*(v0 + 704) <= 2u)
    {
      if (*(v0 + 704))
      {
        if (v1 == 1)
        {
          v2 = swift_task_alloc();
          *(v0 + 552) = v2;
          *v2 = v0;
          v2[1] = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);

          return DOCAssetMetadataFetcher.durationString.getter();
        }

        else
        {
          v12 = swift_task_alloc();
          *(v0 + 568) = v12;
          *v12 = v0;
          v12[1] = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);

          return DOCAssetMetadataFetcher.codecs.getter();
        }
      }

      else
      {
        v8 = swift_task_alloc();
        *(v0 + 536) = v8;
        *v8 = v0;
        v8[1] = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);

        return DOCAssetMetadataFetcher.dimensionsString.getter();
      }
    }

    if (v1 == 3)
    {
      v4 = *MEMORY[0x277CE5EF0];
      v5 = swift_task_alloc();
      *(v0 + 584) = v5;
      *v5 = v0;
      v6 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
    }

    else if (v1 == 4)
    {
      v4 = *MEMORY[0x277CE5ED0];
      v5 = swift_task_alloc();
      *(v0 + 600) = v5;
      *v5 = v0;
      v6 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
    }

    else
    {
      v4 = *MEMORY[0x277CE5EC8];
      v5 = swift_task_alloc();
      *(v0 + 616) = v5;
      *v5 = v0;
      v6 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
    }

    goto LABEL_32;
  }

  if (*(v0 + 704) <= 8u)
  {
    if (v1 == 6)
    {
      v4 = *MEMORY[0x277CE5EF8];
      v5 = swift_task_alloc();
      *(v0 + 632) = v5;
      *v5 = v0;
      v6 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
    }

    else if (v1 == 7)
    {
      v4 = *MEMORY[0x277CE5EB8];
      v5 = swift_task_alloc();
      *(v0 + 648) = v5;
      *v5 = v0;
      v6 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
    }

    else
    {
      v4 = *MEMORY[0x277CE5EB0];
      v5 = swift_task_alloc();
      *(v0 + 664) = v5;
      *v5 = v0;
      v6 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
    }

LABEL_32:
    v5[1] = v6;

    return DOCAssetMetadataFetcher.commonMetadataStringValue(for:)(v4);
  }

  if (v1 - 9 >= 2)
  {
    v9 = *(*(v0 + 520) + 16);
    v10 = *MEMORY[0x277CE5EA8];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 512;
    *(v0 + 24) = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
    v11 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo12AVAssetTrackCGs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [AVAssetTrack];
    *(v0 + 104) = &block_descriptor_73_1;
    *(v0 + 112) = v11;
    [v9 loadTracksWithMediaType:v10 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *(v0 + 208);
  if (v1 && (v2 = *(v0 + 200), v3 = *(v0 + 528), v4 = *(v0 + 704), v5 = *(v3 + 16), v6 = swift_allocObject(), *(v6 + 16) = v4, *(v6 + 24) = v2, *(v6 + 32) = v1, *(v6 + 40) = v3, v7 = swift_allocObject(), *(v7 + 16) = partial apply for closure #1 in MetadataValueCache.add(property:value:), *(v7 + 24) = v6, *(v0 + 176) = partial apply for thunk for @escaping @callee_guaranteed () -> (), *(v0 + 184) = v7, *(v0 + 144) = MEMORY[0x277D85DD0], *(v0 + 152) = 1107296256, *(v0 + 160) = thunk for @escaping @callee_guaranteed () -> (), *(v0 + 168) = &block_descriptor_83_0, v8 = _Block_copy((v0 + 144)), v9 = v5, , , , dispatch_sync(v9, v8), v9, _Block_release(v8), LOBYTE(v3) = swift_isEscapingClosureAtFileLocation(), , result = , (v3 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  v1 = *(v0 + 240);
  if (v1 && (v2 = *(v0 + 232), v3 = *(v0 + 528), v4 = *(v0 + 704), v5 = *(v3 + 16), v6 = swift_allocObject(), *(v6 + 16) = v4, *(v6 + 24) = v2, *(v6 + 32) = v1, *(v6 + 40) = v3, v7 = swift_allocObject(), *(v7 + 16) = partial apply for closure #1 in MetadataValueCache.add(property:value:), *(v7 + 24) = v6, *(v0 + 176) = partial apply for thunk for @escaping @callee_guaranteed () -> (), *(v0 + 184) = v7, *(v0 + 144) = MEMORY[0x277D85DD0], *(v0 + 152) = 1107296256, *(v0 + 160) = thunk for @escaping @callee_guaranteed () -> (), *(v0 + 168) = &block_descriptor_83_0, v8 = _Block_copy((v0 + 144)), v9 = v5, , , , dispatch_sync(v9, v8), v9, _Block_release(v8), LOBYTE(v3) = swift_isEscapingClosureAtFileLocation(), , result = , (v3 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  v1 = *(v0 + 272);
  if (v1 && (v2 = *(v0 + 264), v3 = *(v0 + 528), v4 = *(v0 + 704), v5 = *(v3 + 16), v6 = swift_allocObject(), *(v6 + 16) = v4, *(v6 + 24) = v2, *(v6 + 32) = v1, *(v6 + 40) = v3, v7 = swift_allocObject(), *(v7 + 16) = partial apply for closure #1 in MetadataValueCache.add(property:value:), *(v7 + 24) = v6, *(v0 + 176) = partial apply for thunk for @escaping @callee_guaranteed () -> (), *(v0 + 184) = v7, *(v0 + 144) = MEMORY[0x277D85DD0], *(v0 + 152) = 1107296256, *(v0 + 160) = thunk for @escaping @callee_guaranteed () -> (), *(v0 + 168) = &block_descriptor_83_0, v8 = _Block_copy((v0 + 144)), v9 = v5, , , , dispatch_sync(v9, v8), v9, _Block_release(v8), LOBYTE(v3) = swift_isEscapingClosureAtFileLocation(), , result = , (v3 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  v1 = *(v0 + 304);
  if (v1 && (v2 = *(v0 + 296), v3 = *(v0 + 528), v4 = *(v0 + 704), v5 = *(v3 + 16), v6 = swift_allocObject(), *(v6 + 16) = v4, *(v6 + 24) = v2, *(v6 + 32) = v1, *(v6 + 40) = v3, v7 = swift_allocObject(), *(v7 + 16) = partial apply for closure #1 in MetadataValueCache.add(property:value:), *(v7 + 24) = v6, *(v0 + 176) = partial apply for thunk for @escaping @callee_guaranteed () -> (), *(v0 + 184) = v7, *(v0 + 144) = MEMORY[0x277D85DD0], *(v0 + 152) = 1107296256, *(v0 + 160) = thunk for @escaping @callee_guaranteed () -> (), *(v0 + 168) = &block_descriptor_83_0, v8 = _Block_copy((v0 + 144)), v9 = v5, , , , dispatch_sync(v9, v8), v9, _Block_release(v8), LOBYTE(v3) = swift_isEscapingClosureAtFileLocation(), , result = , (v3 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  v10 = v0;
  v1 = *(v0 + 592);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249C00850, &v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s caught error while fetching media metadata", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 336);
  if (v1 && (v2 = *(v0 + 328), v3 = *(v0 + 528), v4 = *(v0 + 704), v5 = *(v3 + 16), v6 = swift_allocObject(), *(v6 + 16) = v4, *(v6 + 24) = v2, *(v6 + 32) = v1, *(v6 + 40) = v3, v7 = swift_allocObject(), *(v7 + 16) = partial apply for closure #1 in MetadataValueCache.add(property:value:), *(v7 + 24) = v6, *(v0 + 176) = partial apply for thunk for @escaping @callee_guaranteed () -> (), *(v0 + 184) = v7, *(v0 + 144) = MEMORY[0x277D85DD0], *(v0 + 152) = 1107296256, *(v0 + 160) = thunk for @escaping @callee_guaranteed () -> (), *(v0 + 168) = &block_descriptor_83_0, v8 = _Block_copy((v0 + 144)), v9 = v5, , , , dispatch_sync(v9, v8), v9, _Block_release(v8), LOBYTE(v3) = swift_isEscapingClosureAtFileLocation(), , result = , (v3 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  v10 = v0;
  v1 = *(v0 + 608);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249C00850, &v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s caught error while fetching media metadata", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 368);
  if (v1 && (v2 = *(v0 + 360), v3 = *(v0 + 528), v4 = *(v0 + 704), v5 = *(v3 + 16), v6 = swift_allocObject(), *(v6 + 16) = v4, *(v6 + 24) = v2, *(v6 + 32) = v1, *(v6 + 40) = v3, v7 = swift_allocObject(), *(v7 + 16) = partial apply for closure #1 in MetadataValueCache.add(property:value:), *(v7 + 24) = v6, *(v0 + 176) = partial apply for thunk for @escaping @callee_guaranteed () -> (), *(v0 + 184) = v7, *(v0 + 144) = MEMORY[0x277D85DD0], *(v0 + 152) = 1107296256, *(v0 + 160) = thunk for @escaping @callee_guaranteed () -> (), *(v0 + 168) = &block_descriptor_83_0, v8 = _Block_copy((v0 + 144)), v9 = v5, , , , dispatch_sync(v9, v8), v9, _Block_release(v8), LOBYTE(v3) = swift_isEscapingClosureAtFileLocation(), , result = , (v3 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  v10 = v0;
  v1 = *(v0 + 624);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249C00850, &v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s caught error while fetching media metadata", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 400);
  if (v1 && (v2 = *(v0 + 392), v3 = *(v0 + 528), v4 = *(v0 + 704), v5 = *(v3 + 16), v6 = swift_allocObject(), *(v6 + 16) = v4, *(v6 + 24) = v2, *(v6 + 32) = v1, *(v6 + 40) = v3, v7 = swift_allocObject(), *(v7 + 16) = partial apply for closure #1 in MetadataValueCache.add(property:value:), *(v7 + 24) = v6, *(v0 + 176) = partial apply for thunk for @escaping @callee_guaranteed () -> (), *(v0 + 184) = v7, *(v0 + 144) = MEMORY[0x277D85DD0], *(v0 + 152) = 1107296256, *(v0 + 160) = thunk for @escaping @callee_guaranteed () -> (), *(v0 + 168) = &block_descriptor_83_0, v8 = _Block_copy((v0 + 144)), v9 = v5, , , , dispatch_sync(v9, v8), v9, _Block_release(v8), LOBYTE(v3) = swift_isEscapingClosureAtFileLocation(), , result = , (v3 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  v10 = v0;
  v1 = *(v0 + 640);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249C00850, &v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s caught error while fetching media metadata", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 432);
  if (v1 && (v2 = *(v0 + 424), v3 = *(v0 + 528), v4 = *(v0 + 704), v5 = *(v3 + 16), v6 = swift_allocObject(), *(v6 + 16) = v4, *(v6 + 24) = v2, *(v6 + 32) = v1, *(v6 + 40) = v3, v7 = swift_allocObject(), *(v7 + 16) = partial apply for closure #1 in MetadataValueCache.add(property:value:), *(v7 + 24) = v6, *(v0 + 176) = partial apply for thunk for @escaping @callee_guaranteed () -> (), *(v0 + 184) = v7, *(v0 + 144) = MEMORY[0x277D85DD0], *(v0 + 152) = 1107296256, *(v0 + 160) = thunk for @escaping @callee_guaranteed () -> (), *(v0 + 168) = &block_descriptor_83_0, v8 = _Block_copy((v0 + 144)), v9 = v5, , , , dispatch_sync(v9, v8), v9, _Block_release(v8), LOBYTE(v3) = swift_isEscapingClosureAtFileLocation(), , result = , (v3 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  v10 = v0;
  v1 = *(v0 + 656);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249C00850, &v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s caught error while fetching media metadata", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 464);
  if (v1 && (v2 = *(v0 + 456), v3 = *(v0 + 528), v4 = *(v0 + 704), v5 = *(v3 + 16), v6 = swift_allocObject(), *(v6 + 16) = v4, *(v6 + 24) = v2, *(v6 + 32) = v1, *(v6 + 40) = v3, v7 = swift_allocObject(), *(v7 + 16) = partial apply for closure #1 in MetadataValueCache.add(property:value:), *(v7 + 24) = v6, *(v0 + 176) = partial apply for thunk for @escaping @callee_guaranteed () -> (), *(v0 + 184) = v7, *(v0 + 144) = MEMORY[0x277D85DD0], *(v0 + 152) = 1107296256, *(v0 + 160) = thunk for @escaping @callee_guaranteed () -> (), *(v0 + 168) = &block_descriptor_83_0, v8 = _Block_copy((v0 + 144)), v9 = v5, , , , dispatch_sync(v9, v8), v9, _Block_release(v8), LOBYTE(v3) = swift_isEscapingClosureAtFileLocation(), , result = , (v3 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  v10 = v0;
  v1 = *(v0 + 672);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249C00850, &v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s caught error while fetching media metadata", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 680) = v1;
  if (v1)
  {
    v2 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  else
  {
    v2 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[64];
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 1)
  {
    v6 = v0[1];

    return v6();
  }

  else
  {
    v3 = *MEMORY[0x277CE5EE8];
    v4 = swift_task_alloc();
    v0[86] = v4;
    *v4 = v0;
    v4[1] = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);

    return DOCAssetMetadataFetcher.commonMetadataStringValue(for:)(v3);
  }
}

{
  v10 = v0;
  swift_willThrow();
  v1 = *(v0 + 680);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249C00850, &v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s caught error while fetching media metadata", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 496);
  if (v1 && (v2 = *(v0 + 488), v3 = *(v0 + 528), v4 = *(v0 + 704), v5 = *(v3 + 16), v6 = swift_allocObject(), *(v6 + 16) = v4, *(v6 + 24) = v2, *(v6 + 32) = v1, *(v6 + 40) = v3, v7 = swift_allocObject(), *(v7 + 16) = partial apply for closure #1 in MetadataValueCache.add(property:value:), *(v7 + 24) = v6, *(v0 + 176) = partial apply for thunk for @escaping @callee_guaranteed () -> (), *(v0 + 184) = v7, *(v0 + 144) = MEMORY[0x277D85DD0], *(v0 + 152) = 1107296256, *(v0 + 160) = thunk for @escaping @callee_guaranteed () -> (), *(v0 + 168) = &block_descriptor_83_0, v8 = _Block_copy((v0 + 144)), v9 = v5, , , , dispatch_sync(v9, v8), v9, _Block_release(v8), LOBYTE(v3) = swift_isEscapingClosureAtFileLocation(), , result = , (v3 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  v10 = v0;
  v1 = *(v0 + 696);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249C00850, &v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s caught error while fetching media metadata", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

{
  v10 = v0;
  v1 = *(v0 + 544);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249C00850, &v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s caught error while fetching media metadata", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

{
  v10 = v0;
  v1 = *(v0 + 560);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249C00850, &v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s caught error while fetching media metadata", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

{
  v10 = v0;
  v1 = *(v0 + 576);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249C00850, &v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s caught error while fetching media metadata", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[24] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;
  v4[68] = v2;

  if (v2)
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v3;
  v4[28] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v4[31] = v2;
  v4[70] = v2;

  if (v2)
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v3;
  v4[32] = v3;
  v4[33] = a1;
  v4[34] = a2;
  v4[35] = v2;
  v4[72] = v2;

  if (v2)
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v3;
  v4[36] = v3;
  v4[37] = a1;
  v4[38] = a2;
  v4[39] = v2;
  v4[74] = v2;

  if (v2)
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v3;
  v4[40] = v3;
  v4[41] = a1;
  v4[42] = a2;
  v4[43] = v2;
  v4[76] = v2;

  if (v2)
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v3;
  v4[44] = v3;
  v4[45] = a1;
  v4[46] = a2;
  v4[47] = v2;
  v4[78] = v2;

  if (v2)
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v3;
  v4[48] = v3;
  v4[49] = a1;
  v4[50] = a2;
  v4[51] = v2;
  v4[80] = v2;

  if (v2)
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v3;
  v4[52] = v3;
  v4[53] = a1;
  v4[54] = a2;
  v4[55] = v2;
  v4[82] = v2;

  if (v2)
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v3;
  v4[56] = v3;
  v4[57] = a1;
  v4[58] = a2;
  v4[59] = v2;
  v4[84] = v2;

  if (v2)
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v3;
  v4[60] = v3;
  v4[61] = a1;
  v4[62] = a2;
  v4[63] = v2;
  v4[87] = v2;

  if (v2)
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  else
  {
    v5 = closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t DOCAssetMetadataFetcher.dimensionsString.getter()
{
  *(v1 + 168) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.dimensionsString.getter, 0, 0);
}

{
  v1 = *(v0[21] + 16);
  v2 = *MEMORY[0x277CE5EA8];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = DOCAssetMetadataFetcher.dimensionsString.getter;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo12AVAssetTrackCGs5Error_pGMd);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [AVAssetTrack];
  v0[13] = &block_descriptor_174;
  v0[14] = v3;
  [v1 loadTracksWithMediaType:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = DOCAssetMetadataFetcher.dimensionsString.getter;
  }

  else
  {
    v2 = DOCAssetMetadataFetcher.dimensionsString.getter;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = DOCAssetMetadataFetcher.dimensionsString.getter;
  }

  else
  {

    v2 = DOCAssetMetadataFetcher.dimensionsString.getter;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = DOCLocalizedMetadataStringForWidthByHeight(*(v0 + 144), *(v0 + 152));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DOCAssetMetadataFetcher.dimensionsString.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[20];
  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
LABEL_3:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](0, v5);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x2821FAF00](v6, a2, a3, a4);
        }

        v7 = *(v5 + 32);
      }

      v4[23] = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo12AVAssetTrackCSo6CGSizeVGMd);
      v8 = static AVPartialAsyncProperty<A>.naturalSize.getter();
      v4[24] = v8;
      v9 = swift_task_alloc();
      v4[25] = v9;
      *v9 = v4;
      v9[1] = DOCAssetMetadataFetcher.dimensionsString.getter;
      v6 = (v4 + 18);
      a2 = v8;
      a3 = 0;
      a4 = 0;

      return MEMORY[0x2821FAF00](v6, a2, a3, a4);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = v4[1];

  return v10(0, 0);
}

uint64_t DOCAssetMetadataFetcher.durationString.getter()
{
  *(v1 + 72) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.durationString.getter, 0, 0);
}

{
  v0[10] = *(v0[9] + 16);
  v0[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo10AVURLAssetCSo6CMTimeaGMd);
  v1 = static AVPartialAsyncProperty<A>.duration.getter();
  v0[12] = v1;
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = DOCAssetMetadataFetcher.durationString.getter;

  return MEMORY[0x2821FAF00](v0 + 44, v1, 0, 0);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = DOCAssetMetadataFetcher.durationString.getter;
  }

  else
  {

    v2 = DOCAssetMetadataFetcher.durationString.getter;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  CMTime.seconds.getter();
  v2 = v1;
  static AVPartialAsyncProperty<A>.duration.getter();
  AVAsynchronousKeyValueLoading.status<A>(of:)();

  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  if (v6 == 1)
  {
    v7 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
  }

  else
  {
    v7 = DOCLocalizedMetadataStringInMMSSForDuration(v2);
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  outlined consume of AVAsyncProperty<AVURLAsset, CMTime>.Status(v4, v3, v5, v6);
  v12 = *(v0 + 8);

  return v12(v9, v11);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DOCAssetMetadataFetcher.codecs.getter()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.codecs.getter, 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo10AVURLAssetCSaySo12AVAssetTrackCGGMd);
  v1 = static AVPartialAsyncProperty<A>.tracks.getter();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = DOCAssetMetadataFetcher.codecs.getter;

  return MEMORY[0x2821FAF00](v0 + 32, v1, 0, 0);
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = DOCAssetMetadataFetcher.codecs.getter;
  }

  else
  {
    v2 = DOCAssetMetadataFetcher.codecs.getter;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = DOCAssetMetadataFetcher.codecs.getter;
  }

  else
  {

    v2 = DOCAssetMetadataFetcher.codecs.getter;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0;
  v3 = v0 + 5;
  v2 = v0[5];
  if (v2 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
LABEL_3:
      if (v4 < 1)
      {
        __break(1u);
        goto LABEL_40;
      }

      v5 = 0;
      v6 = v0 + 2;
      v7 = v2 & 0xC000000000000001;
      v8 = v1[15];
      v41 = v4;
      v42 = v1;
      v40 = v2 & 0xC000000000000001;
      do
      {
        if (v7)
        {
          v9 = MEMORY[0x24C1FC540](v5, v2);
        }

        else
        {
          v9 = *(v2 + 8 * v5 + 32);
        }

        v10 = v9;
        v11 = CMFormatDescriptionGetExtension(v9, v1[14]);
        if (v11 && (v3[1] = v11, (swift_dynamicCast() & 1) != 0))
        {
          v12 = v6;
          v13 = v2;
          v14 = v3;
          v16 = v1[2];
          v15 = v1[3];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
          }

          v18 = *(v8 + 2);
          v17 = *(v8 + 3);
          if (v18 >= v17 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v8);
          }

          *(v8 + 2) = v18 + 1;
          v19 = &v8[16 * v18];
          *(v19 + 4) = v16;
          *(v19 + 5) = v15;
          v4 = v41;
          v1 = v42;
          v3 = v14;
          v2 = v13;
          v6 = v12;
          v7 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v5);
      v20 = v1[16];

      v4 = v1[17];
      v1[15] = v8;
      if (v4 != v1[13])
      {
LABEL_28:
        v35 = v1[11];
        if ((v35 & 0xC000000000000001) == 0)
        {
          if (v4 >= *(v1[12] + 16))
          {
            goto LABEL_42;
          }

          v21 = *(v35 + 8 * v4 + 32);
LABEL_31:
          v1[16] = v21;
          v1[17] = v4 + 1;
          if (!__OFADD__(v4, 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo12AVAssetTrackCSaySo22CMFormatDescriptionRefaGGMd);
            v36 = static AVPartialAsyncProperty<A>.formatDescriptions.getter();
            v1[18] = v36;
            v37 = swift_task_alloc();
            v1[19] = v37;
            *v37 = v1;
            v37[1] = DOCAssetMetadataFetcher.codecs.getter;
            v21 = v3;
            v35 = v36;
            v22 = 0;
            v23 = 0;

            return MEMORY[0x2821FAF00](v21, v35, v22, v23);
          }

          __break(1u);
LABEL_42:
          __break(1u);
          return MEMORY[0x2821FAF00](v21, v35, v22, v23);
        }

LABEL_40:
        v21 = MEMORY[0x24C1FC540](v4);
        goto LABEL_31;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v24 = v0[16];
  v25 = v0[17];
  v26 = v0[13];

  if (v25 != v26)
  {
    v4 = v0[17];
    goto LABEL_28;
  }

  v8 = v0[15];
LABEL_22:

  v27 = *(v8 + 2);
  v28 = v1[15];
  if (v27)
  {
    v30 = v28[4];
    v29 = v28[5];

    v31 = v27 - 1;
    if (v27 != 1)
    {
      v32 = v28 + 7;
      do
      {
        v34 = *(v32 - 1);
        v33 = *v32;

        MEMORY[0x24C1FAEA0](8236, 0xE200000000000000);

        MEMORY[0x24C1FAEA0](v34, v33);

        v32 += 2;
        --v31;
      }

      while (v31);
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {

    v30 = 0;
    v29 = 0;
  }

  v38 = v1[1];

  return v38(v30, v29);
}

{
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DOCAssetMetadataFetcher.codecs.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  v4[11] = v5;
  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4[12] = v6;
  v4[13] = v7;
  v8 = MEMORY[0x277D84F90];
  v4[14] = *MEMORY[0x277CC0310];
  v4[15] = v8;
  v9 = v4[11];
  if (v7)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C1FC540](0);
    }

    else
    {
      if (!*(v6 + 16))
      {
        __break(1u);
        return MEMORY[0x2821FAF00](v7, v9, a3, a4);
      }

      v10 = *(v9 + 32);
    }

    v4[16] = v10;
    v4[17] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo12AVAssetTrackCSaySo22CMFormatDescriptionRefaGGMd);
    v11 = static AVPartialAsyncProperty<A>.formatDescriptions.getter();
    v4[18] = v11;
    v12 = swift_task_alloc();
    v4[19] = v12;
    *v12 = v4;
    v12[1] = DOCAssetMetadataFetcher.codecs.getter;
    v7 = (v4 + 5);
    v9 = v11;
    a3 = 0;
    a4 = 0;

    return MEMORY[0x2821FAF00](v7, v9, a3, a4);
  }

  v13 = *(v8 + 16);
  v14 = v4[15];
  if (v13)
  {
    v16 = v14[4];
    v15 = v14[5];

    v17 = v13 - 1;
    if (v13 != 1)
    {
      v18 = v14 + 7;
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;

        MEMORY[0x24C1FAEA0](8236, 0xE200000000000000);

        MEMORY[0x24C1FAEA0](v20, v19);

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {

    v16 = 0;
    v15 = 0;
  }

  v21 = v4[1];

  return v21(v16, v15);
}

uint64_t DOCAssetMetadataFetcher.title.getter()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.title.getter, 0, 0);
}

{
  v1 = *MEMORY[0x277CE5EF0];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = DOCAssetMetadataFetcher.creator.getter;

  return DOCAssetMetadataFetcher.commonMetadataStringValue(for:)(v1);
}

uint64_t DOCAssetMetadataFetcher.creator.getter()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.creator.getter, 0, 0);
}

{
  v1 = *MEMORY[0x277CE5ED0];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = DOCAssetMetadataFetcher.creator.getter;

  return DOCAssetMetadataFetcher.commonMetadataStringValue(for:)(v1);
}

uint64_t DOCAssetMetadataFetcher.copyrights.getter()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.copyrights.getter, 0, 0);
}

{
  v1 = *MEMORY[0x277CE5EC8];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = DOCAssetMetadataFetcher.copyrights.getter;

  return DOCAssetMetadataFetcher.commonMetadataStringValue(for:)(v1);
}

uint64_t DOCAssetMetadataFetcher.copyrights.getter(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t DOCAssetMetadataFetcher.type.getter()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.type.getter, 0, 0);
}

{
  v1 = *MEMORY[0x277CE5EF8];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = DOCAssetMetadataFetcher.creator.getter;

  return DOCAssetMetadataFetcher.commonMetadataStringValue(for:)(v1);
}

uint64_t DOCAssetMetadataFetcher.artist.getter()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.artist.getter, 0, 0);
}

{
  v1 = *MEMORY[0x277CE5EB8];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = DOCAssetMetadataFetcher.creator.getter;

  return DOCAssetMetadataFetcher.commonMetadataStringValue(for:)(v1);
}

uint64_t DOCAssetMetadataFetcher.albumName.getter()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.albumName.getter, 0, 0);
}

{
  v1 = *MEMORY[0x277CE5EB0];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = DOCAssetMetadataFetcher.creator.getter;

  return DOCAssetMetadataFetcher.commonMetadataStringValue(for:)(v1);
}

uint64_t DOCAssetMetadataFetcher.videoTracks.getter()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.videoTracks.getter, 0, 0);
}

{
  v1 = *(v0[19] + 16);
  v2 = *MEMORY[0x277CE5EA8];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = DOCAssetMetadataFetcher.videoTracks.getter;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo12AVAssetTrackCGs5Error_pGMd);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [AVAssetTrack];
  v0[13] = &block_descriptor_22_5;
  v0[14] = v3;
  [v1 loadTracksWithMediaType:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = DOCAssetMetadataFetcher.videoTracks.getter;
  }

  else
  {
    v2 = DOCAssetMetadataFetcher.videoTracks.getter;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 144));
}

{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t DOCAssetMetadataFetcher.software.getter()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.software.getter, 0, 0);
}

{
  v1 = *MEMORY[0x277CE5EE8];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = DOCAssetMetadataFetcher.creator.getter;

  return DOCAssetMetadataFetcher.commonMetadataStringValue(for:)(v1);
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  outlined init with copy of DOCGridLayout.Spec?(a3, v26 - v11, &_sScPSgMd);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of CharacterSet?(v12, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
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
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
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

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t DOCMediaMetadataProvider.deinit()
{

  return v0;
}

uint64_t DOCMediaMetadataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t closure #1 in MetadataValueCache.add(property:value:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(23);
  MEMORY[0x24C1FAEA0](0xD000000000000010, 0x8000000249C00870);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](2112800, 0xE300000000000000);
  MEMORY[0x24C1FAEA0](a2, a3);
  NSLog(_:_:)();

  v8 = MetadataItem.key.getter(a1);
  v10 = v9;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a3, v8, v10, isUniquelyReferenced_nonNull_native);

  *(a4 + 24) = v13;
  return swift_endAccess();
}

uint64_t MetadataValueCache.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v6, v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v11[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v1);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t DOCAssetMetadataFetcher.__allocating_init(url:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  (*(v3 + 16))(v6, a1, v2);
  v8 = objc_allocWithZone(MEMORY[0x277CE6650]);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v8 initWithURL:v10 options:0];

  v13 = *(v3 + 8);
  v13(a1, v2);
  v13(v6, v2);
  *(v7 + 16) = v12;
  return v7;
}

uint64_t DOCAssetMetadataFetcher.init(url:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = objc_allocWithZone(MEMORY[0x277CE6650]);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = [v10 initWithURL:v12 options:0];

  v15 = *(v5 + 8);
  v15(a1, v4);
  v15(v9, v4);
  *(v2 + 16) = v14;
  return v2;
}

uint64_t DOCAssetMetadataFetcher.hasProtectedContent.getter()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.hasProtectedContent.getter, 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo10AVURLAssetCSbGMd);
  v1 = static AVPartialAsyncProperty<A>.hasProtectedContent.getter();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = DOCAssetMetadataFetcher.hasProtectedContent.getter;

  return MEMORY[0x2821FAF00](v0 + 40, v1, 0, 0);
}

{

  if (v0)
  {

    v1 = DOCAssetMetadataFetcher.hasProtectedContent.getter;
  }

  else
  {

    v1 = DOCAssetMetadataFetcher.hasProtectedContent.getter;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 40));
}

{
  return (*(v0 + 8))(0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [AVAssetTrack](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for AVAssetTrack);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t DOCAssetMetadataFetcher.commonMetadataStringValue(for:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.commonMetadataStringValue(for:), 0, 0);
}

uint64_t DOCAssetMetadataFetcher.commonMetadataStringValue(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo10AVURLAssetCSaySo14AVMetadataItemCGGMd);
  v1 = static AVPartialAsyncProperty<A>.commonMetadata.getter();
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = DOCAssetMetadataFetcher.commonMetadataStringValue(for:);

  return MEMORY[0x2821FAF00](v0 + 32, v1, 0, 0);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = DOCAssetMetadataFetcher.commonMetadataStringValue(for:);
  }

  else
  {

    v2 = DOCAssetMetadataFetcher.commonMetadataStringValue(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[5];
  v2 = objc_opt_self();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for AVMetadataItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 metadataItemsFromArray:isa filteredByIdentifier:v1];

  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
LABEL_3:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](0, v5);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x2821FAF00](v9, v6, v7, v8);
        }

        v10 = *(v5 + 32);
      }

      v0[10] = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo14AVMetadataItemCSSSgGMd);
      v11 = static AVPartialAsyncProperty<A>.stringValue.getter();
      v0[11] = v11;
      v12 = swift_task_alloc();
      v0[12] = v12;
      *v12 = v0;
      v12[1] = DOCAssetMetadataFetcher.commonMetadataStringValue(for:);
      v9 = (v0 + 2);
      v6 = v11;
      v7 = 0;
      v8 = 0;

      return MEMORY[0x2821FAF00](v9, v6, v7, v8);
    }
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v13 = v0[1];

  return v13(0, 0);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = DOCAssetMetadataFetcher.commonMetadataStringValue(for:);
  }

  else
  {

    v2 = DOCAssetMetadataFetcher.commonMetadataStringValue(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DOCAssetMetadataFetcher.location.getter()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](DOCAssetMetadataFetcher.location.getter, 0, 0);
}

{
  v1 = *MEMORY[0x277CE5EE0];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = DOCAssetMetadataFetcher.creator.getter;

  return DOCAssetMetadataFetcher.commonMetadataStringValue(for:)(v1);
}

uint64_t DOCAssetMetadataFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *specialized static DOCMediaMetadataProvider.mediaMetadataProvider(with:levelOfDetail:url:)(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = type metadata accessor for UTType();
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a3, v12, &_s10Foundation3URLVSgMd);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    if (one-time initialization token for supportedMediaTypes != -1)
    {
      swift_once();
    }

    rawValue = supportedMediaTypes._rawValue;
    v19 = [a1 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = UTType.identifier.getter();
    v22 = v21;
    v23 = (*(v5 + 8))(v8, v36);
    v37[0] = v20;
    v37[1] = v22;
    MEMORY[0x28223BE20](v23, v24);
    *(&v34 - 2) = v37;
    v25 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v34 - 4), rawValue);

    if (v25)
    {
      v26 = objc_allocWithZone(MEMORY[0x277CE6650]);
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v30 = [v26 initWithURL:v28 options:0];

      (*(v14 + 8))(v17, v13);
      type metadata accessor for DOCMediaMetadataProvider();
      v31 = swift_allocObject();
      type metadata accessor for DOCAssetMetadataFetcher();
      v31[4] = 0;
      v31[5] = 0;
      v32 = swift_allocObject();
      result = v31;
      *(v32 + 16) = v30;
      v31[2] = v32;
      v31[3] = v35;
      return result;
    }

    (*(v14 + 8))(v17, v13);
  }

  return 0;
}

unint64_t specialized MetadataItem.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MetadataItem.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized DOCMediaMetadataProvider.displaySortOrder.getter()
{
  v16 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 12, 0);
  v0 = 0;
  result = v16;
  do
  {
    v2 = outlined read-only object #0 of DOCMediaMetadataProvider.displaySortOrder.getter[v0 + 32];
    if (v2 > 5)
    {
      if (v2 == 10)
      {
        v9 = 0x64757469676E6F6CLL;
      }

      else
      {
        v9 = 0x6572617774666F73;
      }

      if (v2 == 10)
      {
        v10 = 0xE900000000000065;
      }

      else
      {
        v10 = 0xE800000000000000;
      }

      if (v2 == 9)
      {
        v9 = 0x656475746974616CLL;
        v10 = 0xE800000000000000;
      }

      v11 = 0x747369747261;
      if (v2 == 7)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v11 = 0x6D614E6D75626C61;
        v12 = 0xE900000000000065;
      }

      if (v2 == 6)
      {
        v11 = 1701869940;
        v12 = 0xE400000000000000;
      }

      if (outlined read-only object #0 of DOCMediaMetadataProvider.displaySortOrder.getter[v0 + 32] <= 8u)
      {
        v7 = v11;
      }

      else
      {
        v7 = v9;
      }

      if (outlined read-only object #0 of DOCMediaMetadataProvider.displaySortOrder.getter[v0 + 32] <= 8u)
      {
        v8 = v12;
      }

      else
      {
        v8 = v10;
      }
    }

    else
    {
      v3 = 0xEA00000000007374;
      if (v2 == 4)
      {
        v4 = 0x726F7461657263;
      }

      else
      {
        v4 = 0x6867697279706F63;
      }

      if (v2 == 4)
      {
        v3 = 0xE700000000000000;
      }

      if (v2 == 3)
      {
        v4 = 0x656C746974;
        v3 = 0xE500000000000000;
      }

      if (v2 == 1)
      {
        v5 = 0x6E6F697461727544;
      }

      else
      {
        v5 = 0x736365646F43;
      }

      if (v2 == 1)
      {
        v6 = 0xE800000000000000;
      }

      else
      {
        v6 = 0xE600000000000000;
      }

      if (!outlined read-only object #0 of DOCMediaMetadataProvider.displaySortOrder.getter[v0 + 32])
      {
        v5 = 0x6F69736E656D6944;
        v6 = 0xEA0000000000736ELL;
      }

      if (outlined read-only object #0 of DOCMediaMetadataProvider.displaySortOrder.getter[v0 + 32] <= 2u)
      {
        v7 = v5;
      }

      else
      {
        v7 = v4;
      }

      if (outlined read-only object #0 of DOCMediaMetadataProvider.displaySortOrder.getter[v0 + 32] <= 2u)
      {
        v8 = v6;
      }

      else
      {
        v8 = v3;
      }
    }

    v17 = result;
    v14 = *(result + 16);
    v13 = *(result + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      result = v17;
    }

    ++v0;
    *(result + 16) = v14 + 1;
    v15 = result + 16 * v14;
    *(v15 + 32) = v7;
    *(v15 + 40) = v8;
  }

  while (v0 != 12);
  return result;
}

void outlined consume of AVAsyncProperty<AVURLAsset, CMTime>.Status(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }
}

uint64_t partial apply for closure #1 in MetadataValueCache.metadataValues.getter@<X0>(void *a1@<X8>)
{
  return partial apply for closure #1 in MetadataValueCache.metadataValues.getter(a1);
}

{
  swift_beginAccess();
  *a1 = *(v1 + 24);
}

uint64_t partial apply for closure #1 in DOCMediaMetadataProvider.loadCache(with:)(uint64_t a1)
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

  return closure #1 in DOCMediaMetadataProvider.loadCache(with:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in closure #1 in closure #1 in DOCMediaMetadataProvider.loadCache(with:)(a1, v4, v5, v8, v6, v7);
}

uint64_t block_copy_helper_81_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for MetadataItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetadataItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetadataItem and conformance MetadataItem()
{
  result = lazy protocol witness table cache variable for type MetadataItem and conformance MetadataItem;
  if (!lazy protocol witness table cache variable for type MetadataItem and conformance MetadataItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataItem and conformance MetadataItem);
  }

  return result;
}

void DOCFullDocumentManagerViewController.search(forQuery:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = DOCFullDocumentManagerViewController.postSearchInitializationBuffer.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = a2;
  v12[4] = _sSo36DOCFullDocumentManagerViewControllerC0bC11ExecutablesE6search8forQuery10completionySS_ys6ResultOyyts5Error_pGcSgtFyycfU_TA_0;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v12[3] = &block_descriptor_175;
  v11 = _Block_copy(v12);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a3);

  [v8 performAfterSearchInitialization_];
  _Block_release(v11);
}

Swift::Int DOCFullDocumentManagerViewController.SearchError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

void closure #1 in DOCFullDocumentManagerViewController.search(forQuery:completion:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong effectiveSearchController];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      v14 = [v13 presentedViewController];
      v66 = a5;
      if (v14)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v64 = a4;
          if (one-time initialization token for Application != -1)
          {
            swift_once();
          }

          v15 = type metadata accessor for Logger();
          __swift_project_value_buffer(v15, static Logger.Application);
          v16 = Logger.logObject.getter();
          v17 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = v14;
            v19 = swift_slowAlloc();
            v20 = swift_slowAlloc();
            aBlock[0] = v20;
            *v19 = 136315138;
            *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249C00890, aBlock);
            _os_log_impl(&dword_2493AC000, v16, v17, "%s: Alert is presented, bailing out for safety", v19, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v20);
            MEMORY[0x24C1FE850](v20, -1, -1);
            v21 = v19;
            v14 = v18;
            MEMORY[0x24C1FE850](v21, -1, -1);
          }

          v22 = 0;
          v23 = 2;
        }

        else
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v32 = 0;
            v23 = 5;
            v22 = 1;
            goto LABEL_25;
          }

          v64 = a4;
          if (one-time initialization token for Application != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          __swift_project_value_buffer(v33, static Logger.Application);
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = v14;
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            aBlock[0] = v38;
            *v37 = 136315138;
            *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249C00890, aBlock);
            _os_log_impl(&dword_2493AC000, v34, v35, "%s: Picker is presented (probably chosing a directory for scanned document), bailing out for safety", v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v38);
            MEMORY[0x24C1FE850](v38, -1, -1);
            v39 = v37;
            v14 = v36;
            MEMORY[0x24C1FE850](v39, -1, -1);
          }

          v22 = 0;
          v23 = 3;
        }

        v32 = 1;
        a4 = v64;
      }

      else
      {
        v23 = 5;
        v32 = 1;
        v22 = 1;
      }

LABEL_25:
      if ([v13 isEditing])
      {
        [v13 setEditing_];
      }

      if (v22)
      {
        v40 = swift_allocObject();
        v41 = v40;
        v40[2] = v12;
        v40[3] = a4;
        v42 = v66;
        v40[4] = v66;
        v40[5] = a2;
        if (v14)
        {
          v43 = v32;
        }

        else
        {
          v43 = 1;
        }

        v40[6] = a3;
        if ((v43 & 1) == 0)
        {
          v58 = swift_allocObject();
          v58[2] = v12;
          v58[3] = partial apply for closure #1 in closure #1 in DOCFullDocumentManagerViewController.search(forQuery:completion:);
          v58[4] = v41;
          aBlock[4] = partial apply for closure #2 in closure #1 in DOCFullDocumentManagerViewController.search(forQuery:completion:);
          aBlock[5] = v58;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_16_7;
          v59 = _Block_copy(aBlock);
          v60 = v14;
          v61 = v12;
          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);

          [v60 dismissViewControllerAnimated:0 completion:v59];

          _Block_release(v59);
          return;
        }

        v65 = a4;
        v44 = v12;
        v63 = a3;
        outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
        v45 = one-time initialization token for Application;

        if (v45 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        __swift_project_value_buffer(v46, static Logger.Application);
        v47 = v44;
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v62 = v14;
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          aBlock[0] = v52;
          *v50 = 136315394;
          *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249C00890, aBlock);
          *(v50 + 12) = 2112;
          *(v50 + 14) = v47;
          *v51 = v12;
          v53 = v47;
          _os_log_impl(&dword_2493AC000, v48, v49, "%s: Activating continuation search on: %@", v50, 0x16u);
          outlined destroy of NSObject?(v51);
          MEMORY[0x24C1FE850](v51, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v52);
          v54 = v52;
          v42 = v66;
          MEMORY[0x24C1FE850](v54, -1, -1);
          v55 = v50;
          v14 = v62;
          MEMORY[0x24C1FE850](v55, -1, -1);
        }

        closure #1 in closure #1 in DOCFullDocumentManagerViewController.search(forQuery:completion:)(v47, v65, v42, a2, v63);

        goto LABEL_42;
      }

      if (!a2)
      {

LABEL_42:
        return;
      }

      lazy protocol witness table accessor for type DOCFullDocumentManagerViewController.SearchError and conformance DOCFullDocumentManagerViewController.SearchError();
      v56 = swift_allocError();
      *v57 = v23;
      a2(v56, 1);

      v31 = v56;
LABEL_39:

      return;
    }
  }

  if (one-time initialization token for Application != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.Application);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249C00890, aBlock);
    _os_log_impl(&dword_2493AC000, v25, v26, "%s: Unable to continue activity since search controller is nil", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C1FE850](v28, -1, -1);
    MEMORY[0x24C1FE850](v27, -1, -1);
  }

  if (a2)
  {
    lazy protocol witness table accessor for type DOCFullDocumentManagerViewController.SearchError and conformance DOCFullDocumentManagerViewController.SearchError();
    v29 = swift_allocError();
    *v30 = 1;
    a2(v29, 1);
    v31 = v29;
    goto LABEL_39;
  }
}

unint64_t lazy protocol witness table accessor for type DOCFullDocumentManagerViewController.SearchError and conformance DOCFullDocumentManagerViewController.SearchError()
{
  result = lazy protocol witness table cache variable for type DOCFullDocumentManagerViewController.SearchError and conformance DOCFullDocumentManagerViewController.SearchError;
  if (!lazy protocol witness table cache variable for type DOCFullDocumentManagerViewController.SearchError and conformance DOCFullDocumentManagerViewController.SearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCFullDocumentManagerViewController.SearchError and conformance DOCFullDocumentManagerViewController.SearchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCFullDocumentManagerViewController.SearchError and conformance DOCFullDocumentManagerViewController.SearchError;
  if (!lazy protocol witness table cache variable for type DOCFullDocumentManagerViewController.SearchError and conformance DOCFullDocumentManagerViewController.SearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCFullDocumentManagerViewController.SearchError and conformance DOCFullDocumentManagerViewController.SearchError);
  }

  return result;
}

uint64_t closure #1 in closure #1 in DOCFullDocumentManagerViewController.search(forQuery:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a2;
  v35 = a4;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  v37 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v32 - v22;
  type metadata accessor for OS_dispatch_queue();
  v33 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v36 = *(v16 + 8);
  v36(v19, v15);
  v24 = swift_allocObject();
  v25 = v34;
  v26 = v35;
  v24[2] = a1;
  v24[3] = v25;
  v24[4] = a3;
  v24[5] = v26;
  v24[6] = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCFullDocumentManagerViewController.search(forQuery:completion:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_22_6;
  v27 = _Block_copy(aBlock);
  v28 = a1;

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v26);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v29 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v33;
  MEMORY[0x24C1FB940](v23, v14, v10, v27);
  _Block_release(v27);

  (*(v41 + 8))(v10, v29);
  (*(v39 + 8))(v14, v40);
  return (v36)(v23, v37);
}

uint64_t closure #2 in closure #1 in DOCFullDocumentManagerViewController.search(forQuery:completion:)(void *a1, uint64_t (*a2)(void))
{
  if (one-time initialization token for Application != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Application);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249C00890, &v13);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&dword_2493AC000, v6, v7, "%s: Activating continuation search on: %@", v8, 0x16u);
    outlined destroy of NSObject?(v9);
    MEMORY[0x24C1FE850](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  return a2();
}

uint64_t objectdestroy_9Tm_1()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DOCFullDocumentManagerViewController.search(forQuery:completion:)()
{
  v1 = *(v0 + 40);
  result = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x370))(*(v0 + 24), *(v0 + 32));
  if (v1)
  {
    return v1(0, 0);
  }

  return result;
}

id DOCViewOptionsSection.headerTitle.getter(unsigned __int8 a1)
{
  if (a1 < 2u)
  {
    return 0;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v7._object = 0x8000000249BD8750;
    v3._countAndFlagsBits = 0x6465636E61766441;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v3._object = 0xE800000000000000;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v7._countAndFlagsBits = 0xD000000000000033;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v7)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DOCViewOptionsSection.footerTitle.getter(unsigned __int8 a1)
{
  if (a1 < 2u)
  {
    return 0;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v7._object = 0x8000000249BD8810;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._countAndFlagsBits = 0xD000000000000077;
    v4._object = 0x8000000249BD8790;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v7._countAndFlagsBits = 0xD000000000000033;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v7)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int DOCViewOptionsSection.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

uint64_t DOCItemCollectionLayoutTraits.__allocating_init(context:traitCollection:containerViewSize:)(unsigned __int8 *a1, void *a2, double a3, double a4)
{
  v8 = swift_allocObject();
  DOCItemCollectionLayoutTraits.init(context:traitCollection:containerViewSize:)(a1, a2, a3, a4);
  return v8;
}

uint64_t DOCItemCollectionLayoutTraits.needsCollectionViewUpdate(comparedTo:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 560);
  v3 = *(v1 + 560);

  v4 = v2;
  v5 = [v4 horizontalSizeClass];
  if (v5 != [v3 horizontalSizeClass] || (v6 = objc_msgSend(v4, sel_verticalSizeClass), v6 != objc_msgSend(v3, sel_verticalSizeClass)))
  {

LABEL_7:
    v9 = 1;
    return v9 & 1;
  }

  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();
  UITraitCollection.subscript.getter();
  UITraitCollection.subscript.getter();
  UITraitCollection.subscript.getter();
  if ((v13 - 1) < 3)
  {

    v8 = DOCItemCollectionLayoutTraits.producesIdenticalListLayoutTraits(comparedTo:)(v7);
LABEL_11:
    v12 = v8;

    v9 = v12 ^ 1;
    return v9 & 1;
  }

  if (!v13)
  {

    v8 = DOCItemCollectionLayoutTraits.producesIdenticalGridLayoutTraits(comparedTo:)(v11);
    goto LABEL_11;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCItemCollectionLayoutTraits.GridItemTraits.imageOptions(with:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd);
  [a1 displayScale];
  UITraitCollection._ifColorForIconFolderTintComponents.getter();
  return ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
}

uint64_t DOCItemCollectionLayoutTraits.GridItemTraits.titleMaxRowsWhileRenaming.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32) > 0;
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

double DOCItemCollectionLayoutTraits.GridTraits.groupedLayoutTraits.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  return v1;
}

uint64_t static DOCItemCollectionLayoutTraits.GridTraits.GroupedLayoutTraits.== infix(_:_:)(int a1, double a2, double a3, double a4, double a5, uint64_t a6, int a7)
{
  if ((a1 ^ a7))
  {
    return 0;
  }

  if (a2 != a4 || a3 != a5)
  {
    return 0;
  }

  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & 1;
}

DocumentManagerExecutables::DOCItemCollectionLayoutTraits::GridTraits::GroupedLayoutTraits __swiftcall DOCItemCollectionLayoutTraits.GridTraits.GroupedLayoutTraits.init(collapsedLayoutShowsPeakedCells:cellSize:horizontalSpacing:)(Swift::Bool collapsedLayoutShowsPeakedCells, CGSize cellSize, NSCollectionLayoutSpacing horizontalSpacing)
{
  v3 = collapsedLayoutShowsPeakedCells;
  result.cellSize.height = cellSize.height;
  result.cellSize.width = cellSize.width;
  result.horizontalSpacing = horizontalSpacing;
  result.collapsedLayoutShowsPeakedCells = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCItemCollectionLayoutTraits.GridTraits.GroupedLayoutTraits(double *a1, double *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t DOCItemCollectionLayoutTraits.GridTraits.init(cellSize:verticalSpacing:horizontalSpacing:groupedLayoutTraits:scrollDirection:sectionInsets:columns:scrollEnabled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, double a13@<D4>, double a14@<D5>, double a15@<D6>, double a16@<D7>)
{
  *a8 = a9;
  *(a8 + 8) = a10;
  *(a8 + 16) = result;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a11;
  *(a8 + 48) = a12;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  *(a8 + 72) = a13;
  *(a8 + 80) = a14;
  *(a8 + 88) = a15;
  *(a8 + 96) = a16;
  *(a8 + 104) = a6;
  *(a8 + 112) = a7;
  return result;
}

__n128 DOCItemCollectionLayoutTraits.GridItemTraits.badgeTraits.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *(a1 + 32) = *(v1 + 112);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 144);
  result = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = result;
  return result;
}

__n128 DOCItemCollectionLayoutTraits.GridItemTraits.thumbnailStatusBadgeTraits.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 152);
  v3 = *(v1 + 168);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double DOCItemCollectionLayoutTraits.GridItemTraits.minThumbnailDimension.getter()
{
  v1 = *(v0 + 48);
  if (*(v0 + 80) < v1)
  {
    v1 = *(v0 + 80);
  }

  return floor(v1) / 1.41421356;
}

__n128 DOCItemCollectionLayoutTraits.GridItemTraits.init(titleFont:titleMaxRows:subtitleFont:monospacedDigitsSubtitleFont:subtitleMaxRows:maxTitleWidth:thumbnailSize:contentMargins:allowTags:allowBadge:badgeTraits:thumbnailStatusBadgeTraits:isFolded:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, char a15)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a10;
  *(a9 + 48) = a11;
  *(a9 + 56) = a12;
  *(a9 + 64) = a13;
  *(a9 + 72) = a6;
  *(a9 + 73) = a7;
  v15 = *(a8 + 48);
  *(a9 + 112) = *(a8 + 32);
  *(a9 + 128) = v15;
  *(a9 + 144) = *(a8 + 64);
  v16 = *(a8 + 16);
  *(a9 + 80) = *a8;
  *(a9 + 96) = v16;
  result = *a14;
  v18 = *(a14 + 16);
  *(a9 + 152) = *a14;
  *(a9 + 168) = v18;
  *(a9 + 184) = a15;
  return result;
}

uint64_t DOCItemCollectionLayoutTraits.GridItemBadgeTraits.init(viewSize:iconSize:iconInsets:iconSizeCategory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  *(a2 + 40) = a8;
  *(a2 + 48) = a9;
  *(a2 + 56) = a10;
  *(a2 + 64) = result;
  return result;
}

uint64_t DOCItemCollectionLayoutTraits.ItemStatusBadgeTraits.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C1FCC00](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C1FCC00](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C1FCC00](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x24C1FCC00](*&v7);
}

Swift::Int DOCItemCollectionLayoutTraits.ItemStatusBadgeTraits.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x24C1FCC00](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x24C1FCC00](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x24C1FCC00](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x24C1FCC00](*&v8);
  return Hasher._finalize()();
}

DocumentManagerExecutables::DOCItemCollectionLayoutTraits::ItemStatusBadgeTraits __swiftcall DOCItemCollectionLayoutTraits.ItemStatusBadgeTraits.init(iconSize:iconOffset:)(CGSize iconSize, CGPoint iconOffset)
{
  *v2 = iconSize.width;
  v2[1] = iconSize.height;
  v2[2] = iconOffset.x;
  v2[3] = iconOffset.y;
  result.iconOffset.y = iconOffset.y;
  result.iconOffset.x = iconOffset.x;
  result.iconSize.height = iconSize.height;
  result.iconSize.width = iconSize.width;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemCollectionLayoutTraits.ItemStatusBadgeTraits()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  CGSize.hash(into:)(v1, v2);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x24C1FCC00](*&v5);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x24C1FCC00](*&v6);
  return Hasher._finalize()();
}

uint64_t static DOCItemCollectionLayoutTraits.ListTraits.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t DOCItemCollectionLayoutTraits.ListTraits.init(rowHeight:scrollEnabled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCItemCollectionLayoutTraits.ListTraits(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

__n128 DOCItemCollectionLayoutTraits.ListItemTraits.thumbnailStatusBadgeTraits.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t DOCItemCollectionLayoutTraits.ListItemTraits.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 112);
  v18 = *(v0 + 104);
  v19 = *(v0 + 96);
  v11 = *(v0 + 120);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  MEMORY[0x24C1FCBD0](v1);
  MEMORY[0x24C1FCBD0](v2);
  MEMORY[0x24C1FCBD0](v3);
  if (v4 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v4;
  }

  MEMORY[0x24C1FCC00](*&v12);
  if (v5 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v5;
  }

  MEMORY[0x24C1FCC00](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x24C1FCC00](*&v14);
  if (v6 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v6;
  }

  MEMORY[0x24C1FCC00](*&v15);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  Hasher._combine(_:)(v8);
  if (v9 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v9;
  }

  MEMORY[0x24C1FCC00](*&v16);

  return UIEdgeInsets.hash(into:)(v19, v18, v10, v11);
}

Swift::Int DOCItemCollectionLayoutTraits.ListItemTraits.hashValue.getter()
{
  Hasher.init(_seed:)();
  DOCItemCollectionLayoutTraits.ListItemTraits.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DOCItemCollectionLayoutTraits.ListItemTraits.init(titleFont:subtitleFont:rowStyle:titleMaxRows:subtitleMaxRows:thumbnailStatusBadgeTraits:textStyleForStatusImages:allowsDisclosureIndicators:iconVerticalMargin:_additionalContentInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>)
{
  v14 = a6[1];
  *(a9 + 40) = *a6;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 56) = v14;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a10;
  *(a9 + 96) = a11;
  *(a9 + 104) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCItemCollectionLayoutTraits.ListItemTraits()
{
  Hasher.init(_seed:)();
  DOCItemCollectionLayoutTraits.ListItemTraits.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemCollectionLayoutTraits.ListItemTraits()
{
  Hasher.init(_seed:)();
  DOCItemCollectionLayoutTraits.ListItemTraits.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DOCItemCollectionLayoutTraits.gridLayoutTraits.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 96);
  v32[4] = *(v1 + 80);
  v32[5] = v3;
  v32[6] = *(v1 + 112);
  v33 = *(v1 + 128);
  v4 = *(v1 + 32);
  v32[0] = *(v1 + 16);
  v32[1] = v4;
  v5 = *(v1 + 64);
  v32[2] = *(v1 + 48);
  v32[3] = v5;
  if (v4)
  {
    *a1 = *(v1 + 16);
    *(a1 + 16) = v4;
    *(a1 + 56) = *(v1 + 72);
    *(a1 + 72) = *(v1 + 88);
    *(a1 + 88) = *(v1 + 104);
    *(a1 + 97) = *(v1 + 113);
    *(a1 + 24) = *(v1 + 40);
    *(a1 + 40) = *(v1 + 56);
  }

  else
  {
    closure #1 in DOCItemCollectionLayoutTraits.gridLayoutTraits.getter(v1, &v22);
    v6 = *(v1 + 96);
    v30[4] = *(v1 + 80);
    v30[5] = v6;
    v30[6] = *(v1 + 112);
    v31 = *(v1 + 128);
    v7 = *(v1 + 32);
    v30[0] = *(v1 + 16);
    v30[1] = v7;
    v8 = *(v1 + 64);
    v30[2] = *(v1 + 48);
    v30[3] = v8;
    v9 = v22;
    v10 = v23;
    v11 = v25;
    v12 = v26;
    *(v1 + 48) = v24;
    *(v1 + 64) = v11;
    *(v1 + 16) = v9;
    *(v1 + 32) = v10;
    v13 = v27;
    v14 = v28;
    *(v1 + 128) = v29;
    *(v1 + 96) = v13;
    *(v1 + 112) = v14;
    *(v1 + 80) = v12;
    outlined init with copy of DOCItemCollectionLayoutTraits.GridTraits(&v22, &v21);
    outlined destroy of CharacterSet?(v30, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC04GridG0VSgMd);
    v15 = v27;
    v16 = v28;
    v17 = v25;
    *(a1 + 64) = v26;
    *(a1 + 80) = v15;
    *(a1 + 96) = v16;
    v18 = v23;
    v19 = v24;
    *a1 = v22;
    *(a1 + 16) = v18;
    *(a1 + 112) = v29;
    *(a1 + 32) = v19;
    *(a1 + 48) = v17;
  }

  return outlined init with copy of DOCGridLayout.Spec?(v32, v30, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC04GridG0VSgMd);
}

void closure #1 in DOCItemCollectionLayoutTraits.gridLayoutTraits.getter(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  DOCItemCollectionLayoutTraits.GridSpecContext.layout(assertIfEnvironmentIsLegacy:)(&v36);
  v4 = swift_endAccess();
  v60 = v46;
  v61 = v47;
  v62 = v48;
  v63 = v49;
  v56 = v42;
  v57 = v43;
  v58 = v44;
  v59 = v45;
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v55 = v41;
  v50 = v36;
  v51 = v37;
  v5 = a1[70];
  (*(*a1 + 184))(v64, v4);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v46 = v60;
  v47 = v61;
  v48 = v62;
  v49 = v63;
  v42 = v56;
  v43 = v57;
  v44 = v58;
  v45 = v59;
  v38 = v52;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  v36 = v50;
  v37 = v51;
  v33 = v64[8];
  v34 = v64[9];
  v35[0] = v65[0];
  *(v35 + 9) = *(v65 + 9);
  v29 = v64[4];
  v30 = v64[5];
  v31 = v64[6];
  v32 = v64[7];
  v25 = v64[0];
  v26 = v64[1];
  v27 = v64[2];
  v28 = v64[3];

  v6 = DOCGridLayout.LayoutCalculator.computeCellHeight(forComputedLayout:traitCollection:gridItemLayoutTraits:)(&v36, v5, &v25);

  outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v64);
  v7 = objc_opt_self();
  v8 = *(&v60 + 1);
  v9 = [v7 fixedSpacing_];
  v10 = [v7 fixedSpacing_];
  v11 = *(&v63 + 1);
  v12 = [v7 fixedSpacing_];
  v13 = v58;
  v14 = v59;
  v15 = [v5 layoutDirection];
  v16 = v61;
  v17 = v52;
  v18 = *(&v57 + 1);
  v19 = BYTE8(v52);
  v20 = [v5 enclosedInUIPDocumentLanding];
  outlined destroy of DOCGridLayout(&v50);
  if (v20)
  {
    v21 = v10;

    v22 = 0;
    v11 = v16;
    v12 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (v15 == 1)
  {
    v23 = *(&v13 + 1);
  }

  else
  {
    v23 = *(&v14 + 1);
  }

  if (v15 == 1)
  {
    v24 = *(&v14 + 1);
  }

  else
  {
    v24 = *(&v13 + 1);
  }

  *a2 = v16;
  *(a2 + 8) = v6;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v22;
  *(a2 + 40) = v11;
  *(a2 + 48) = v6;
  *(a2 + 56) = v12;
  *(a2 + 64) = v17;
  *(a2 + 72) = v13;
  *(a2 + 80) = v24;
  *(a2 + 88) = v14;
  *(a2 + 96) = v23;
  *(a2 + 104) = v18;
  *(a2 + 112) = v19;
}

uint64_t DOCItemCollectionLayoutTraits.GridSpecContext.layout(assertIfEnvironmentIsLegacy:)@<X0>(__int128 *a1@<X8>)
{
  v2 = v1;
  v65 = *(v1 + 24);
  v66 = *(v1 + 8);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v64 = *(v1 + 56);
  v6 = *v1;
  v7 = [v6 userInterfaceIdiom];
  [v6 displayScale];
  v9 = v8;
  v10 = v6;
  DOCGridSpecTextSize.init(_:)(v10);
  v11 = v123;
  v12 = [v10 preferredContentSizeCategory];
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    v13 = static UIContentSizeCategory.> infix(_:_:)();

    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {

    v14 = 0;
  }

  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();
  v15 = v123;
  v16 = BYTE8(v123);
  v17 = v124;
  v18 = [objc_opt_self() defaultMetrics];
  [v18 scaledValueForValue:v10 compatibleWithTraitCollection:1.0];
  v20 = v19;

  v21 = v2[15];
  v22 = v2[13];
  v119 = v2[14];
  v120 = v21;
  v23 = v2[15];
  v24 = v2[17];
  v121 = v2[16];
  v122 = v24;
  v25 = v2[11];
  v26 = v2[9];
  v115 = v2[10];
  v116 = v25;
  v27 = v2[11];
  v28 = v2[13];
  v117 = v2[12];
  v118 = v28;
  v29 = v2[7];
  v30 = v2[5];
  v111 = v2[6];
  v112 = v29;
  v31 = v2[7];
  v32 = v2[9];
  v113 = v2[8];
  v114 = v32;
  v33 = v2[5];
  v110[0] = v2[4];
  v110[1] = v33;
  v133 = v119;
  v134 = v23;
  v34 = v2[17];
  v135 = v121;
  v136 = v34;
  v129 = v115;
  v130 = v27;
  v131 = v117;
  v132 = v22;
  v125 = v111;
  v126 = v31;
  v127 = v113;
  v128 = v26;
  v123 = v110[0];
  v124 = v30;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v123) == 1)
  {
    v96 = v66;
    v97 = v65;
    *&v98 = v4;
    *(&v98 + 1) = v5;
    LOBYTE(v99) = v64;
    *(&v99 + 1) = v7;
    *&v100 = v9;
    BYTE8(v100) = v11;
    BYTE9(v100) = v14;
    *&v101 = v15;
    BYTE8(v101) = v16;
    *&v102 = v17;
    *(&v102 + 1) = v20;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    static DOCGridLayout.layout(for:spec:)(&v96, &v82, &v68);
    v92 = v78;
    v93 = v79;
    v94 = v80;
    v95 = v81;
    v88 = v74;
    v89 = v75;
    v90 = v76;
    v91 = v77;
    v84 = v70;
    v85 = v71;
    v86 = v72;
    v87 = v73;
    v82 = v68;
    v83 = v69;
    DOCGridLayout.specIconWidth.modify(*&v68, *&v69);
    v35 = v2[15];
    v106 = v2[14];
    v107 = v35;
    v36 = v2[17];
    v108 = v2[16];
    v109 = v36;
    v37 = v2[11];
    v102 = v2[10];
    v103 = v37;
    v38 = v2[13];
    v104 = v2[12];
    v105 = v38;
    v39 = v2[7];
    v98 = v2[6];
    v99 = v39;
    v40 = v2[9];
    v100 = v2[8];
    v101 = v40;
    v41 = v2[5];
    v96 = v2[4];
    v97 = v41;
    outlined init with copy of DOCGridLayout(&v68, v67);
    outlined destroy of CharacterSet?(&v96, &_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
    v42 = v93;
    v2[14] = v92;
    v2[15] = v42;
    v43 = v95;
    v2[16] = v94;
    v2[17] = v43;
    v44 = v89;
    v2[10] = v88;
    v2[11] = v44;
    v45 = v91;
    v2[12] = v90;
    v2[13] = v45;
    v46 = v85;
    v2[6] = v84;
    v2[7] = v46;
    v47 = v87;
    v2[8] = v86;
    v2[9] = v47;
    v48 = v83;
    v2[4] = v82;
    v2[5] = v48;
    v49 = v79;
    a1[10] = v78;
    a1[11] = v49;
    v50 = v81;
    a1[12] = v80;
    a1[13] = v50;
    v51 = v75;
    a1[6] = v74;
    a1[7] = v51;
    v52 = v77;
    a1[8] = v76;
    a1[9] = v52;
    v53 = v71;
    a1[2] = v70;
    a1[3] = v53;
    v54 = v73;
    a1[4] = v72;
    a1[5] = v54;
    v55 = v68;
    v56 = v69;
  }

  else
  {
    v57 = v134;
    a1[10] = v133;
    a1[11] = v57;
    v58 = v136;
    a1[12] = v135;
    a1[13] = v58;
    v59 = v130;
    a1[6] = v129;
    a1[7] = v59;
    v60 = v132;
    a1[8] = v131;
    a1[9] = v60;
    v61 = v126;
    a1[2] = v125;
    a1[3] = v61;
    v62 = v128;
    a1[4] = v127;
    a1[5] = v62;
    v55 = v123;
    v56 = v124;
  }

  *a1 = v55;
  a1[1] = v56;
  return outlined init with copy of DOCGridLayout.Spec?(v110, &v96, &_s26DocumentManagerExecutables13DOCGridLayoutVSgMd);
}

uint64_t key path setter for DOCItemCollectionLayoutTraits.gridItemLayoutTraits : DOCItemCollectionLayoutTraits(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[9];
  v3 = a1[7];
  v34 = a1[8];
  v35 = v2;
  v4 = a1[9];
  v36[0] = a1[10];
  *(v36 + 9) = *(a1 + 169);
  v5 = a1[5];
  v6 = a1[3];
  v30 = a1[4];
  v31 = v5;
  v7 = a1[5];
  v8 = a1[7];
  v32 = a1[6];
  v33 = v8;
  v9 = a1[1];
  v27[0] = *a1;
  v27[1] = v9;
  v10 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v28 = a1[2];
  v29 = v10;
  v45 = v34;
  v46 = v4;
  v47[0] = a1[10];
  *(v47 + 9) = *(a1 + 169);
  v41 = v30;
  v42 = v7;
  v43 = v32;
  v44 = v3;
  v37 = v12;
  v38 = v11;
  v13 = *a2;
  v39 = v28;
  v40 = v6;
  DOCGridLayout.specIconWidth.modify(*(v47 + 9), *&v34);
  *&v49[9] = *(v13 + 305);
  v14 = *(v13 + 296);
  v48[9] = *(v13 + 280);
  *v49 = v14;
  v15 = *(v13 + 264);
  v16 = *(v13 + 216);
  v48[4] = *(v13 + 200);
  v48[5] = v16;
  v17 = *(v13 + 248);
  v48[6] = *(v13 + 232);
  v48[7] = v17;
  v48[8] = v15;
  v18 = *(v13 + 152);
  v48[0] = *(v13 + 136);
  v48[1] = v18;
  v19 = *(v13 + 184);
  v48[2] = *(v13 + 168);
  v48[3] = v19;
  v20 = v38;
  *(v13 + 136) = v37;
  v21 = v46;
  *(v13 + 264) = v45;
  *(v13 + 280) = v21;
  *(v13 + 296) = v47[0];
  *(v13 + 305) = *(v47 + 9);
  v22 = v42;
  *(v13 + 200) = v41;
  *(v13 + 216) = v22;
  v23 = v44;
  *(v13 + 232) = v43;
  *(v13 + 248) = v23;
  *(v13 + 152) = v20;
  v24 = v40;
  *(v13 + 168) = v39;
  *(v13 + 184) = v24;
  outlined init with copy of DOCItemCollectionLayoutTraits.GridItemTraits(v27, &v26);
  return outlined destroy of CharacterSet?(v48, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
}

uint64_t DOCItemCollectionLayoutTraits.gridItemLayoutTraits.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + 136);
  v4 = *(v1 + 280);
  v61[8] = *(v1 + 264);
  v61[9] = v4;
  v6 = *(v1 + 264);
  v5 = *(v1 + 280);
  v62[0] = *(v1 + 296);
  *(v62 + 9) = *(v1 + 305);
  v7 = *(v1 + 216);
  v61[4] = *(v1 + 200);
  v61[5] = v7;
  v8 = *(v1 + 248);
  v61[6] = *(v1 + 232);
  v61[7] = v8;
  v9 = *(v1 + 152);
  v61[0] = *(v1 + 136);
  v61[1] = v9;
  v10 = *(v1 + 184);
  v61[2] = *(v1 + 168);
  v61[3] = v10;
  v71 = v6;
  v72 = v5;
  v73[0] = *(v1 + 296);
  *(v73 + 9) = *(v1 + 305);
  v11 = *(v1 + 216);
  v67 = *(v1 + 200);
  v68 = v11;
  v12 = *(v1 + 248);
  v69 = *(v1 + 232);
  v70 = v12;
  v13 = *(v1 + 152);
  v63 = *(v1 + 136);
  v64 = v13;
  v14 = *(v1 + 184);
  v65 = *(v1 + 168);
  v66 = v14;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v63) == 1)
  {
    closure #1 in DOCItemCollectionLayoutTraits.gridItemLayoutTraits.getter(v1, &v37);
    v56 = v45;
    v57 = v46;
    v58[0] = v47[0];
    *(v58 + 9) = *(v47 + 9);
    v52 = v41;
    v53 = v42;
    v54 = v43;
    v55 = v44;
    v48 = v37;
    v49 = v38;
    v50 = v39;
    v51 = v40;
    DOCGridLayout.specIconWidth.modify(*&v39, *&v40);
    v15 = *(v1 + 280);
    v59[8] = *(v1 + 264);
    v59[9] = v15;
    v60[0] = *(v1 + 296);
    *(v60 + 9) = *(v1 + 305);
    v16 = *(v1 + 216);
    v59[4] = *(v1 + 200);
    v59[5] = v16;
    v17 = *(v1 + 248);
    v59[6] = *(v1 + 232);
    v59[7] = v17;
    v18 = *(v1 + 152);
    v59[0] = *v3;
    v59[1] = v18;
    v19 = *(v1 + 184);
    v59[2] = *(v1 + 168);
    v59[3] = v19;
    v20 = v57;
    *(v1 + 264) = v56;
    *(v1 + 280) = v20;
    *(v1 + 296) = v58[0];
    *(v1 + 305) = *(v58 + 9);
    v21 = v53;
    *(v1 + 200) = v52;
    *(v1 + 216) = v21;
    v22 = v55;
    *(v1 + 232) = v54;
    *(v1 + 248) = v22;
    v23 = v49;
    *v3 = v48;
    *(v1 + 152) = v23;
    v24 = v51;
    *(v1 + 168) = v50;
    *(v1 + 184) = v24;
    outlined init with copy of DOCItemCollectionLayoutTraits.GridItemTraits(&v37, &v36);
    outlined destroy of CharacterSet?(v59, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    v25 = v46;
    a1[8] = v45;
    a1[9] = v25;
    a1[10] = v47[0];
    *(a1 + 169) = *(v47 + 9);
    v26 = v42;
    a1[4] = v41;
    a1[5] = v26;
    v27 = v44;
    a1[6] = v43;
    a1[7] = v27;
    v28 = v38;
    *a1 = v37;
    a1[1] = v28;
    v29 = v39;
    v30 = v40;
  }

  else
  {
    v31 = v72;
    a1[8] = v71;
    a1[9] = v31;
    a1[10] = v73[0];
    *(a1 + 169) = *(v73 + 9);
    v32 = v68;
    a1[4] = v67;
    a1[5] = v32;
    v33 = v70;
    a1[6] = v69;
    a1[7] = v33;
    v34 = v64;
    *a1 = v63;
    a1[1] = v34;
    v29 = v65;
    v30 = v66;
  }

  a1[2] = v29;
  a1[3] = v30;
  return outlined init with copy of DOCGridLayout.Spec?(v61, v59, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
}