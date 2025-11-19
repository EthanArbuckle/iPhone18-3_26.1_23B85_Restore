uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TargetEntry(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TargetEntry and conformance PgQuery_TargetEntry, type metadata accessor for PgQuery_TargetEntry);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TargetEntry(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TargetEntry and conformance PgQuery_TargetEntry, type metadata accessor for PgQuery_TargetEntry);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TargetEntry()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TargetEntry and conformance PgQuery_TargetEntry, type metadata accessor for PgQuery_TargetEntry);

  return Message.hash(into:)();
}

uint64_t PgQuery_Integer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*v4 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v5))
  {
    v8 = v4 + *(a4(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTblRef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblRef and conformance PgQuery_RangeTblRef, type metadata accessor for PgQuery_RangeTblRef);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTblRef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblRef and conformance PgQuery_RangeTblRef, type metadata accessor for PgQuery_RangeTblRef);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTblRef()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblRef and conformance PgQuery_RangeTblRef, type metadata accessor for PgQuery_RangeTblRef);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_Integer(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_JoinExpr._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void type metadata completion function for PgQuery_JoinExpr._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Alias?, type metadata accessor for PgQuery_Alias, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_JoinExpr.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            v3 = v0;
            type metadata accessor for PgQuery_Alias(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
            goto LABEL_21;
          }

          if (result == 8)
          {
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          }
        }

        else if (result == 5)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          v3 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_21:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 1)
        {
          lazy protocol witness table accessor for type PgQuery_JoinType and conformance PgQuery_JoinType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_JoinExpr.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v52 - v5;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v55 = *(Alias - 8);
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](Alias);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - v15;
  Node = type metadata accessor for PgQuery_Node(0);
  v17 = *(Node - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](Node);
  v54 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v58 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v52 - v24;
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = v12;
    v28 = *(v23 + 24);
    v62 = v26;
    v63 = v28;
    v29 = v23;
    lazy protocol witness table accessor for type PgQuery_JoinType and conformance PgQuery_JoinType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v64 = 0;
    v23 = v29;
    v12 = v27;
  }

  else
  {
    v64 = v1;
  }

  if (*(v23 + 25) == 1)
  {
    v31 = v12;
    v32 = v23;
    v33 = v64;
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v33)
    {
      return result;
    }

    v64 = 0;
    v23 = v32;
    v12 = v31;
  }

  v56 = v23;
  outlined init with copy of PgQuery_Alias?(v23 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v34 = *(v17 + 48);
  v52 = v17 + 48;
  if (v34(v16, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v16, v25, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v35 = v64;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    if (v35)
    {
      return result;
    }

    v64 = 0;
  }

  v36 = v60;
  outlined init with copy of PgQuery_Alias?(v56 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v37 = Node;
  if (v34(v36, 1, Node) == 1)
  {
    v38 = v34;
    _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v39 = v58;
    outlined init with take of PgQuery_OidList(v36, v58, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v40 = v64;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
    if (v40)
    {
      return result;
    }

    v38 = v34;
    v64 = 0;
  }

  v41 = v56;
  v42 = v59;
  if (*(*(v56 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v43 = v64;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v43)
    {
      return result;
    }

    v64 = 0;
    v41 = v56;
  }

  outlined init with copy of PgQuery_Alias?(v41 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v44 = v38(v12, 1, v37);
  v45 = Alias;
  if (v44 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v46 = v12;
    v47 = v54;
    outlined init with take of PgQuery_OidList(v46, v54, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v48 = v64;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
    if (v48)
    {
      return result;
    }

    v64 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v56 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v42, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if ((*(v55 + 48))(v42, 1, v45) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v42, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  }

  else
  {
    v49 = v42;
    v50 = v53;
    outlined init with take of PgQuery_OidList(v49, v53, type metadata accessor for PgQuery_Alias);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
    v51 = v64;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Alias);
    if (v51)
    {
      return result;
    }

    v64 = 0;
  }

  result = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_JoinExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v111 = *(Alias - 8);
  v112 = Alias;
  v5 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](Alias);
  v7 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v103 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  v12 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v14 = v103 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](Node);
  v109 = v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v114 = v103 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v103 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v113 = v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v116 = v103 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v103 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = v103 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v40 = v103 - v38;
  v41 = *(a1 + 16);
  v42 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v42 <= 3)
    {
      if (v42 > 1)
      {
        if (v42 == 2)
        {
          if (v41 != 2)
          {
            return 0;
          }
        }

        else if (v41 != 3)
        {
          return 0;
        }
      }

      else if (v42)
      {
        if (v41 != 1)
        {
          return 0;
        }
      }

      else if (v41)
      {
        return 0;
      }
    }

    else if (v42 <= 5)
    {
      if (v42 == 4)
      {
        if (v41 != 4)
        {
          return 0;
        }
      }

      else if (v41 != 5)
      {
        return 0;
      }
    }

    else if (v42 == 6)
    {
      if (v41 != 6)
      {
        return 0;
      }
    }

    else if (v42 == 7)
    {
      if (v41 != 7)
      {
        return 0;
      }
    }

    else if (v41 != 8)
    {
      return 0;
    }
  }

  else if (v41 != v42)
  {
    return 0;
  }

  if (*(a1 + 25) != *(a2 + 25))
  {
    return 0;
  }

  v106 = v14;
  v107 = v39;
  v104 = v7;
  v105 = v11;
  v115 = a2;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  v108 = v37;
  v44 = *(v37 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v103 - v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v115 + v43, &v40[v44], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v45 = v15 + 48;
  v46 = *(v15 + 48);
  v47 = Node;
  if (v46(v40, 1, Node) == 1)
  {
    v48 = v46(&v40[v44], 1, v47);

    v49 = a1;
    if (v48 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v50 = a1;
  outlined init with copy of PgQuery_Alias?(v40, v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v103[0] = v46;
  v103[1] = v45;
  if (v46(&v40[v44], 1, v47) == 1)
  {

    outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
LABEL_19:
    v51 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v52 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_20:
    v53 = v40;
LABEL_47:
    _s10Foundation4UUIDVSgWOhTm_0(v53, v51, v52);
    goto LABEL_48;
  }

  outlined init with take of PgQuery_OidList(&v40[v44], v22, type metadata accessor for PgQuery_Node);
  v54 = *(v47 + 20);
  v55 = *&v30[v54];
  v56 = *&v22[v54];
  v49 = v50;

  if (v55 != v56)
  {

    v57 = closure #1 in static PgQuery_Node.== infix(_:_:)(v55, v56);

    if (!v57)
    {
      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      v51 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v52 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_20;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v46 = v103[0];
  if ((v58 & 1) == 0)
  {
LABEL_48:

    return 0;
  }

LABEL_30:
  v59 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v60 = *(v108 + 48);
  outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v61 = v115 + v59;
  v62 = v115;
  outlined init with copy of PgQuery_Alias?(v61, &v36[v60], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v63 = Node;
  if (v46(v36, 1, Node) == 1)
  {
    if (v46(&v36[v60], 1, v63) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_53;
    }

    goto LABEL_45;
  }

  v64 = v116;
  outlined init with copy of PgQuery_Alias?(v36, v116, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v46(&v36[v60], 1, v63) == 1)
  {
    outlined destroy of PgQuery_OidList(v64, type metadata accessor for PgQuery_Node);
LABEL_45:
    v51 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v52 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_46:
    v53 = v36;
    goto LABEL_47;
  }

  v66 = v46;
  v67 = v114;
  outlined init with take of PgQuery_OidList(&v36[v60], v114, type metadata accessor for PgQuery_Node);
  v68 = *(v63 + 20);
  v69 = *(v64 + v68);
  v70 = *(v67 + v68);
  if (v69 != v70)
  {
    v71 = *(v64 + v68);

    v72 = closure #1 in static PgQuery_Node.== infix(_:_:)(v69, v70);

    if (!v72)
    {
      outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v64, type metadata accessor for PgQuery_Node);
      v51 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v52 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_46;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v73 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v64, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v46 = v66;
  if ((v73 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_53:
  v74 = *(v49 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);
  v75 = *(v62 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v74, v75);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_48;
  }

  v77 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;
  v78 = *(v108 + 48);
  v79 = v46;
  v80 = v107;
  outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v107, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v62 + v77, v80 + v78, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v81 = Node;
  if (v79(v80, 1, Node) == 1)
  {
    if (v79(v80 + v78, 1, v81) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v80, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_65;
    }

    goto LABEL_60;
  }

  v82 = v113;
  outlined init with copy of PgQuery_Alias?(v80, v113, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v79(v80 + v78, 1, v81) == 1)
  {
    outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_Node);
LABEL_60:
    v51 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v52 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v53 = v80;
    goto LABEL_47;
  }

  v83 = v109;
  outlined init with take of PgQuery_OidList(v80 + v78, v109, type metadata accessor for PgQuery_Node);
  v84 = *(v81 + 20);
  v85 = *(v82 + v84);
  v86 = *(v83 + v84);
  if (v85 != v86)
  {
    v87 = *(v82 + v84);

    v88 = closure #1 in static PgQuery_Node.== infix(_:_:)(v85, v86);

    if (!v88)
    {
      outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_Node);
      v51 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v52 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v53 = v107;
      goto LABEL_47;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v89 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v107, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v89 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_65:
  v90 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  v91 = *(v110 + 48);
  v92 = v106;
  outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v106, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  outlined init with copy of PgQuery_Alias?(v62 + v90, v92 + v91, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v93 = v112;
  v94 = *(v111 + 48);
  if (v94(v92, 1, v112) != 1)
  {
    v97 = v105;
    outlined init with copy of PgQuery_Alias?(v92, v105, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    if (v94(v92 + v91, 1, v93) != 1)
    {
      v98 = v104;
      outlined init with take of PgQuery_OidList(v92 + v91, v104, type metadata accessor for PgQuery_Alias);
      v99 = v92;
      if (*v97 == *v98 && v97[1] == v98[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v105[2], v104[2]))
      {
        v100 = *(v93 + 24);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v101 = v104;
        v102 = v105;
        LOBYTE(v100) = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v101, type metadata accessor for PgQuery_Alias);
        outlined destroy of PgQuery_OidList(v102, type metadata accessor for PgQuery_Alias);
        _s10Foundation4UUIDVSgWOhTm_0(v99, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
        if (v100)
        {
          goto LABEL_68;
        }

        goto LABEL_48;
      }

      outlined destroy of PgQuery_OidList(v104, type metadata accessor for PgQuery_Alias);
      outlined destroy of PgQuery_OidList(v105, type metadata accessor for PgQuery_Alias);
      v51 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
      v52 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
      v53 = v92;
      goto LABEL_47;
    }

    outlined destroy of PgQuery_OidList(v97, type metadata accessor for PgQuery_Alias);
    goto LABEL_71;
  }

  if (v94(v92 + v91, 1, v93) != 1)
  {
LABEL_71:
    v51 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
    v52 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
    v53 = v92;
    goto LABEL_47;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v92, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
LABEL_68:
  v95 = *(v49 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex);

  v96 = *(v62 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex);

  return v95 == v96;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_JoinExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_JoinExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_JoinExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_FromExpr._StorageClass.__deallocating_deinit()
{
  v1 = v0[2];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void type metadata completion function for PgQuery_FromExpr._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_FromExpr.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = *(type metadata accessor for PgQuery_FromExpr(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for PgQuery_FromExpr._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    *(v10 + 16) = MEMORY[0x1E69E7CC0];
    v11 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v10 + v11, 1, 1, Node);
    *(v10 + 16) = *(v6 + 16);
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;

    _s10Foundation4UUIDVSgWOhTm_0(v10 + v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v6 + v13, v10 + v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

    *(v0 + v3) = v10;
    v2 = v1;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v2)
  {
    while ((v15 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_FromExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(a1 + 16) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v11 + 48))(v9, 1, Node) == 1)
    {
      return _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v9, v14, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_FromExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = *(a1 + 16);
  v17 = *(a2 + 16);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v16, v17);

  if (NodeV_Tt1g5)
  {
    v19 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;
    v20 = *(v12 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v19, &v15[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = *(v5 + 48);
    if (v21(v15, 1, Node) == 1)
    {

      if (v21(&v15[v20], 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        return 1;
      }

      goto LABEL_8;
    }

    outlined init with copy of PgQuery_Alias?(v15, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v15[v20], 1, Node) == 1)
    {

      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_8:
      v22 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_9:
      _s10Foundation4UUIDVSgWOhTm_0(v15, v22, v23);
      return 0;
    }

    v25 = v33;
    outlined init with take of PgQuery_OidList(&v15[v20], v33, type metadata accessor for PgQuery_Node);
    v26 = *(Node + 20);
    v27 = *&v11[v26];
    v28 = *(v25 + v26);
    if (v27 != v28)
    {
      v29 = *&v11[v26];

      v30 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28);

      if (!v30)
      {

        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        v22 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_9;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v31)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FromExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FromExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FromExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_OnConflictExpr._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v1 + v4, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet) = v3;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere;
  v6(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, 1, 1, Node);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist) = v3;
  v12 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v12;
  *(v1 + 32) = *(a1 + 32);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere;

  outlined assign with copy of PgQuery_Node?(a1 + v13, v1 + v4, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint);
  v14 = *(v1 + v8);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, v1 + v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex);
  v15 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist);

  v16 = *(v1 + v11);
  *(v1 + v11) = v15;

  return v1;
}

uint64_t PgQuery_OnConflictExpr._StorageClass.__deallocating_deinit()
{
  v1 = v0[4];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

void type metadata completion function for PgQuery_OnConflictExpr._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_OnConflictExpr.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            goto LABEL_4;
          }

LABEL_21:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result != 7)
        {
          if (result != 8)
          {
            goto LABEL_5;
          }

          goto LABEL_21;
        }

        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      else
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            lazy protocol witness table accessor for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            goto LABEL_5;
          }

          if (result != 2)
          {
            goto LABEL_5;
          }

          goto LABEL_21;
        }

        if (result == 3)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_OnConflictExpr.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](Node);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  if (!*(a1 + 16) || (v16 = *(a1 + 24), v24 = *(a1 + 16), v25 = v16, lazy protocol witness table accessor for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v22 = v13;
    if (!*(*(a1 + 32) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v18 = Node;
      v21[0] = *(v9 + 48);
      v21[1] = v9 + 48;
      if ((v21[0])(v8, 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        outlined init with take of PgQuery_OidList(v8, v15, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
        if (v1)
        {
          return result;
        }
      }

      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint))
      {
        result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        v18 = Node;
      }

      if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
      {
        v19 = v23;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v21[0])(v19, 1, v18) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v20 = v22;
          outlined init with take of PgQuery_OidList(v19, v22, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
          if (v1)
          {
            return result;
          }
        }

        result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex);
        if (!result || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
        {
          if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist) + 16))
          {
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

            dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_OnConflictExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v4 = *(Node - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](Node);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v71 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v71 - v22;
  v24 = *(a1 + 16);
  v25 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v24 == v25)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      if (v24 != 2)
      {
        goto LABEL_41;
      }
    }

    else if (v24 != 3)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (!v25)
    {
      if (!v24)
      {
        goto LABEL_7;
      }

LABEL_41:
      v69 = 0;
      return v69 & 1;
    }

    if (v24 != 1)
    {
      goto LABEL_41;
    }
  }

LABEL_7:
  v72 = v8;
  v73 = v15;
  v75 = v21;
  v26 = *(a1 + 32);
  v27 = *(a2 + 32);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v26, v27);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
LABEL_40:

    goto LABEL_41;
  }

  v29 = a1;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere;
  v31 = *(v18 + 48);
  v74 = v29;
  outlined init with copy of PgQuery_Alias?(v29 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere, v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v30, &v23[v31], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v32 = *(v4 + 48);
  v33 = Node;
  if (v32(v23, 1, Node) == 1)
  {
    v34 = v32(&v23[v31], 1, v33);
    v35 = v74;
    if (v34 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  outlined init with copy of PgQuery_Alias?(v23, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = v32(&v23[v31], 1, v33);
  v35 = v74;
  if (v36 == 1)
  {
    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
LABEL_20:
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_21:
    v39 = v23;
LABEL_22:
    _s10Foundation4UUIDVSgWOhTm_0(v39, v37, v38);
    goto LABEL_40;
  }

  v71 = v32;
  outlined init with take of PgQuery_OidList(&v23[v31], v10, type metadata accessor for PgQuery_Node);
  v40 = *(v33 + 20);
  v41 = *&v17[v40];
  v42 = *&v10[v40];
  if (v41 != v42)
  {
    v43 = *&v17[v40];

    v44 = closure #1 in static PgQuery_Node.== infix(_:_:)(v41, v42);

    if (!v44)
    {
      outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_21;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v32 = v71;
  if ((v45 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_26:
  if (*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint))
  {
    goto LABEL_40;
  }

  v46 = v32;
  v47 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet);
  v48 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet);

  v49 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v47, v48);

  if ((v49 & 1) == 0)
  {
    goto LABEL_40;
  }

  v50 = v35;
  v51 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere;
  v52 = *(v18 + 48);
  v53 = v75;
  outlined init with copy of PgQuery_Alias?(v50 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, v75, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v51, v53 + v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v54 = Node;
  if (v46(v53, 1, Node) == 1)
  {
    v55 = v46(v53 + v52, 1, v54);
    v56 = v74;
    if (v55 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  v57 = v73;
  outlined init with copy of PgQuery_Alias?(v53, v73, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v58 = v46(v53 + v52, 1, v54);
  v56 = v74;
  if (v58 == 1)
  {
    outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
LABEL_34:
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v39 = v53;
    goto LABEL_22;
  }

  v59 = v53 + v52;
  v60 = v72;
  outlined init with take of PgQuery_OidList(v59, v72, type metadata accessor for PgQuery_Node);
  v61 = *(v54 + 20);
  v62 = *(v57 + v61);
  v63 = *(v60 + v61);
  if (v62 != v63)
  {

    v64 = closure #1 in static PgQuery_Node.== infix(_:_:)(v62, v63);

    if (!v64)
    {
      outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_Node);
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v39 = v75;
      goto LABEL_22;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v65 = v73;
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v75, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v66 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_38:
  if (*(v56 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex))
  {
    goto LABEL_40;
  }

  v67 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist);
  v68 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist);

  v69 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v67, v68);

  return v69 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_OnConflictExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_OnConflictExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_OnConflictExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_IntoClause._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName + 8);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

void type metadata completion function for PgQuery_IntoClause._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_IntoClause.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        break;
      }

      if (result <= 6)
      {
        if (result == 5)
        {
          lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_4;
        }

        goto LABEL_21;
      }

      if (result == 7)
      {
        v3 = v0;
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_23:
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_4;
      }

      if (result == 8)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_4:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 2)
    {
      if (result != 3)
      {
        goto LABEL_10;
      }

LABEL_21:
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
      goto LABEL_4;
    }

    if (result != 1)
    {
      if (result != 2)
      {
        goto LABEL_4;
      }

LABEL_10:
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      goto LABEL_4;
    }

    v3 = v0;
    type metadata accessor for PgQuery_RangeVar(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_23;
  }

  return result;
}

uint64_t closure #1 in PgQuery_IntoClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v41 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v33 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v34 = *(Node - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v33 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v15 = *(RangeVar - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v15 + 48))(v13, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v19 = v37;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v18, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v20 = v37;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v19 = v20;
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    if (v20)
    {
      return result;
    }
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v22 = Node;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v19)
    {
      return result;
    }
  }

  else
  {
    v22 = Node;
  }

  v23 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) & 0xFFFFFFFFFFFFLL;
  }

  if (!v24 || (v25 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v19))
  {
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
    {
      if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit) || (v26 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit + 8), v39 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit), v40 = v26, lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v19))
      {
        v27 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName + 8);
        v28 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName) & 0xFFFFFFFFFFFFLL;
        }

        if (!v28 || (v29 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v19))
        {
          v30 = v35;
          outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery, v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((*(v34 + 48))(v30, 1, v22) == 1)
          {
            result = _s10Foundation4UUIDVSgWOhTm_0(v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          }

          else
          {
            v31 = v30;
            v32 = v33;
            outlined init with take of PgQuery_OidList(v31, v33, type metadata accessor for PgQuery_Node);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
            result = outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
            if (v19)
            {
              return result;
            }
          }

          if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData) == 1)
          {
            return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_IntoClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  Node = type metadata accessor for PgQuery_Node(0);
  v71 = *(Node - 8);
  v72 = Node;
  v4 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v68 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v68 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v68 - v10;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v74 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v68 - v22;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel;
  v25 = *(v21 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, &v68 - v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v26 = v75 + v24;
  v27 = v75;
  outlined init with copy of PgQuery_Alias?(v26, &v23[v25], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v28 = *(v12 + 48);
  if (v28(v23, 1, RangeVar) == 1)
  {
    v29 = v28(&v23[v25], 1, RangeVar);

    v30 = a1;
    if (v29 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v31 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v32 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v33 = v23;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v33, v31, v32);
    goto LABEL_44;
  }

  outlined init with copy of PgQuery_Alias?(v23, v18, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v28(&v23[v25], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  v34 = v74;
  outlined init with take of PgQuery_OidList(&v23[v25], v74, type metadata accessor for PgQuery_RangeVar);
  v30 = a1;

  v35 = specialized static PgQuery_RangeVar.== infix(_:_:)(v18, v34);
  outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_9:
  v36 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames);
  v37 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

  if ((NodeV_Tt1g5 & 1) == 0 || (*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) != *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) || *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8) != *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v39 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
  v40 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v41 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v39, v40);

  if ((v41 & 1) == 0)
  {
    goto LABEL_44;
  }

  v42 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit);
  v43 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit);
  if (*(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit + 8) == 1)
  {
    if (v43 <= 1)
    {
      if (v43)
      {
        if (v42 != 1)
        {
          goto LABEL_44;
        }
      }

      else if (v42)
      {
        goto LABEL_44;
      }
    }

    else if (v43 == 2)
    {
      if (v42 != 2)
      {
        goto LABEL_44;
      }
    }

    else if (v43 == 3)
    {
      if (v42 != 3)
      {
        goto LABEL_44;
      }
    }

    else if (v42 != 4)
    {
      goto LABEL_44;
    }
  }

  else if (v42 != v43)
  {
    goto LABEL_44;
  }

  if ((*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName) != *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName) || *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName + 8) != *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v44 = v27;
  v45 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery;
  v46 = *(v70 + 48);
  v47 = v73;
  outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery, v73, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v48 = v44 + v45;
  v49 = v44;
  v50 = v47;
  outlined init with copy of PgQuery_Alias?(v48, v47 + v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v51 = *(v71 + 48);
  v52 = v47;
  v53 = v72;
  if (v51(v52, 1, v72) != 1)
  {
    v54 = v69;
    outlined init with copy of PgQuery_Alias?(v50, v69, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v51(v50 + v46, 1, v53) != 1)
    {
      v55 = v50 + v46;
      v56 = v53;
      v57 = v68;
      outlined init with take of PgQuery_OidList(v55, v68, type metadata accessor for PgQuery_Node);
      v58 = *(v56 + 20);
      v59 = *(v54 + v58);
      v60 = *(v57 + v58);
      if (v59 == v60 || (, , v61 = closure #1 in static PgQuery_Node.== infix(_:_:)(v59, v60), , , v61))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v62 = v69;
        v63 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v63)
        {
          goto LABEL_43;
        }

LABEL_44:

        v66 = 0;
        return v66 & 1;
      }

      outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
      v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_33;
    }

    outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
LABEL_32:
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_33:
    v33 = v50;
    goto LABEL_7;
  }

  if (v51(v50 + v46, 1, v53) != 1)
  {
    goto LABEL_32;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_43:
  v64 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData);

  v65 = *(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData);

  v66 = v64 ^ v65 ^ 1;
  return v66 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_IntoClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_IntoClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_IntoClause()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_RawStmt.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = *(type metadata accessor for PgQuery_RawStmt(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  v7 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  v8 = &type metadata singleton initialization cache for PgQuery_AlterObjectDependsStmt;
  v9 = &type metadata singleton initialization cache for PgQuery_AlterObjectDependsStmt;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    Raw = type metadata accessor for PgQuery_RawStmt._StorageClass(0);
    v11 = *(Raw + 48);
    v12 = *(Raw + 52);
    v13 = swift_allocObject();
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmt;
    v24 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmt;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v13 + v14, 1, 1, Node);
    v25 = v1;
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation;
    *(v13 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) = 0;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen;
    *(v13 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen) = 0;
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmt;

    outlined assign with copy of PgQuery_Node?(v6 + v18, v13 + v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v13 + v16) = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation);
    LODWORD(v16) = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);

    *(v13 + v17) = v16;
    v7 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    v2 = v25;

    v9 = &type metadata singleton initialization cache for PgQuery_AlterObjectDependsStmt;
    v8 = &type metadata singleton initialization cache for PgQuery_AlterObjectDependsStmt;
    *(v0 + v3) = v13;
  }

  v19 = v7[425];
  v20 = v8[362];
  v21 = v9[361];
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v2 || (v23 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    else if (result == 2 || result == 3)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_MultiAssignRef.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void *a5, void *a6, void *a7)
{
  v15 = a4(0);
  result = closure #1 in PgQuery_NextValueExpr.traverse<A>(visitor:)(*(v7 + *(v15 + 20)), a1, a2, a3, a5, a6, MEMORY[0x1E69AAD90], a7);
  if (!v8)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RawStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RawStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RawStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_Query._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable) = v4;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree;
  v6 = type metadata accessor for PgQuery_FromExpr(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = v4;
  v7 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict;
  v9 = type metadata accessor for PgQuery_OnConflictExpr(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets) = v4;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) = v4;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, 1, 1, Node);
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, 1, 1, Node);
  v10 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks) = v4;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen) = 0;
  return v0;
}

uint64_t PgQuery_Query._StorageClass.deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);

  v6 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);

  v8 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause);

  v9 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps);

  v12 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions);

  return v0;
}

void type metadata completion function for PgQuery_Query._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_FromExpr?, type metadata accessor for PgQuery_FromExpr, MEMORY[0x1E69E6720]);
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_OnConflictExpr?, type metadata accessor for PgQuery_OnConflictExpr, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t closure #1 in PgQuery_Query.decodeMessage<A>(decoder:)()
{
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    v3 = v7;
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v4 = v3;
          v5 = v0;
          lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType();
          goto LABEL_32;
        case 2:
          v4 = v3;
          v5 = v0;
          lazy protocol witness table accessor for type PgQuery_QuerySource and conformance PgQuery_QuerySource();
          goto LABEL_32;
        case 3:
          v4 = v3;
          goto LABEL_27;
        case 4:
        case 24:
        case 28:
        case 29:
        case 32:
          v6 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          goto LABEL_30;
        case 5:
          v4 = v3;
          goto LABEL_15;
        case 6:
          v4 = v3;
          goto LABEL_27;
        case 7:
          v4 = v3;
          goto LABEL_27;
        case 8:
          v4 = v3;
          goto LABEL_27;
        case 9:
          v4 = v3;
          goto LABEL_27;
        case 10:
          v4 = v3;
          goto LABEL_27;
        case 11:
          v4 = v3;
          goto LABEL_27;
        case 12:
          v4 = v3;
          goto LABEL_27;
        case 13:
          v4 = v3;
          goto LABEL_27;
        case 14:
          v4 = v3;
LABEL_27:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 15:
        case 16:
        case 18:
        case 21:
        case 22:
        case 23:
        case 25:
        case 26:
        case 27:
        case 31:
        case 33:
        case 34:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        case 17:
          v6 = v0;
          type metadata accessor for PgQuery_FromExpr(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr);
          goto LABEL_30;
        case 19:
          v4 = v3;
          v5 = v0;
          lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind();
          goto LABEL_32;
        case 20:
          v6 = v0;
          type metadata accessor for PgQuery_OnConflictExpr(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr);
LABEL_30:
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_5:
          v4 = v7;
          break;
        case 30:
          v4 = v3;
          v5 = v0;
          lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption();
LABEL_32:
          v0 = v5;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 35:
          v4 = v3;
          goto LABEL_15;
        case 36:
          v4 = v3;
LABEL_15:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        default:
          v4 = v3;
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
      v3 = v4;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_Query.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v103 = &v87 - v6;
  v104 = type metadata accessor for PgQuery_OnConflictExpr(0);
  v99 = *(v104 - 8);
  v7 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v100 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v87 - v11;
  v12 = type metadata accessor for PgQuery_FromExpr(0);
  v102 = *(v12 - 8);
  v13 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v92 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v95 = &v87 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v96 = &v87 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v98 = &v87 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v87 - v25;
  Node = type metadata accessor for PgQuery_Node(0);
  v28 = *(Node - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](Node);
  v91 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v93 = &v87 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v94 = &v87 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v97 = &v87 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v39 = a1;
  v41 = &v87 - v40;
  v42 = *(v39 + 16);
  v108 = v38;
  if (v42)
  {
    v43 = *(v39 + 24);
    v106 = v42;
    v107 = v43;
    v44 = v39;
    lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
    v39 = v44;
    Node = v108;
  }

  if (*(v39 + 32))
  {
    v46 = *(v39 + 40);
    v106 = *(v39 + 32);
    v107 = v46;
    v47 = v39;
    lazy protocol witness table accessor for type PgQuery_QuerySource and conformance PgQuery_QuerySource();
    v48 = v2;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    v39 = v47;
    Node = v108;
  }

  else
  {
    v48 = v2;
  }

  v49 = *(v39 + 41);
  v90 = v39;
  if (v49 == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v48)
    {
      return result;
    }

    v50 = 0;
    v39 = v90;
  }

  else
  {
    v50 = v48;
  }

  outlined init with copy of PgQuery_Alias?(v39 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt, v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v88 = *(v28 + 48);
  v89 = v28 + 48;
  if (v88(v26, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v26, v41, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v50)
    {
      return outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
  }

  v51 = v90;
  if (*(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v50)
    {
      return result;
    }

    v51 = v90;
  }

  v52 = v12;
  if (*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    v53 = v105;
    if (v50)
    {
      return result;
    }

    v51 = v90;
  }

  else
  {
    v53 = v105;
  }

  if (*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v50)
    {
      return result;
    }

    v51 = v90;
  }

  if (*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v50)
    {
      return result;
    }

    v51 = v90;
  }

  if (*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v50)
    {
      return result;
    }

    v51 = v90;
  }

  if (*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v50)
    {
      return result;
    }

    v51 = v90;
  }

  if (*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v50)
    {
      return result;
    }

    v51 = v90;
  }

  if (*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v50)
    {
      return result;
    }

    v51 = v90;
  }

  if (*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v50)
    {
      return result;
    }

    v51 = v90;
  }

  if (*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v50)
    {
      return result;
    }

    v51 = v90;
  }

  if (*(*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v50)
    {
    }

    v51 = v90;
  }

  v105 = v50;
  if (*(*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v54 = v105;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v105 = v54;
    if (v54)
    {
    }

    v51 = v90;
  }

  outlined init with copy of PgQuery_Alias?(v51 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree, v53, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  if ((*(v102 + 48))(v53, 1, v52) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v53, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
    v56 = v103;
    v55 = v104;
  }

  else
  {
    v57 = v53;
    v58 = v101;
    outlined init with take of PgQuery_OidList(v57, v101, type metadata accessor for PgQuery_FromExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr);
    v59 = v105;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v105 = v59;
    v56 = v103;
    v55 = v104;
    if (v59)
    {
      v60 = type metadata accessor for PgQuery_FromExpr;
      return outlined destroy of PgQuery_OidList(v58, v60);
    }

    outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_FromExpr);
  }

  v61 = v90;
  if (*(*(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v62 = v105;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v105 = v62;
    if (v62)
    {
    }

    v61 = v90;
  }

  v58 = v100;
  if (*(v61 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override))
  {
    v63 = *(v61 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8);
    v106 = *(v61 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
    v107 = v63;
    lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind();
    v64 = v105;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v64)
    {
      return result;
    }

    v105 = 0;
    v61 = v90;
  }

  outlined init with copy of PgQuery_Alias?(v61 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict, v56, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  if ((*(v99 + 48))(v56, 1, v55) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v56, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
    goto LABEL_72;
  }

  outlined init with take of PgQuery_OidList(v56, v58, type metadata accessor for PgQuery_OnConflictExpr);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr);
  v65 = v105;
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  v105 = v65;
  if (v65)
  {
    v60 = type metadata accessor for PgQuery_OnConflictExpr;
    return outlined destroy of PgQuery_OidList(v58, v60);
  }

  outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_OnConflictExpr);
LABEL_72:
  v66 = v90;
  if (*(*(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v67 = v105;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v105 = v67;
    if (v67)
    {
    }

    v66 = v90;
  }

  if (*(*(v66 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v68 = v105;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v105 = v68;
    if (v68)
    {
    }
  }

  if (*(*(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v69 = v105;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v105 = v69;
    if (v69)
    {
    }
  }

  v70 = v98;
  outlined init with copy of PgQuery_Alias?(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, v98, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v88(v70, 1, v108) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v98, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v98, v97, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v71 = v105;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v105 = v71;
    if (v71)
    {
      return outlined destroy of PgQuery_OidList(v97, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v97, type metadata accessor for PgQuery_Node);
  }

  if (*(*(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v72 = v105;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v105 = v72;
    if (v72)
    {
    }
  }

  if (!*(*(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause) + 16))
  {
    goto LABEL_92;
  }

  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

  v73 = v105;
  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  v105 = v73;
  if (v73)
  {
  }

LABEL_92:
  if (*(*(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v74 = v105;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v105 = v74;
    if (v74)
    {
    }
  }

  v75 = v96;
  outlined init with copy of PgQuery_Alias?(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v96, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v88(v75, 1, v108) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v96, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v96, v94, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v76 = v105;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v105 = v76;
    if (v76)
    {
      return outlined destroy of PgQuery_OidList(v94, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v94, type metadata accessor for PgQuery_Node);
  }

  v77 = v95;
  outlined init with copy of PgQuery_Alias?(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v95, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v88(v77, 1, v108) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v95, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v95, v93, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v78 = v105;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v105 = v78;
    if (v78)
    {
      return outlined destroy of PgQuery_OidList(v93, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v93, type metadata accessor for PgQuery_Node);
  }

  if (!*(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption) || (v79 = *(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8), v106 = *(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption), v107 = v79, lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption(), v80 = v105, result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), (v105 = v80) == 0))
  {
    if (*(*(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

      v81 = v105;
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      v105 = v81;
      if (v81)
      {
      }
    }

    v82 = v92;
    outlined init with copy of PgQuery_Alias?(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, v92, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v88(v82, 1, v108) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v92, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v92, v91, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      v83 = v105;
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      v105 = v83;
      if (v83)
      {
        return outlined destroy of PgQuery_OidList(v91, type metadata accessor for PgQuery_Node);
      }

      outlined destroy of PgQuery_OidList(v91, type metadata accessor for PgQuery_Node);
    }

    if (*(*(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

      v84 = v105;
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      v105 = v84;
      if (v84)
      {
      }
    }

    if (*(*(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

      v85 = v105;
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      v105 = v85;
      if (v85)
      {
      }
    }

    if (!*(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) || (v86 = v105, result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), (v105 = v86) == 0))
    {
      result = *(v90 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_Query.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v225 = type metadata accessor for PgQuery_OnConflictExpr(0);
  v223 = *(v225 - 8);
  v4 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v221 = &v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v224 = &v204 - v8;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_OnConflictExprVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSg_ADtMR);
  v9 = *(*(v222 - 8) + 64);
  MEMORY[0x1EEE9AC00](v222);
  v226 = &v204 - v10;
  v231 = type metadata accessor for PgQuery_FromExpr(0);
  v229 = *(v231 - 8);
  v11 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v227 = &v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v230 = &v204 - v15;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FromExprVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_FromExprVSg_ADtMR);
  v16 = *(*(v228 - 8) + 64);
  MEMORY[0x1EEE9AC00](v228);
  v232 = &v204 - v17;
  Node = type metadata accessor for PgQuery_Node(0);
  v19 = *(Node - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](Node);
  v23 = &v204 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v204 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v219 = &v204 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v217 = &v204 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v204 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v37 = &v204 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v220 = &v204 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v218 = &v204 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v216 = &v204 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v204 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v49 = MEMORY[0x1EEE9AC00](v48);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v52 = MEMORY[0x1EEE9AC00](v51);
  v58 = &v204 - v54;
  v59 = *(a1 + 16);
  v60 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v60 > 3)
    {
      if (v60 > 5)
      {
        if (v60 == 6)
        {
          if (v59 != 6)
          {
            return 0;
          }
        }

        else if (v59 != 7)
        {
          return 0;
        }
      }

      else if (v60 == 4)
      {
        if (v59 != 4)
        {
          return 0;
        }
      }

      else if (v59 != 5)
      {
        return 0;
      }
    }

    else if (v60 > 1)
    {
      if (v60 == 2)
      {
        if (v59 != 2)
        {
          return 0;
        }
      }

      else if (v59 != 3)
      {
        return 0;
      }
    }

    else if (v60)
    {
      if (v59 != 1)
      {
        return 0;
      }
    }

    else if (v59)
    {
      return 0;
    }
  }

  else if (v59 != v60)
  {
    return 0;
  }

  v61 = *(a1 + 32);
  v62 = *(a2 + 32);
  if (*(a2 + 40) != 1)
  {
    if (v61 == v62)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v62 > 2)
  {
    if (v62 == 3)
    {
      if (v61 != 3)
      {
        return 0;
      }
    }

    else if (v62 == 4)
    {
      if (v61 != 4)
      {
        return 0;
      }
    }

    else if (v61 != 5)
    {
      return 0;
    }
  }

  else if (v62)
  {
    if (v62 == 1)
    {
      if (v61 != 1)
      {
        return 0;
      }
    }

    else if (v61 != 2)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

LABEL_19:
  if (*(a1 + 41) != *(a2 + 41))
  {
    return 0;
  }

  v214 = v53;
  v207 = v57;
  v208 = v56;
  v209 = v26;
  v210 = v55;
  v211 = v37;
  v212 = v23;
  v213 = v52;
  v215 = a2;
  v63 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt;
  v64 = *(v52 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt, &v204 - v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v65 = v215 + v63;
  v66 = v215;
  outlined init with copy of PgQuery_Alias?(v65, &v58[v64], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v67 = *(v19 + 48);
  if (v67(v58, 1, Node) == 1)
  {
    v206 = Node;
    v205 = v67;
    v68 = v67(&v58[v64], 1, Node);

    v69 = a1;
    if (v68 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v58, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_56;
    }

    goto LABEL_43;
  }

  outlined init with copy of PgQuery_Alias?(v58, v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v67(&v58[v64], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
LABEL_43:
    v70 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v71 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_44:
    _s10Foundation4UUIDVSgWOhTm_0(v58, v70, v71);
    goto LABEL_66;
  }

  v205 = v67;
  outlined init with take of PgQuery_OidList(&v58[v64], v32, type metadata accessor for PgQuery_Node);
  v206 = Node;
  v72 = *(Node + 20);
  v73 = *&v45[v72];
  v74 = *&v32[v72];
  v69 = a1;

  if (v73 != v74)
  {

    v75 = closure #1 in static PgQuery_Node.== infix(_:_:)(v73, v74);

    if (!v75)
    {
      outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
      v70 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v71 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_44;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v58, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v76 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_56:
  if (*(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation) != *(v66 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation))
  {
    goto LABEL_66;
  }

  if (*(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p) != *(v66 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p))
  {
    goto LABEL_66;
  }

  if (*(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p) != *(v66 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p))
  {
    goto LABEL_66;
  }

  if (*(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p) != *(v66 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p))
  {
    goto LABEL_66;
  }

  if (*(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p) != *(v66 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p))
  {
    goto LABEL_66;
  }

  if (*(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p) != *(v66 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p))
  {
    goto LABEL_66;
  }

  if (*(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p) != *(v66 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p))
  {
    goto LABEL_66;
  }

  if (*(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p) != *(v66 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p))
  {
    goto LABEL_66;
  }

  if (*(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p) != *(v66 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p))
  {
    goto LABEL_66;
  }

  if (*(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p) != *(v66 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p))
  {
    goto LABEL_66;
  }

  v78 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList);
  v79 = *(v66 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v78, v79);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_66;
  }

  v81 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable);
  v82 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable);

  v83 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v81, v82);

  if ((v83 & 1) == 0)
  {
    goto LABEL_66;
  }

  v84 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree;
  v85 = *(v228 + 48);
  v86 = v232;
  outlined init with copy of PgQuery_Alias?(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree, v232, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  outlined init with copy of PgQuery_Alias?(v215 + v84, v86 + v85, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  v87 = *(v229 + 48);
  if (v87(v86, 1, v231) == 1)
  {
    if (v87(v232 + v85, 1, v231) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v232, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
      goto LABEL_82;
    }

    goto LABEL_76;
  }

  v88 = v232;
  outlined init with copy of PgQuery_Alias?(v232, v230, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  if (v87(v88 + v85, 1, v231) == 1)
  {
    outlined destroy of PgQuery_OidList(v230, type metadata accessor for PgQuery_FromExpr);
LABEL_76:
    v89 = &_s14BiomeSQLParser16PgQuery_FromExprVSg_ADtMd;
    v90 = &_s14BiomeSQLParser16PgQuery_FromExprVSg_ADtMR;
LABEL_77:
    v91 = v232;
LABEL_78:
    _s10Foundation4UUIDVSgWOhTm_0(v91, v89, v90);
    goto LABEL_66;
  }

  v92 = v227;
  outlined init with take of PgQuery_OidList(v232 + v85, v227, type metadata accessor for PgQuery_FromExpr);
  v93 = *(v231 + 20);
  v94 = *(v230 + v93);
  v95 = *(v92 + v93);
  if (v94 != v95)
  {
    v96 = *(v230 + v93);

    v97 = closure #1 in static PgQuery_FromExpr.== infix(_:_:)(v94, v95);

    if ((v97 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v227, type metadata accessor for PgQuery_FromExpr);
      outlined destroy of PgQuery_OidList(v230, type metadata accessor for PgQuery_FromExpr);
      v89 = &_s14BiomeSQLParser16PgQuery_FromExprVSgMd;
      v90 = &_s14BiomeSQLParser16PgQuery_FromExprVSgMR;
      goto LABEL_77;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v98 = v230;
  v99 = v227;
  v100 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v99, type metadata accessor for PgQuery_FromExpr);
  outlined destroy of PgQuery_OidList(v98, type metadata accessor for PgQuery_FromExpr);
  _s10Foundation4UUIDVSgWOhTm_0(v232, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  if ((v100 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_82:
  v101 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);
  v102 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  v103 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v101, v102);

  if ((v103 & 1) == 0)
  {
    goto LABEL_66;
  }

  v104 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
  v105 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
  if (*(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8) == 1)
  {
    if (v105 > 1)
    {
      if (v105 == 2)
      {
        if (v104 != 2)
        {
          goto LABEL_66;
        }
      }

      else if (v104 != 3)
      {
        goto LABEL_66;
      }
    }

    else if (v105)
    {
      if (v104 != 1)
      {
        goto LABEL_66;
      }
    }

    else if (v104)
    {
      goto LABEL_66;
    }
  }

  else if (v104 != v105)
  {
    goto LABEL_66;
  }

  v106 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict;
  v107 = *(v222 + 48);
  v108 = v226;
  outlined init with copy of PgQuery_Alias?(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict, v226, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  outlined init with copy of PgQuery_Alias?(v215 + v106, v108 + v107, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  v109 = *(v223 + 48);
  if (v109(v108, 1, v225) == 1)
  {
    if (v109(v226 + v107, 1, v225) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v226, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
      goto LABEL_107;
    }

    goto LABEL_98;
  }

  v110 = v226;
  outlined init with copy of PgQuery_Alias?(v226, v224, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  if (v109(v110 + v107, 1, v225) == 1)
  {
    outlined destroy of PgQuery_OidList(v224, type metadata accessor for PgQuery_OnConflictExpr);
LABEL_98:
    v89 = &_s14BiomeSQLParser22PgQuery_OnConflictExprVSg_ADtMd;
    v90 = &_s14BiomeSQLParser22PgQuery_OnConflictExprVSg_ADtMR;
LABEL_99:
    v91 = v226;
    goto LABEL_78;
  }

  v111 = v221;
  outlined init with take of PgQuery_OidList(v226 + v107, v221, type metadata accessor for PgQuery_OnConflictExpr);
  v112 = *(v225 + 20);
  v113 = *(v224 + v112);
  v114 = *(v111 + v112);
  if (v113 != v114)
  {
    v115 = *(v224 + v112);

    v116 = closure #1 in static PgQuery_OnConflictExpr.== infix(_:_:)(v113, v114);

    if ((v116 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v221, type metadata accessor for PgQuery_OnConflictExpr);
      outlined destroy of PgQuery_OidList(v224, type metadata accessor for PgQuery_OnConflictExpr);
      v89 = &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd;
      v90 = &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR;
      goto LABEL_99;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v117 = v224;
  v118 = v221;
  v119 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v118, type metadata accessor for PgQuery_OnConflictExpr);
  outlined destroy of PgQuery_OidList(v117, type metadata accessor for PgQuery_OnConflictExpr);
  _s10Foundation4UUIDVSgWOhTm_0(v226, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  if ((v119 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_107:
  v120 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);
  v121 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v122 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v120, v121);

  if ((v122 & 1) == 0)
  {
    goto LABEL_66;
  }

  v123 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);
  v124 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);

  v125 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v123, v124);

  if ((v125 & 1) == 0)
  {
    goto LABEL_66;
  }

  v126 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets);
  v127 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets);

  v128 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v126, v127);

  if ((v128 & 1) == 0)
  {
    goto LABEL_66;
  }

  v129 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual;
  v130 = v214;
  v131 = *(v213 + 48);
  outlined init with copy of PgQuery_Alias?(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, v214, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v215 + v129, v130 + v131, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v205(v130, 1, v206) == 1)
  {
    if (v205(v214 + v131, 1, v206) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v214, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_121;
    }

    goto LABEL_116;
  }

  v132 = v214;
  outlined init with copy of PgQuery_Alias?(v214, v216, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v205(v132 + v131, 1, v206) == 1)
  {
    outlined destroy of PgQuery_OidList(v216, type metadata accessor for PgQuery_Node);
LABEL_116:
    v89 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v90 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_117:
    v91 = v214;
    goto LABEL_78;
  }

  v133 = v217;
  outlined init with take of PgQuery_OidList(v214 + v131, v217, type metadata accessor for PgQuery_Node);
  v134 = *(v206 + 20);
  v135 = *(v216 + v134);
  v136 = *(v133 + v134);
  if (v135 != v136)
  {
    v137 = *(v216 + v134);

    v138 = closure #1 in static PgQuery_Node.== infix(_:_:)(v135, v136);

    if (!v138)
    {
      outlined destroy of PgQuery_OidList(v217, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v216, type metadata accessor for PgQuery_Node);
      v89 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v90 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_117;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v140 = v216;
  v139 = v217;
  v141 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v139, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v140, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v214, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v141 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_121:
  v142 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);
  v143 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);

  v144 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v142, v143);

  if ((v144 & 1) == 0)
  {
    goto LABEL_66;
  }

  v145 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause);
  v146 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause);

  v147 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v145, v146);

  if ((v147 & 1) == 0)
  {
    goto LABEL_66;
  }

  v148 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);
  v149 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);

  v150 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v148, v149);

  if ((v150 & 1) == 0)
  {
    goto LABEL_66;
  }

  v151 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset;
  v152 = *(v213 + 48);
  v153 = v207;
  outlined init with copy of PgQuery_Alias?(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v207, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v215 + v151, v153 + v152, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v205(v153, 1, v206) == 1)
  {
    if (v205(v207 + v152, 1, v206) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v207, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_134;
    }

LABEL_130:
    v89 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v90 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v155 = &v233;
LABEL_150:
    v91 = *(v155 - 32);
    goto LABEL_78;
  }

  v154 = v207;
  outlined init with copy of PgQuery_Alias?(v207, v218, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v205(v154 + v152, 1, v206) == 1)
  {
    outlined destroy of PgQuery_OidList(v218, type metadata accessor for PgQuery_Node);
    goto LABEL_130;
  }

  v156 = v219;
  outlined init with take of PgQuery_OidList(v207 + v152, v219, type metadata accessor for PgQuery_Node);
  v157 = *(v206 + 20);
  v158 = *(v218 + v157);
  v159 = *(v156 + v157);
  if (v158 != v159)
  {
    v160 = *(v218 + v157);

    v161 = closure #1 in static PgQuery_Node.== infix(_:_:)(v158, v159);

    if (!v161)
    {
      outlined destroy of PgQuery_OidList(v219, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v218, type metadata accessor for PgQuery_Node);
      v89 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v90 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v155 = &v233;
      goto LABEL_150;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v163 = v218;
  v162 = v219;
  v164 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v162, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v163, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v207, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v164 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_134:
  v165 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount;
  v166 = *(v213 + 48);
  v167 = v208;
  outlined init with copy of PgQuery_Alias?(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v208, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v215 + v165, v167 + v166, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v205(v167, 1, v206) == 1)
  {
    if (v205(v208 + v166, 1, v206) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v208, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_144;
    }

    goto LABEL_139;
  }

  v168 = v208;
  outlined init with copy of PgQuery_Alias?(v208, v220, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v205(v168 + v166, 1, v206) == 1)
  {
    outlined destroy of PgQuery_OidList(v220, type metadata accessor for PgQuery_Node);
LABEL_139:
    v89 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v90 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_140:
    v155 = &v234;
    goto LABEL_150;
  }

  v169 = v209;
  outlined init with take of PgQuery_OidList(v208 + v166, v209, type metadata accessor for PgQuery_Node);
  v170 = *(v206 + 20);
  v171 = *(v220 + v170);
  v172 = *(v169 + v170);
  if (v171 != v172)
  {
    v173 = *(v220 + v170);

    v174 = closure #1 in static PgQuery_Node.== infix(_:_:)(v171, v172);

    if (!v174)
    {
      outlined destroy of PgQuery_OidList(v209, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v220, type metadata accessor for PgQuery_Node);
      v89 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v90 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_140;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v175 = v220;
  v176 = v209;
  v177 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v176, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v175, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v208, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v177 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_144:
  v178 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  v179 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  if (*(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8) == 1)
  {
    if (v179 > 1)
    {
      if (v179 == 2)
      {
        if (v178 != 2)
        {
          goto LABEL_66;
        }
      }

      else if (v178 != 3)
      {
        goto LABEL_66;
      }
    }

    else if (v179)
    {
      if (v178 != 1)
      {
        goto LABEL_66;
      }
    }

    else if (v178)
    {
      goto LABEL_66;
    }
  }

  else if (v178 != v179)
  {
    goto LABEL_66;
  }

  v180 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks);
  v181 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks);

  v182 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v180, v181);

  if ((v182 & 1) == 0)
  {
    goto LABEL_66;
  }

  v183 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations;
  v184 = *(v213 + 48);
  v185 = v210;
  outlined init with copy of PgQuery_Alias?(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, v210, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v215 + v183, v185 + v184, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v205(v185, 1, v206) != 1)
  {
    v186 = v210;
    outlined init with copy of PgQuery_Alias?(v210, v211, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v205(v186 + v184, 1, v206) == 1)
    {
      outlined destroy of PgQuery_OidList(v211, type metadata accessor for PgQuery_Node);
      goto LABEL_166;
    }

    v187 = v212;
    outlined init with take of PgQuery_OidList(v210 + v184, v212, type metadata accessor for PgQuery_Node);
    v188 = *(v206 + 20);
    v189 = *&v211[v188];
    v190 = *(v187 + v188);
    if (v189 != v190)
    {
      v191 = *&v211[v188];

      v192 = closure #1 in static PgQuery_Node.== infix(_:_:)(v189, v190);

      if (!v192)
      {
        outlined destroy of PgQuery_OidList(v212, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v211, type metadata accessor for PgQuery_Node);
        v89 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v90 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v155 = &v235;
        goto LABEL_150;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v193 = v211;
    v194 = v212;
    v195 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v194, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v193, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v210, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v195)
    {
      goto LABEL_170;
    }

LABEL_66:

    return 0;
  }

  if (v205(v210 + v184, 1, v206) != 1)
  {
LABEL_166:
    v89 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v90 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v155 = &v235;
    goto LABEL_150;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v210, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_170:
  v196 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps);
  v197 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps);

  v198 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v196, v197);

  if ((v198 & 1) == 0)
  {
    goto LABEL_66;
  }

  v199 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions);
  v200 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions);

  v201 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v199, v200);

  if ((v201 & 1) == 0 || *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) != *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation))
  {
    goto LABEL_66;
  }

  v202 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);

  v203 = *(v215 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);

  return v202 == v203;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_Query(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_Query(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_Query()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query);

  return Message.hash(into:)();
}

uint64_t PgQuery_InsertStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void type metadata completion function for PgQuery_InsertStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_OnConflictClause?, type metadata accessor for PgQuery_OnConflictClause, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WithClause?, type metadata accessor for PgQuery_WithClause, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t closure #1 in PgQuery_InsertStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            type metadata accessor for PgQuery_RangeVar(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 2:
            goto LABEL_21;
          case 3:
            v3 = v0;
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            goto LABEL_5;
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result == 4)
          {
            v3 = v0;
            type metadata accessor for PgQuery_OnConflictClause(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause);
            goto LABEL_5;
          }

LABEL_21:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 6)
        {
          v3 = v0;
          type metadata accessor for PgQuery_WithClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause);
          goto LABEL_5;
        }

        if (result == 7)
        {
          lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_InsertStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a3;
  v63 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v47 - v7;
  v8 = type metadata accessor for PgQuery_WithClause(0);
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v57 = &v47 - v13;
  v56 = type metadata accessor for PgQuery_OnConflictClause(0);
  v53 = *(v56 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v55 = &v47 - v18;
  Node = type metadata accessor for PgQuery_Node(0);
  v54 = *(Node - 8);
  v19 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v51 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v47 - v23;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v26 = *(RangeVar - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v26 + 48))(v24, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v31 = v59;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v24, v29, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v32 = v59;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v31 = v32;
    result = outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_RangeVar);
    if (v32)
    {
      return result;
    }
  }

  v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols);
  v36 = v57;
  v35 = Node;
  if (!*(v34 + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v31))
  {
    v37 = v55;
    outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt, v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v38 = (*(v54 + 48))(v37, 1, v35);
    v39 = v56;
    if (v38 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v40 = v37;
      v41 = v51;
      outlined init with take of PgQuery_OidList(v40, v51, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
      if (v31)
      {
        return result;
      }
    }

    outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause, v36, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
    if ((*(v53 + 48))(v36, 1, v39) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
    }

    else
    {
      v42 = v36;
      v43 = v50;
      outlined init with take of PgQuery_OidList(v42, v50, type metadata accessor for PgQuery_OnConflictClause);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_OnConflictClause);
      if (v31)
      {
        return result;
      }
    }

    if (!*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v31))
    {
      v44 = v52;
      outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v52, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      if ((*(v48 + 48))(v44, 1, v49) == 1)
      {
        result = _s10Foundation4UUIDVSgWOhTm_0(v52, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      }

      else
      {
        v45 = v47;
        outlined init with take of PgQuery_OidList(v52, v47, type metadata accessor for PgQuery_WithClause);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_WithClause);
        if (v31)
        {
          return result;
        }
      }

      if (*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override))
      {
        v46 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8);
        v61 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
        v62 = v46;
        lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind();
        return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_InsertStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v119 = a2;
  v3 = type metadata accessor for PgQuery_WithClause(0);
  v104 = *(v3 - 8);
  v105 = v3;
  v4 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v101 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v102 = &v101 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR);
  v9 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v101 - v10;
  v11 = type metadata accessor for PgQuery_OnConflictClause(0);
  v111 = *(v11 - 8);
  v112 = v11;
  v12 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v109 = &v101 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_OnConflictClauseVSg_ADtMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSg_ADtMR);
  v17 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v113 = &v101 - v18;
  Node = type metadata accessor for PgQuery_Node(0);
  v116 = *(Node - 8);
  v117 = Node;
  v20 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v108 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v114 = &v101 - v24;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v25 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v101 - v26;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v28 = *(RangeVar - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v31 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v101 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v40 = &v101 - v39;
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v42 = *(v38 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v101 - v39, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v43 = v119 + v41;
  v44 = v119;
  outlined init with copy of PgQuery_Alias?(v43, &v40[v42], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v45 = *(v28 + 48);
  if (v45(v40, 1, RangeVar) == 1)
  {
    v46 = v45(&v40[v42], 1, RangeVar);

    if (v46 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    v47 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v48 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_7:
    v49 = v40;
LABEL_8:
    _s10Foundation4UUIDVSgWOhTm_0(v49, v47, v48);
LABEL_48:

    return 0;
  }

  outlined init with copy of PgQuery_Alias?(v40, v35, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v45(&v40[v42], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v40[v42], v31, type metadata accessor for PgQuery_RangeVar);

  v50 = specialized static PgQuery_RangeVar.== infix(_:_:)(v35, v31);
  outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v50 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_10:
  v51 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols);
  v52 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v51, v52);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_48;
  }

  v54 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt;
  v55 = *(v115 + 48);
  v40 = v118;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt, v118, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v44 + v54, &v40[v55], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v56 = v117;
  v57 = *(v116 + 48);
  if (v57(v40, 1, v117) == 1)
  {
    if (v57(&v40[v55], 1, v56) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v58 = v114;
  outlined init with copy of PgQuery_Alias?(v40, v114, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v57(&v40[v55], 1, v56) == 1)
  {
    outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
LABEL_16:
    v47 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v48 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v59 = &v40[v55];
  v60 = v108;
  outlined init with take of PgQuery_OidList(v59, v108, type metadata accessor for PgQuery_Node);
  v61 = *(v56 + 20);
  v62 = *(v58 + v61);
  v63 = *(v60 + v61);
  if (v62 != v63)
  {
    v64 = *(v58 + v61);

    v65 = closure #1 in static PgQuery_Node.== infix(_:_:)(v62, v63);

    if (!v65)
    {
      outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
      v47 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v48 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v66 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_20:
  v67 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause;
  v68 = *(v110 + 48);
  v69 = v113;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause, v113, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  v70 = v44 + v67;
  v71 = v69;
  outlined init with copy of PgQuery_Alias?(v70, v69 + v68, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  v72 = *(v111 + 48);
  v73 = v69;
  v74 = v112;
  if (v72(v73, 1, v112) == 1)
  {
    if (v72(v71 + v68, 1, v74) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v71, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
      goto LABEL_30;
    }

LABEL_25:
    v47 = &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSg_ADtMd;
    v48 = &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSg_ADtMR;
LABEL_26:
    v49 = v71;
    goto LABEL_8;
  }

  v75 = v109;
  outlined init with copy of PgQuery_Alias?(v71, v109, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  if (v72(v71 + v68, 1, v74) == 1)
  {
    outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_OnConflictClause);
    goto LABEL_25;
  }

  v76 = v74;
  v77 = v107;
  outlined init with take of PgQuery_OidList(v71 + v68, v107, type metadata accessor for PgQuery_OnConflictClause);
  v78 = *(v76 + 20);
  v79 = *(v75 + v78);
  v80 = *(v77 + v78);
  if (v79 != v80)
  {

    v81 = closure #1 in static PgQuery_OnConflictClause.== infix(_:_:)(v79, v80);

    if (!v81)
    {
      outlined destroy of PgQuery_OidList(v77, type metadata accessor for PgQuery_OnConflictClause);
      outlined destroy of PgQuery_OidList(v109, type metadata accessor for PgQuery_OnConflictClause);
      v47 = &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd;
      v48 = &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR;
      goto LABEL_26;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v82 = v109;
  v83 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v77, type metadata accessor for PgQuery_OnConflictClause);
  outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_OnConflictClause);
  _s10Foundation4UUIDVSgWOhTm_0(v71, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  if ((v83 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_30:
  v84 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);
  v85 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v86 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v84, v85);

  if ((v86 & 1) == 0)
  {
    goto LABEL_48;
  }

  v87 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v88 = *(v103 + 48);
  v89 = v106;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v106, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v90 = v44 + v87;
  v71 = v89;
  outlined init with copy of PgQuery_Alias?(v90, v89 + v88, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v91 = v105;
  v92 = *(v104 + 48);
  if (v92(v89, 1, v105) == 1)
  {
    if (v92(v89 + v88, 1, v91) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v89, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  v96 = v102;
  outlined init with copy of PgQuery_Alias?(v71, v102, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if (v92(v71 + v88, 1, v91) == 1)
  {
    outlined destroy of PgQuery_OidList(v96, type metadata accessor for PgQuery_WithClause);
LABEL_42:
    v47 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd;
    v48 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR;
    goto LABEL_26;
  }

  v97 = v71 + v88;
  v98 = v101;
  outlined init with take of PgQuery_OidList(v97, v101, type metadata accessor for PgQuery_WithClause);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v96, *v98) & 1) == 0 || *(v96 + 8) != *(v98 + 8) || *(v96 + 12) != *(v98 + 12))
  {
    outlined destroy of PgQuery_OidList(v98, type metadata accessor for PgQuery_WithClause);
    outlined destroy of PgQuery_OidList(v96, type metadata accessor for PgQuery_WithClause);
    v47 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd;
    v48 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR;
    goto LABEL_26;
  }

  v99 = *(v91 + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  LOBYTE(v99) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v98, type metadata accessor for PgQuery_WithClause);
  outlined destroy of PgQuery_OidList(v96, type metadata accessor for PgQuery_WithClause);
  _s10Foundation4UUIDVSgWOhTm_0(v71, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if ((v99 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_34:
  v93 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);

  v94 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
  v95 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8);

  if (v95 == 1)
  {
    if (v94 > 1)
    {
      if (v94 == 2)
      {
        if (v93 == 2)
        {
          return 1;
        }
      }

      else if (v93 == 3)
      {
        return 1;
      }
    }

    else if (v94)
    {
      if (v93 == 1)
      {
        return 1;
      }
    }

    else if (!v93)
    {
      return 1;
    }

    return 0;
  }

  return v93 == v94;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_InsertStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_InsertStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_InsertStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DeleteStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v7, 1, 1, RangeVar);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause;
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v11, 1, 1, Node);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v10;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v15 = type metadata accessor for PgQuery_WithClause(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v16 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(v1 + v13);
  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v6, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);

  outlined assign with take of PgQuery_Node?(v6, v1 + v14, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  return v1;
}

uint64_t PgQuery_DeleteStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void type metadata completion function for PgQuery_DeleteStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WithClause?, type metadata accessor for PgQuery_WithClause, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t closure #1 in PgQuery_DeleteStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v3 = v0;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
          goto LABEL_15;
        }

        if (result == 2)
        {
LABEL_13:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_15:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 4:
            goto LABEL_13;
          case 5:
            type metadata accessor for PgQuery_WithClause(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_DeleteStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v35 - v7;
  v8 = type metadata accessor for PgQuery_WithClause(0);
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v41 = &v35 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v40 = *(Node - 8);
  v14 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v38 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v35 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v21 = *(RangeVar - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v21 + 48))(v19, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v25 = v43;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v19, v24, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v26 = v43;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v25 = v26;
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
    if (v26)
    {
      return result;
    }
  }

  v28 = Node;
  if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
  {
    v29 = v41;
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v40 + 48))(v29, 1, v28) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v30 = v29;
      v31 = v38;
      outlined init with take of PgQuery_OidList(v30, v38, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_Node);
      if (v25)
      {
        return result;
      }
    }

    v32 = v39;
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v32, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      if ((*(v36 + 48))(v32, 1, v37) == 1)
      {
        return _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      }

      else
      {
        v33 = v32;
        v34 = v35;
        outlined init with take of PgQuery_OidList(v33, v35, type metadata accessor for PgQuery_WithClause);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_WithClause);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_DeleteStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v3 = type metadata accessor for PgQuery_WithClause(0);
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = &v77 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR);
  v9 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v77 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v87 = *(Node - 8);
  v88 = Node;
  v12 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v84 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = &v77 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v77 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v20 = *(RangeVar - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v77 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v77 - v31;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v34 = *(v30 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v77 - v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v35 = v90 + v33;
  v36 = v90;
  outlined init with copy of PgQuery_Alias?(v35, &v32[v34], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v37 = *(v20 + 48);
  if (v37(v32, 1, RangeVar) == 1)
  {
    v38 = v37(&v32[v34], 1, RangeVar);

    if (v38 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v39 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v40 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v41 = v32;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v41, v39, v40);
LABEL_25:

    return 0;
  }

  outlined init with copy of PgQuery_Alias?(v32, v27, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v37(&v32[v34], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v32[v34], v23, type metadata accessor for PgQuery_RangeVar);

  v42 = specialized static PgQuery_RangeVar.== infix(_:_:)(v27, v23);
  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v43 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);
  v44 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v43, v44);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_25;
  }

  v46 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v47 = *(v86 + 48);
  v48 = v89;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v36 + v46, v48 + v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v49 = v88;
  v50 = *(v87 + 48);
  if (v50(v48, 1, v88) == 1)
  {
    if (v50(v48 + v47, 1, v49) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v51 = v85;
  outlined init with copy of PgQuery_Alias?(v48, v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v50(v48 + v47, 1, v49) == 1)
  {
    outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
LABEL_15:
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    v41 = v48;
    goto LABEL_7;
  }

  v52 = v48 + v47;
  v53 = v84;
  outlined init with take of PgQuery_OidList(v52, v84, type metadata accessor for PgQuery_Node);
  v54 = *(v49 + 20);
  v55 = *(v51 + v54);
  v56 = *(v53 + v54);
  if (v55 != v56)
  {
    v57 = *(v51 + v54);

    v58 = closure #1 in static PgQuery_Node.== infix(_:_:)(v55, v56);

    if (!v58)
    {
      outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
      v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v59 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  v60 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);
  v61 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v62 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v60, v61);

  if ((v62 & 1) == 0)
  {
    goto LABEL_25;
  }

  v63 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v64 = *(v80 + 48);
  v65 = v83;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v83, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v66 = v36 + v63;
  v67 = v65;
  outlined init with copy of PgQuery_Alias?(v66, v65 + v64, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v68 = v82;
  v69 = *(v81 + 48);
  if (v69(v65, 1, v82) == 1)
  {

    if (v69(v65 + v64, 1, v68) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v65, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      return 1;
    }

    goto LABEL_30;
  }

  v71 = v79;
  outlined init with copy of PgQuery_Alias?(v67, v79, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if (v69(v67 + v64, 1, v68) == 1)
  {

    outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_WithClause);
LABEL_30:
    v72 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd;
    v73 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR;
LABEL_38:
    _s10Foundation4UUIDVSgWOhTm_0(v67, v72, v73);
    return 0;
  }

  v74 = v67 + v64;
  v75 = v78;
  outlined init with take of PgQuery_OidList(v74, v78, type metadata accessor for PgQuery_WithClause);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v71, *v75) & 1) == 0 || *(v71 + 8) != *(v75 + 8) || *(v71 + 12) != *(v75 + 12))
  {

    outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_WithClause);
    outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_WithClause);
    v72 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd;
    v73 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR;
    goto LABEL_38;
  }

  v76 = *(v68 + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  LOBYTE(v76) = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_WithClause);
  outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_WithClause);
  _s10Foundation4UUIDVSgWOhTm_0(v67, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  return (v76 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DeleteStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DeleteStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DeleteStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_UpdateStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - v5;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v7, 1, 1, RangeVar);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList;
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v11, 1, 1, Node);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) = v10;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v10;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v16 = type metadata accessor for PgQuery_WithClause(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v17 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v1 + v13);
  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  v19 = *(v1 + v14);
  *(v1 + v14) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v6, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);

  outlined assign with take of PgQuery_Node?(v6, v1 + v15, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  return v1;
}

uint64_t PgQuery_UpdateStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

void type metadata completion function for PgQuery_UpdateStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WithClause?, type metadata accessor for PgQuery_WithClause, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t closure #1 in PgQuery_UpdateStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 6)
        {
          type metadata accessor for PgQuery_WithClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause);
LABEL_18:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            type metadata accessor for PgQuery_RangeVar(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
            goto LABEL_17;
          case 2:
            goto LABEL_4;
          case 3:
            v3 = v0;
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_17:
            v0 = v3;
            goto LABEL_18;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_UpdateStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v35 - v7;
  v8 = type metadata accessor for PgQuery_WithClause(0);
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v41 = &v35 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v40 = *(Node - 8);
  v14 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v38 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v35 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v21 = *(RangeVar - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v21 + 48))(v19, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v25 = v43;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v19, v24, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v26 = v43;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v25 = v26;
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
    if (v26)
    {
      return result;
    }
  }

  v28 = Node;
  if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
  {
    v29 = v41;
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v40 + 48))(v29, 1, v28) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v30 = v29;
      v31 = v38;
      outlined init with take of PgQuery_OidList(v30, v38, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_Node);
      if (v25)
      {
        return result;
      }
    }

    v32 = v39;
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
    {
      if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
      {
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v32, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
        if ((*(v36 + 48))(v32, 1, v37) == 1)
        {
          return _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
        }

        else
        {
          v33 = v32;
          v34 = v35;
          outlined init with take of PgQuery_OidList(v33, v35, type metadata accessor for PgQuery_WithClause);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          return outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_WithClause);
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_UpdateStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v3 = type metadata accessor for PgQuery_WithClause(0);
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v79 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR);
  v9 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v79 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v89 = *(Node - 8);
  v90 = Node;
  v12 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v86 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v87 = &v79 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v79 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v20 = *(RangeVar - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v79 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v79 - v31;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v34 = *(v30 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v79 - v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v35 = v92 + v33;
  v36 = v92;
  outlined init with copy of PgQuery_Alias?(v35, &v32[v34], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v37 = *(v20 + 48);
  if (v37(v32, 1, RangeVar) == 1)
  {
    v38 = v37(&v32[v34], 1, RangeVar);

    v39 = a1;
    if (v38 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v40 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v41 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v32, v27, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v37(&v32[v34], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v32[v34], v23, type metadata accessor for PgQuery_RangeVar);
  v39 = a1;

  v42 = specialized static PgQuery_RangeVar.== infix(_:_:)(v27, v23);
  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v43 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);
  v44 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v43, v44);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_25;
  }

  v46 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v47 = *(v88 + 48);
  v32 = v91;
  outlined init with copy of PgQuery_Alias?(v39 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v91, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v36 + v46, &v32[v47], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v48 = v90;
  v49 = *(v89 + 48);
  if (v49(v32, 1, v90) != 1)
  {
    v50 = v87;
    outlined init with copy of PgQuery_Alias?(v32, v87, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v49(&v32[v47], 1, v48) == 1)
    {
      outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v51 = &v32[v47];
    v52 = v86;
    outlined init with take of PgQuery_OidList(v51, v86, type metadata accessor for PgQuery_Node);
    v53 = *(v48 + 20);
    v54 = *(v50 + v53);
    v55 = *(v52 + v53);
    if (v54 == v55 || (v56 = *(v50 + v53), , , v57 = closure #1 in static PgQuery_Node.== infix(_:_:)(v54, v55), , , v57))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v58)
      {
        goto LABEL_19;
      }

LABEL_25:

      return 0;
    }

    outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v32, v40, v41);
    goto LABEL_25;
  }

  if (v49(&v32[v47], 1, v48) != 1)
  {
LABEL_15:
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_19:
  v59 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);
  v60 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  v61 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v59, v60);

  if ((v61 & 1) == 0)
  {
    goto LABEL_25;
  }

  v62 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);
  v63 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v64 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v62, v63);

  if ((v64 & 1) == 0)
  {
    goto LABEL_25;
  }

  v65 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v66 = *(v82 + 48);
  v67 = v85;
  outlined init with copy of PgQuery_Alias?(v39 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v85, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v68 = v36 + v65;
  v69 = v67;
  outlined init with copy of PgQuery_Alias?(v68, v67 + v66, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v70 = v84;
  v71 = *(v83 + 48);
  if (v71(v67, 1, v84) == 1)
  {

    if (v71(v67 + v66, 1, v70) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v67, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      return 1;
    }

    goto LABEL_31;
  }

  v73 = v81;
  outlined init with copy of PgQuery_Alias?(v69, v81, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if (v71(v69 + v66, 1, v70) == 1)
  {

    outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_WithClause);
LABEL_31:
    v74 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd;
    v75 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR;
LABEL_38:
    _s10Foundation4UUIDVSgWOhTm_0(v69, v74, v75);
    return 0;
  }

  v76 = v69 + v66;
  v77 = v80;
  outlined init with take of PgQuery_OidList(v76, v80, type metadata accessor for PgQuery_WithClause);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v73, *v77) & 1) == 0 || *(v73 + 8) != *(v77 + 8) || *(v73 + 12) != *(v77 + 12))
  {

    outlined destroy of PgQuery_OidList(v77, type metadata accessor for PgQuery_WithClause);
    outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_WithClause);
    v74 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd;
    v75 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR;
    goto LABEL_38;
  }

  v78 = *(v70 + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  LOBYTE(v78) = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v77, type metadata accessor for PgQuery_WithClause);
  outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_WithClause);
  _s10Foundation4UUIDVSgWOhTm_0(v69, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  return (v78 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_UpdateStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_UpdateStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_UpdateStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_SelectStmt._StorageClass.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  (*(*(IntoClause - 8) + 56))(v0 + v2, 1, 1, IntoClause);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = v1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) = v1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v0 + v4, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) = v1;
  v6(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) = v1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) = v1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) = v1;
  v6(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, 1, 1, Node);
  v6(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, 1, 1, Node);
  v7 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause) = v1;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v9 = type metadata accessor for PgQuery_WithClause(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v13 = *(*(SelectStmt - 8) + 56);
  v13(v0 + v11, 1, 1, SelectStmt);
  v13(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, 1, 1, SelectStmt);
  return v0;
}

uint64_t PgQuery_SelectStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v33 - v5;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;
  v34 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  (*(*(IntoClause - 8) + 56))(v1 + v7, 1, 1, IntoClause);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = v6;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) = v6;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(*(Node - 8) + 56);
  v12(v1 + v10, 1, 1, Node);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) = v6;
  v38 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause;
  v12(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, 1, 1, Node);
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) = v6;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) = v6;
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) = v6;
  v47 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset;
  v12(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, 1, 1, Node);
  v45 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount;
  v12(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, 1, 1, Node);
  v14 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption;
  *v14 = 0;
  *(v14 + 8) = 1;
  v44 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause) = v6;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v16 = type metadata accessor for PgQuery_WithClause(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v17 = 0;
  *(v17 + 8) = 1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all) = 0;
  v18 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  v40 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v20 = *(*(SelectStmt - 8) + 56);
  v20(v1 + v18, 1, 1, SelectStmt);
  v42 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v20(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, 1, 1, SelectStmt);
  *(v1 + 16) = *(a1 + 16);
  v21 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;

  outlined assign with copy of PgQuery_Node?(a1 + v21, v1 + v34, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v22 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  v23 = *(v1 + v35);
  *(v1 + v35) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v24 = *(v1 + v13);
  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, v1 + v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v1 + v37);
  *(v1 + v37) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);

  v26 = *(v1 + v39);
  *(v1 + v39) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);

  v27 = *(v1 + v41);
  *(v1 + v41) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v1 + v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v1 + v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8);
  *v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  *(v14 + 8) = v28;
  v29 = *(v1 + v44);
  *(v1 + v44) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v1 + v46, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v30 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8);
  *v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  *(v17 + 8) = v30;
  *(v1 + v43) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v1 + v40, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v31 = v48;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v48, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);

  outlined assign with take of PgQuery_Node?(v31, v1 + v42, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  return v1;
}

uint64_t PgQuery_SelectStmt._StorageClass.deinit()
{
  v1 = *(v0 + 16);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);

  v6 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);

  v7 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  return v0;
}

void type metadata completion function for PgQuery_SelectStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_IntoClause?, type metadata accessor for PgQuery_IntoClause, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WithClause?, type metadata accessor for PgQuery_WithClause, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_SelectStmt?, type metadata accessor for PgQuery_SelectStmt, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t closure #1 in PgQuery_SelectStmt.decodeMessage<A>(decoder:)()
{
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v3 & 1) == 0)
    {
      v4 = v1;
      switch(result)
      {
        case 1:
        case 3:
        case 4:
        case 6:
        case 8:
        case 9:
        case 10:
        case 14:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_15;
        case 2:
          v5 = v0;
          type metadata accessor for PgQuery_IntoClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause);
          goto LABEL_13;
        case 5:
        case 7:
        case 11:
        case 12:
          v5 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          goto LABEL_13;
        case 13:
          v6 = v0;
          lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption();
          goto LABEL_9;
        case 15:
          v5 = v0;
          type metadata accessor for PgQuery_WithClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause);
          goto LABEL_13;
        case 16:
          v6 = v0;
          lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation();
LABEL_9:
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_15;
        case 17:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_15;
        case 18:
        case 19:
          v5 = v0;
          type metadata accessor for PgQuery_SelectStmt(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt);
LABEL_13:
          v0 = v5;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_15:
          v1 = v4;
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_SelectStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a4;
  v93 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v73 - v10;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v78 = *(SelectStmt - 8);
  v11 = *(v78 + 64);
  v12 = MEMORY[0x1EEE9AC00](SelectStmt);
  v73 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v80 = &v73 - v17;
  v81 = type metadata accessor for PgQuery_WithClause(0);
  v79 = *(v81 - 8);
  v18 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v84 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v86 = &v73 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v89 = &v73 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v91 = &v73 - v28;
  Node = type metadata accessor for PgQuery_Node(0);
  v92 = *(Node - 8);
  v30 = *(v92 + 64);
  v31 = MEMORY[0x1EEE9AC00](Node);
  v82 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v83 = &v73 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v88 = &v73 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v90 = &v73 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v73 - v40;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v43 = *(IntoClause - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](IntoClause);
  v46 = &v73 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(a1 + 16) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
    }

    v87 = Node;
  }

  else
  {
    v87 = Node;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause, v41, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if ((*(v43 + 48))(v41, 1, IntoClause) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v41, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    v48 = v4;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v41, v46, type metadata accessor for PgQuery_IntoClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v48 = v4;
    if (v4)
    {
      return outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_IntoClause);
    }

    outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_IntoClause);
  }

  v49 = a1;
  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v50 = v87;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v48)
    {
    }
  }

  else
  {
    v50 = v87;
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v48)
    {
    }
  }

  v51 = v91;
  outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v91, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v52 = *(v92 + 48);
  if (v52(v51, 1, v50) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v51, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v53 = v51;
    v54 = v90;
    outlined init with take of PgQuery_OidList(v53, v90, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v48)
    {
      goto LABEL_28;
    }

    outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
  }

  if (*(*(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v48)
    {
    }
  }

  v55 = v89;
  outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v52(v55, 1, v50) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v56 = v55;
    v54 = v88;
    outlined init with take of PgQuery_OidList(v56, v88, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v48)
    {
      goto LABEL_28;
    }

    outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
  }

  if (*(*(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v48)
    {
    }
  }

  if (!*(*(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) + 16))
  {
    goto LABEL_37;
  }

  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (v48)
  {
  }

LABEL_37:
  if (*(*(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v48)
    {
    }
  }

  v58 = v86;
  outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v86, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v52(v58, 1, v50) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v58, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v59 = v58;
    v54 = v83;
    outlined init with take of PgQuery_OidList(v59, v83, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v48)
    {
      goto LABEL_28;
    }

    outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
  }

  v60 = v84;
  outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v52(v60, 1, v50) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v61 = SelectStmt;
    goto LABEL_50;
  }

  v62 = v60;
  v54 = v82;
  outlined init with take of PgQuery_OidList(v62, v82, type metadata accessor for PgQuery_Node);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  v61 = SelectStmt;
  if (v48)
  {
LABEL_28:
    v57 = type metadata accessor for PgQuery_Node;
    return outlined destroy of PgQuery_OidList(v54, v57);
  }

  outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
LABEL_50:
  if (!*(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption) || (v63 = *(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8), v94 = *(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption), v95 = v63, lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v48))
  {
    if (!*(*(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v48))
    {
      v64 = v80;
      outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v80, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      if ((*(v79 + 48))(v64, 1, v81) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v64, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      }

      else
      {
        v65 = v64;
        v66 = v77;
        outlined init with take of PgQuery_OidList(v65, v77, type metadata accessor for PgQuery_WithClause);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_WithClause);
        if (v48)
        {
          return result;
        }
      }

      if (!*(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op) || (v67 = *(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), v94 = *(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), v95 = v67, lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v48))
      {
        if (*(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v48))
        {
          v68 = v76;
          outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v76, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
          v69 = *(v78 + 48);
          v78 += 48;
          if (v69(v68, 1, v61) == 1)
          {
            _s10Foundation4UUIDVSgWOhTm_0(v68, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
LABEL_64:
            v72 = v75;
            outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v75, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
            if (v69(v72, 1, v61) == 1)
            {
              return _s10Foundation4UUIDVSgWOhTm_0(v72, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
            }

            v54 = v73;
            outlined init with take of PgQuery_OidList(v72, v73, type metadata accessor for PgQuery_SelectStmt);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt);
            dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
            v57 = type metadata accessor for PgQuery_SelectStmt;
            return outlined destroy of PgQuery_OidList(v54, v57);
          }

          v70 = v68;
          v71 = v74;
          outlined init with take of PgQuery_OidList(v70, v74, type metadata accessor for PgQuery_SelectStmt);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_SelectStmt);
          if (!v48)
          {
            goto LABEL_64;
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_SelectStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v201 = *(SelectStmt - 8);
  v4 = *(v201 + 64);
  v5 = MEMORY[0x1EEE9AC00](SelectStmt);
  v198 = &v197 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v200 = &v197 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v199 = &v197 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v203 = &v197 - v12;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMR);
  v13 = *(*(v204 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v204);
  v202 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v206 = &v197 - v16;
  v211 = type metadata accessor for PgQuery_WithClause(0);
  v209 = *(v211 - 8);
  v17 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v207 = &v197 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v210 = &v197 - v21;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR);
  v22 = *(*(v208 - 8) + 64);
  MEMORY[0x1EEE9AC00](v208);
  v212 = &v197 - v23;
  Node = type metadata accessor for PgQuery_Node(0);
  v225 = *(Node - 8);
  v226 = Node;
  v25 = *(v225 + 64);
  v26 = MEMORY[0x1EEE9AC00](Node);
  v213 = &v197 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v214 = &v197 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v220 = &v197 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v223 = &v197 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v215 = &v197 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v218 = &v197 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v221 = &v197 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v224 = &v197 - v41;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v42 = *(*(v227 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v227);
  v217 = &v197 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v219 = &v197 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v222 = &v197 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v228 = &v197 - v49;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v51 = *(IntoClause - 8);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](IntoClause);
  v229 = &v197 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v57 = &v197 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMR);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v197 - v60;
  v62 = *(a1 + 16);
  v63 = *(a2 + 16);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v62, v63);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_51;
  }

  v65 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;
  v66 = *(v58 + 48);
  v216 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause, v61, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v65, &v61[v66], &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v67 = *(v51 + 48);
  v68 = a2;
  if (v67(v61, 1, IntoClause) == 1)
  {
    v69 = v67(&v61[v66], 1, IntoClause);
    v70 = v216;
    if (v69 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v61, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  outlined init with copy of PgQuery_Alias?(v61, v57, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if (v67(&v61[v66], 1, IntoClause) == 1)
  {
    outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_IntoClause);
LABEL_8:
    v71 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMd;
    v72 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMR;
LABEL_9:
    v73 = v61;
LABEL_10:
    _s10Foundation4UUIDVSgWOhTm_0(v73, v71, v72);
LABEL_51:

    return 0;
  }

  v74 = &v61[v66];
  v75 = v229;
  outlined init with take of PgQuery_OidList(v74, v229, type metadata accessor for PgQuery_IntoClause);
  v76 = *(IntoClause + 20);
  v77 = *&v57[v76];
  v78 = *(v75 + v76);
  v70 = v216;
  if (v77 != v78)
  {
    v79 = *&v57[v76];

    v80 = closure #1 in static PgQuery_IntoClause.== infix(_:_:)(v77, v78);

    if ((v80 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_IntoClause);
      outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_IntoClause);
      v71 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd;
      v72 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR;
      goto LABEL_9;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v81 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_IntoClause);
  outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_IntoClause);
  _s10Foundation4UUIDVSgWOhTm_0(v61, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if ((v81 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_14:
  v82 = *(v70 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);
  v83 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  v84 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v82, v83);

  if ((v84 & 1) == 0)
  {
    goto LABEL_51;
  }

  v85 = *(v70 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);
  v86 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  v87 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v85, v86);

  if ((v87 & 1) == 0)
  {
    goto LABEL_51;
  }

  v88 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v89 = v228;
  v90 = *(v227 + 48);
  outlined init with copy of PgQuery_Alias?(v70 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v228, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v88, v89 + v90, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v91 = v226;
  v92 = *(v225 + 48);
  if (v92(v89, 1, v226) == 1)
  {
    if (v92(v89 + v90, 1, v91) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v93 = v224;
  outlined init with copy of PgQuery_Alias?(v89, v224, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v92(v89 + v90, 1, v91) == 1)
  {
    outlined destroy of PgQuery_OidList(v93, type metadata accessor for PgQuery_Node);
LABEL_22:
    v71 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v72 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v73 = v89;
    goto LABEL_10;
  }

  v94 = v89 + v90;
  v95 = v223;
  outlined init with take of PgQuery_OidList(v94, v223, type metadata accessor for PgQuery_Node);
  v96 = *(v91 + 20);
  v97 = *(v93 + v96);
  v98 = *(v95 + v96);
  if (v97 != v98)
  {
    v99 = *(v93 + v96);

    v100 = closure #1 in static PgQuery_Node.== infix(_:_:)(v97, v98);

    if (!v100)
    {
      outlined destroy of PgQuery_OidList(v95, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v224, type metadata accessor for PgQuery_Node);
      v71 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v72 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v73 = v228;
      goto LABEL_10;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v101 = v224;
  v102 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v95, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v101, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v228, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v102 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_26:
  v103 = *(v70 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);
  v104 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);

  v105 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v103, v104);

  if ((v105 & 1) == 0)
  {
    goto LABEL_51;
  }

  v106 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause;
  v107 = *(v227 + 48);
  v108 = v222;
  outlined init with copy of PgQuery_Alias?(v70 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, v222, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v68 + v106, v108 + v107, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v92(v108, 1, v91) == 1)
  {
    if (v92(v108 + v107, 1, v91) != 1)
    {
LABEL_32:
      v71 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v72 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
      v73 = v108;
      goto LABEL_10;
    }

    _s10Foundation4UUIDVSgWOhTm_0(v108, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v109 = v221;
    outlined init with copy of PgQuery_Alias?(v108, v221, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v92(v108 + v107, 1, v91) == 1)
    {
LABEL_31:
      outlined destroy of PgQuery_OidList(v109, type metadata accessor for PgQuery_Node);
      goto LABEL_32;
    }

    v110 = v220;
    outlined init with take of PgQuery_OidList(v108 + v107, v220, type metadata accessor for PgQuery_Node);
    v111 = *(v91 + 20);
    v112 = *(v109 + v111);
    v113 = *(v110 + v111);
    if (v112 != v113)
    {

      v114 = closure #1 in static PgQuery_Node.== infix(_:_:)(v112, v113);

      if (!v114)
      {
        outlined destroy of PgQuery_OidList(v110, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v221, type metadata accessor for PgQuery_Node);
        v71 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v72 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v73 = v222;
        goto LABEL_10;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v115 = v221;
    v116 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v110, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v115, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v222, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v116 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v117 = *(v70 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);
  v118 = *(v68 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);

  v119 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v117, v118);

  if ((v119 & 1) == 0)
  {
    goto LABEL_51;
  }

  v120 = *(v70 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);
  v121 = *(v68 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);

  v122 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v120, v121);

  if ((v122 & 1) == 0)
  {
    goto LABEL_51;
  }

  v123 = *(v70 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);
  v124 = *(v68 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);

  v125 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v123, v124);

  if ((v125 & 1) == 0)
  {
    goto LABEL_51;
  }

  v126 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset;
  v127 = *(v227 + 48);
  v108 = v219;
  outlined init with copy of PgQuery_Alias?(v70 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v219, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v68 + v126, v108 + v127, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v92(v108, 1, v91) == 1)
  {
    if (v92(v108 + v127, 1, v91) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v108, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_48;
    }

    goto LABEL_32;
  }

  v109 = v218;
  outlined init with copy of PgQuery_Alias?(v108, v218, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v92(v108 + v127, 1, v91) == 1)
  {
    goto LABEL_31;
  }

  v128 = v214;
  outlined init with take of PgQuery_OidList(v108 + v127, v214, type metadata accessor for PgQuery_Node);
  v129 = *(v91 + 20);
  v130 = *(v109 + v129);
  v131 = *(v128 + v129);
  if (v130 != v131)
  {

    v132 = closure #1 in static PgQuery_Node.== infix(_:_:)(v130, v131);

    if (!v132)
    {
      outlined destroy of PgQuery_OidList(v128, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v218, type metadata accessor for PgQuery_Node);
      v71 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v72 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v73 = v219;
      goto LABEL_10;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v133 = v218;
  v134 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v128, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v133, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v219, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v134 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v135 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount;
  v136 = *(v227 + 48);
  v137 = v217;
  outlined init with copy of PgQuery_Alias?(v70 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v217, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v138 = v68;
  outlined init with copy of PgQuery_Alias?(v68 + v135, v137 + v136, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v92(v137, 1, v91) == 1)
  {
    if (v92(v137 + v136, 1, v91) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v137, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_61;
    }

    goto LABEL_55;
  }

  outlined init with copy of PgQuery_Alias?(v137, v215, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v92(v137 + v136, 1, v91) == 1)
  {
    outlined destroy of PgQuery_OidList(v215, type metadata accessor for PgQuery_Node);
    v137 = v217;
LABEL_55:
    v140 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v141 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v142 = v137;
LABEL_56:
    _s10Foundation4UUIDVSgWOhTm_0(v142, v140, v141);
    goto LABEL_51;
  }

  v143 = v213;
  outlined init with take of PgQuery_OidList(v217 + v136, v213, type metadata accessor for PgQuery_Node);
  v144 = *(v226 + 20);
  v145 = *(v215 + v144);
  v146 = *(v143 + v144);
  if (v145 != v146)
  {
    v147 = *(v215 + v144);

    v148 = closure #1 in static PgQuery_Node.== infix(_:_:)(v145, v146);

    if (!v148)
    {
      outlined destroy of PgQuery_OidList(v213, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v215, type metadata accessor for PgQuery_Node);
      v140 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v141 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v142 = v217;
      goto LABEL_56;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v149 = v215;
  v150 = v213;
  v151 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v150, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v149, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v217, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v151 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_61:
  v152 = *(v216 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  v153 = *(v68 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  if (*(v68 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8) == 1)
  {
    if (v153 > 1)
    {
      if (v153 == 2)
      {
        if (v152 != 2)
        {
          goto LABEL_51;
        }
      }

      else if (v152 != 3)
      {
        goto LABEL_51;
      }
    }

    else if (v153)
    {
      if (v152 != 1)
      {
        goto LABEL_51;
      }
    }

    else if (v152)
    {
      goto LABEL_51;
    }
  }

  else if (v152 != v153)
  {
    goto LABEL_51;
  }

  v154 = *(v216 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause);
  v155 = *(v68 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause);

  v156 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v154, v155);

  if ((v156 & 1) == 0)
  {
    goto LABEL_51;
  }

  v157 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v158 = *(v208 + 48);
  v159 = v212;
  outlined init with copy of PgQuery_Alias?(v216 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v212, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(v68 + v157, v159 + v158, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v160 = *(v209 + 48);
  if (v160(v159, 1, v211) == 1)
  {
    if (v160(v212 + v158, 1, v211) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v212, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      goto LABEL_72;
    }

    goto LABEL_88;
  }

  v163 = v212;
  outlined init with copy of PgQuery_Alias?(v212, v210, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if (v160(v163 + v158, 1, v211) == 1)
  {
    outlined destroy of PgQuery_OidList(v210, type metadata accessor for PgQuery_WithClause);
LABEL_88:
    v140 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd;
    v141 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR;
    v142 = v212;
    goto LABEL_56;
  }

  v164 = v207;
  outlined init with take of PgQuery_OidList(v212 + v158, v207, type metadata accessor for PgQuery_WithClause);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v210, *v164) & 1) == 0 || *(v210 + 8) != *(v207 + 8) || *(v210 + 12) != *(v207 + 12))
  {
    outlined destroy of PgQuery_OidList(v207, type metadata accessor for PgQuery_WithClause);
    outlined destroy of PgQuery_OidList(v210, type metadata accessor for PgQuery_WithClause);
    v140 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd;
    v141 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR;
    v142 = v212;
    goto LABEL_56;
  }

  v165 = *(v211 + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v166 = v210;
  v167 = v207;
  LOBYTE(v165) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v167, type metadata accessor for PgQuery_WithClause);
  outlined destroy of PgQuery_OidList(v166, type metadata accessor for PgQuery_WithClause);
  _s10Foundation4UUIDVSgWOhTm_0(v212, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if ((v165 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_72:
  v161 = *(v216 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  v162 = *(v68 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  if (*(v68 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8) == 1)
  {
    if (v162 <= 1)
    {
      if (v162)
      {
        if (v161 != 1)
        {
          goto LABEL_51;
        }
      }

      else if (v161)
      {
        goto LABEL_51;
      }
    }

    else if (v162 == 2)
    {
      if (v161 != 2)
      {
        goto LABEL_51;
      }
    }

    else if (v162 == 3)
    {
      if (v161 != 3)
      {
        goto LABEL_51;
      }
    }

    else if (v161 != 4)
    {
      goto LABEL_51;
    }
  }

  else if (v161 != v162)
  {
    goto LABEL_51;
  }

  if (*(v216 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all) != *(v68 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all))
  {
    goto LABEL_51;
  }

  v168 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  v169 = *(v204 + 48);
  v170 = v206;
  outlined init with copy of PgQuery_Alias?(v216 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v206, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  outlined init with copy of PgQuery_Alias?(v68 + v168, v170 + v169, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v171 = *(v201 + 48);
  if (v171(v170, 1, SelectStmt) == 1)
  {
    if (v171(v206 + v169, 1, SelectStmt) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v206, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
      goto LABEL_116;
    }

    goto LABEL_105;
  }

  v172 = v206;
  outlined init with copy of PgQuery_Alias?(v206, v203, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  if (v171(v172 + v169, 1, SelectStmt) == 1)
  {
    outlined destroy of PgQuery_OidList(v203, type metadata accessor for PgQuery_SelectStmt);
LABEL_105:
    v140 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMd;
    v141 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMR;
LABEL_106:
    v142 = v206;
    goto LABEL_56;
  }

  v173 = v200;
  outlined init with take of PgQuery_OidList(v206 + v169, v200, type metadata accessor for PgQuery_SelectStmt);
  v174 = *(SelectStmt + 20);
  v175 = *(v203 + v174);
  v176 = *(v173 + v174);
  if (v175 != v176)
  {
    v177 = *(v203 + v174);

    v178 = closure #1 in static PgQuery_SelectStmt.== infix(_:_:)(v175, v176);

    if ((v178 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v200, type metadata accessor for PgQuery_SelectStmt);
      outlined destroy of PgQuery_OidList(v203, type metadata accessor for PgQuery_SelectStmt);
      v140 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd;
      v141 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR;
      goto LABEL_106;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v179 = v203;
  v180 = v200;
  v181 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v180, type metadata accessor for PgQuery_SelectStmt);
  outlined destroy of PgQuery_OidList(v179, type metadata accessor for PgQuery_SelectStmt);
  _s10Foundation4UUIDVSgWOhTm_0(v206, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  if ((v181 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_116:
  v182 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v183 = *(v204 + 48);
  v184 = v202;
  outlined init with copy of PgQuery_Alias?(v216 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v202, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  outlined init with copy of PgQuery_Alias?(v138 + v182, v184 + v183, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  if (v171(v184, 1, SelectStmt) != 1)
  {
    v185 = v202;
    outlined init with copy of PgQuery_Alias?(v202, v199, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
    if (v171(v185 + v183, 1, SelectStmt) == 1)
    {

      outlined destroy of PgQuery_OidList(v199, type metadata accessor for PgQuery_SelectStmt);
      goto LABEL_121;
    }

    v188 = v198;
    outlined init with take of PgQuery_OidList(v202 + v183, v198, type metadata accessor for PgQuery_SelectStmt);
    v189 = *(SelectStmt + 20);
    v190 = *(v199 + v189);
    v191 = *(v188 + v189);
    if (v190 != v191)
    {
      v192 = *(v199 + v189);

      v193 = closure #1 in static PgQuery_SelectStmt.== infix(_:_:)(v190, v191);

      if ((v193 & 1) == 0)
      {

        outlined destroy of PgQuery_OidList(v198, type metadata accessor for PgQuery_SelectStmt);
        outlined destroy of PgQuery_OidList(v199, type metadata accessor for PgQuery_SelectStmt);
        v186 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd;
        v187 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR;
        goto LABEL_122;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v194 = v199;
    v195 = v198;
    v196 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v195, type metadata accessor for PgQuery_SelectStmt);
    outlined destroy of PgQuery_OidList(v194, type metadata accessor for PgQuery_SelectStmt);
    _s10Foundation4UUIDVSgWOhTm_0(v202, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
    return (v196 & 1) != 0;
  }

  if (v171(v202 + v183, 1, SelectStmt) != 1)
  {
LABEL_121:
    v186 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMd;
    v187 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMR;
LABEL_122:
    _s10Foundation4UUIDVSgWOhTm_0(v202, v186, v187);
    return 0;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v202, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SelectStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SelectStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SelectStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterTableStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1)
      {
        v3 = *(type metadata accessor for PgQuery_AlterTableStmt(0) + 32);
        type metadata accessor for PgQuery_RangeVar(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterTableStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v22 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v10 = *(RangeVar - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterTableStmt = type metadata accessor for PgQuery_AlterTableStmt(0);
  v21 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterTableStmt + 32), v8, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v10 + 48))(v8, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RangeVar);
    if (v4)
    {
      return result;
    }
  }

  v15 = v21;
  if (!*(*v21 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    if (!destructiveProjectEnumData for StorableValue(v16, v17) || (v23 = v16, v24 = v17, lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      if (*(v15 + 17) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
      {
        v18 = v15 + *(AlterTableStmt + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterTableStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = a2 + *(a1 + 28);
  UnknownStorage.init()();
  v5 = *(a1 + 32);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v7 = *(*(RangeVar - 8) + 56);

  return v7(a2 + v5, 1, 1, RangeVar);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance PgQuery_AlterTableStmt(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for StorableValue;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTableStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableStmt and conformance PgQuery_AlterTableStmt, type metadata accessor for PgQuery_AlterTableStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTableStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableStmt and conformance PgQuery_AlterTableStmt, type metadata accessor for PgQuery_AlterTableStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTableStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableStmt and conformance PgQuery_AlterTableStmt, type metadata accessor for PgQuery_AlterTableStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterTableCmd._StorageClass.__deallocating_deinit()
{
  v1 = v0[5];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void type metadata completion function for PgQuery_AlterTableCmd._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_AlterTableCmd.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            lazy protocol witness table accessor for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 3:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result == 4)
        {
          type metadata accessor for PgQuery_RoleSpec(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
        }

        else
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        }

        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_AlterTableCmd.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v28 - v5;
  Node = type metadata accessor for PgQuery_Node(0);
  v30 = *(Node - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - v10;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v33 = *(RoleSpec - 8);
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](RoleSpec);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  if (!destructiveProjectEnumData for StorableValue(v15, v16) || (v34 = v15, v35 = v16, lazy protocol witness table accessor for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v18 = *(a1 + 40);
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (!v19 || (v20 = *(a1 + 40), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v1))
    {
      v21 = RoleSpec;
      if (!*(a1 + 48) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
      {
        v28 = v1;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
        if ((*(v33 + 48))(v11, 1, v21) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v11, v14, type metadata accessor for PgQuery_RoleSpec);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
          v22 = v28;
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RoleSpec);
          if (v22)
          {
            return result;
          }

          v28 = 0;
        }

        v23 = v31;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((*(v30 + 48))(v23, 1, Node) == 1)
        {
          result = _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          v24 = v28;
        }

        else
        {
          v25 = v23;
          v26 = v29;
          outlined init with take of PgQuery_OidList(v25, v29, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          v24 = v28;
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
          if (v24)
          {
            return result;
          }
        }

        if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior) || (v27 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8), v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior), v35 = v27, lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v24))
        {
          if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) == 1)
          {
            return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlterTableCmd.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v63 = *(Node - 8);
  v64 = Node;
  v5 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v60 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v59 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v10 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v59 - v11;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v66 = *(RoleSpec - 8);
  v13 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](RoleSpec);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v59 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v59 - v22;
  v24 = *(a2 + 16);
  v25 = *(a2 + 24);
  v26 = destructiveProjectEnumData for StorableValue(*(a1 + 16), *(a1 + 24));
  if (v26 != destructiveProjectEnumData for StorableValue(v24, v25) || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_21;
  }

  v27 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  v28 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v23, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v29 = a2 + v27;
  v30 = a2;
  outlined init with copy of PgQuery_Alias?(v29, &v23[v28], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v31 = *(v66 + 48);
  if (v31(v23, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v23, v19, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v31(&v23[v28], 1, RoleSpec) != 1)
    {
      outlined init with take of PgQuery_OidList(&v23[v28], v15, type metadata accessor for PgQuery_RoleSpec);
      v33 = a1;

      v34 = specialized static PgQuery_RoleSpec.== infix(_:_:)(v19, v15);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_RoleSpec);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RoleSpec);
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      if ((v34 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RoleSpec);
LABEL_11:
    _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
    goto LABEL_20;
  }

  v32 = v31(&v23[v28], 1, RoleSpec);

  if (v32 != 1)
  {
    goto LABEL_11;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v33 = a1;
LABEL_13:
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
  v36 = *(v62 + 48);
  v37 = v33;
  v38 = v33 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
  v39 = v65;
  outlined init with copy of PgQuery_Alias?(v38, v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v30 + v35, v39 + v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v40 = v64;
  v41 = *(v63 + 48);
  if (v41(v39, 1, v64) == 1)
  {
    if (v41(v39 + v36, 1, v40) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v42 = v61;
  outlined init with copy of PgQuery_Alias?(v39, v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v41(v39 + v36, 1, v40) == 1)
  {
    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
LABEL_18:
    v43 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_19:
    _s10Foundation4UUIDVSgWOhTm_0(v39, v43, v44);
    goto LABEL_20;
  }

  v47 = v39 + v36;
  v48 = v60;
  outlined init with take of PgQuery_OidList(v47, v60, type metadata accessor for PgQuery_Node);
  v49 = *(v40 + 20);
  v50 = *(v42 + v49);
  v51 = *(v48 + v49);
  if (v50 != v51)
  {
    v52 = *(v42 + v49);

    v53 = closure #1 in static PgQuery_Node.== infix(_:_:)(v50, v51);

    if (!v53)
    {
      outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      v43 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_19;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v54)
  {
LABEL_26:
    v55 = *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
    v56 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
    if (*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8) == 1)
    {
      if (v56)
      {
        if (v56 == 1)
        {
          if (v55 == 1)
          {
            goto LABEL_37;
          }
        }

        else if (v55 == 2)
        {
LABEL_37:
          v57 = *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

          v58 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

          v45 = v57 ^ v58 ^ 1;
          return v45 & 1;
        }
      }

      else if (!v55)
      {
        goto LABEL_37;
      }
    }

    else if (v55 == v56)
    {
      goto LABEL_37;
    }
  }

LABEL_20:

LABEL_21:
  v45 = 0;
  return v45 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTableCmd(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTableCmd(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTableCmd()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterDomainStmt._StorageClass.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

void type metadata completion function for PgQuery_AlterDomainStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_AlterDomainStmt.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 5:
          lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 6:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_14;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 3:
LABEL_14:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }
    }
  }
}

uint64_t closure #1 in PgQuery_AlterDomainStmt.traverse<A>(visitor:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  Node = type metadata accessor for PgQuery_Node(0);
  v21 = *(Node - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (v13 = a1[3], , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v1))
  {
    if (!*(a1[4] + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
    {
      v15 = a1[6];
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = a1[5] & 0xFFFFFFFFFFFFLL;
      }

      if (!v16 || (v17 = a1[6], , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v1))
      {
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((*(v21 + 48))(v6, 1, Node) == 1)
        {
          result = _s10Foundation4UUIDVSgWOhTm_0(v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v6, v10, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
          if (v1)
          {
            return result;
          }
        }

        if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior) || (v18 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8), v19 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior), v20 = v18, lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
        {
          if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) == 1)
          {
            return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlterDomainStmt.== infix(_:_:)(void *a1, void *a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - v15;
  if (a1[2] == a2[2] && a1[3] == a2[3] || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), v18 = 0, (v17 & 1) != 0))
  {
    v40 = v8;
    v19 = a1[4];
    v20 = a2[4];

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v19, v20);

    if ((NodeV_Tt1g5 & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_15;
    }

    v22 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
    v23 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v22, &v16[v23], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v24 = *(v5 + 48);
    if (v24(v16, 1, Node) == 1)
    {
      if (v24(&v16[v23], 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        goto LABEL_20;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v24(&v16[v23], 1, Node) != 1)
      {
        v28 = v40;
        outlined init with take of PgQuery_OidList(&v16[v23], v40, type metadata accessor for PgQuery_Node);
        v29 = *(Node + 20);
        v30 = *&v12[v29];
        v31 = *(v28 + v29);
        if (v30 == v31 || (v32 = *&v12[v29], , , v33 = closure #1 in static PgQuery_Node.== infix(_:_:)(v30, v31), , , v33))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
          v34 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v34)
          {
LABEL_20:
            v35 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
            v36 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
            if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8) == 1)
            {
              if (v36)
              {
                if (v36 == 1)
                {
                  if (v35 == 1)
                  {
                    goto LABEL_31;
                  }
                }

                else if (v35 == 2)
                {
LABEL_31:
                  v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

                  v38 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

                  v18 = v37 ^ v38 ^ 1;
                  return v18 & 1;
                }
              }

              else if (!v35)
              {
                goto LABEL_31;
              }
            }

            else if (v35 == v36)
            {
              goto LABEL_31;
            }
          }

LABEL_15:

          v18 = 0;
          return v18 & 1;
        }

        outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_14:
        _s10Foundation4UUIDVSgWOhTm_0(v16, v25, v26);
        goto LABEL_15;
      }

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    }

    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_14;
  }

  return v18 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterDomainStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDomainStmt and conformance PgQuery_AlterDomainStmt, type metadata accessor for PgQuery_AlterDomainStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterDomainStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDomainStmt and conformance PgQuery_AlterDomainStmt, type metadata accessor for PgQuery_AlterDomainStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterDomainStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDomainStmt and conformance PgQuery_AlterDomainStmt, type metadata accessor for PgQuery_AlterDomainStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_SetOperationStmt._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods) = v8;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations) = v8;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses) = v8;
  v12 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v12;
  *(v1 + 25) = *(a1 + 25);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes);

  v14 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods);

  v15 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations);

  v16 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses);

  v17 = *(v1 + v11);
  *(v1 + v11) = v16;

  return v1;
}

uint64_t PgQuery_SetOperationStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

void type metadata completion function for PgQuery_SetOperationStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_SetOperationStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 4)
      {
        if (result < 8 || result == 8)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result > 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_SetOperationStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](Node);
  v38 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  v22 = *(v19 + 16);
  if (v22)
  {
    v35 = v15;
    v36 = v22;
    v23 = v11;
    v24 = Node;
    v37 = *(v19 + 24);
    v25 = v19;
    lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v19 = v25;
    Node = v24;
    v11 = v23;
    v15 = v35;
  }

  if (*(v19 + 25) == 1)
  {
    v27 = v15;
    v28 = v11;
    v29 = Node;
    v30 = v19;
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v34 = a4;
    v19 = v30;
    Node = v29;
    v11 = v28;
    v15 = v27;
    v5 = 0;
  }

  else
  {
    v34 = a4;
  }

  v35 = v19;
  outlined init with copy of PgQuery_Alias?(v19 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = *(v15 + 48);
  if (v31(v13, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v21, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    if (v5)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v35 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v31(v11, 1, Node) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v32 = v38;
    outlined init with take of PgQuery_OidList(v11, v38, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
    if (v5)
    {
      return result;
    }
  }

  v33 = v35;
  if (*(*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v33 = v35;
  }

  if (*(*(v33 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v33 = v35;
  }

  if (*(*(v33 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v33 = v35;
  }

  if (*(*(v33 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static PgQuery_SetOperationStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v79 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v79 - v23;
  v26 = *(a1 + 16);
  v27 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v27 <= 1)
    {
      if (v27)
      {
        if (v26 != 1)
        {
          goto LABEL_45;
        }
      }

      else if (v26)
      {
        goto LABEL_45;
      }
    }

    else if (v27 == 2)
    {
      if (v26 != 2)
      {
        goto LABEL_45;
      }
    }

    else if (v27 == 3)
    {
      if (v26 != 3)
      {
        goto LABEL_45;
      }
    }

    else if (v26 != 4)
    {
      goto LABEL_45;
    }
  }

  else if (v26 != v27)
  {
LABEL_45:
    v77 = 0;
    return v77 & 1;
  }

  if (*(a1 + 25) != *(a2 + 25))
  {
    goto LABEL_45;
  }

  v81 = v11;
  v82 = v16;
  v83 = v24;
  v84 = v22;
  v80 = v9;
  v28 = a2;
  v29 = v5;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  v31 = *(v22 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, &v79 - v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v28 + v30, &v25[v31], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v32 = *(v29 + 48);
  if (v32(v25, 1, Node) == 1)
  {
    v33 = Node;
    v34 = v32(&v25[v31], 1, Node);

    v35 = a1;
    if (v34 == 1)
    {
      v79 = v32;
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  v36 = a1;
  outlined init with copy of PgQuery_Alias?(v25, v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v32(&v25[v31], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
LABEL_17:
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_18:
    _s10Foundation4UUIDVSgWOhTm_0(v25, v37, v38);
    goto LABEL_44;
  }

  v79 = v32;
  v39 = &v25[v31];
  v40 = v81;
  outlined init with take of PgQuery_OidList(v39, v81, type metadata accessor for PgQuery_Node);
  v33 = Node;
  v41 = *(Node + 20);
  v42 = *&v18[v41];
  v43 = *(v40 + v41);
  v35 = v36;

  if (v42 != v43)
  {

    v44 = closure #1 in static PgQuery_Node.== infix(_:_:)(v42, v43);

    if (!v44)
    {
      outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_18;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v45 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_29:
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v47 = v83;
  v48 = v35;
  v49 = *(v84 + 48);
  v50 = v48;
  outlined init with copy of PgQuery_Alias?(v48 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v51 = v28 + v46;
  v52 = v47;
  outlined init with copy of PgQuery_Alias?(v51, v47 + v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v53 = v33;
  v54 = v33;
  v55 = v79;
  if (v79(v47, 1, v54) != 1)
  {
    v56 = v82;
    outlined init with copy of PgQuery_Alias?(v47, v82, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v55(v47 + v49, 1, v53) != 1)
    {
      v57 = v28;
      v58 = v47 + v49;
      v59 = v80;
      outlined init with take of PgQuery_OidList(v58, v80, type metadata accessor for PgQuery_Node);
      v60 = *(v53 + 20);
      v61 = *(v56 + v60);
      v62 = *(v59 + v60);
      if (v61 == v62 || (, , v63 = closure #1 in static PgQuery_Node.== infix(_:_:)(v61, v62), , , v63))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v64 = v82;
        v65 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v64, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v28 = v57;
        if (v65)
        {
          goto LABEL_38;
        }
      }

      else
      {
        outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

LABEL_44:

      goto LABEL_45;
    }

    outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
LABEL_34:
    _s10Foundation4UUIDVSgWOhTm_0(v47, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_44;
  }

  if (v55(v47 + v49, 1, v53) != 1)
  {
    goto LABEL_34;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_38:
  v66 = *(v50 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes);
  v67 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v66, v67);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_44;
  }

  v69 = *(v50 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods);
  v70 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods);

  v71 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v69, v70);

  if ((v71 & 1) == 0)
  {
    goto LABEL_44;
  }

  v72 = *(v50 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations);
  v73 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations);

  v74 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v72, v73);

  if ((v74 & 1) == 0)
  {
    goto LABEL_44;
  }

  v75 = *(v50 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses);
  v76 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses);

  v77 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v75, v76);

  return v77 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SetOperationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetOperationStmt and conformance PgQuery_SetOperationStmt, type metadata accessor for PgQuery_SetOperationStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SetOperationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetOperationStmt and conformance PgQuery_SetOperationStmt, type metadata accessor for PgQuery_SetOperationStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SetOperationStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetOperationStmt and conformance PgQuery_SetOperationStmt, type metadata accessor for PgQuery_SetOperationStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_GrantStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          goto LABEL_15;
        }

        if (result == 7)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_5;
        }

        if (result == 8)
        {
          lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
LABEL_21:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
LABEL_15:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            goto LABEL_5;
          }

          v3 = v0;
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          goto LABEL_20;
        }

        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          v3 = v0;
          lazy protocol witness table accessor for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType();
LABEL_20:
          v0 = v3;
          goto LABEL_21;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_GrantStmt.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    v3 = v1;
    if (*(v0 + 8))
    {
      v6 = *(v0 + 8);
      v8 = *(v0 + 16);
      lazy protocol witness table accessor for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      v3 = 0;
    }

    if (destructiveProjectEnumData for StorableValue(*(v0 + 24), *(v0 + 32)))
    {
      lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v3)
      {
        return result;
      }

      v3 = 0;
    }

    if (*(*(v0 + 40) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v3)
      {
        return result;
      }

      v3 = 0;
    }

    if (*(*(v0 + 48) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v3)
      {
        return result;
      }

      v3 = 0;
    }

    if (*(*(v0 + 56) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      v4 = v3;
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v3)
      {
        return result;
      }
    }

    else
    {
      v4 = v3;
    }

    if (*(v0 + 64) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (!*(v0 + 72) || (v7 = *(v0 + 72), v9 = *(v0 + 80), lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
      {
        v5 = v0 + *(type metadata accessor for PgQuery_GrantStmt(0) + 48);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_GrantStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(a2 + 40) = MEMORY[0x1E69E7CC0];
  *(a2 + 48) = v2;
  *(a2 + 56) = v2;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  v3 = a2 + *(a1 + 48);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance PgQuery_GrantStmt(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for StorableValue;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_GrantStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_GrantStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_GrantStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_GrantRoleStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            goto LABEL_17;
          case 5:
            v3 = *(type metadata accessor for PgQuery_GrantRoleStmt(0) + 40);
            type metadata accessor for PgQuery_RoleSpec(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 6:
            lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

      else
      {
        if (result != 1 && result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

LABEL_17:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_5;
        }

        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_GrantRoleStmt.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v19 = *(RoleSpec - 8);
  v8 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](RoleSpec);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v0 + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(*(v0 + 8) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v12 = v2;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v12 = v2;
  }

  if (*(v0 + 16) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    v13 = RoleSpec;
    if (v12)
    {
      return result;
    }
  }

  else
  {
    v13 = RoleSpec;
  }

  if (*(v0 + 17) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v12))
  {
    GrantRoleStmt = type metadata accessor for PgQuery_GrantRoleStmt(0);
    outlined init with copy of PgQuery_Alias?(v3 + *(GrantRoleStmt + 40), v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if ((*(v19 + 48))(v7, 1, v13) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      v15 = *(v3 + 24);
      if (!v15)
      {
LABEL_20:
        v17 = v3 + *(GrantRoleStmt + 36);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }

    else
    {
      RoleSpec = GrantRoleStmt;
      outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_RoleSpec);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RoleSpec);
      if (v12)
      {
        return result;
      }

      GrantRoleStmt = RoleSpec;
      v15 = *(v3 + 24);
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    v16 = *(v3 + 32);
    v20 = v15;
    v21 = v16;
    lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v12)
    {
      return result;
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_GrantRoleStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v5 = a2 + *(a1 + 36);
  UnknownStorage.init()();
  v6 = *(a1 + 40);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v8 = *(*(RoleSpec - 8) + 56);

  return v8(a2 + v6, 1, 1, RoleSpec);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance PgQuery_GrantRoleStmt(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for StorableValue;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_GrantRoleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantRoleStmt and conformance PgQuery_GrantRoleStmt, type metadata accessor for PgQuery_GrantRoleStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_GrantRoleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantRoleStmt and conformance PgQuery_GrantRoleStmt, type metadata accessor for PgQuery_GrantRoleStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_GrantRoleStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantRoleStmt and conformance PgQuery_GrantRoleStmt, type metadata accessor for PgQuery_GrantRoleStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterDefaultPrivilegesStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 2)
      {
        v3 = *(type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(0) + 24);
        type metadata accessor for PgQuery_GrantStmt(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterDefaultPrivilegesStmt.traverse<A>(visitor:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - v3;
  GrantStmt = type metadata accessor for PgQuery_GrantStmt(0);
  v6 = *(GrantStmt - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](GrantStmt);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v0 + 16);
  v17 = v0;
  if (v10)
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v11 = v18;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v11)
    {
      return result;
    }

    v18 = 0;
    v0 = v17;
  }

  AlterDefaultPrivilegesStmt = type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(0);
  outlined init with copy of PgQuery_Alias?(v0 + *(AlterDefaultPrivilegesStmt + 24), v4, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  if ((*(v6 + 48))(v4, 1, GrantStmt) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v4, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v4, v9, type metadata accessor for PgQuery_GrantStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt);
    v14 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_GrantStmt);
    if (v14)
    {
      return result;
    }

    v0 = v17;
  }

  v15 = v0 + *(AlterDefaultPrivilegesStmt + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterDefaultPrivilegesStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterDefaultPrivilegesStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterDefaultPrivilegesStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ClosePortalStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClosePortalStmt and conformance PgQuery_ClosePortalStmt, type metadata accessor for PgQuery_ClosePortalStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ClosePortalStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClosePortalStmt and conformance PgQuery_ClosePortalStmt, type metadata accessor for PgQuery_ClosePortalStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ClosePortalStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClosePortalStmt and conformance PgQuery_ClosePortalStmt, type metadata accessor for PgQuery_ClosePortalStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_ClusterStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          v3 = *(type metadata accessor for PgQuery_ClusterStmt(0) + 28);
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_ClusterStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = v1;
  v18[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v18 - v5;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v8 = *(RangeVar - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = type metadata accessor for PgQuery_ClusterStmt(0);
  outlined init with copy of PgQuery_Alias?(v2 + *(v18[0] + 28), v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v8 + 48))(v6, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v12 = v19;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v11, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v12 = v19;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
    if (v12)
    {
      return result;
    }
  }

  v14 = *v2;
  v15 = v2[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v12))
  {
    if (!*(v2 + 4) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v12))
    {
      v17 = v2 + *(v18[0] + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_ClusterStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v4 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v7 = *(*(RangeVar - 8) + 56);

  return v7(a2 + v5, 1, 1, RangeVar);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ClusterStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClusterStmt and conformance PgQuery_ClusterStmt, type metadata accessor for PgQuery_ClusterStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ClusterStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClusterStmt and conformance PgQuery_ClusterStmt, type metadata accessor for PgQuery_ClusterStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ClusterStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClusterStmt and conformance PgQuery_ClusterStmt, type metadata accessor for PgQuery_ClusterStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CopyStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = &v23 - v5;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v6, 1, 1, RangeVar);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(*(Node - 8) + 56);
  v10(v1 + v8, 1, 1, Node);
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist;
  v12 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist) = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) = 0;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) = 0;
  v15 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v12;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v10(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, 1, 1, Node);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v1 + v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(v1 + v11);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist);

  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom);
  *(v1 + v14) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram);
  v18 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8);
  v19 = v15[1];
  *v15 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename);
  v15[1] = v18;

  v20 = *(v1 + v16);
  *(v1 + v16) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v21 = v26;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v21, v1 + v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_CopyStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

void type metadata completion function for PgQuery_CopyStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_CopyStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            goto LABEL_22;
          }

          if (result == 8)
          {
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          }
        }

        else
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
LABEL_4:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            goto LABEL_5;
          }

LABEL_22:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 1)
        {
          v3 = v0;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
          goto LABEL_21;
        }

        if (result == 2)
        {
          v3 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_21:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CopyStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v43 = *(Node - 8);
  v44 = Node;
  v12 = *(v43 + 64);
  v13 = MEMORY[0x1EEE9AC00](Node);
  v40 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v40 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v21 = *(RangeVar - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v21 + 48))(v19, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v25 = v45;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v19, v24, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v26 = v45;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v25 = v26;
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
    if (v26)
    {
      return result;
    }
  }

  v28 = v48;
  outlined init with copy of PgQuery_Alias?(v48 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = v44;
  v30 = *(v43 + 48);
  if (v30(v10, 1, v44) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v31 = v10;
    v32 = v42;
    outlined init with take of PgQuery_OidList(v31, v42, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
    if (v25)
    {
      return result;
    }
  }

  if (!*(*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
  {
    v33 = v48;
    if (*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v25))
    {
      if (*(v33 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v25))
      {
        v34 = *(v33 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename);
        v35 = *(v33 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8);
        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (!v36 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v25))
        {
          if (!*(*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
          {
            v37 = v41;
            outlined init with copy of PgQuery_Alias?(v48 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v30(v37, 1, v29) == 1)
            {
              return _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            }

            else
            {
              v38 = v37;
              v39 = v40;
              outlined init with take of PgQuery_OidList(v38, v40, type metadata accessor for PgQuery_Node);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
              dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
              return outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CopyStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  Node = type metadata accessor for PgQuery_Node(0);
  v88 = *(Node - 8);
  v89 = Node;
  v4 = *(v88 + 64);
  v5 = MEMORY[0x1EEE9AC00](Node);
  v82 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v82 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v83 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v82 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v87 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v87);
  v84 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v82 - v16;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v18 = *(RangeVar - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v82 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v82 - v29;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v32 = *(v28 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v82 - v29, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v33 = v91 + v31;
  v34 = v91;
  outlined init with copy of PgQuery_Alias?(v33, &v30[v32], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v35 = *(v18 + 48);
  if (v35(v30, 1, RangeVar) == 1)
  {
    v36 = v35(&v30[v32], 1, RangeVar);

    v37 = a1;
    if (v36 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v30, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v38 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v39 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v40 = v30;
LABEL_14:
    _s10Foundation4UUIDVSgWOhTm_0(v40, v38, v39);
    goto LABEL_15;
  }

  outlined init with copy of PgQuery_Alias?(v30, v25, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v35(&v30[v32], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v30[v32], v21, type metadata accessor for PgQuery_RangeVar);
  v37 = a1;

  v41 = specialized static PgQuery_RangeVar.== infix(_:_:)(v25, v21);
  outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v30, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v41 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v42 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v43 = v87;
  v44 = *(v87 + 48);
  v45 = v90;
  outlined init with copy of PgQuery_Alias?(v37 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v90, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v46 = v45;
  outlined init with copy of PgQuery_Alias?(v34 + v42, v45 + v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v47 = v89;
  v48 = *(v88 + 48);
  if (v48(v46, 1, v89) != 1)
  {
    v49 = v86;
    outlined init with copy of PgQuery_Alias?(v46, v86, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v48(v46 + v44, 1, v47) == 1)
    {
      outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
      goto LABEL_13;
    }

    v51 = v85;
    outlined init with take of PgQuery_OidList(v46 + v44, v85, type metadata accessor for PgQuery_Node);
    v52 = *(v47 + 20);
    v53 = *(v49 + v52);
    v54 = *(v51 + v52);
    if (v53 != v54)
    {

      v55 = closure #1 in static PgQuery_Node.== infix(_:_:)(v53, v54);

      if (!v55)
      {
        outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v86, type metadata accessor for PgQuery_Node);
        v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v40 = v90;
        goto LABEL_14;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v56 = v86;
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v90, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v57)
    {
      goto LABEL_20;
    }

LABEL_15:

    return 0;
  }

  if (v48(v46 + v44, 1, v47) != 1)
  {
LABEL_13:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v40 = v46;
    goto LABEL_14;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  v58 = *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist);
  v59 = *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist);

  v60 = v34;
  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v58, v59);

  if ((NodeV_Tt1g5 & 1) == 0 || *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) != *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) || *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) != *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) || (*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename) != *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename) || *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8) != *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v62 = *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
  v63 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v64 = v60;
  v65 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v62, v63);

  if ((v65 & 1) == 0)
  {
    goto LABEL_15;
  }

  v66 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v67 = *(v43 + 48);
  v68 = v84;
  outlined init with copy of PgQuery_Alias?(v37 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v69 = v68;
  outlined init with copy of PgQuery_Alias?(v64 + v66, v68 + v67, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v48(v68, 1, v47) != 1)
  {
    v70 = v68;
    v71 = v83;
    outlined init with copy of PgQuery_Alias?(v70, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v48(v69 + v67, 1, v47) == 1)
    {

      outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Node);
      goto LABEL_35;
    }

    v75 = v82;
    outlined init with take of PgQuery_OidList(v69 + v67, v82, type metadata accessor for PgQuery_Node);
    v76 = *(v47 + 20);
    v77 = *(v71 + v76);
    v78 = *(v75 + v76);
    if (v77 != v78)
    {
      v79 = *(v71 + v76);

      v80 = closure #1 in static PgQuery_Node.== infix(_:_:)(v77, v78);

      if (!v80)
      {

        outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Node);
        v72 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v73 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v74 = v84;
        goto LABEL_36;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v81 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    return (v81 & 1) != 0;
  }

  if (v48(v68 + v67, 1, v47) != 1)
  {
LABEL_35:
    v72 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v73 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v74 = v69;
LABEL_36:
    _s10Foundation4UUIDVSgWOhTm_0(v74, v72, v73);
    return 0;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v68, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CopyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CopyStmt and conformance PgQuery_CopyStmt, type metadata accessor for PgQuery_CopyStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CopyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CopyStmt and conformance PgQuery_CopyStmt, type metadata accessor for PgQuery_CopyStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CopyStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CopyStmt and conformance PgQuery_CopyStmt, type metadata accessor for PgQuery_CopyStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateStmt._StorageClass.init()()
{
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations) = v3;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  (*(*(PartitionBoundSpec - 8) + 56))(v0 + v4, 1, 1, PartitionBoundSpec);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec;
  PartitionSpec = type metadata accessor for PgQuery_PartitionSpec(0);
  (*(*(PartitionSpec - 8) + 56))(v0 + v6, 1, 1, PartitionSpec);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v0 + v8, 1, 1, TypeName);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) = v3;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v3;
  v10 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) = 0;
  return v0;
}

uint64_t PgQuery_CreateStmt._StorageClass.deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);

  return v0;
}

void type metadata completion function for PgQuery_CreateStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_PartitionBoundSpec?, type metadata accessor for PgQuery_PartitionBoundSpec, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_PartitionSpec?, type metadata accessor for PgQuery_PartitionSpec, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t closure #1 in PgQuery_CreateStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 6)
      {
        if (result <= 9)
        {
          if (result != 7 && result != 8)
          {
            lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            goto LABEL_6;
          }

LABEL_28:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 10 || result == 11)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 12)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result > 3)
        {
          if (result == 4)
          {
            v3 = v0;
            type metadata accessor for PgQuery_PartitionBoundSpec(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec);
          }

          else
          {
            v3 = v0;
            if (result == 5)
            {
              type metadata accessor for PgQuery_PartitionSpec(0);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec);
            }

            else
            {
              type metadata accessor for PgQuery_TypeName(0);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
            }
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v3 = v0;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 2 || result == 3)
        {
          goto LABEL_28;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CreateStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a3;
  v66 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v50 - v7;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v52 = *(TypeName - 8);
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v50 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v61 = &v50 - v12;
  PartitionSpec = type metadata accessor for PgQuery_PartitionSpec(0);
  v56 = *(PartitionSpec - 8);
  v13 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](PartitionSpec);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v58 = &v50 - v17;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v57 = *(PartitionBoundSpec - 8);
  v18 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](PartitionBoundSpec);
  v55 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v50 - v22;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v25 = *(RangeVar - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v25 + 48))(v23, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v29 = v62;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v23, v28, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v30 = v62;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v29 = v30;
    if (v30)
    {
      return outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_RangeVar);
    }

    outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_RangeVar);
  }

  v32 = v61;
  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v33 = PartitionBoundSpec;
    if (v29)
    {
    }
  }

  else
  {
    v33 = PartitionBoundSpec;
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v29)
    {
    }
  }

  v34 = v58;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound, v58, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v35 = (*(v57 + 48))(v34, 1, v33);
  v36 = PartitionSpec;
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  }

  else
  {
    v37 = v55;
    outlined init with take of PgQuery_OidList(v34, v55, type metadata accessor for PgQuery_PartitionBoundSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v29)
    {
      return outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_PartitionBoundSpec);
    }

    outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_PartitionBoundSpec);
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec, v32, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  if ((*(v56 + 48))(v32, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  }

  else
  {
    v38 = v32;
    v39 = v51;
    outlined init with take of PgQuery_OidList(v38, v51, type metadata accessor for PgQuery_PartitionSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_PartitionSpec);
    if (v29)
    {
      return result;
    }
  }

  v40 = v53;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename, v53, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v52 + 48))(v40, 1, TypeName) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v41 = v40;
    v42 = v50;
    outlined init with take of PgQuery_OidList(v41, v50, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_TypeName);
    if (v29)
    {
      return result;
    }
  }

  if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v29))
  {
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v29))
    {
      if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit) || (v43 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit + 8), v64 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit), v65 = v43, lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v29))
      {
        v44 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename + 8);
        v45 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v45 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename) & 0xFFFFFFFFFFFFLL;
        }

        if (!v45 || (v46 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v29))
        {
          v47 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
          v48 = HIBYTE(v47) & 0xF;
          if ((v47 & 0x2000000000000000) == 0)
          {
            v48 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) & 0xFFFFFFFFFFFFLL;
          }

          if (!v48 || (v49 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v29))
          {
            if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) == 1)
            {
              return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
            }
          }
        }
      }
    }
  }

  return result;
}