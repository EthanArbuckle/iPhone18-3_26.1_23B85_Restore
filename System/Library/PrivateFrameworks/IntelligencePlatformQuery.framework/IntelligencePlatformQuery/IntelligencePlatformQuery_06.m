uint64_t closure #166 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterStatsStmt = type metadata accessor for PgQuery_AlterStatsStmt(0);
  v6 = *(AlterStatsStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AlterStatsStmt);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterStatsStmt;
  v30 = AlterStatsStmt;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 165)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterStatsStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterStatsStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterStatsStmt and conformance PgQuery_AlterStatsStmt, type metadata accessor for PgQuery_AlterStatsStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterStatsStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterStatsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #167 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  A_Expr = type metadata accessor for PgQuery_A_Expr(0);
  v6 = *(A_Expr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](A_Expr);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = A_Expr;
  v30 = A_Expr;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 166)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_A_Expr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_A_Expr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Expr and conformance PgQuery_A_Expr, type metadata accessor for PgQuery_A_Expr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_A_Expr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_A_Expr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #168 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ColumnRef = type metadata accessor for PgQuery_ColumnRef(0);
  v6 = *(ColumnRef - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ColumnRef);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ColumnRef;
  v30 = ColumnRef;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 167)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ColumnRef);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ColumnRef);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnRef and conformance PgQuery_ColumnRef, type metadata accessor for PgQuery_ColumnRef);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ColumnRef);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ColumnRef);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #169 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ParamRef = type metadata accessor for PgQuery_ParamRef(0);
  v6 = *(ParamRef - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ParamRef);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ParamRef;
  v30 = ParamRef;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 168)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ParamRef);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ParamRef);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParamRef and conformance PgQuery_ParamRef, type metadata accessor for PgQuery_ParamRef);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ParamRef);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ParamRef);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #170 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  A_Const = type metadata accessor for PgQuery_A_Const(0);
  v6 = *(A_Const - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](A_Const);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = A_Const;
  v30 = A_Const;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 169)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_A_Const);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_A_Const);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Const and conformance PgQuery_A_Const, type metadata accessor for PgQuery_A_Const);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_A_Const);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_A_Const);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #171 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for PgQuery_FuncCall(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
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
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_FuncCall);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_FuncCall);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_FuncCall);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_FuncCall);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #172 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  A_Star = type metadata accessor for PgQuery_A_Star(0);
  v6 = *(A_Star - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](A_Star);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = A_Star;
  v30 = A_Star;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 171)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_A_Star);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_A_Star);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Star and conformance PgQuery_A_Star, type metadata accessor for PgQuery_A_Star);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_A_Star);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_A_Star);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #173 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  A_Indices = type metadata accessor for PgQuery_A_Indices(0);
  v6 = *(A_Indices - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](A_Indices);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = A_Indices;
  v30 = A_Indices;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 172)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_A_Indices);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_A_Indices);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indices and conformance PgQuery_A_Indices, type metadata accessor for PgQuery_A_Indices);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_A_Indices);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_A_Indices);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #174 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  A_Indirection = type metadata accessor for PgQuery_A_Indirection(0);
  v6 = *(A_Indirection - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](A_Indirection);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = A_Indirection;
  v30 = A_Indirection;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 173)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_A_Indirection);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_A_Indirection);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indirection and conformance PgQuery_A_Indirection, type metadata accessor for PgQuery_A_Indirection);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_A_Indirection);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_A_Indirection);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #175 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  A_ArrayExpr = type metadata accessor for PgQuery_A_ArrayExpr(0);
  v6 = *(A_ArrayExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](A_ArrayExpr);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = A_ArrayExpr;
  v30 = A_ArrayExpr;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 174)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_A_ArrayExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_A_ArrayExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_ArrayExpr and conformance PgQuery_A_ArrayExpr, type metadata accessor for PgQuery_A_ArrayExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_A_ArrayExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_A_ArrayExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #176 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ResTarget = type metadata accessor for PgQuery_ResTarget(0);
  v6 = *(ResTarget - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ResTarget);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ResTarget;
  v30 = ResTarget;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 175)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ResTarget);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ResTarget);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ResTarget and conformance PgQuery_ResTarget, type metadata accessor for PgQuery_ResTarget);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ResTarget);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ResTarget);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #177 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  MultiAssignRef = type metadata accessor for PgQuery_MultiAssignRef(0);
  v6 = *(MultiAssignRef - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](MultiAssignRef);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = MultiAssignRef;
  v30 = MultiAssignRef;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 176)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_MultiAssignRef);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_MultiAssignRef);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MultiAssignRef and conformance PgQuery_MultiAssignRef, type metadata accessor for PgQuery_MultiAssignRef);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_MultiAssignRef);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_MultiAssignRef);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #178 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TypeCast = type metadata accessor for PgQuery_TypeCast(0);
  v6 = *(TypeCast - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TypeCast);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TypeCast;
  v30 = TypeCast;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 177)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_TypeCast);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_TypeCast);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeCast and conformance PgQuery_TypeCast, type metadata accessor for PgQuery_TypeCast);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_TypeCast);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_TypeCast);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #179 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  v6 = *(CollateClause - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](CollateClause);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CollateClause;
  v30 = CollateClause;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 178)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CollateClause);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CollateClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CollateClause);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CollateClause);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #180 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SortBy = type metadata accessor for PgQuery_SortBy(0);
  v6 = *(SortBy - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](SortBy);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SortBy;
  v30 = SortBy;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 179)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_SortBy);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_SortBy);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortBy and conformance PgQuery_SortBy, type metadata accessor for PgQuery_SortBy);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_SortBy);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_SortBy);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #181 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  WindowDef = type metadata accessor for PgQuery_WindowDef(0);
  v6 = *(WindowDef - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](WindowDef);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = WindowDef;
  v30 = WindowDef;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 180)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_WindowDef);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_WindowDef);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_WindowDef);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_WindowDef);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #182 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RangeSubselect = type metadata accessor for PgQuery_RangeSubselect(0);
  v6 = *(RangeSubselect - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RangeSubselect);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RangeSubselect;
  v30 = RangeSubselect;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 181)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RangeSubselect);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RangeSubselect);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeSubselect and conformance PgQuery_RangeSubselect, type metadata accessor for PgQuery_RangeSubselect);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RangeSubselect);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RangeSubselect);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #183 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RangeFunction = type metadata accessor for PgQuery_RangeFunction(0);
  v6 = *(RangeFunction - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RangeFunction);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RangeFunction;
  v30 = RangeFunction;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 182)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RangeFunction);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RangeFunction);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeFunction and conformance PgQuery_RangeFunction, type metadata accessor for PgQuery_RangeFunction);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RangeFunction);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RangeFunction);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #184 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RangeTableSample = type metadata accessor for PgQuery_RangeTableSample(0);
  v6 = *(RangeTableSample - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RangeTableSample);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RangeTableSample;
  v30 = RangeTableSample;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 183)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RangeTableSample);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RangeTableSample);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableSample and conformance PgQuery_RangeTableSample, type metadata accessor for PgQuery_RangeTableSample);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RangeTableSample);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RangeTableSample);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #185 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RangeTableFunc = type metadata accessor for PgQuery_RangeTableFunc(0);
  v6 = *(RangeTableFunc - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RangeTableFunc);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RangeTableFunc;
  v30 = RangeTableFunc;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 184)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RangeTableFunc);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RangeTableFunc);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFunc and conformance PgQuery_RangeTableFunc, type metadata accessor for PgQuery_RangeTableFunc);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RangeTableFunc);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RangeTableFunc);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #186 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RangeTableFuncCol = type metadata accessor for PgQuery_RangeTableFuncCol(0);
  v6 = *(RangeTableFuncCol - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RangeTableFuncCol);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RangeTableFuncCol;
  v30 = RangeTableFuncCol;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 185)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RangeTableFuncCol);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RangeTableFuncCol);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFuncCol and conformance PgQuery_RangeTableFuncCol, type metadata accessor for PgQuery_RangeTableFuncCol);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RangeTableFuncCol);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RangeTableFuncCol);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #187 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v6 = *(TypeName - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TypeName);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TypeName;
  v30 = TypeName;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 186)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_TypeName);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_TypeName);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_TypeName);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_TypeName);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #188 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ColumnDef = type metadata accessor for PgQuery_ColumnDef(0);
  v6 = *(ColumnDef - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ColumnDef);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ColumnDef;
  v30 = ColumnDef;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 187)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ColumnDef);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ColumnDef);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnDef and conformance PgQuery_ColumnDef, type metadata accessor for PgQuery_ColumnDef);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ColumnDef);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ColumnDef);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #189 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  IndexElem = type metadata accessor for PgQuery_IndexElem(0);
  v6 = *(IndexElem - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](IndexElem);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = IndexElem;
  v30 = IndexElem;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 188)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_IndexElem);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_IndexElem);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexElem and conformance PgQuery_IndexElem, type metadata accessor for PgQuery_IndexElem);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_IndexElem);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_IndexElem);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #190 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  Constraint = type metadata accessor for PgQuery_Constraint(0);
  v6 = *(Constraint - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Constraint);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = Constraint;
  v30 = Constraint;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 189)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_Constraint);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_Constraint);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Constraint and conformance PgQuery_Constraint, type metadata accessor for PgQuery_Constraint);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_Constraint);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_Constraint);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #191 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DefElem = type metadata accessor for PgQuery_DefElem(0);
  v6 = *(DefElem - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DefElem);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DefElem;
  v30 = DefElem;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 190)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DefElem);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DefElem);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefElem and conformance PgQuery_DefElem, type metadata accessor for PgQuery_DefElem);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DefElem);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DefElem);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #192 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RangeTblEntry = type metadata accessor for PgQuery_RangeTblEntry(0);
  v6 = *(RangeTblEntry - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RangeTblEntry);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RangeTblEntry;
  v30 = RangeTblEntry;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 191)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RangeTblEntry);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RangeTblEntry);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblEntry and conformance PgQuery_RangeTblEntry, type metadata accessor for PgQuery_RangeTblEntry);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RangeTblEntry);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RangeTblEntry);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #193 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RangeTblFunction = type metadata accessor for PgQuery_RangeTblFunction(0);
  v6 = *(RangeTblFunction - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RangeTblFunction);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RangeTblFunction;
  v30 = RangeTblFunction;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 192)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RangeTblFunction);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RangeTblFunction);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblFunction and conformance PgQuery_RangeTblFunction, type metadata accessor for PgQuery_RangeTblFunction);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RangeTblFunction);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RangeTblFunction);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #194 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TableSampleClause = type metadata accessor for PgQuery_TableSampleClause(0);
  v6 = *(TableSampleClause - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TableSampleClause);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TableSampleClause;
  v30 = TableSampleClause;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 193)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_TableSampleClause);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_TableSampleClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableSampleClause and conformance PgQuery_TableSampleClause, type metadata accessor for PgQuery_TableSampleClause);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_TableSampleClause);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_TableSampleClause);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #195 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for PgQuery_WithCheckOption(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
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
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 194)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_WithCheckOption);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_WithCheckOption);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithCheckOption and conformance PgQuery_WithCheckOption, type metadata accessor for PgQuery_WithCheckOption);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_WithCheckOption);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_WithCheckOption);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #196 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SortGroupClause = type metadata accessor for PgQuery_SortGroupClause(0);
  v6 = *(SortGroupClause - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](SortGroupClause);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SortGroupClause;
  v30 = SortGroupClause;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 195)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_SortGroupClause);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_SortGroupClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortGroupClause and conformance PgQuery_SortGroupClause, type metadata accessor for PgQuery_SortGroupClause);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_SortGroupClause);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_SortGroupClause);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #197 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  GroupingSet = type metadata accessor for PgQuery_GroupingSet(0);
  v6 = *(GroupingSet - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](GroupingSet);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = GroupingSet;
  v30 = GroupingSet;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 196)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_GroupingSet);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_GroupingSet);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GroupingSet and conformance PgQuery_GroupingSet, type metadata accessor for PgQuery_GroupingSet);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_GroupingSet);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_GroupingSet);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #198 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  WindowClause = type metadata accessor for PgQuery_WindowClause(0);
  v6 = *(WindowClause - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](WindowClause);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = WindowClause;
  v30 = WindowClause;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 197)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_WindowClause);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_WindowClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowClause and conformance PgQuery_WindowClause, type metadata accessor for PgQuery_WindowClause);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_WindowClause);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_WindowClause);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #199 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v6 = *(ObjectWithArgs - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ObjectWithArgs);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ObjectWithArgs;
  v30 = ObjectWithArgs;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 198)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ObjectWithArgs);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ObjectWithArgs);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ObjectWithArgs);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #200 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AccessPriv = type metadata accessor for PgQuery_AccessPriv(0);
  v6 = *(AccessPriv - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AccessPriv);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AccessPriv;
  v30 = AccessPriv;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 199)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AccessPriv);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AccessPriv);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AccessPriv and conformance PgQuery_AccessPriv, type metadata accessor for PgQuery_AccessPriv);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AccessPriv);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AccessPriv);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #201 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  OpClassItem = type metadata accessor for PgQuery_CreateOpClassItem(0);
  v6 = *(OpClassItem - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](OpClassItem);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = OpClassItem;
  v30 = OpClassItem;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 200)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateOpClassItem);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateOpClassItem);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassItem and conformance PgQuery_CreateOpClassItem, type metadata accessor for PgQuery_CreateOpClassItem);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateOpClassItem);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateOpClassItem);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #202 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TableLikeClause = type metadata accessor for PgQuery_TableLikeClause(0);
  v6 = *(TableLikeClause - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TableLikeClause);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TableLikeClause;
  v30 = TableLikeClause;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 201)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_TableLikeClause);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_TableLikeClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableLikeClause and conformance PgQuery_TableLikeClause, type metadata accessor for PgQuery_TableLikeClause);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_TableLikeClause);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_TableLikeClause);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #203 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  FunctionParameter = type metadata accessor for PgQuery_FunctionParameter(0);
  v6 = *(FunctionParameter - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](FunctionParameter);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = FunctionParameter;
  v30 = FunctionParameter;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 202)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_FunctionParameter);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_FunctionParameter);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FunctionParameter and conformance PgQuery_FunctionParameter, type metadata accessor for PgQuery_FunctionParameter);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_FunctionParameter);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_FunctionParameter);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #204 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  LockingClause = type metadata accessor for PgQuery_LockingClause(0);
  v6 = *(LockingClause - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](LockingClause);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = LockingClause;
  v30 = LockingClause;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 203)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_LockingClause);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_LockingClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockingClause and conformance PgQuery_LockingClause, type metadata accessor for PgQuery_LockingClause);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_LockingClause);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_LockingClause);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #205 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RowMarkClause = type metadata accessor for PgQuery_RowMarkClause(0);
  v6 = *(RowMarkClause - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RowMarkClause);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RowMarkClause;
  v30 = RowMarkClause;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 204)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RowMarkClause);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RowMarkClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowMarkClause and conformance PgQuery_RowMarkClause, type metadata accessor for PgQuery_RowMarkClause);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RowMarkClause);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RowMarkClause);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #206 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  XmlSerialize = type metadata accessor for PgQuery_XmlSerialize(0);
  v6 = *(XmlSerialize - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](XmlSerialize);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = XmlSerialize;
  v30 = XmlSerialize;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 205)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_XmlSerialize);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_XmlSerialize);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlSerialize and conformance PgQuery_XmlSerialize, type metadata accessor for PgQuery_XmlSerialize);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_XmlSerialize);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_XmlSerialize);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #207 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for PgQuery_WithClause(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
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
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 206)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_WithClause);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_WithClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_WithClause);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_WithClause);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #208 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  InferClause = type metadata accessor for PgQuery_InferClause(0);
  v6 = *(InferClause - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](InferClause);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = InferClause;
  v30 = InferClause;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 207)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_InferClause);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_InferClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferClause and conformance PgQuery_InferClause, type metadata accessor for PgQuery_InferClause);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_InferClause);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_InferClause);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #209 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for PgQuery_OnConflictClause(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
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
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 208)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_OnConflictClause);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_OnConflictClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_OnConflictClause);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_OnConflictClause);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #210 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CommonTableExpr = type metadata accessor for PgQuery_CommonTableExpr(0);
  v6 = *(CommonTableExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](CommonTableExpr);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CommonTableExpr;
  v30 = CommonTableExpr;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 209)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CommonTableExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CommonTableExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommonTableExpr and conformance PgQuery_CommonTableExpr, type metadata accessor for PgQuery_CommonTableExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CommonTableExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CommonTableExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #211 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v6 = *(RoleSpec - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RoleSpec);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RoleSpec;
  v30 = RoleSpec;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 210)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RoleSpec);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RoleSpec);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RoleSpec);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RoleSpec);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #212 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TriggerTransition = type metadata accessor for PgQuery_TriggerTransition(0);
  v6 = *(TriggerTransition - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TriggerTransition);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TriggerTransition;
  v30 = TriggerTransition;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 211)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_TriggerTransition);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_TriggerTransition);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TriggerTransition and conformance PgQuery_TriggerTransition, type metadata accessor for PgQuery_TriggerTransition);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_TriggerTransition);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_TriggerTransition);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #213 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  PartitionElem = type metadata accessor for PgQuery_PartitionElem(0);
  v6 = *(PartitionElem - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](PartitionElem);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = PartitionElem;
  v30 = PartitionElem;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 212)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_PartitionElem);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_PartitionElem);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionElem and conformance PgQuery_PartitionElem, type metadata accessor for PgQuery_PartitionElem);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_PartitionElem);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_PartitionElem);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #214 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  PartitionSpec = type metadata accessor for PgQuery_PartitionSpec(0);
  v6 = *(PartitionSpec - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](PartitionSpec);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = PartitionSpec;
  v30 = PartitionSpec;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 213)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_PartitionSpec);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_PartitionSpec);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_PartitionSpec);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_PartitionSpec);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #215 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v6 = *(PartitionBoundSpec - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](PartitionBoundSpec);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = PartitionBoundSpec;
  v30 = PartitionBoundSpec;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 214)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_PartitionBoundSpec);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_PartitionBoundSpec);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_PartitionBoundSpec);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_PartitionBoundSpec);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #216 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  PartitionRangeDatum = type metadata accessor for PgQuery_PartitionRangeDatum(0);
  v6 = *(PartitionRangeDatum - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](PartitionRangeDatum);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = PartitionRangeDatum;
  v30 = PartitionRangeDatum;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 215)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_PartitionRangeDatum);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_PartitionRangeDatum);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatum and conformance PgQuery_PartitionRangeDatum, type metadata accessor for PgQuery_PartitionRangeDatum);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_PartitionRangeDatum);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_PartitionRangeDatum);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #217 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  PartitionCmd = type metadata accessor for PgQuery_PartitionCmd(0);
  v6 = *(PartitionCmd - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](PartitionCmd);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = PartitionCmd;
  v30 = PartitionCmd;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 216)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_PartitionCmd);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_PartitionCmd);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionCmd and conformance PgQuery_PartitionCmd, type metadata accessor for PgQuery_PartitionCmd);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_PartitionCmd);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_PartitionCmd);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #218 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  VacuumRelation = type metadata accessor for PgQuery_VacuumRelation(0);
  v6 = *(VacuumRelation - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](VacuumRelation);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = VacuumRelation;
  v30 = VacuumRelation;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 217)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_VacuumRelation);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_VacuumRelation);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumRelation and conformance PgQuery_VacuumRelation, type metadata accessor for PgQuery_VacuumRelation);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_VacuumRelation);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_VacuumRelation);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #219 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  InlineCodeBlock = type metadata accessor for PgQuery_InlineCodeBlock(0);
  v6 = *(InlineCodeBlock - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](InlineCodeBlock);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = InlineCodeBlock;
  v30 = InlineCodeBlock;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 218)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_InlineCodeBlock);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_InlineCodeBlock);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InlineCodeBlock and conformance PgQuery_InlineCodeBlock, type metadata accessor for PgQuery_InlineCodeBlock);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_InlineCodeBlock);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_InlineCodeBlock);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #220 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for PgQuery_CallContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
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
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 219)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CallContext);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CallContext);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallContext and conformance PgQuery_CallContext, type metadata accessor for PgQuery_CallContext);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CallContext);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CallContext);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #221 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  Integer = type metadata accessor for PgQuery_Integer(0);
  v6 = *(Integer - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Integer);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = Integer;
  v30 = Integer;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 220)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_Integer);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_Integer);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Integer and conformance PgQuery_Integer, type metadata accessor for PgQuery_Integer);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_Integer);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_Integer);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #222 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  Float = type metadata accessor for PgQuery_Float(0);
  v6 = *(Float - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Float);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = Float;
  v30 = Float;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 221)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_Float);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_Float);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Float and conformance PgQuery_Float, type metadata accessor for PgQuery_Float);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_Float);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_Float);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #223 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  String = type metadata accessor for PgQuery_String(0);
  v6 = *(String - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](String);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = String;
  v30 = String;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 222)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_String);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_String);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_String and conformance PgQuery_String, type metadata accessor for PgQuery_String);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_String);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_String);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #224 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  BitString = type metadata accessor for PgQuery_BitString(0);
  v6 = *(BitString - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](BitString);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = BitString;
  v30 = BitString;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 223)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_BitString);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_BitString);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BitString and conformance PgQuery_BitString, type metadata accessor for PgQuery_BitString);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_BitString);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_BitString);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #225 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  Null = type metadata accessor for PgQuery_Null(0);
  v6 = *(Null - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Null);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = Null;
  v30 = Null;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 224)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_Null);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_Null);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Null and conformance PgQuery_Null, type metadata accessor for PgQuery_Null);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_Null);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_Null);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #226 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  List = type metadata accessor for PgQuery_List(0);
  v6 = *(List - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](List);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = List;
  v30 = List;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_List);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_List);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_List and conformance PgQuery_List, type metadata accessor for PgQuery_List);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_List);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_List);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #227 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  IntList = type metadata accessor for PgQuery_IntList(0);
  v6 = *(IntList - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](IntList);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = IntList;
  v30 = IntList;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 226)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_IntList);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_IntList);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntList and conformance PgQuery_IntList, type metadata accessor for PgQuery_IntList);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_IntList);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_IntList);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #228 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  OidList = type metadata accessor for PgQuery_OidList(0);
  v6 = *(OidList - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](OidList);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = OidList;
  v30 = OidList;
  v31 = v29;
  v29(&v42 - v27, 1, 1, v30);
  v45 = a1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v44 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 227)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_OidList);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_OidList);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OidList and conformance PgQuery_OidList, type metadata accessor for PgQuery_OidList);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_OidList);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_OidList);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, &v14 - v10, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v12 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  result = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (result != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        closure #2 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 2u:
        closure #3 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 3u:
        closure #4 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 4u:
        closure #5 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 5u:
        closure #6 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 6u:
        closure #7 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 7u:
        closure #8 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 8u:
        closure #9 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 9u:
        closure #10 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xAu:
        closure #11 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBu:
        closure #12 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCu:
        closure #13 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDu:
        closure #14 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xEu:
        closure #15 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xFu:
        closure #16 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x10u:
        closure #17 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x11u:
        closure #18 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x12u:
        closure #19 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x13u:
        closure #20 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x14u:
        closure #21 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x15u:
        closure #22 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x16u:
        closure #23 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x17u:
        closure #24 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x18u:
        closure #25 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x19u:
        closure #26 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x1Au:
        closure #27 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x1Bu:
        closure #28 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x1Cu:
        closure #29 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x1Du:
        closure #30 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x1Eu:
        closure #31 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x1Fu:
        closure #32 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x20u:
        closure #33 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x21u:
        closure #34 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x22u:
        closure #35 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x23u:
        closure #36 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x24u:
        closure #37 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x25u:
        closure #38 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x26u:
        closure #39 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x27u:
        closure #40 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x28u:
        closure #41 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x29u:
        closure #42 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x2Au:
        closure #43 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x2Bu:
        closure #44 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x2Cu:
        closure #45 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x2Du:
        closure #46 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x2Eu:
        closure #47 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x2Fu:
        closure #48 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x30u:
        closure #49 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x31u:
        closure #50 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x32u:
        closure #51 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x33u:
        closure #52 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x34u:
        closure #53 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x35u:
        closure #54 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x36u:
        closure #55 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x37u:
        closure #56 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x38u:
        closure #57 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x39u:
        closure #58 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x3Au:
        closure #59 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x3Bu:
        closure #60 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x3Cu:
        closure #61 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x3Du:
        closure #62 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x3Eu:
        closure #63 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x3Fu:
        closure #64 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x40u:
        closure #65 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x41u:
        closure #66 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x42u:
        closure #67 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x43u:
        closure #68 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x44u:
        closure #69 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x45u:
        closure #70 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x46u:
        closure #71 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x47u:
        closure #72 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x48u:
        closure #73 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x49u:
        closure #74 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x4Au:
        closure #75 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x4Bu:
        closure #76 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x4Cu:
        closure #77 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x4Du:
        closure #78 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x4Eu:
        closure #79 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x4Fu:
        closure #80 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x50u:
        closure #81 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x51u:
        closure #82 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x52u:
        closure #83 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x53u:
        closure #84 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x54u:
        closure #85 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x55u:
        closure #86 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x56u:
        closure #87 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x57u:
        closure #88 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x58u:
        closure #89 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x59u:
        closure #90 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x5Au:
        closure #91 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x5Bu:
        closure #92 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x5Cu:
        closure #93 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x5Du:
        closure #94 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x5Eu:
        closure #95 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x5Fu:
        closure #96 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x60u:
        closure #97 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x61u:
        closure #98 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x62u:
        closure #99 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x63u:
        closure #100 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x64u:
        closure #101 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x65u:
        closure #102 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x66u:
        closure #103 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x67u:
        closure #104 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x68u:
        closure #105 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x69u:
        closure #106 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x6Au:
        closure #107 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x6Bu:
        closure #108 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x6Cu:
        closure #109 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x6Du:
        closure #110 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x6Eu:
        closure #111 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x6Fu:
        closure #112 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x70u:
        closure #113 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x71u:
        closure #114 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x72u:
        closure #115 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x73u:
        closure #116 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x74u:
        closure #117 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x75u:
        closure #118 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x76u:
        closure #119 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x77u:
        closure #120 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x78u:
        closure #121 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x79u:
        closure #122 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x7Au:
        closure #123 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x7Bu:
        closure #124 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x7Cu:
        closure #125 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x7Du:
        closure #126 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x7Eu:
        closure #127 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x7Fu:
        closure #128 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x80u:
        closure #129 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x81u:
        closure #130 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x82u:
        closure #131 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x83u:
        closure #132 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x84u:
        closure #133 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x85u:
        closure #134 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x86u:
        closure #135 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x87u:
        closure #136 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x88u:
        closure #137 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x89u:
        closure #138 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x8Au:
        closure #139 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x8Bu:
        closure #140 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x8Cu:
        closure #141 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x8Du:
        closure #142 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x8Eu:
        closure #143 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x8Fu:
        closure #144 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x90u:
        closure #145 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x91u:
        closure #146 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x92u:
        closure #147 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x93u:
        closure #148 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x94u:
        closure #149 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x95u:
        closure #150 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x96u:
        closure #151 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x97u:
        closure #152 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x98u:
        closure #153 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x99u:
        closure #154 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x9Au:
        closure #155 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x9Bu:
        closure #156 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x9Cu:
        closure #157 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x9Du:
        closure #158 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x9Eu:
        closure #159 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x9Fu:
        closure #160 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA0u:
        closure #161 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA1u:
        closure #162 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA2u:
        closure #163 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA3u:
        closure #164 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA4u:
        closure #165 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA5u:
        closure #166 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA6u:
        closure #167 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA7u:
        closure #168 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA8u:
        closure #169 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA9u:
        closure #170 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xAAu:
        closure #171 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xABu:
        closure #172 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xACu:
        closure #173 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xADu:
        closure #174 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xAEu:
        closure #175 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xAFu:
        closure #176 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB0u:
        closure #177 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB1u:
        closure #178 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB2u:
        closure #179 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB3u:
        closure #180 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB4u:
        closure #181 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB5u:
        closure #182 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB6u:
        closure #183 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB7u:
        closure #184 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB8u:
        closure #185 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB9u:
        closure #186 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBAu:
        closure #187 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBBu:
        closure #188 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBCu:
        closure #189 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBDu:
        closure #190 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBEu:
        closure #191 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBFu:
        closure #192 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC0u:
        closure #193 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC1u:
        closure #194 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC2u:
        closure #195 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC3u:
        closure #196 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC4u:
        closure #197 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC5u:
        closure #198 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC6u:
        closure #199 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC7u:
        closure #200 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC8u:
        closure #201 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC9u:
        closure #202 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCAu:
        closure #203 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCBu:
        closure #204 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCCu:
        closure #205 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCDu:
        closure #206 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCEu:
        closure #207 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCFu:
        closure #208 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD0u:
        closure #209 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD1u:
        closure #210 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD2u:
        closure #211 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD3u:
        closure #212 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD4u:
        closure #213 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD5u:
        closure #214 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD6u:
        closure #215 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD7u:
        closure #216 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD8u:
        closure #217 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD9u:
        closure #218 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDAu:
        closure #219 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDBu:
        closure #220 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDCu:
        closure #221 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDDu:
        closure #222 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDEu:
        closure #223 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDFu:
        closure #224 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xE0u:
        closure #225 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xE1u:
        closure #226 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xE2u:
        closure #227 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xE3u:
        closure #228 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      default:
        closure #1 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
    }

    return outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  return result;
}

uint64_t closure #1 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v10 = *(*(Alias - 8) + 64);
  MEMORY[0x28223BE20](Alias);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_Alias);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v10 = *(*(RangeVar - 8) + 64);
  MEMORY[0x28223BE20](RangeVar);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #3 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  TableFunc = type metadata accessor for PgQuery_TableFunc(0);
  v10 = *(*(TableFunc - 8) + 64);
  MEMORY[0x28223BE20](TableFunc);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_TableFunc);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableFunc and conformance PgQuery_TableFunc, type metadata accessor for PgQuery_TableFunc);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TableFunc);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #4 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  Expr = type metadata accessor for PgQuery_Expr(0);
  v10 = *(*(Expr - 8) + 64);
  MEMORY[0x28223BE20](Expr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_Expr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Expr and conformance PgQuery_Expr, type metadata accessor for PgQuery_Expr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Expr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #5 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  Var = type metadata accessor for PgQuery_Var(0);
  v10 = *(*(Var - 8) + 64);
  MEMORY[0x28223BE20](Var);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_Var);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Var and conformance PgQuery_Var, type metadata accessor for PgQuery_Var);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Var);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #6 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  Param = type metadata accessor for PgQuery_Param(0);
  v10 = *(*(Param - 8) + 64);
  MEMORY[0x28223BE20](Param);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_Param);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Param and conformance PgQuery_Param, type metadata accessor for PgQuery_Param);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Param);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #7 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  Aggref = type metadata accessor for PgQuery_Aggref(0);
  v10 = *(*(Aggref - 8) + 64);
  MEMORY[0x28223BE20](Aggref);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_Aggref);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Aggref and conformance PgQuery_Aggref, type metadata accessor for PgQuery_Aggref);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Aggref);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #8 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  GroupingFunc = type metadata accessor for PgQuery_GroupingFunc(0);
  v10 = *(*(GroupingFunc - 8) + 64);
  MEMORY[0x28223BE20](GroupingFunc);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_GroupingFunc);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GroupingFunc and conformance PgQuery_GroupingFunc, type metadata accessor for PgQuery_GroupingFunc);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_GroupingFunc);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #9 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  WindowFunc = type metadata accessor for PgQuery_WindowFunc(0);
  v10 = *(*(WindowFunc - 8) + 64);
  MEMORY[0x28223BE20](WindowFunc);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_WindowFunc);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowFunc and conformance PgQuery_WindowFunc, type metadata accessor for PgQuery_WindowFunc);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_WindowFunc);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #10 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  SubscriptingRef = type metadata accessor for PgQuery_SubscriptingRef(0);
  v10 = *(*(SubscriptingRef - 8) + 64);
  MEMORY[0x28223BE20](SubscriptingRef);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_SubscriptingRef);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubscriptingRef and conformance PgQuery_SubscriptingRef, type metadata accessor for PgQuery_SubscriptingRef);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_SubscriptingRef);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #11 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
  v10 = *(*(FuncExpr - 8) + 64);
  MEMORY[0x28223BE20](FuncExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_FuncExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncExpr and conformance PgQuery_FuncExpr, type metadata accessor for PgQuery_FuncExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_FuncExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #12 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  NamedArgExpr = type metadata accessor for PgQuery_NamedArgExpr(0);
  v10 = *(*(NamedArgExpr - 8) + 64);
  MEMORY[0x28223BE20](NamedArgExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_NamedArgExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NamedArgExpr and conformance PgQuery_NamedArgExpr, type metadata accessor for PgQuery_NamedArgExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_NamedArgExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #13 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  OpExpr = type metadata accessor for PgQuery_OpExpr(0);
  v10 = *(*(OpExpr - 8) + 64);
  MEMORY[0x28223BE20](OpExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_OpExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OpExpr and conformance PgQuery_OpExpr, type metadata accessor for PgQuery_OpExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_OpExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #14 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DistinctExpr = type metadata accessor for PgQuery_DistinctExpr(0);
  v10 = *(*(DistinctExpr - 8) + 64);
  MEMORY[0x28223BE20](DistinctExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_DistinctExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DistinctExpr and conformance PgQuery_DistinctExpr, type metadata accessor for PgQuery_DistinctExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_DistinctExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #15 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  NullIfExpr = type metadata accessor for PgQuery_NullIfExpr(0);
  v10 = *(*(NullIfExpr - 8) + 64);
  MEMORY[0x28223BE20](NullIfExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_NullIfExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullIfExpr and conformance PgQuery_NullIfExpr, type metadata accessor for PgQuery_NullIfExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_NullIfExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #16 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  ScalarArrayOpExpr = type metadata accessor for PgQuery_ScalarArrayOpExpr(0);
  v10 = *(*(ScalarArrayOpExpr - 8) + 64);
  MEMORY[0x28223BE20](ScalarArrayOpExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_ScalarArrayOpExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScalarArrayOpExpr and conformance PgQuery_ScalarArrayOpExpr, type metadata accessor for PgQuery_ScalarArrayOpExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_ScalarArrayOpExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #17 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  BoolExpr = type metadata accessor for PgQuery_BoolExpr(0);
  v10 = *(*(BoolExpr - 8) + 64);
  MEMORY[0x28223BE20](BoolExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_BoolExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BoolExpr and conformance PgQuery_BoolExpr, type metadata accessor for PgQuery_BoolExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_BoolExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #18 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  SubLink = type metadata accessor for PgQuery_SubLink(0);
  v10 = *(*(SubLink - 8) + 64);
  MEMORY[0x28223BE20](SubLink);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_SubLink);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubLink and conformance PgQuery_SubLink, type metadata accessor for PgQuery_SubLink);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_SubLink);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #19 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  SubPlan = type metadata accessor for PgQuery_SubPlan(0);
  v10 = *(*(SubPlan - 8) + 64);
  MEMORY[0x28223BE20](SubPlan);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_SubPlan);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubPlan and conformance PgQuery_SubPlan, type metadata accessor for PgQuery_SubPlan);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_SubPlan);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #20 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  AlternativeSubPlan = type metadata accessor for PgQuery_AlternativeSubPlan(0);
  v10 = *(*(AlternativeSubPlan - 8) + 64);
  MEMORY[0x28223BE20](AlternativeSubPlan);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_AlternativeSubPlan);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlternativeSubPlan and conformance PgQuery_AlternativeSubPlan, type metadata accessor for PgQuery_AlternativeSubPlan);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_AlternativeSubPlan);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #21 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  FieldSelect = type metadata accessor for PgQuery_FieldSelect(0);
  v10 = *(*(FieldSelect - 8) + 64);
  MEMORY[0x28223BE20](FieldSelect);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_FieldSelect);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldSelect and conformance PgQuery_FieldSelect, type metadata accessor for PgQuery_FieldSelect);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_FieldSelect);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #22 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  FieldStore = type metadata accessor for PgQuery_FieldStore(0);
  v10 = *(*(FieldStore - 8) + 64);
  MEMORY[0x28223BE20](FieldStore);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 21)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_FieldStore);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_FieldStore);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #23 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  RelabelType = type metadata accessor for PgQuery_RelabelType(0);
  v10 = *(*(RelabelType - 8) + 64);
  MEMORY[0x28223BE20](RelabelType);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 22)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_RelabelType);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RelabelType);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #24 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  CoerceViaIO = type metadata accessor for PgQuery_CoerceViaIO(0);
  v10 = *(*(CoerceViaIO - 8) + 64);
  MEMORY[0x28223BE20](CoerceViaIO);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 23)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CoerceViaIO);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CoerceViaIO);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #25 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  ArrayCoerceExpr = type metadata accessor for PgQuery_ArrayCoerceExpr(0);
  v10 = *(*(ArrayCoerceExpr - 8) + 64);
  MEMORY[0x28223BE20](ArrayCoerceExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 24)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_ArrayCoerceExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayCoerceExpr and conformance PgQuery_ArrayCoerceExpr, type metadata accessor for PgQuery_ArrayCoerceExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_ArrayCoerceExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #26 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  ConvertRowtypeExpr = type metadata accessor for PgQuery_ConvertRowtypeExpr(0);
  v10 = *(*(ConvertRowtypeExpr - 8) + 64);
  MEMORY[0x28223BE20](ConvertRowtypeExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 25)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_ConvertRowtypeExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConvertRowtypeExpr and conformance PgQuery_ConvertRowtypeExpr, type metadata accessor for PgQuery_ConvertRowtypeExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_ConvertRowtypeExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #27 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  CollateExpr = type metadata accessor for PgQuery_CollateExpr(0);
  v10 = *(*(CollateExpr - 8) + 64);
  MEMORY[0x28223BE20](CollateExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 26)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CollateExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateExpr and conformance PgQuery_CollateExpr, type metadata accessor for PgQuery_CollateExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CollateExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #28 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  CaseExpr = type metadata accessor for PgQuery_CaseExpr(0);
  v10 = *(*(CaseExpr - 8) + 64);
  MEMORY[0x28223BE20](CaseExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 27)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CaseExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CaseExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #29 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  CaseWhen = type metadata accessor for PgQuery_CaseWhen(0);
  v10 = *(*(CaseWhen - 8) + 64);
  MEMORY[0x28223BE20](CaseWhen);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 28)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CaseWhen);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseWhen and conformance PgQuery_CaseWhen, type metadata accessor for PgQuery_CaseWhen);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CaseWhen);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #30 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  CaseTestExpr = type metadata accessor for PgQuery_CaseTestExpr(0);
  v10 = *(*(CaseTestExpr - 8) + 64);
  MEMORY[0x28223BE20](CaseTestExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 29)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CaseTestExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseTestExpr and conformance PgQuery_CaseTestExpr, type metadata accessor for PgQuery_CaseTestExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CaseTestExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #31 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  ArrayExpr = type metadata accessor for PgQuery_ArrayExpr(0);
  v10 = *(*(ArrayExpr - 8) + 64);
  MEMORY[0x28223BE20](ArrayExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 30)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_ArrayExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_ArrayExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #32 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  RowExpr = type metadata accessor for PgQuery_RowExpr(0);
  v10 = *(*(RowExpr - 8) + 64);
  MEMORY[0x28223BE20](RowExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 31)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_RowExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowExpr and conformance PgQuery_RowExpr, type metadata accessor for PgQuery_RowExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RowExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #33 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  RowCompareExpr = type metadata accessor for PgQuery_RowCompareExpr(0);
  v10 = *(*(RowCompareExpr - 8) + 64);
  MEMORY[0x28223BE20](RowCompareExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 32)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_RowCompareExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowCompareExpr and conformance PgQuery_RowCompareExpr, type metadata accessor for PgQuery_RowCompareExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RowCompareExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #34 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  CoalesceExpr = type metadata accessor for PgQuery_CoalesceExpr(0);
  v10 = *(*(CoalesceExpr - 8) + 64);
  MEMORY[0x28223BE20](CoalesceExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 33)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CoalesceExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CoalesceExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #35 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  MinMaxExpr = type metadata accessor for PgQuery_MinMaxExpr(0);
  v10 = *(*(MinMaxExpr - 8) + 64);
  MEMORY[0x28223BE20](MinMaxExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 34)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_MinMaxExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MinMaxExpr and conformance PgQuery_MinMaxExpr, type metadata accessor for PgQuery_MinMaxExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_MinMaxExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #36 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  SQLValueFunction = type metadata accessor for PgQuery_SQLValueFunction(0);
  v10 = *(*(SQLValueFunction - 8) + 64);
  MEMORY[0x28223BE20](SQLValueFunction);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 35)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_SQLValueFunction);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SQLValueFunction and conformance PgQuery_SQLValueFunction, type metadata accessor for PgQuery_SQLValueFunction);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_SQLValueFunction);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #37 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  XmlExpr = type metadata accessor for PgQuery_XmlExpr(0);
  v10 = *(*(XmlExpr - 8) + 64);
  MEMORY[0x28223BE20](XmlExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 36)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_XmlExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_XmlExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #38 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  NullTest = type metadata accessor for PgQuery_NullTest(0);
  v10 = *(*(NullTest - 8) + 64);
  MEMORY[0x28223BE20](NullTest);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 37)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_NullTest);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullTest and conformance PgQuery_NullTest, type metadata accessor for PgQuery_NullTest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_NullTest);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #39 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  BooleanTest = type metadata accessor for PgQuery_BooleanTest(0);
  v10 = *(*(BooleanTest - 8) + 64);
  MEMORY[0x28223BE20](BooleanTest);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 38)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_BooleanTest);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_BooleanTest);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #40 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  CoerceToDomain = type metadata accessor for PgQuery_CoerceToDomain(0);
  v10 = *(*(CoerceToDomain - 8) + 64);
  MEMORY[0x28223BE20](CoerceToDomain);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 39)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CoerceToDomain);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomain and conformance PgQuery_CoerceToDomain, type metadata accessor for PgQuery_CoerceToDomain);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CoerceToDomain);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #41 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  CoerceToDomainValue = type metadata accessor for PgQuery_CoerceToDomainValue(0);
  v10 = *(*(CoerceToDomainValue - 8) + 64);
  MEMORY[0x28223BE20](CoerceToDomainValue);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 40)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CoerceToDomainValue);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomainValue and conformance PgQuery_CoerceToDomainValue, type metadata accessor for PgQuery_CoerceToDomainValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CoerceToDomainValue);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #42 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  SetToDefault = type metadata accessor for PgQuery_SetToDefault(0);
  v10 = *(*(SetToDefault - 8) + 64);
  MEMORY[0x28223BE20](SetToDefault);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 41)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_SetToDefault);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_SetToDefault);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #43 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  CurrentOfExpr = type metadata accessor for PgQuery_CurrentOfExpr(0);
  v10 = *(*(CurrentOfExpr - 8) + 64);
  MEMORY[0x28223BE20](CurrentOfExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 42)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CurrentOfExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CurrentOfExpr and conformance PgQuery_CurrentOfExpr, type metadata accessor for PgQuery_CurrentOfExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CurrentOfExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #44 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  NextValueExpr = type metadata accessor for PgQuery_NextValueExpr(0);
  v10 = *(*(NextValueExpr - 8) + 64);
  MEMORY[0x28223BE20](NextValueExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 43)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_NextValueExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_NextValueExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #45 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  InferenceElem = type metadata accessor for PgQuery_InferenceElem(0);
  v10 = *(*(InferenceElem - 8) + 64);
  MEMORY[0x28223BE20](InferenceElem);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 44)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_InferenceElem);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_InferenceElem);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #46 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  TargetEntry = type metadata accessor for PgQuery_TargetEntry(0);
  v10 = *(*(TargetEntry - 8) + 64);
  MEMORY[0x28223BE20](TargetEntry);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 45)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_TargetEntry);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TargetEntry and conformance PgQuery_TargetEntry, type metadata accessor for PgQuery_TargetEntry);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TargetEntry);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #47 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  RangeTblRef = type metadata accessor for PgQuery_RangeTblRef(0);
  v10 = *(*(RangeTblRef - 8) + 64);
  MEMORY[0x28223BE20](RangeTblRef);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 46)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_RangeTblRef);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblRef and conformance PgQuery_RangeTblRef, type metadata accessor for PgQuery_RangeTblRef);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeTblRef);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #48 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  JoinExpr = type metadata accessor for PgQuery_JoinExpr(0);
  v10 = *(*(JoinExpr - 8) + 64);
  MEMORY[0x28223BE20](JoinExpr);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 47)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_JoinExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_JoinExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #49 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for PgQuery_FromExpr(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 48)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_FromExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_FromExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #50 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for PgQuery_OnConflictExpr(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 49)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_OnConflictExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_OnConflictExpr);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #51 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v10 = *(*(IntoClause - 8) + 64);
  MEMORY[0x28223BE20](IntoClause);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 50)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_IntoClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_IntoClause);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #52 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  RawStmt = type metadata accessor for PgQuery_RawStmt(0);
  v10 = *(*(RawStmt - 8) + 64);
  MEMORY[0x28223BE20](RawStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 51)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_RawStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RawStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #53 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  Query = type metadata accessor for PgQuery_Query(0);
  v10 = *(*(Query - 8) + 64);
  MEMORY[0x28223BE20](Query);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 52)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_Query);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Query);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #54 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  InsertStmt = type metadata accessor for PgQuery_InsertStmt(0);
  v10 = *(*(InsertStmt - 8) + 64);
  MEMORY[0x28223BE20](InsertStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 53)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_InsertStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_InsertStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #55 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for PgQuery_DeleteStmt(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 54)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_DeleteStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_DeleteStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #56 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  UpdateStmt = type metadata accessor for PgQuery_UpdateStmt(0);
  v10 = *(*(UpdateStmt - 8) + 64);
  MEMORY[0x28223BE20](UpdateStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 55)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_UpdateStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_UpdateStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #57 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v10 = *(*(SelectStmt - 8) + 64);
  MEMORY[0x28223BE20](SelectStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 56)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_SelectStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_SelectStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #58 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  AlterTableStmt = type metadata accessor for PgQuery_AlterTableStmt(0);
  v10 = *(*(AlterTableStmt - 8) + 64);
  MEMORY[0x28223BE20](AlterTableStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 57)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_AlterTableStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableStmt and conformance PgQuery_AlterTableStmt, type metadata accessor for PgQuery_AlterTableStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_AlterTableStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #59 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  AlterTableCmd = type metadata accessor for PgQuery_AlterTableCmd(0);
  v10 = *(*(AlterTableCmd - 8) + 64);
  MEMORY[0x28223BE20](AlterTableCmd);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 58)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_AlterTableCmd);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_AlterTableCmd);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #60 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  AlterDomainStmt = type metadata accessor for PgQuery_AlterDomainStmt(0);
  v10 = *(*(AlterDomainStmt - 8) + 64);
  MEMORY[0x28223BE20](AlterDomainStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 59)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_AlterDomainStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDomainStmt and conformance PgQuery_AlterDomainStmt, type metadata accessor for PgQuery_AlterDomainStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_AlterDomainStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #61 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  SetOperationStmt = type metadata accessor for PgQuery_SetOperationStmt(0);
  v10 = *(*(SetOperationStmt - 8) + 64);
  MEMORY[0x28223BE20](SetOperationStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 60)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_SetOperationStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetOperationStmt and conformance PgQuery_SetOperationStmt, type metadata accessor for PgQuery_SetOperationStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_SetOperationStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #62 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  GrantStmt = type metadata accessor for PgQuery_GrantStmt(0);
  v10 = *(*(GrantStmt - 8) + 64);
  MEMORY[0x28223BE20](GrantStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 61)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_GrantStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_GrantStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #63 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  GrantRoleStmt = type metadata accessor for PgQuery_GrantRoleStmt(0);
  v10 = *(*(GrantRoleStmt - 8) + 64);
  MEMORY[0x28223BE20](GrantRoleStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 62)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_GrantRoleStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantRoleStmt and conformance PgQuery_GrantRoleStmt, type metadata accessor for PgQuery_GrantRoleStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_GrantRoleStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #64 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  AlterDefaultPrivilegesStmt = type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(0);
  v10 = *(*(AlterDefaultPrivilegesStmt - 8) + 64);
  MEMORY[0x28223BE20](AlterDefaultPrivilegesStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 63)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #65 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  ClosePortalStmt = type metadata accessor for PgQuery_ClosePortalStmt(0);
  v10 = *(*(ClosePortalStmt - 8) + 64);
  MEMORY[0x28223BE20](ClosePortalStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 64)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_ClosePortalStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClosePortalStmt and conformance PgQuery_ClosePortalStmt, type metadata accessor for PgQuery_ClosePortalStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_ClosePortalStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #66 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  ClusterStmt = type metadata accessor for PgQuery_ClusterStmt(0);
  v10 = *(*(ClusterStmt - 8) + 64);
  MEMORY[0x28223BE20](ClusterStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 65)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_ClusterStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClusterStmt and conformance PgQuery_ClusterStmt, type metadata accessor for PgQuery_ClusterStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_ClusterStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #67 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  CopyStmt = type metadata accessor for PgQuery_CopyStmt(0);
  v10 = *(*(CopyStmt - 8) + 64);
  MEMORY[0x28223BE20](CopyStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 66)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CopyStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CopyStmt and conformance PgQuery_CopyStmt, type metadata accessor for PgQuery_CopyStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CopyStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #68 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  Stmt = type metadata accessor for PgQuery_CreateStmt(0);
  v10 = *(*(Stmt - 8) + 64);
  MEMORY[0x28223BE20](Stmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 67)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CreateStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CreateStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #69 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DefineStmt = type metadata accessor for PgQuery_DefineStmt(0);
  v10 = *(*(DefineStmt - 8) + 64);
  MEMORY[0x28223BE20](DefineStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 68)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_DefineStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefineStmt and conformance PgQuery_DefineStmt, type metadata accessor for PgQuery_DefineStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_DefineStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #70 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DropStmt = type metadata accessor for PgQuery_DropStmt(0);
  v10 = *(*(DropStmt - 8) + 64);
  MEMORY[0x28223BE20](DropStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 69)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_DropStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropStmt and conformance PgQuery_DropStmt, type metadata accessor for PgQuery_DropStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_DropStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #71 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  TruncateStmt = type metadata accessor for PgQuery_TruncateStmt(0);
  v10 = *(*(TruncateStmt - 8) + 64);
  MEMORY[0x28223BE20](TruncateStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 70)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_TruncateStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TruncateStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #72 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  CommentStmt = type metadata accessor for PgQuery_CommentStmt(0);
  v10 = *(*(CommentStmt - 8) + 64);
  MEMORY[0x28223BE20](CommentStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 71)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CommentStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommentStmt and conformance PgQuery_CommentStmt, type metadata accessor for PgQuery_CommentStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CommentStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #73 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  Stmt = type metadata accessor for PgQuery_FetchStmt(0);
  v10 = *(*(Stmt - 8) + 64);
  MEMORY[0x28223BE20](Stmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 72)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_FetchStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FetchStmt and conformance PgQuery_FetchStmt, type metadata accessor for PgQuery_FetchStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_FetchStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #74 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  IndexStmt = type metadata accessor for PgQuery_IndexStmt(0);
  v10 = *(*(IndexStmt - 8) + 64);
  MEMORY[0x28223BE20](IndexStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 73)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_IndexStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexStmt and conformance PgQuery_IndexStmt, type metadata accessor for PgQuery_IndexStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_IndexStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #75 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  FunctionStmt = type metadata accessor for PgQuery_CreateFunctionStmt(0);
  v10 = *(*(FunctionStmt - 8) + 64);
  MEMORY[0x28223BE20](FunctionStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 74)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_CreateFunctionStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFunctionStmt and conformance PgQuery_CreateFunctionStmt, type metadata accessor for PgQuery_CreateFunctionStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_CreateFunctionStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #76 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  AlterFunctionStmt = type metadata accessor for PgQuery_AlterFunctionStmt(0);
  v10 = *(*(AlterFunctionStmt - 8) + 64);
  MEMORY[0x28223BE20](AlterFunctionStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 75)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_AlterFunctionStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_AlterFunctionStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #77 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DoStmt = type metadata accessor for PgQuery_DoStmt(0);
  v10 = *(*(DoStmt - 8) + 64);
  MEMORY[0x28223BE20](DoStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 76)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_DoStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_DoStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #78 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  RenameStmt = type metadata accessor for PgQuery_RenameStmt(0);
  v10 = *(*(RenameStmt - 8) + 64);
  MEMORY[0x28223BE20](RenameStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 77)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_RenameStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RenameStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #79 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  RuleStmt = type metadata accessor for PgQuery_RuleStmt(0);
  v10 = *(*(RuleStmt - 8) + 64);
  MEMORY[0x28223BE20](RuleStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 78)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_RuleStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RuleStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #80 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  NotifyStmt = type metadata accessor for PgQuery_NotifyStmt(0);
  v10 = *(*(NotifyStmt - 8) + 64);
  MEMORY[0x28223BE20](NotifyStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 79)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_NotifyStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_NotifyStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #81 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  ListenStmt = type metadata accessor for PgQuery_ListenStmt(0);
  v10 = *(*(ListenStmt - 8) + 64);
  MEMORY[0x28223BE20](ListenStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 80)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_ListenStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_ListenStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #82 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  UnlistenStmt = type metadata accessor for PgQuery_UnlistenStmt(0);
  v10 = *(*(UnlistenStmt - 8) + 64);
  MEMORY[0x28223BE20](UnlistenStmt);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 81)
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_UnlistenStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_UnlistenStmt);
  }

  result = outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}