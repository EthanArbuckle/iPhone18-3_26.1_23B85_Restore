uint64_t closure #71 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TruncateStmt = type metadata accessor for PgQuery_TruncateStmt(0);
  v6 = *(TruncateStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](TruncateStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TruncateStmt;
  v30 = TruncateStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 70)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_TruncateStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_TruncateStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_TruncateStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_TruncateStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #72 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CommentStmt = type metadata accessor for PgQuery_CommentStmt(0);
  v6 = *(CommentStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](CommentStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CommentStmt;
  v30 = CommentStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 71)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CommentStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CommentStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommentStmt and conformance PgQuery_CommentStmt, type metadata accessor for PgQuery_CommentStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CommentStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CommentStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #73 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  Stmt = type metadata accessor for PgQuery_FetchStmt(0);
  v6 = *(Stmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](Stmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = Stmt;
  v30 = Stmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 72)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_FetchStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_FetchStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FetchStmt and conformance PgQuery_FetchStmt, type metadata accessor for PgQuery_FetchStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_FetchStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_FetchStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #74 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  IndexStmt = type metadata accessor for PgQuery_IndexStmt(0);
  v6 = *(IndexStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](IndexStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = IndexStmt;
  v30 = IndexStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 73)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_IndexStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_IndexStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexStmt and conformance PgQuery_IndexStmt, type metadata accessor for PgQuery_IndexStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_IndexStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_IndexStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #75 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  FunctionStmt = type metadata accessor for PgQuery_CreateFunctionStmt(0);
  v6 = *(FunctionStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](FunctionStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = FunctionStmt;
  v30 = FunctionStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 74)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateFunctionStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateFunctionStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFunctionStmt and conformance PgQuery_CreateFunctionStmt, type metadata accessor for PgQuery_CreateFunctionStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateFunctionStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateFunctionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #76 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterFunctionStmt = type metadata accessor for PgQuery_AlterFunctionStmt(0);
  v6 = *(AlterFunctionStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterFunctionStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterFunctionStmt;
  v30 = AlterFunctionStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 75)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterFunctionStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterFunctionStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterFunctionStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterFunctionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #77 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DoStmt = type metadata accessor for PgQuery_DoStmt(0);
  v6 = *(DoStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](DoStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DoStmt;
  v30 = DoStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 76)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DoStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DoStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DoStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DoStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #78 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RenameStmt = type metadata accessor for PgQuery_RenameStmt(0);
  v6 = *(RenameStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](RenameStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RenameStmt;
  v30 = RenameStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 77)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RenameStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RenameStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RenameStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RenameStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #79 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RuleStmt = type metadata accessor for PgQuery_RuleStmt(0);
  v6 = *(RuleStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](RuleStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RuleStmt;
  v30 = RuleStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 78)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RuleStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RuleStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RuleStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RuleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #80 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  NotifyStmt = type metadata accessor for PgQuery_NotifyStmt(0);
  v6 = *(NotifyStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](NotifyStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = NotifyStmt;
  v30 = NotifyStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 79)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_NotifyStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_NotifyStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_NotifyStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_NotifyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #81 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ListenStmt = type metadata accessor for PgQuery_ListenStmt(0);
  v6 = *(ListenStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ListenStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ListenStmt;
  v30 = ListenStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 80)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ListenStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ListenStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ListenStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ListenStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #82 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  UnlistenStmt = type metadata accessor for PgQuery_UnlistenStmt(0);
  v6 = *(UnlistenStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](UnlistenStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = UnlistenStmt;
  v30 = UnlistenStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 81)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_UnlistenStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_UnlistenStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_UnlistenStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_UnlistenStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #83 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TransactionStmt = type metadata accessor for PgQuery_TransactionStmt(0);
  v6 = *(TransactionStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](TransactionStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TransactionStmt;
  v30 = TransactionStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 82)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_TransactionStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_TransactionStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TransactionStmt and conformance PgQuery_TransactionStmt, type metadata accessor for PgQuery_TransactionStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_TransactionStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_TransactionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #84 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ViewStmt = type metadata accessor for PgQuery_ViewStmt(0);
  v6 = *(ViewStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ViewStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ViewStmt;
  v30 = ViewStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 83)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ViewStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ViewStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ViewStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ViewStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #85 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  LoadStmt = type metadata accessor for PgQuery_LoadStmt(0);
  v6 = *(LoadStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](LoadStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = LoadStmt;
  v30 = LoadStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 84)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_LoadStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_LoadStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_LoadStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_LoadStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #86 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DomainStmt = type metadata accessor for PgQuery_CreateDomainStmt(0);
  v6 = *(DomainStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](DomainStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DomainStmt;
  v30 = DomainStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 85)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateDomainStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateDomainStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateDomainStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateDomainStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #87 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CreatedbStmt = type metadata accessor for PgQuery_CreatedbStmt(0);
  v6 = *(CreatedbStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](CreatedbStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CreatedbStmt;
  v30 = CreatedbStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 86)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreatedbStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreatedbStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreatedbStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreatedbStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #88 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DropdbStmt = type metadata accessor for PgQuery_DropdbStmt(0);
  v6 = *(DropdbStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](DropdbStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DropdbStmt;
  v30 = DropdbStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 87)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DropdbStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DropdbStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DropdbStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DropdbStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #89 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  VacuumStmt = type metadata accessor for PgQuery_VacuumStmt(0);
  v6 = *(VacuumStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](VacuumStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = VacuumStmt;
  v30 = VacuumStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 88)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_VacuumStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_VacuumStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumStmt and conformance PgQuery_VacuumStmt, type metadata accessor for PgQuery_VacuumStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_VacuumStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_VacuumStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #90 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ExplainStmt = type metadata accessor for PgQuery_ExplainStmt(0);
  v6 = *(ExplainStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ExplainStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ExplainStmt;
  v30 = ExplainStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 89)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ExplainStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ExplainStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ExplainStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ExplainStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #91 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TableAsStmt = type metadata accessor for PgQuery_CreateTableAsStmt(0);
  v6 = *(TableAsStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](TableAsStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TableAsStmt;
  v30 = TableAsStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 90)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateTableAsStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateTableAsStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableAsStmt and conformance PgQuery_CreateTableAsStmt, type metadata accessor for PgQuery_CreateTableAsStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateTableAsStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateTableAsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #92 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SeqStmt = type metadata accessor for PgQuery_CreateSeqStmt(0);
  v6 = *(SeqStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](SeqStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SeqStmt;
  v30 = SeqStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 91)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateSeqStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateSeqStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSeqStmt and conformance PgQuery_CreateSeqStmt, type metadata accessor for PgQuery_CreateSeqStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateSeqStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateSeqStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #93 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterSeqStmt = type metadata accessor for PgQuery_AlterSeqStmt(0);
  v6 = *(AlterSeqStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterSeqStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterSeqStmt;
  v30 = AlterSeqStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 92)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterSeqStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterSeqStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSeqStmt and conformance PgQuery_AlterSeqStmt, type metadata accessor for PgQuery_AlterSeqStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterSeqStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterSeqStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #94 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v6 = *(VariableSetStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](VariableSetStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = VariableSetStmt;
  v30 = VariableSetStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 93)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_VariableSetStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_VariableSetStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_VariableSetStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_VariableSetStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #95 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  VariableShowStmt = type metadata accessor for PgQuery_VariableShowStmt(0);
  v6 = *(VariableShowStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](VariableShowStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = VariableShowStmt;
  v30 = VariableShowStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 94)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_VariableShowStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_VariableShowStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableShowStmt and conformance PgQuery_VariableShowStmt, type metadata accessor for PgQuery_VariableShowStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_VariableShowStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_VariableShowStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #96 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DiscardStmt = type metadata accessor for PgQuery_DiscardStmt(0);
  v6 = *(DiscardStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](DiscardStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DiscardStmt;
  v30 = DiscardStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 95)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DiscardStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DiscardStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DiscardStmt and conformance PgQuery_DiscardStmt, type metadata accessor for PgQuery_DiscardStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DiscardStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DiscardStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #97 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TrigStmt = type metadata accessor for PgQuery_CreateTrigStmt(0);
  v6 = *(TrigStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](TrigStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TrigStmt;
  v30 = TrigStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 96)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateTrigStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateTrigStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTrigStmt and conformance PgQuery_CreateTrigStmt, type metadata accessor for PgQuery_CreateTrigStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateTrigStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateTrigStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #98 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  PLangStmt = type metadata accessor for PgQuery_CreatePLangStmt(0);
  v6 = *(PLangStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](PLangStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = PLangStmt;
  v30 = PLangStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 97)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreatePLangStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreatePLangStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePLangStmt and conformance PgQuery_CreatePLangStmt, type metadata accessor for PgQuery_CreatePLangStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreatePLangStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreatePLangStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #99 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RoleStmt = type metadata accessor for PgQuery_CreateRoleStmt(0);
  v6 = *(RoleStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](RoleStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RoleStmt;
  v30 = RoleStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 98)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateRoleStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateRoleStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRoleStmt and conformance PgQuery_CreateRoleStmt, type metadata accessor for PgQuery_CreateRoleStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateRoleStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateRoleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #100 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterRoleStmt = type metadata accessor for PgQuery_AlterRoleStmt(0);
  v6 = *(AlterRoleStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterRoleStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterRoleStmt;
  v30 = AlterRoleStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 99)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterRoleStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterRoleStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleStmt and conformance PgQuery_AlterRoleStmt, type metadata accessor for PgQuery_AlterRoleStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterRoleStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterRoleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #101 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DropRoleStmt = type metadata accessor for PgQuery_DropRoleStmt(0);
  v6 = *(DropRoleStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](DropRoleStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DropRoleStmt;
  v30 = DropRoleStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 100)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DropRoleStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DropRoleStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DropRoleStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DropRoleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #102 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  LockStmt = type metadata accessor for PgQuery_LockStmt(0);
  v6 = *(LockStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](LockStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = LockStmt;
  v30 = LockStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 101)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_LockStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_LockStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockStmt and conformance PgQuery_LockStmt, type metadata accessor for PgQuery_LockStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_LockStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_LockStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #103 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ConstraintsSetStmt = type metadata accessor for PgQuery_ConstraintsSetStmt(0);
  v6 = *(ConstraintsSetStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ConstraintsSetStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ConstraintsSetStmt;
  v30 = ConstraintsSetStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 102)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ConstraintsSetStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ConstraintsSetStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConstraintsSetStmt and conformance PgQuery_ConstraintsSetStmt, type metadata accessor for PgQuery_ConstraintsSetStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ConstraintsSetStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ConstraintsSetStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #104 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ReindexStmt = type metadata accessor for PgQuery_ReindexStmt(0);
  v6 = *(ReindexStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ReindexStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ReindexStmt;
  v30 = ReindexStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 103)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ReindexStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ReindexStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReindexStmt and conformance PgQuery_ReindexStmt, type metadata accessor for PgQuery_ReindexStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ReindexStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ReindexStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #105 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for PgQuery_CheckPointStmt(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 104)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CheckPointStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CheckPointStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CheckPointStmt and conformance PgQuery_CheckPointStmt, type metadata accessor for PgQuery_CheckPointStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CheckPointStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CheckPointStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #106 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SchemaStmt = type metadata accessor for PgQuery_CreateSchemaStmt(0);
  v6 = *(SchemaStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](SchemaStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SchemaStmt;
  v30 = SchemaStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 105)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateSchemaStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateSchemaStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSchemaStmt and conformance PgQuery_CreateSchemaStmt, type metadata accessor for PgQuery_CreateSchemaStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateSchemaStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateSchemaStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #107 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterDatabaseStmt = type metadata accessor for PgQuery_AlterDatabaseStmt(0);
  v6 = *(AlterDatabaseStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterDatabaseStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterDatabaseStmt;
  v30 = AlterDatabaseStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 106)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterDatabaseStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterDatabaseStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseStmt and conformance PgQuery_AlterDatabaseStmt, type metadata accessor for PgQuery_AlterDatabaseStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterDatabaseStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterDatabaseStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #108 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterDatabaseSetStmt = type metadata accessor for PgQuery_AlterDatabaseSetStmt(0);
  v6 = *(AlterDatabaseSetStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterDatabaseSetStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterDatabaseSetStmt;
  v30 = AlterDatabaseSetStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 107)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseSetStmt and conformance PgQuery_AlterDatabaseSetStmt, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #109 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterRoleSetStmt = type metadata accessor for PgQuery_AlterRoleSetStmt(0);
  v6 = *(AlterRoleSetStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterRoleSetStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterRoleSetStmt;
  v30 = AlterRoleSetStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 108)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterRoleSetStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterRoleSetStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleSetStmt and conformance PgQuery_AlterRoleSetStmt, type metadata accessor for PgQuery_AlterRoleSetStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterRoleSetStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterRoleSetStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #110 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ConversionStmt = type metadata accessor for PgQuery_CreateConversionStmt(0);
  v6 = *(ConversionStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ConversionStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ConversionStmt;
  v30 = ConversionStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 109)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateConversionStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateConversionStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateConversionStmt and conformance PgQuery_CreateConversionStmt, type metadata accessor for PgQuery_CreateConversionStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateConversionStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateConversionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #111 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CastStmt = type metadata accessor for PgQuery_CreateCastStmt(0);
  v6 = *(CastStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](CastStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CastStmt;
  v30 = CastStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 110)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateCastStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateCastStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateCastStmt and conformance PgQuery_CreateCastStmt, type metadata accessor for PgQuery_CreateCastStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateCastStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateCastStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #112 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  OpClassStmt = type metadata accessor for PgQuery_CreateOpClassStmt(0);
  v6 = *(OpClassStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](OpClassStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = OpClassStmt;
  v30 = OpClassStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 111)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateOpClassStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateOpClassStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassStmt and conformance PgQuery_CreateOpClassStmt, type metadata accessor for PgQuery_CreateOpClassStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateOpClassStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateOpClassStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #113 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  OpFamilyStmt = type metadata accessor for PgQuery_CreateOpFamilyStmt(0);
  v6 = *(OpFamilyStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](OpFamilyStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = OpFamilyStmt;
  v30 = OpFamilyStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 112)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateOpFamilyStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateOpFamilyStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpFamilyStmt and conformance PgQuery_CreateOpFamilyStmt, type metadata accessor for PgQuery_CreateOpFamilyStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateOpFamilyStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateOpFamilyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #114 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterOpFamilyStmt = type metadata accessor for PgQuery_AlterOpFamilyStmt(0);
  v6 = *(AlterOpFamilyStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterOpFamilyStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterOpFamilyStmt;
  v30 = AlterOpFamilyStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 113)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterOpFamilyStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterOpFamilyStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterOpFamilyStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterOpFamilyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #115 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  PrepareStmt = type metadata accessor for PgQuery_PrepareStmt(0);
  v6 = *(PrepareStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](PrepareStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = PrepareStmt;
  v30 = PrepareStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 114)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_PrepareStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_PrepareStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_PrepareStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_PrepareStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #116 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ExecuteStmt = type metadata accessor for PgQuery_ExecuteStmt(0);
  v6 = *(ExecuteStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ExecuteStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ExecuteStmt;
  v30 = ExecuteStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 115)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ExecuteStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ExecuteStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ExecuteStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ExecuteStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #117 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DeallocateStmt = type metadata accessor for PgQuery_DeallocateStmt(0);
  v6 = *(DeallocateStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](DeallocateStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DeallocateStmt;
  v30 = DeallocateStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 116)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DeallocateStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DeallocateStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeallocateStmt and conformance PgQuery_DeallocateStmt, type metadata accessor for PgQuery_DeallocateStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DeallocateStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DeallocateStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #118 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DeclareCursorStmt = type metadata accessor for PgQuery_DeclareCursorStmt(0);
  v6 = *(DeclareCursorStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](DeclareCursorStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DeclareCursorStmt;
  v30 = DeclareCursorStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 117)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DeclareCursorStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DeclareCursorStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeclareCursorStmt and conformance PgQuery_DeclareCursorStmt, type metadata accessor for PgQuery_DeclareCursorStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DeclareCursorStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DeclareCursorStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #119 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TableSpaceStmt = type metadata accessor for PgQuery_CreateTableSpaceStmt(0);
  v6 = *(TableSpaceStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](TableSpaceStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TableSpaceStmt;
  v30 = TableSpaceStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 118)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateTableSpaceStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateTableSpaceStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableSpaceStmt and conformance PgQuery_CreateTableSpaceStmt, type metadata accessor for PgQuery_CreateTableSpaceStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateTableSpaceStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateTableSpaceStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #120 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DropTableSpaceStmt = type metadata accessor for PgQuery_DropTableSpaceStmt(0);
  v6 = *(DropTableSpaceStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](DropTableSpaceStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DropTableSpaceStmt;
  v30 = DropTableSpaceStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 119)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DropTableSpaceStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DropTableSpaceStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropTableSpaceStmt and conformance PgQuery_DropTableSpaceStmt, type metadata accessor for PgQuery_DropTableSpaceStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DropTableSpaceStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DropTableSpaceStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #121 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterObjectDependsStmt = type metadata accessor for PgQuery_AlterObjectDependsStmt(0);
  v6 = *(AlterObjectDependsStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterObjectDependsStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterObjectDependsStmt;
  v30 = AlterObjectDependsStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 120)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterObjectDependsStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterObjectDependsStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterObjectDependsStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterObjectDependsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #122 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterObjectSchemaStmt = type metadata accessor for PgQuery_AlterObjectSchemaStmt(0);
  v6 = *(AlterObjectSchemaStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterObjectSchemaStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterObjectSchemaStmt;
  v30 = AlterObjectSchemaStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 121)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #123 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterOwnerStmt = type metadata accessor for PgQuery_AlterOwnerStmt(0);
  v6 = *(AlterOwnerStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterOwnerStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterOwnerStmt;
  v30 = AlterOwnerStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 122)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterOwnerStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterOwnerStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOwnerStmt and conformance PgQuery_AlterOwnerStmt, type metadata accessor for PgQuery_AlterOwnerStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterOwnerStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterOwnerStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #124 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterOperatorStmt = type metadata accessor for PgQuery_AlterOperatorStmt(0);
  v6 = *(AlterOperatorStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterOperatorStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterOperatorStmt;
  v30 = AlterOperatorStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 123)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterOperatorStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterOperatorStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterOperatorStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterOperatorStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #125 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterTypeStmt = type metadata accessor for PgQuery_AlterTypeStmt(0);
  v6 = *(AlterTypeStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterTypeStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterTypeStmt;
  v30 = AlterTypeStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 124)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterTypeStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterTypeStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTypeStmt and conformance PgQuery_AlterTypeStmt, type metadata accessor for PgQuery_AlterTypeStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterTypeStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterTypeStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #126 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DropOwnedStmt = type metadata accessor for PgQuery_DropOwnedStmt(0);
  v6 = *(DropOwnedStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](DropOwnedStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DropOwnedStmt;
  v30 = DropOwnedStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 125)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DropOwnedStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DropOwnedStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropOwnedStmt and conformance PgQuery_DropOwnedStmt, type metadata accessor for PgQuery_DropOwnedStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DropOwnedStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DropOwnedStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #127 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ReassignOwnedStmt = type metadata accessor for PgQuery_ReassignOwnedStmt(0);
  v6 = *(ReassignOwnedStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ReassignOwnedStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ReassignOwnedStmt;
  v30 = ReassignOwnedStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 126)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ReassignOwnedStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ReassignOwnedStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReassignOwnedStmt and conformance PgQuery_ReassignOwnedStmt, type metadata accessor for PgQuery_ReassignOwnedStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ReassignOwnedStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ReassignOwnedStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #128 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CompositeTypeStmt = type metadata accessor for PgQuery_CompositeTypeStmt(0);
  v6 = *(CompositeTypeStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](CompositeTypeStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CompositeTypeStmt;
  v30 = CompositeTypeStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 127)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CompositeTypeStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CompositeTypeStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CompositeTypeStmt and conformance PgQuery_CompositeTypeStmt, type metadata accessor for PgQuery_CompositeTypeStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CompositeTypeStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CompositeTypeStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #129 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  EnumStmt = type metadata accessor for PgQuery_CreateEnumStmt(0);
  v6 = *(EnumStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](EnumStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = EnumStmt;
  v30 = EnumStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 128)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateEnumStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateEnumStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEnumStmt and conformance PgQuery_CreateEnumStmt, type metadata accessor for PgQuery_CreateEnumStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateEnumStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateEnumStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #130 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RangeStmt = type metadata accessor for PgQuery_CreateRangeStmt(0);
  v6 = *(RangeStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](RangeStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RangeStmt;
  v30 = RangeStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 129)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateRangeStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateRangeStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRangeStmt and conformance PgQuery_CreateRangeStmt, type metadata accessor for PgQuery_CreateRangeStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateRangeStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateRangeStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #131 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterEnumStmt = type metadata accessor for PgQuery_AlterEnumStmt(0);
  v6 = *(AlterEnumStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterEnumStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterEnumStmt;
  v30 = AlterEnumStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 130)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterEnumStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterEnumStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEnumStmt and conformance PgQuery_AlterEnumStmt, type metadata accessor for PgQuery_AlterEnumStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterEnumStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterEnumStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #132 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterTSDictionaryStmt = type metadata accessor for PgQuery_AlterTSDictionaryStmt(0);
  v6 = *(AlterTSDictionaryStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterTSDictionaryStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterTSDictionaryStmt;
  v30 = AlterTSDictionaryStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 131)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSDictionaryStmt and conformance PgQuery_AlterTSDictionaryStmt, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #133 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterTSConfigurationStmt = type metadata accessor for PgQuery_AlterTSConfigurationStmt(0);
  v6 = *(AlterTSConfigurationStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterTSConfigurationStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterTSConfigurationStmt;
  v30 = AlterTSConfigurationStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 132)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSConfigurationStmt and conformance PgQuery_AlterTSConfigurationStmt, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #134 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  FdwStmt = type metadata accessor for PgQuery_CreateFdwStmt(0);
  v6 = *(FdwStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](FdwStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = FdwStmt;
  v30 = FdwStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 133)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateFdwStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateFdwStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFdwStmt and conformance PgQuery_CreateFdwStmt, type metadata accessor for PgQuery_CreateFdwStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateFdwStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateFdwStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #135 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterFdwStmt = type metadata accessor for PgQuery_AlterFdwStmt(0);
  v6 = *(AlterFdwStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterFdwStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterFdwStmt;
  v30 = AlterFdwStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 134)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterFdwStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterFdwStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFdwStmt and conformance PgQuery_AlterFdwStmt, type metadata accessor for PgQuery_AlterFdwStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterFdwStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterFdwStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #136 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ForeignServerStmt = type metadata accessor for PgQuery_CreateForeignServerStmt(0);
  v6 = *(ForeignServerStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ForeignServerStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ForeignServerStmt;
  v30 = ForeignServerStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 135)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateForeignServerStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateForeignServerStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignServerStmt and conformance PgQuery_CreateForeignServerStmt, type metadata accessor for PgQuery_CreateForeignServerStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateForeignServerStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateForeignServerStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #137 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterForeignServerStmt = type metadata accessor for PgQuery_AlterForeignServerStmt(0);
  v6 = *(AlterForeignServerStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterForeignServerStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterForeignServerStmt;
  v30 = AlterForeignServerStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 136)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterForeignServerStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterForeignServerStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterForeignServerStmt and conformance PgQuery_AlterForeignServerStmt, type metadata accessor for PgQuery_AlterForeignServerStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterForeignServerStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterForeignServerStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #138 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  UserMappingStmt = type metadata accessor for PgQuery_CreateUserMappingStmt(0);
  v6 = *(UserMappingStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](UserMappingStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = UserMappingStmt;
  v30 = UserMappingStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 137)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateUserMappingStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateUserMappingStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateUserMappingStmt and conformance PgQuery_CreateUserMappingStmt, type metadata accessor for PgQuery_CreateUserMappingStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateUserMappingStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateUserMappingStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #139 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterUserMappingStmt = type metadata accessor for PgQuery_AlterUserMappingStmt(0);
  v6 = *(AlterUserMappingStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterUserMappingStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterUserMappingStmt;
  v30 = AlterUserMappingStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 138)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterUserMappingStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterUserMappingStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterUserMappingStmt and conformance PgQuery_AlterUserMappingStmt, type metadata accessor for PgQuery_AlterUserMappingStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterUserMappingStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterUserMappingStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #140 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DropUserMappingStmt = type metadata accessor for PgQuery_DropUserMappingStmt(0);
  v6 = *(DropUserMappingStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](DropUserMappingStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DropUserMappingStmt;
  v30 = DropUserMappingStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 139)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DropUserMappingStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DropUserMappingStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropUserMappingStmt and conformance PgQuery_DropUserMappingStmt, type metadata accessor for PgQuery_DropUserMappingStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DropUserMappingStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DropUserMappingStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #141 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterTableSpaceOptionsStmt = type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt(0);
  v6 = *(AlterTableSpaceOptionsStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterTableSpaceOptionsStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterTableSpaceOptionsStmt;
  v30 = AlterTableSpaceOptionsStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 140)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableSpaceOptionsStmt and conformance PgQuery_AlterTableSpaceOptionsStmt, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #142 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterTableMoveAllStmt = type metadata accessor for PgQuery_AlterTableMoveAllStmt(0);
  v6 = *(AlterTableMoveAllStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterTableMoveAllStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterTableMoveAllStmt;
  v30 = AlterTableMoveAllStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 141)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableMoveAllStmt and conformance PgQuery_AlterTableMoveAllStmt, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #143 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SecLabelStmt = type metadata accessor for PgQuery_SecLabelStmt(0);
  v6 = *(SecLabelStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](SecLabelStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SecLabelStmt;
  v30 = SecLabelStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 142)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_SecLabelStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_SecLabelStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SecLabelStmt and conformance PgQuery_SecLabelStmt, type metadata accessor for PgQuery_SecLabelStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_SecLabelStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_SecLabelStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #144 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ForeignTableStmt = type metadata accessor for PgQuery_CreateForeignTableStmt(0);
  v6 = *(ForeignTableStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ForeignTableStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ForeignTableStmt;
  v30 = ForeignTableStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 143)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateForeignTableStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateForeignTableStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignTableStmt and conformance PgQuery_CreateForeignTableStmt, type metadata accessor for PgQuery_CreateForeignTableStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateForeignTableStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateForeignTableStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #145 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ImportForeignSchemaStmt = type metadata accessor for PgQuery_ImportForeignSchemaStmt(0);
  v6 = *(ImportForeignSchemaStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ImportForeignSchemaStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ImportForeignSchemaStmt;
  v30 = ImportForeignSchemaStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 144)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaStmt and conformance PgQuery_ImportForeignSchemaStmt, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #146 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ExtensionStmt = type metadata accessor for PgQuery_CreateExtensionStmt(0);
  v6 = *(ExtensionStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ExtensionStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ExtensionStmt;
  v30 = ExtensionStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 145)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateExtensionStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateExtensionStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateExtensionStmt and conformance PgQuery_CreateExtensionStmt, type metadata accessor for PgQuery_CreateExtensionStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateExtensionStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateExtensionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #147 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterExtensionStmt = type metadata accessor for PgQuery_AlterExtensionStmt(0);
  v6 = *(AlterExtensionStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterExtensionStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterExtensionStmt;
  v30 = AlterExtensionStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 146)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterExtensionStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterExtensionStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionStmt and conformance PgQuery_AlterExtensionStmt, type metadata accessor for PgQuery_AlterExtensionStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterExtensionStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterExtensionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #148 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterExtensionContentsStmt = type metadata accessor for PgQuery_AlterExtensionContentsStmt(0);
  v6 = *(AlterExtensionContentsStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterExtensionContentsStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterExtensionContentsStmt;
  v30 = AlterExtensionContentsStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 147)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionContentsStmt and conformance PgQuery_AlterExtensionContentsStmt, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #149 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  EventTrigStmt = type metadata accessor for PgQuery_CreateEventTrigStmt(0);
  v6 = *(EventTrigStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](EventTrigStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = EventTrigStmt;
  v30 = EventTrigStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 148)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateEventTrigStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateEventTrigStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEventTrigStmt and conformance PgQuery_CreateEventTrigStmt, type metadata accessor for PgQuery_CreateEventTrigStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateEventTrigStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateEventTrigStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #150 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterEventTrigStmt = type metadata accessor for PgQuery_AlterEventTrigStmt(0);
  v6 = *(AlterEventTrigStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterEventTrigStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterEventTrigStmt;
  v30 = AlterEventTrigStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 149)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterEventTrigStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterEventTrigStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEventTrigStmt and conformance PgQuery_AlterEventTrigStmt, type metadata accessor for PgQuery_AlterEventTrigStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterEventTrigStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterEventTrigStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #151 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RefreshMatViewStmt = type metadata accessor for PgQuery_RefreshMatViewStmt(0);
  v6 = *(RefreshMatViewStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](RefreshMatViewStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RefreshMatViewStmt;
  v30 = RefreshMatViewStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 150)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RefreshMatViewStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RefreshMatViewStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RefreshMatViewStmt and conformance PgQuery_RefreshMatViewStmt, type metadata accessor for PgQuery_RefreshMatViewStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RefreshMatViewStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RefreshMatViewStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #152 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ReplicaIdentityStmt = type metadata accessor for PgQuery_ReplicaIdentityStmt(0);
  v6 = *(ReplicaIdentityStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](ReplicaIdentityStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ReplicaIdentityStmt;
  v30 = ReplicaIdentityStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 151)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ReplicaIdentityStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ReplicaIdentityStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReplicaIdentityStmt and conformance PgQuery_ReplicaIdentityStmt, type metadata accessor for PgQuery_ReplicaIdentityStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ReplicaIdentityStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ReplicaIdentityStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #153 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterSystemStmt = type metadata accessor for PgQuery_AlterSystemStmt(0);
  v6 = *(AlterSystemStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterSystemStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterSystemStmt;
  v30 = AlterSystemStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 152)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterSystemStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterSystemStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSystemStmt and conformance PgQuery_AlterSystemStmt, type metadata accessor for PgQuery_AlterSystemStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterSystemStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterSystemStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #154 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  PolicyStmt = type metadata accessor for PgQuery_CreatePolicyStmt(0);
  v6 = *(PolicyStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](PolicyStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = PolicyStmt;
  v30 = PolicyStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 153)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreatePolicyStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreatePolicyStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePolicyStmt and conformance PgQuery_CreatePolicyStmt, type metadata accessor for PgQuery_CreatePolicyStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreatePolicyStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreatePolicyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #155 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterPolicyStmt = type metadata accessor for PgQuery_AlterPolicyStmt(0);
  v6 = *(AlterPolicyStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterPolicyStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterPolicyStmt;
  v30 = AlterPolicyStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 154)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterPolicyStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterPolicyStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPolicyStmt and conformance PgQuery_AlterPolicyStmt, type metadata accessor for PgQuery_AlterPolicyStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterPolicyStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterPolicyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #156 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TransformStmt = type metadata accessor for PgQuery_CreateTransformStmt(0);
  v6 = *(TransformStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](TransformStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TransformStmt;
  v30 = TransformStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 155)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateTransformStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateTransformStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTransformStmt and conformance PgQuery_CreateTransformStmt, type metadata accessor for PgQuery_CreateTransformStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateTransformStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateTransformStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #157 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AmStmt = type metadata accessor for PgQuery_CreateAmStmt(0);
  v6 = *(AmStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AmStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AmStmt;
  v30 = AmStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 156)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateAmStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateAmStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateAmStmt and conformance PgQuery_CreateAmStmt, type metadata accessor for PgQuery_CreateAmStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateAmStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateAmStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #158 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  PublicationStmt = type metadata accessor for PgQuery_CreatePublicationStmt(0);
  v6 = *(PublicationStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](PublicationStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = PublicationStmt;
  v30 = PublicationStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 157)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreatePublicationStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreatePublicationStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePublicationStmt and conformance PgQuery_CreatePublicationStmt, type metadata accessor for PgQuery_CreatePublicationStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreatePublicationStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreatePublicationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #159 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterPublicationStmt = type metadata accessor for PgQuery_AlterPublicationStmt(0);
  v6 = *(AlterPublicationStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterPublicationStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterPublicationStmt;
  v30 = AlterPublicationStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 158)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterPublicationStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterPublicationStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPublicationStmt and conformance PgQuery_AlterPublicationStmt, type metadata accessor for PgQuery_AlterPublicationStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterPublicationStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterPublicationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #160 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SubscriptionStmt = type metadata accessor for PgQuery_CreateSubscriptionStmt(0);
  v6 = *(SubscriptionStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](SubscriptionStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SubscriptionStmt;
  v30 = SubscriptionStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 159)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateSubscriptionStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateSubscriptionStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSubscriptionStmt and conformance PgQuery_CreateSubscriptionStmt, type metadata accessor for PgQuery_CreateSubscriptionStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateSubscriptionStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateSubscriptionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #161 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterSubscriptionStmt = type metadata accessor for PgQuery_AlterSubscriptionStmt(0);
  v6 = *(AlterSubscriptionStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterSubscriptionStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterSubscriptionStmt;
  v30 = AlterSubscriptionStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 160)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterSubscriptionStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterSubscriptionStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionStmt and conformance PgQuery_AlterSubscriptionStmt, type metadata accessor for PgQuery_AlterSubscriptionStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterSubscriptionStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterSubscriptionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #162 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DropSubscriptionStmt = type metadata accessor for PgQuery_DropSubscriptionStmt(0);
  v6 = *(DropSubscriptionStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](DropSubscriptionStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DropSubscriptionStmt;
  v30 = DropSubscriptionStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 161)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DropSubscriptionStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DropSubscriptionStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropSubscriptionStmt and conformance PgQuery_DropSubscriptionStmt, type metadata accessor for PgQuery_DropSubscriptionStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DropSubscriptionStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DropSubscriptionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #163 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  StatsStmt = type metadata accessor for PgQuery_CreateStatsStmt(0);
  v6 = *(StatsStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](StatsStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = StatsStmt;
  v30 = StatsStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 162)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateStatsStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateStatsStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStatsStmt and conformance PgQuery_CreateStatsStmt, type metadata accessor for PgQuery_CreateStatsStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateStatsStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateStatsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #164 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterCollationStmt = type metadata accessor for PgQuery_AlterCollationStmt(0);
  v6 = *(AlterCollationStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AlterCollationStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterCollationStmt;
  v30 = AlterCollationStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 163)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterCollationStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterCollationStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterCollationStmt and conformance PgQuery_AlterCollationStmt, type metadata accessor for PgQuery_AlterCollationStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterCollationStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterCollationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #165 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for PgQuery_CallStmt(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 164)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CallStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CallStmt);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallStmt and conformance PgQuery_CallStmt, type metadata accessor for PgQuery_CallStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CallStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
    v40 = v45;
    v41 = v43;
    _s10Foundation4UUIDVSgWOhTm_0(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CallStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}