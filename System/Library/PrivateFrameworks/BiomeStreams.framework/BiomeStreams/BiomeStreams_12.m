uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_NullIfExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullIfExpr and conformance PgQuery_NullIfExpr, type metadata accessor for PgQuery_NullIfExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_NullIfExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullIfExpr and conformance PgQuery_NullIfExpr, type metadata accessor for PgQuery_NullIfExpr);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_ScalarArrayOpExpr.decodeMessage<A>(decoder:)()
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
        if (result == 1)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2 || result == 3)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result != 4)
        {
          goto LABEL_4;
        }

        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_ScalarArrayOpExpr.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  Node = type metadata accessor for PgQuery_Node(0);
  v7 = *(Node - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v12 = v11;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v7 + 48))(v5, 1, v12) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v13 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v5, v10, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v13 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
    if (v13)
    {
      return result;
    }
  }

  v15 = v17;
  if (!*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
  {
    if (!*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
    {
      if (*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOr) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v13))
      {
        if (!*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
        {
          if (!*(*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v13))
          {
            result = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
            if (result)
            {
              return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ScalarArrayOpExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v37 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v38;
      outlined init with take of PgQuery_OidList(&v16[v18], v38, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOr) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOr) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

    if (NodeV_Tt1g5)
    {
      v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v34 == v35;
    }
  }

LABEL_17:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ScalarArrayOpExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScalarArrayOpExpr and conformance PgQuery_ScalarArrayOpExpr, type metadata accessor for PgQuery_ScalarArrayOpExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ScalarArrayOpExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScalarArrayOpExpr and conformance PgQuery_ScalarArrayOpExpr, type metadata accessor for PgQuery_ScalarArrayOpExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ScalarArrayOpExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScalarArrayOpExpr and conformance PgQuery_ScalarArrayOpExpr, type metadata accessor for PgQuery_ScalarArrayOpExpr);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_BoolExpr._StorageClass()
{
  type metadata completion function for PgQuery_BoolExpr._StorageClass();
}

{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_BoolExpr.decodeMessage<A>(decoder:)()
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        lazy protocol witness table accessor for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_BoolExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v18[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v18 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v11 + 48))(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v9, v14, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  v16 = v18[0];
  if (!*(v18[0] + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop) || (v17 = *(v18[0] + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop + 8), v18[2] = *(v18[0] + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop), v19 = v17, lazy protocol witness table accessor for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_BoolExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v39 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v39 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) == 1)
  {
    v22 = v21(&v16[v18], 1, Node);

    if (v22 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(&v16[v18], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
    goto LABEL_8;
  }

  v26 = v40;
  outlined init with take of PgQuery_OidList(&v16[v18], v40, type metadata accessor for PgQuery_Node);
  v27 = *(Node + 20);
  v28 = *&v11[v27];
  v29 = *(v26 + v27);

  if (v28 != v29)
  {

    v30 = closure #1 in static PgQuery_Node.== infix(_:_:)(v28, v29);

    if (!v30)
    {
      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v31 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_12:
  v32 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop);
  v33 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop + 8) != 1)
  {
    if (v32 == v33)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (v33 > 1)
  {
    if (v33 == 2)
    {
      if (v32 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v32 != 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v33)
    {
      if (!v32)
      {
        goto LABEL_18;
      }

LABEL_8:

      return 0;
    }

    if (v32 != 1)
    {
      goto LABEL_8;
    }
  }

LABEL_18:
  v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v34, v35);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v38 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v37 == v38;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_BoolExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BoolExpr and conformance PgQuery_BoolExpr, type metadata accessor for PgQuery_BoolExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_BoolExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BoolExpr and conformance PgQuery_BoolExpr, type metadata accessor for PgQuery_BoolExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_BoolExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BoolExpr and conformance PgQuery_BoolExpr, type metadata accessor for PgQuery_BoolExpr);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_SubLink._StorageClass()
{
  type metadata completion function for PgQuery_SubLink._StorageClass();
}

{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_SubLink.decodeMessage<A>(decoder:)()
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
        break;
      }

      switch(result)
      {
        case 1:
          goto LABEL_18;
        case 2:
          lazy protocol witness table accessor for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 3:
          goto LABEL_17;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 5)
    {
      if (result != 6)
      {
        if (result != 7)
        {
          goto LABEL_5;
        }

LABEL_17:
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }
    }

    else if (result != 4)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      goto LABEL_5;
    }

LABEL_18:
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_5;
  }

  return result;
}

uint64_t closure #1 in PgQuery_SubLink.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v38 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](Node);
  v34 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v36 = &v34 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v23 = v22;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v24 = *(v14 + 48);
  v37 = v14 + 48;
  if (v24(v12, 1, v23) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v25 = v39;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v21, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v25 = v39;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    if (v25)
    {
      return result;
    }
  }

  v27 = v38;
  if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType) || (v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType + 8), v40 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType), v41 = v28, lazy protocol witness table accessor for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v25))
  {
    if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkID) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v25))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v24(v27, 1, v23) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v29 = v27;
        v30 = v36;
        outlined init with take of PgQuery_OidList(v29, v36, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
        if (v25)
        {
          return result;
        }
      }

      if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__operName) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
      {
        v31 = v35;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subselect, v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v24(v31, 1, v23) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v32 = v31;
          v33 = v34;
          outlined init with take of PgQuery_OidList(v32, v34, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
          if (v25)
          {
            return result;
          }
        }

        result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_SubLink.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v83 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v86 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v87 = &v81 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v85 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v89 = &v81 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v81 - v27;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v88 = v26;
  v30 = *(v26 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v81 - v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v29, &v28[v30], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = *(v5 + 48);
  if (v31(v28, 1, Node) == 1)
  {
    v82 = Node;
    v32 = v31(&v28[v30], 1, Node);

    if (v32 != 1)
    {
LABEL_7:
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
      v36 = v28;
LABEL_9:
      _s10Foundation4UUIDVSgWOhTm_0(v36, v34, v35);
      goto LABEL_37;
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v28, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v31(&v28[v30], 1, Node) == 1)
    {

      v33 = v19;
LABEL_6:
      outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
      goto LABEL_7;
    }

    v37 = &v28[v30];
    v38 = v90;
    outlined init with take of PgQuery_OidList(v37, v90, type metadata accessor for PgQuery_Node);
    v82 = Node;
    v39 = *(Node + 20);
    v40 = *&v19[v39];
    v41 = *(v38 + v39);

    if (v40 != v41)
    {

      v42 = closure #1 in static PgQuery_Node.== infix(_:_:)(v40, v41);

      if (!v42)
      {
        outlined destroy of PgQuery_OidList(v90, type metadata accessor for PgQuery_Node);
        v52 = v19;
LABEL_19:
        outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
        v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_8;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v43 = v90;
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v44 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v45 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType + 8);
  if (!specialized == infix<A>(_:_:)(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType), *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType + 8), *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType)) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkID) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkID))
  {
    goto LABEL_37;
  }

  v46 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr;
  v47 = v89;
  v48 = *(v88 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr, v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v46, v47 + v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v49 = v82;
  if (v31(v47, 1, v82) == 1)
  {
    if (v31((v47 + v48), 1, v49) == 1)
    {
      v50 = v47;
      v51 = v49;
      _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

LABEL_22:
    v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v36 = v47;
    goto LABEL_9;
  }

  v53 = v87;
  outlined init with copy of PgQuery_Alias?(v47, v87, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v31((v47 + v48), 1, v49) == 1)
  {
    outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
    goto LABEL_22;
  }

  v54 = v86;
  outlined init with take of PgQuery_OidList(v47 + v48, v86, type metadata accessor for PgQuery_Node);
  v51 = v49;
  v55 = *(v49 + 20);
  v56 = *(v53 + v55);
  v57 = *(v54 + v55);
  if (v56 != v57)
  {

    v58 = closure #1 in static PgQuery_Node.== infix(_:_:)(v56, v57);

    if (!v58)
    {
      outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_Node);
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v36 = v89;
      goto LABEL_9;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v59 = v87;
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v60 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_26:
  v61 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__operName);
  v62 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__operName);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v61, v62);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_37;
  }

  v64 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subselect;
  v65 = *(v88 + 48);
  v66 = v85;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subselect, v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v67 = a2 + v64;
  v28 = v66;
  outlined init with copy of PgQuery_Alias?(v67, v66 + v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v68 = v51;
  if (v31(v66, 1, v51) == 1)
  {
    if (v31((v66 + v65), 1, v51) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_36:
      v78 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v79 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v78 == v79;
    }

    goto LABEL_7;
  }

  v69 = v66;
  v70 = v84;
  outlined init with copy of PgQuery_Alias?(v69, v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v31(&v28[v65], 1, v51) == 1)
  {
    v33 = v70;
    goto LABEL_6;
  }

  v71 = v83;
  outlined init with take of PgQuery_OidList(&v28[v65], v83, type metadata accessor for PgQuery_Node);
  v72 = *(v68 + 20);
  v73 = *(v70 + v72);
  v74 = *(v71 + v72);
  if (v73 != v74)
  {
    v75 = *(v70 + v72);

    v76 = closure #1 in static PgQuery_Node.== infix(_:_:)(v73, v74);

    if (!v76)
    {
      outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Node);
      v52 = v70;
      goto LABEL_19;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v77 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v77)
  {
    goto LABEL_36;
  }

LABEL_37:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SubLink(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubLink and conformance PgQuery_SubLink, type metadata accessor for PgQuery_SubLink);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SubLink(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubLink and conformance PgQuery_SubLink, type metadata accessor for PgQuery_SubLink);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SubLink()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubLink and conformance PgQuery_SubLink, type metadata accessor for PgQuery_SubLink);

  return Message.hash(into:)();
}

uint64_t PgQuery_SubPlan._StorageClass.init()()
{
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  v4 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType;
  *v4 = 0;
  *(v4 + 8) = 1;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr, 1, 1, Node);
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramIds) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planID) = 0;
  v6 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planName);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColType) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColTypmod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColCollation) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useHashTable) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unknownEqFalse) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parallelSafe) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setParam) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parParam) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startupCost) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__perCallCost) = 0;
  return v0;
}

uint64_t PgQuery_SubPlan._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramIds);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planName + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setParam);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parParam);

  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

void type metadata completion function for PgQuery_SubPlan._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_SubPlan.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 3:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 2:
          lazy protocol witness table accessor for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 4:
        case 13:
        case 14:
        case 15:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 5:
        case 8:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 6:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 7:
        case 9:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 10:
        case 11:
        case 12:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 16:
        case 17:
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_SubPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](Node);
  v29 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v31 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(v11 + 48);
  if (v17(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v18 = v32;
    v19 = Node;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v9, v16, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v20 = v32;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v18 = v20;
    if (v20)
    {
      return outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    }

    v19 = Node;
    outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
  }

  v22 = v30;
  v23 = v31;
  if (!*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType) || (v24 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType + 8), v33 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType), v34 = v24, lazy protocol witness table accessor for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v18))
  {
    outlined init with copy of PgQuery_Alias?(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr, v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v17(v22, 1, v19) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v25 = v29;
      outlined init with take of PgQuery_OidList(v22, v29, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      if (v18)
      {
        return outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    }

    if (*(*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramIds) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v18)
      {
      }
    }

    if (!*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planID) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v18))
    {
      v26 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planName + 8);
      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planName) & 0xFFFFFFFFFFFFLL;
      }

      if (!v27 || (v28 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planName + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v18))
      {
        if (!*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColType) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v18))
        {
          if (!*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColTypmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v18))
          {
            result = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColCollation);
            if (!result || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v18))
            {
              if (*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useHashTable) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v18))
              {
                if (*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unknownEqFalse) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v18))
                {
                  if (*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parallelSafe) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v18))
                  {
                    if (!*(*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setParam) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v18))
                    {
                      if (!*(*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parParam) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v18))
                      {
                        if (!*(*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v18))
                        {
                          if (*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startupCost) == 0.0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v18))
                          {
                            if (*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__perCallCost) != 0.0)
                            {
                              return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_SubPlan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v68 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v64 - v21;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v67 = v20;
  v24 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v64 - v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v23, &v22[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v5 + 48);
  if (v25(v22, 1, Node) == 1)
  {
    v26 = v25(&v22[v24], 1, Node);

    if (v26 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v27 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v28 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v29 = v22;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v29, v27, v28);
    goto LABEL_39;
  }

  v70 = a1;
  v71 = a2;
  outlined init with copy of PgQuery_Alias?(v22, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(&v22[v24], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v30 = v69;
  outlined init with take of PgQuery_OidList(&v22[v24], v69, type metadata accessor for PgQuery_Node);
  v31 = Node;
  v32 = *(Node + 20);
  v33 = *&v15[v32];
  v34 = *(v30 + v32);

  if (v33 != v34)
  {

    v35 = closure #1 in static PgQuery_Node.== infix(_:_:)(v33, v34);

    if (!v35)
    {
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_39;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a1 = v70;
  a2 = v71;
  Node = v31;
  if (v36)
  {
LABEL_11:
    v37 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType + 8);
    if (!specialized == infix<A>(_:_:)(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType), *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType + 8), *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType)))
    {
      goto LABEL_39;
    }

    v38 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr;
    v39 = v68;
    v40 = *(v67 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr, v68, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v38, v39 + v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v25(v39, 1, Node) == 1)
    {
      if (v25((v39 + v40), 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_23:
        v49 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramIds);
        v50 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramIds);

        NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v49, v50);

        if (NodeV_Tt1g5 & 1) != 0 && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planID) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planID) && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planName) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planName) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planName + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planName + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColType) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColType) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColTypmod) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColTypmod) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColCollation) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColCollation) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useHashTable) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useHashTable) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unknownEqFalse) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unknownEqFalse) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parallelSafe) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parallelSafe))
        {
          v52 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setParam);
          v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setParam);

          v54 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v52, v53);

          if (v54)
          {
            v55 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parParam);
            v56 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parParam);

            v57 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v55, v56);

            if (v57)
            {
              v58 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
              v59 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

              v60 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v58, v59);

              if ((v60 & 1) != 0 && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startupCost) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startupCost))
              {
                v61 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__perCallCost);

                v62 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__perCallCost);

                return v61 == v62;
              }
            }
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v41 = v66;
      outlined init with copy of PgQuery_Alias?(v39, v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v25((v39 + v40), 1, Node) != 1)
      {
        v42 = v65;
        outlined init with take of PgQuery_OidList(v39 + v40, v65, type metadata accessor for PgQuery_Node);
        v43 = *(Node + 20);
        v44 = *(v41 + v43);
        v45 = *(v42 + v43);
        if (v44 == v45 || (v46 = *(v41 + v43), , , v47 = closure #1 in static PgQuery_Node.== infix(_:_:)(v44, v45), , , v47))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
          v48 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v48 & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_23;
        }

        outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
        v27 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v28 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_18;
      }

      outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
    }

    v27 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v28 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_18:
    v29 = v39;
    goto LABEL_7;
  }

LABEL_39:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SubPlan(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubPlan and conformance PgQuery_SubPlan, type metadata accessor for PgQuery_SubPlan);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SubPlan(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubPlan and conformance PgQuery_SubPlan, type metadata accessor for PgQuery_SubPlan);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SubPlan()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubPlan and conformance PgQuery_SubPlan, type metadata accessor for PgQuery_SubPlan);

  return Message.hash(into:)();
}

uint64_t PgQuery_A_Indirection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void *a5, void *a6)
{
  v13 = a4(0);
  result = closure #1 in PgQuery_AlternativeSubPlan.traverse<A>(visitor:)(*(v6 + *(v13 + 20)), a1, a2, a3, a5, a6);
  if (!v7)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlternativeSubPlan(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlternativeSubPlan and conformance PgQuery_AlternativeSubPlan, type metadata accessor for PgQuery_AlternativeSubPlan);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlternativeSubPlan(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlternativeSubPlan and conformance PgQuery_AlternativeSubPlan, type metadata accessor for PgQuery_AlternativeSubPlan);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlternativeSubPlan()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlternativeSubPlan and conformance PgQuery_AlternativeSubPlan, type metadata accessor for PgQuery_AlternativeSubPlan);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_FieldSelect._StorageClass()
{
  type metadata completion function for PgQuery_FieldSelect._StorageClass();
}

{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_FieldSelect.decodeMessage<A>(decoder:)()
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
LABEL_4:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
          case 6:
LABEL_17:
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

      else if (result == 1 || result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 3)
      {
        goto LABEL_4;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_FieldSelect.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](Node);
  v25 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v26 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v13 + 48);
  if (v19(v11, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v18, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v20 = v29;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    if (v20)
    {
      return result;
    }

    v29 = 0;
  }

  v22 = v26;
  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v19(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v23 = v29;
  }

  else
  {
    v24 = v25;
    outlined init with take of PgQuery_OidList(v9, v25, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v23 = v29;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
    if (v23)
    {
      return result;
    }

    v22 = v26;
  }

  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnum) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v23))
  {
    if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v23))
    {
      if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v23))
      {
        result = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_FieldSelect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v53 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v58 = v20;
  v24 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v53 - v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v23, &v22[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v5 + 48);
  if (v25(v22, 1, Node) == 1)
  {
    v54 = Node;
    v26 = v25(&v22[v24], 1, Node);

    if (v26 == 1)
    {
      v60 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_26;
  }

  v60 = a1;
  v57 = a2;
  outlined init with copy of PgQuery_Alias?(v22, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(&v22[v24], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v27 = v56;
  outlined init with take of PgQuery_OidList(&v22[v24], v56, type metadata accessor for PgQuery_Node);
  v54 = Node;
  v28 = *(Node + 20);
  v29 = *&v15[v28];
  v30 = *(v27 + v28);

  if (v29 != v30)
  {

    v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30);

    if (!v31)
    {
      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v57;
  if (v32)
  {
LABEL_10:
    v33 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    v34 = v59;
    v35 = *(v58 + 48);
    outlined init with copy of PgQuery_Alias?(v60 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v33, v34 + v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v36 = v54;
    if (v25(v34, 1, v54) == 1)
    {
      v37 = v25((v34 + v35), 1, v36);
      v38 = v60;
      if (v37 == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
        if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnum) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnum) && *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) && *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod))
        {
          v50 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid);

          v51 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid);

          return v50 == v51;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v39 = v55;
      outlined init with copy of PgQuery_Alias?(v34, v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v40 = v25((v34 + v35), 1, v36);
      v38 = v60;
      if (v40 != 1)
      {
        v43 = v53;
        outlined init with take of PgQuery_OidList(v34 + v35, v53, type metadata accessor for PgQuery_Node);
        v44 = *(v36 + 20);
        v45 = *(v39 + v44);
        v46 = *(v43 + v44);
        if (v45 == v46 || (v47 = *(v39 + v44), , , v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v45, v46), , , v48))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
          v49 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v49 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_20;
        }

        outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
        v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_16:
        _s10Foundation4UUIDVSgWOhTm_0(v34, v41, v42);
        goto LABEL_26;
      }

      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
    }

    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

LABEL_26:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FieldSelect(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldSelect and conformance PgQuery_FieldSelect, type metadata accessor for PgQuery_FieldSelect);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FieldSelect(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldSelect and conformance PgQuery_FieldSelect, type metadata accessor for PgQuery_FieldSelect);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FieldSelect()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldSelect and conformance PgQuery_FieldSelect, type metadata accessor for PgQuery_FieldSelect);

  return Message.hash(into:)();
}

uint64_t PgQuery_FieldStore._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t closure #1 in PgQuery_FieldStore.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result == 3 || result == 4)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 5)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_FieldStore.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](Node);
  v24 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v13 + 48);
  if (v19(v11, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v20 = v25;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v18, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v21 = v25;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v20 = v21;
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    if (v21)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v19(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v23 = v24;
    outlined init with take of PgQuery_OidList(v9, v24, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    if (v20)
    {
      return result;
    }
  }

  if (!*(*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v20))
  {
    if (!*(*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v20))
    {
      result = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_FieldStore.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v59 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v61 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v65 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - v21;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v64 = v20;
  v24 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v59 - v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v23, &v22[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v5 + 48);
  if (v25(v22, 1, Node) == 1)
  {
    v60 = Node;
    v26 = v25(&v22[v24], 1, Node);

    if (v26 == 1)
    {
      v66 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_25;
  }

  v66 = a1;
  v63 = a2;
  outlined init with copy of PgQuery_Alias?(v22, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(&v22[v24], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v27 = v62;
  outlined init with take of PgQuery_OidList(&v22[v24], v62, type metadata accessor for PgQuery_Node);
  v60 = Node;
  v28 = *(Node + 20);
  v29 = *&v15[v28];
  v30 = *(v27 + v28);

  if (v29 != v30)
  {

    v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30);

    if (!v31)
    {
      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_25;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v63;
  if (v32)
  {
LABEL_10:
    v33 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    v34 = v65;
    v35 = *(v64 + 48);
    outlined init with copy of PgQuery_Alias?(v66 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v33, v34 + v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v36 = v60;
    if (v25(v34, 1, v60) == 1)
    {
      v37 = v25((v34 + v35), 1, v36);
      v38 = v66;
      if (v37 == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
        v50 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals);
        v51 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals);

        NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v50, v51);

        if (NodeV_Tt1g5)
        {
          v53 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums);
          v54 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums);

          v55 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v53, v54);

          if (v55)
          {
            v56 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);

            v57 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);

            return v56 == v57;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      v39 = v61;
      outlined init with copy of PgQuery_Alias?(v34, v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v40 = v25((v34 + v35), 1, v36);
      v38 = v66;
      if (v40 != 1)
      {
        v43 = v59;
        outlined init with take of PgQuery_OidList(v34 + v35, v59, type metadata accessor for PgQuery_Node);
        v44 = *(v36 + 20);
        v45 = *(v39 + v44);
        v46 = *(v43 + v44);
        if (v45 == v46 || (v47 = *(v39 + v44), , , v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v45, v46), , , v48))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
          v49 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v49 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_20;
        }

        outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
        v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_16:
        _s10Foundation4UUIDVSgWOhTm_0(v34, v41, v42);
        goto LABEL_25;
      }

      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
    }

    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

LABEL_25:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FieldStore(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FieldStore(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FieldStore()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore);

  return Message.hash(into:)();
}

uint64_t PgQuery_FieldSelect._StorageClass.__deallocating_deinit(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  _s10Foundation4UUIDVSgWOhTm_0(v4 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v4 + *a2, a3, a4);
  v8 = *(*v4 + 48);
  v9 = *(*v4 + 52);

  return MEMORY[0x1EEE6BDC0](v4, v8, v9);
}

uint64_t closure #1 in PgQuery_RelabelType.decodeMessage<A>(decoder:)()
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
        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 3)
        {
LABEL_10:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            goto LABEL_10;
          }

LABEL_19:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 6)
        {
          lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RelabelType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](Node);
  v26 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v27 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v13 + 48);
  if (v19(v11, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v18, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v20 = v32;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    if (v20)
    {
      return result;
    }

    v32 = 0;
  }

  v22 = v27;
  outlined init with copy of PgQuery_Alias?(v27 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v19(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v23 = v32;
  }

  else
  {
    v24 = v26;
    outlined init with take of PgQuery_OidList(v9, v26, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v23 = v32;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
    if (v23)
    {
      return result;
    }

    v22 = v27;
  }

  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v23))
  {
    if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v23))
    {
      if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v23))
      {
        if (!*(v27 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat) || (v25 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat + 8), v30 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat), v31 = v25, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v23))
        {
          result = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
          if (result)
          {
            return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RelabelType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v55 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v60 = v20;
  v24 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v55 - v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v23, &v22[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v5 + 48);
  if (v25(v22, 1, Node) == 1)
  {
    v56 = Node;
    v26 = v25(&v22[v24], 1, Node);

    if (v26 == 1)
    {
      v62 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_29;
  }

  v62 = a1;
  v59 = a2;
  outlined init with copy of PgQuery_Alias?(v22, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(&v22[v24], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v27 = v58;
  outlined init with take of PgQuery_OidList(&v22[v24], v58, type metadata accessor for PgQuery_Node);
  v56 = Node;
  v28 = *(Node + 20);
  v29 = *&v15[v28];
  v30 = *(v27 + v28);

  if (v29 != v30)
  {

    v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30);

    if (!v31)
    {
      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_29;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v59;
  if ((v32 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v34 = v61;
  v35 = *(v60 + 48);
  outlined init with copy of PgQuery_Alias?(v62 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v33, v34 + v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = v56;
  if (v25(v34, 1, v56) != 1)
  {
    v39 = v57;
    outlined init with copy of PgQuery_Alias?(v34, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v40 = v25((v34 + v35), 1, v36);
    v38 = v62;
    if (v40 == 1)
    {
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v43 = v55;
    outlined init with take of PgQuery_OidList(v34 + v35, v55, type metadata accessor for PgQuery_Node);
    v44 = *(v36 + 20);
    v45 = *(v39 + v44);
    v46 = *(v43 + v44);
    if (v45 != v46)
    {
      v47 = *(v39 + v44);

      v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v45, v46);

      if (!v48)
      {
        outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
        v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_16;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v49)
    {
      goto LABEL_20;
    }

LABEL_29:

    return 0;
  }

  v37 = v25((v34 + v35), 1, v36);
  v38 = v62;
  if (v37 != 1)
  {
LABEL_15:
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v34, v41, v42);
    goto LABEL_29;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid))
  {
    goto LABEL_29;
  }

  v50 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat);
  v51 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat + 8) == 1)
  {
    if (v51 > 1)
    {
      if (v51 == 2)
      {
        if (v50 != 2)
        {
          goto LABEL_29;
        }
      }

      else if (v50 != 3)
      {
        goto LABEL_29;
      }
    }

    else if (v51)
    {
      if (v50 != 1)
      {
        goto LABEL_29;
      }
    }

    else if (v50)
    {
      goto LABEL_29;
    }
  }

  else if (v50 != v51)
  {
    goto LABEL_29;
  }

  v53 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v54 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v53 == v54;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RelabelType(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RelabelType(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RelabelType()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_CoerceViaIO.decodeMessage<A>(decoder:)()
{
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    v6 = v1;
    for (i = v1; ; i = v5)
    {
      if (v3)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v5 = i;
LABEL_5:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        if (result == 5)
        {
          lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          v5 = v6;
        }

        else
        {
          v5 = i;
          if (result == 6)
          {
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          }
        }
      }

      else if (result == 1 || result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        v5 = v6;
      }

      else
      {
        if (result == 3)
        {
          v5 = i;
          goto LABEL_5;
        }

        v5 = i;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CoerceViaIO.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[2] = a4;
  v25[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](Node);
  v25[0] = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - v17;
  v29 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v13 + 48);
  if (v19(v11, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v18, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v20 = v26;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    if (v20)
    {
      return result;
    }

    v26 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v29 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v19(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v22 = v26;
  }

  else
  {
    v23 = v25[0];
    outlined init with take of PgQuery_OidList(v9, v25[0], type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v22 = v26;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    if (v22)
    {
      return result;
    }
  }

  if (!*(v29 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v22))
  {
    if (!*(v29 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v22))
    {
      if (!*(v29 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat) || (v24 = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8), v27 = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat), v28 = v24, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v22))
      {
        result = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CoerceViaIO.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v55 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v60 = v20;
  v24 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v55 - v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v23, &v22[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v5 + 48);
  if (v25(v22, 1, Node) == 1)
  {
    v56 = Node;
    v26 = v25(&v22[v24], 1, Node);

    if (v26 == 1)
    {
      v62 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_28;
  }

  v62 = a1;
  v59 = a2;
  outlined init with copy of PgQuery_Alias?(v22, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(&v22[v24], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v27 = v58;
  outlined init with take of PgQuery_OidList(&v22[v24], v58, type metadata accessor for PgQuery_Node);
  v56 = Node;
  v28 = *(Node + 20);
  v29 = *&v15[v28];
  v30 = *(v27 + v28);

  if (v29 != v30)
  {

    v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30);

    if (!v31)
    {
      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_28;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v59;
  if ((v32 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v34 = v61;
  v35 = *(v60 + 48);
  outlined init with copy of PgQuery_Alias?(v62 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v33, v34 + v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = v56;
  if (v25(v34, 1, v56) != 1)
  {
    v39 = v57;
    outlined init with copy of PgQuery_Alias?(v34, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v40 = v25((v34 + v35), 1, v36);
    v38 = v62;
    if (v40 == 1)
    {
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v43 = v55;
    outlined init with take of PgQuery_OidList(v34 + v35, v55, type metadata accessor for PgQuery_Node);
    v44 = *(v36 + 20);
    v45 = *(v39 + v44);
    v46 = *(v43 + v44);
    if (v45 != v46)
    {
      v47 = *(v39 + v44);

      v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v45, v46);

      if (!v48)
      {
        outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
        v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_16;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v49)
    {
      goto LABEL_20;
    }

LABEL_28:

    return 0;
  }

  v37 = v25((v34 + v35), 1, v36);
  v38 = v62;
  if (v37 != 1)
  {
LABEL_15:
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v34, v41, v42);
    goto LABEL_28;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid))
  {
    goto LABEL_28;
  }

  v50 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  v51 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8) == 1)
  {
    if (v51 > 1)
    {
      if (v51 == 2)
      {
        if (v50 != 2)
        {
          goto LABEL_28;
        }
      }

      else if (v50 != 3)
      {
        goto LABEL_28;
      }
    }

    else if (v51)
    {
      if (v50 != 1)
      {
        goto LABEL_28;
      }
    }

    else if (v50)
    {
      goto LABEL_28;
    }
  }

  else if (v50 != v51)
  {
    goto LABEL_28;
  }

  v53 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v54 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v53 == v54;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CoerceViaIO(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CoerceViaIO(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CoerceViaIO()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_ArrayCoerceExpr._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_ArrayCoerceExpr.decodeMessage<A>(decoder:)()
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
            goto LABEL_16;
          }

LABEL_21:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
          lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 8)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
LABEL_16:
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            goto LABEL_5;
          }

LABEL_22:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 1 || result == 2)
        {
          goto LABEL_22;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_ArrayCoerceExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](Node);
  v32 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v32 - v22;
  v37 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v24 = *(v15 + 48);
  if (v24(v13, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v25 = v34;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v23, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v26 = v34;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    v25 = v26;
    if (v26)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v37 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v24(v11, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v21, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    if (v25)
    {
      return result;
    }
  }

  v28 = v37;
  v29 = v33;
  outlined init with copy of PgQuery_Alias?(v37 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr, v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v24(v29, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v30 = v32;
    outlined init with take of PgQuery_OidList(v29, v32, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
    if (v25)
    {
      return result;
    }
  }

  if (!*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v25))
  {
    if (!*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v25))
    {
      if (!*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v25))
      {
        if (!*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat) || (v31 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8), v38 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat), v39 = v31, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v25))
        {
          result = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
          if (result)
          {
            return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ArrayCoerceExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v82 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v84 = &v80 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v83 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v87 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v80 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v85 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v89 = &v80 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v80 - v27;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v88 = v26;
  v30 = *(v26 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v80 - v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v29, &v28[v30], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = *(v5 + 48);
  v32 = v5 + 48;
  v31 = v33;
  if (v33(v28, 1, Node) == 1)
  {
    v34 = v31(&v28[v30], 1, Node);

    if (v34 != 1)
    {
LABEL_7:
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
      v38 = v28;
LABEL_18:
      _s10Foundation4UUIDVSgWOhTm_0(v38, v36, v37);
      goto LABEL_19;
    }

    v80 = v32;
    v81 = Node;
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v28, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v31(&v28[v30], 1, Node) == 1)
    {

      v35 = v19;
LABEL_6:
      outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
      goto LABEL_7;
    }

    v80 = v32;
    v39 = v86;
    outlined init with take of PgQuery_OidList(&v28[v30], v86, type metadata accessor for PgQuery_Node);
    v81 = Node;
    v40 = *(Node + 20);
    v41 = *&v19[v40];
    v42 = *(v39 + v40);

    if (v41 != v42)
    {

      v43 = closure #1 in static PgQuery_Node.== infix(_:_:)(v41, v42);

      if (!v43)
      {
        outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
        v66 = v19;
LABEL_27:
        outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_Node);
        v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_8;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v44 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v45 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v47 = v88;
  v46 = v89;
  v48 = *(v88 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v45, v46 + v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v49 = v81;
  if (v31(v46, 1, v81) == 1)
  {
    if (v31((v46 + v48), 1, v49) == 1)
    {
      v50 = v46;
      v51 = v49;
      _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_23;
    }

LABEL_17:
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v38 = v46;
    goto LABEL_18;
  }

  v52 = v87;
  outlined init with copy of PgQuery_Alias?(v46, v87, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v31((v46 + v48), 1, v49) == 1)
  {
    outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
    goto LABEL_17;
  }

  v54 = v84;
  outlined init with take of PgQuery_OidList(v46 + v48, v84, type metadata accessor for PgQuery_Node);
  v51 = v49;
  v55 = *(v49 + 20);
  v56 = *(v52 + v55);
  v57 = *(v54 + v55);
  if (v56 != v57)
  {

    v58 = closure #1 in static PgQuery_Node.== infix(_:_:)(v56, v57);

    if (!v58)
    {
      outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_Node);
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v38 = v89;
      goto LABEL_18;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v59 = v87;
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v60 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_23:
  v61 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr;
  v62 = *(v47 + 48);
  v63 = v85;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr, v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v64 = a2 + v61;
  v28 = v63;
  outlined init with copy of PgQuery_Alias?(v64, v63 + v62, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v65 = v51;
  if (v31(v63, 1, v51) == 1)
  {
    if (v31((v63 + v62), 1, v51) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_33;
    }

    goto LABEL_7;
  }

  v67 = v63;
  v68 = v83;
  outlined init with copy of PgQuery_Alias?(v67, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v31(&v28[v62], 1, v51) == 1)
  {
    v35 = v68;
    goto LABEL_6;
  }

  v69 = v82;
  outlined init with take of PgQuery_OidList(&v28[v62], v82, type metadata accessor for PgQuery_Node);
  v70 = *(v65 + 20);
  v71 = *(v68 + v70);
  v72 = *(v69 + v70);
  if (v71 != v72)
  {
    v73 = *(v68 + v70);

    v74 = closure #1 in static PgQuery_Node.== infix(_:_:)(v71, v72);

    if (!v74)
    {
      outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
      v66 = v68;
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v68, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v75 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_33:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid))
  {
    goto LABEL_19;
  }

  v76 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  v77 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8) == 1)
  {
    if (v77 > 1)
    {
      if (v77 == 2)
      {
        if (v76 == 2)
        {
          goto LABEL_44;
        }
      }

      else if (v76 == 3)
      {
        goto LABEL_44;
      }
    }

    else if (v77)
    {
      if (v76 == 1)
      {
        goto LABEL_44;
      }
    }

    else if (!v76)
    {
      goto LABEL_44;
    }

LABEL_19:

    return 0;
  }

  if (v76 != v77)
  {
    goto LABEL_19;
  }

LABEL_44:
  v78 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v79 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v78 == v79;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ArrayCoerceExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayCoerceExpr and conformance PgQuery_ArrayCoerceExpr, type metadata accessor for PgQuery_ArrayCoerceExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ArrayCoerceExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayCoerceExpr and conformance PgQuery_ArrayCoerceExpr, type metadata accessor for PgQuery_ArrayCoerceExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ArrayCoerceExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayCoerceExpr and conformance PgQuery_ArrayCoerceExpr, type metadata accessor for PgQuery_ArrayCoerceExpr);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_ConvertRowtypeExpr.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 4:
            lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_ConvertRowtypeExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v31 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](Node);
  v25 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  v26 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v20 = *(v14 + 48);
  if (v20(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  v22 = v26;
  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v20(v10, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v23 = v25;
    outlined init with take of PgQuery_OidList(v10, v25, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat) || (v24 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat + 8), v29 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat), v30 = v24, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      result = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ConvertRowtypeExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v55 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v60 = v20;
  v24 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v55 - v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v23, &v22[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v5 + 48);
  if (v25(v22, 1, Node) == 1)
  {
    v56 = Node;
    v26 = v25(&v22[v24], 1, Node);

    if (v26 == 1)
    {
      v62 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v62 = a1;
  v59 = a2;
  outlined init with copy of PgQuery_Alias?(v22, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(&v22[v24], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_27;
  }

  v27 = v58;
  outlined init with take of PgQuery_OidList(&v22[v24], v58, type metadata accessor for PgQuery_Node);
  v56 = Node;
  v28 = *(Node + 20);
  v29 = *&v15[v28];
  v30 = *(v27 + v28);

  if (v29 != v30)
  {

    v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30);

    if (!v31)
    {
      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v59;
  if ((v32 & 1) == 0)
  {
LABEL_27:

    return 0;
  }

LABEL_10:
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v34 = v61;
  v35 = *(v60 + 48);
  outlined init with copy of PgQuery_Alias?(v62 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v33, v34 + v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = v56;
  if (v25(v34, 1, v56) == 1)
  {
    v37 = v25((v34 + v35), 1, v36);
    v38 = v62;
    if (v37 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v39 = v57;
  outlined init with copy of PgQuery_Alias?(v34, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v40 = v25((v34 + v35), 1, v36);
  v38 = v62;
  if (v40 == 1)
  {
    outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
LABEL_15:
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v34, v41, v42);
    goto LABEL_27;
  }

  v43 = v55;
  outlined init with take of PgQuery_OidList(v34 + v35, v55, type metadata accessor for PgQuery_Node);
  v44 = *(v36 + 20);
  v45 = *(v39 + v44);
  v46 = *(v43 + v44);
  if (v45 != v46)
  {
    v47 = *(v39 + v44);

    v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v45, v46);

    if (!v48)
    {
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v49 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype))
  {
    goto LABEL_27;
  }

  v50 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat);
  v51 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat + 8) == 1)
  {
    if (v51 > 1)
    {
      if (v51 == 2)
      {
        if (v50 != 2)
        {
          goto LABEL_27;
        }
      }

      else if (v50 != 3)
      {
        goto LABEL_27;
      }
    }

    else if (v51)
    {
      if (v50 != 1)
      {
        goto LABEL_27;
      }
    }

    else if (v50)
    {
      goto LABEL_27;
    }
  }

  else if (v50 != v51)
  {
    goto LABEL_27;
  }

  v53 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v54 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v53 == v54;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ConvertRowtypeExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConvertRowtypeExpr and conformance PgQuery_ConvertRowtypeExpr, type metadata accessor for PgQuery_ConvertRowtypeExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ConvertRowtypeExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConvertRowtypeExpr and conformance PgQuery_ConvertRowtypeExpr, type metadata accessor for PgQuery_ConvertRowtypeExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ConvertRowtypeExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConvertRowtypeExpr and conformance PgQuery_ConvertRowtypeExpr, type metadata accessor for PgQuery_ConvertRowtypeExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_CollateExpr.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for PgQuery_CollateExpr(0) + 20);
  v2 = *(v0 + v1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = *(v0 + v1);
    Collate = type metadata accessor for PgQuery_CollateExpr._StorageClass(0);
    v5 = *(Collate + 48);
    v6 = *(Collate + 52);
    v7 = swift_allocObject();
    v8 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    Node = type metadata accessor for PgQuery_Node(0);
    v10 = *(*(Node - 8) + 56);
    v10(v7 + v8, 1, 1, Node);
    v11 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    v10(v7 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid;
    *(v7 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) = 0;
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v7 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;

    outlined assign with copy of PgQuery_Node?(v3 + v14, v7 + v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined assign with copy of PgQuery_Node?(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v7 + v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v7 + v12) = *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid);
    LODWORD(v12) = *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v7 + v13) = v12;

    *(v0 + v1) = v7;
  }

  return closure #1 in PgQuery_CollateExpr.decodeMessage<A>(decoder:)();
}

uint64_t closure #1 in PgQuery_CollateExpr.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else if (result == 1 || result == 2)
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

uint64_t closure #1 in PgQuery_CollateExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](Node);
  v25 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v26 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v13 + 48);
  if (v19(v11, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v18, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v20 = v29;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    if (v20)
    {
      return result;
    }

    v29 = 0;
  }

  v22 = v26;
  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v19(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v23 = v29;
  }

  else
  {
    v24 = v25;
    outlined init with take of PgQuery_OidList(v9, v25, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v23 = v29;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
    if (v23)
    {
      return result;
    }

    v22 = v26;
  }

  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v23))
  {
    result = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
    if (result)
    {
      return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CollateExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateExpr and conformance PgQuery_CollateExpr, type metadata accessor for PgQuery_CollateExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CollateExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateExpr and conformance PgQuery_CollateExpr, type metadata accessor for PgQuery_CollateExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CollateExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateExpr and conformance PgQuery_CollateExpr, type metadata accessor for PgQuery_CollateExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_SubLink._StorageClass.__deallocating_deinit(void *a1, void *a2, void *a3, void *a4)
{
  _s10Foundation4UUIDVSgWOhTm_0(v4 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v4 + *a2, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(v4 + *a3);

  _s10Foundation4UUIDVSgWOhTm_0(v4 + *a4, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*v4 + 48);
  v10 = *(*v4 + 52);

  return MEMORY[0x1EEE6BDC0](v4, v9, v10);
}

uint64_t closure #1 in PgQuery_CaseExpr.decodeMessage<A>(decoder:)()
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
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2 || result == 3)
        {
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 4)
        {
          goto LABEL_4;
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

uint64_t closure #1 in PgQuery_CaseExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v37 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](Node);
  v34 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v35 = &v34 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v22 = a1;
  v24 = v23;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v14 + 48);
  v36 = v14 + 48;
  if (v25(v12, 1, v24) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v26 = v40;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v21, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v26 = v40;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    if (v26)
    {
      return result;
    }
  }

  v29 = v37;
  v28 = v38;
  if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v26))
  {
    if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v26))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v25(v29, 1, v24) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v30 = v29;
        v31 = v35;
        outlined init with take of PgQuery_OidList(v30, v35, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_Node);
        if (v26)
        {
          return result;
        }
      }

      if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16))
      {
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

        if (v26)
        {
          return result;
        }

        v32 = 0;
      }

      else
      {
        v32 = v26;
      }

      outlined init with copy of PgQuery_Alias?(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult, v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v25(v28, 1, v24) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v33 = v34;
        outlined init with take of PgQuery_OidList(v28, v34, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
        if (v32)
        {
          return result;
        }
      }

      result = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CaseExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v82 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v85 = &v80 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v83 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v86 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v80 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v84 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v88 = &v80 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v80 - v27;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v87 = v26;
  v30 = *(v26 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v80 - v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v29, &v28[v30], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = *(v5 + 48);
  if (v31(v28, 1, Node) == 1)
  {
    v81 = Node;
    v32 = v31(&v28[v30], 1, Node);

    if (v32 != 1)
    {
LABEL_7:
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
      v36 = v28;
LABEL_9:
      _s10Foundation4UUIDVSgWOhTm_0(v36, v34, v35);
      goto LABEL_37;
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v28, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v31(&v28[v30], 1, Node) == 1)
    {

      v33 = v19;
LABEL_6:
      outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
      goto LABEL_7;
    }

    v37 = &v28[v30];
    v38 = v89;
    outlined init with take of PgQuery_OidList(v37, v89, type metadata accessor for PgQuery_Node);
    v81 = Node;
    v39 = *(Node + 20);
    v40 = *&v19[v39];
    v41 = *(v38 + v39);

    if (v40 != v41)
    {

      v42 = closure #1 in static PgQuery_Node.== infix(_:_:)(v40, v41);

      if (!v42)
      {
        outlined destroy of PgQuery_OidList(v89, type metadata accessor for PgQuery_Node);
        v51 = v19;
LABEL_19:
        outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
        v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_8;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v43 = v89;
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v44 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid))
  {
    goto LABEL_37;
  }

  v45 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v46 = v88;
  v47 = *(v87 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v88, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v45, v46 + v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v48 = v81;
  if (v31(v46, 1, v81) == 1)
  {
    if (v31((v46 + v47), 1, v48) == 1)
    {
      v49 = v46;
      v50 = v48;
      _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

LABEL_22:
    v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v36 = v46;
    goto LABEL_9;
  }

  v52 = v86;
  outlined init with copy of PgQuery_Alias?(v46, v86, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v31((v46 + v47), 1, v48) == 1)
  {
    outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
    goto LABEL_22;
  }

  v53 = v85;
  outlined init with take of PgQuery_OidList(v46 + v47, v85, type metadata accessor for PgQuery_Node);
  v50 = v48;
  v54 = *(v48 + 20);
  v55 = *(v52 + v54);
  v56 = *(v53 + v54);
  if (v55 != v56)
  {

    v57 = closure #1 in static PgQuery_Node.== infix(_:_:)(v55, v56);

    if (!v57)
    {
      outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v86, type metadata accessor for PgQuery_Node);
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v36 = v88;
      goto LABEL_9;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v58 = v86;
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v88, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v59 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_26:
  v60 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v61 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v60, v61);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_37;
  }

  v63 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult;
  v64 = *(v87 + 48);
  v65 = v84;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult, v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v66 = a2 + v63;
  v28 = v65;
  outlined init with copy of PgQuery_Alias?(v66, v65 + v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v67 = v50;
  if (v31(v65, 1, v50) == 1)
  {
    if (v31((v65 + v64), 1, v50) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_36:
      v77 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v78 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v77 == v78;
    }

    goto LABEL_7;
  }

  v68 = v65;
  v69 = v83;
  outlined init with copy of PgQuery_Alias?(v68, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v31(&v28[v64], 1, v50) == 1)
  {
    v33 = v69;
    goto LABEL_6;
  }

  v70 = v82;
  outlined init with take of PgQuery_OidList(&v28[v64], v82, type metadata accessor for PgQuery_Node);
  v71 = *(v67 + 20);
  v72 = *(v69 + v71);
  v73 = *(v70 + v71);
  if (v72 != v73)
  {
    v74 = *(v69 + v71);

    v75 = closure #1 in static PgQuery_Node.== infix(_:_:)(v72, v73);

    if (!v75)
    {
      outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
      v51 = v69;
      goto LABEL_19;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v76)
  {
    goto LABEL_36;
  }

LABEL_37:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CaseExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CaseExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CaseExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_ArrayCoerceExpr._StorageClass.__deallocating_deinit(void *a1, void *a2, void *a3)
{
  _s10Foundation4UUIDVSgWOhTm_0(v3 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v3 + *a2, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v3 + *a3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*v3 + 48);
  v7 = *(*v3 + 52);

  return MEMORY[0x1EEE6BDC0](v3, v6, v7);
}

void type metadata completion function for PgQuery_CaseWhen._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_CaseWhen.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for PgQuery_CaseWhen(0) + 20);
  v2 = *(v0 + v1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = *(v0 + v1);
    Case = type metadata accessor for PgQuery_CaseWhen._StorageClass(0);
    v5 = *(Case + 48);
    v6 = *(Case + 52);
    v7 = swift_allocObject();
    v17 = v0;
    v8 = v1;
    v9 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    Node = type metadata accessor for PgQuery_Node(0);
    v11 = *(*(Node - 8) + 56);
    v11(v7 + v9, 1, 1, Node);
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
    v11(v7 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, 1, 1, Node);
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result;
    v11(v7 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result, 1, 1, Node);
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v7 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;

    outlined assign with copy of PgQuery_Node?(v3 + v15, v7 + v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined assign with copy of PgQuery_Node?(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v7 + v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined assign with copy of PgQuery_Node?(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result, v7 + v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    LODWORD(v12) = *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v7 + v14) = v12;

    *(v17 + v8) = v7;
  }

  return closure #1 in PgQuery_CaseWhen.decodeMessage<A>(decoder:)();
}

uint64_t closure #1 in PgQuery_CaseWhen.decodeMessage<A>(decoder:)()
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

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_4;
        }

        if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CaseWhen.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v34 = a2;
  v35 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(Node - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](Node);
  v31 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v30 - v23;
  v36 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v16 + 48);
  if (v25(v14, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v24, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v36 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v22, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  v27 = v32;
  outlined init with copy of PgQuery_Alias?(v36 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result, v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(v27, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v28 = v27;
    v29 = v31;
    outlined init with take of PgQuery_OidList(v28, v31, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  result = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_CaseWhen.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v76 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v78 = &v76 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v77 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v80 = &v76 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v76 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v79 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v81 = &v76 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v76 - v27;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v82 = v26;
  v30 = *(v26 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v76 - v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v29, &v28[v30], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = *(v5 + 48);
  if (v31(v28, 1, Node) == 1)
  {
    v32 = v31(&v28[v30], 1, Node);

    if (v32 != 1)
    {
LABEL_7:
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
      v36 = v28;
LABEL_18:
      _s10Foundation4UUIDVSgWOhTm_0(v36, v34, v35);
      goto LABEL_19;
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v28, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v31(&v28[v30], 1, Node) == 1)
    {

      v33 = v19;
LABEL_6:
      outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
      goto LABEL_7;
    }

    v37 = &v28[v30];
    v38 = v83;
    outlined init with take of PgQuery_OidList(v37, v83, type metadata accessor for PgQuery_Node);
    v39 = Node;
    v40 = *(Node + 20);
    v41 = *&v19[v40];
    v42 = *(v38 + v40);

    if (v41 != v42)
    {

      v43 = closure #1 in static PgQuery_Node.== infix(_:_:)(v41, v42);

      if (!v43)
      {
        outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_Node);
        v63 = v19;
LABEL_28:
        outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_Node);
        v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_8;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v44 = v83;
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    Node = v39;
    if ((v45 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v46 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  v47 = v81;
  v48 = *(v82 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v81, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v46, v47 + v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v31(v47, 1, Node) == 1)
  {
    if (v31((v47 + v48), 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_24;
    }

LABEL_17:
    v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v36 = v47;
    goto LABEL_18;
  }

  v49 = v80;
  outlined init with copy of PgQuery_Alias?(v47, v80, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v31((v47 + v48), 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
    goto LABEL_17;
  }

  v51 = v78;
  outlined init with take of PgQuery_OidList(v47 + v48, v78, type metadata accessor for PgQuery_Node);
  v52 = *(Node + 20);
  v53 = *(v49 + v52);
  v54 = *(v51 + v52);
  if (v53 != v54)
  {
    v55 = *(v49 + v52);

    v56 = closure #1 in static PgQuery_Node.== infix(_:_:)(v53, v54);

    if (!v56)
    {
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v36 = v81;
      goto LABEL_18;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v81, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v57 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_24:
  v58 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result;
  v59 = *(v82 + 48);
  v60 = Node;
  v61 = v79;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result, v79, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v62 = a2 + v58;
  v28 = v61;
  outlined init with copy of PgQuery_Alias?(v62, v61 + v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v31(v61, 1, v60) == 1)
  {
    if (v31((v61 + v59), 1, v60) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_34:
      v74 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v75 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v74 == v75;
    }

    goto LABEL_7;
  }

  v64 = v61;
  v65 = v60;
  v66 = v77;
  outlined init with copy of PgQuery_Alias?(v64, v77, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v31(&v28[v59], 1, v60) == 1)
  {
    v33 = v66;
    goto LABEL_6;
  }

  v67 = v76;
  outlined init with take of PgQuery_OidList(&v28[v59], v76, type metadata accessor for PgQuery_Node);
  v68 = *(v65 + 20);
  v69 = *(v66 + v68);
  v70 = *(v67 + v68);
  if (v69 != v70)
  {
    v71 = *(v66 + v68);

    v72 = closure #1 in static PgQuery_Node.== infix(_:_:)(v69, v70);

    if (!v72)
    {
      outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
      v63 = v66;
      goto LABEL_28;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v73 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v73)
  {
    goto LABEL_34;
  }

LABEL_19:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CaseWhen(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseWhen and conformance PgQuery_CaseWhen, type metadata accessor for PgQuery_CaseWhen);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CaseWhen(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseWhen and conformance PgQuery_CaseWhen, type metadata accessor for PgQuery_CaseWhen);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CaseWhen()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseWhen and conformance PgQuery_CaseWhen, type metadata accessor for PgQuery_CaseWhen);

  return Message.hash(into:)();
}

uint64_t PgQuery_CaseTestExpr.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for PgQuery_CaseTestExpr(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = *(v0 + v1);
    CaseTest = type metadata accessor for PgQuery_CaseTestExpr._StorageClass(0);
    v7 = *(CaseTest + 48);
    v8 = *(CaseTest + 52);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) = 0;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = 0;
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;

    outlined assign with copy of PgQuery_Node?(v5 + v15, v9 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v9 + v12) = *(v5 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID);
    *(v9 + v13) = *(v5 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod);
    v16 = *(v5 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

    *(v9 + v14) = v16;

    *(v0 + v1) = v9;
  }

  return closure #1 in PgQuery_CaseTestExpr.decodeMessage<A>(decoder:)();
}

uint64_t closure #1 in PgQuery_CaseTestExpr.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      else if (result == 4)
      {
        goto LABEL_11;
      }
    }

    else if (result == 1)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    else if (result == 2)
    {
LABEL_11:
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }
}

uint64_t closure #1 in PgQuery_CaseTestExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v17 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v14 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v17[0];
  if (!*(v17[0] + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v14))
    {
      result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CaseTestExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v34 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v35;
      outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_14;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

    return v31 == v32;
  }

LABEL_14:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CaseTestExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseTestExpr and conformance PgQuery_CaseTestExpr, type metadata accessor for PgQuery_CaseTestExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CaseTestExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseTestExpr and conformance PgQuery_CaseTestExpr, type metadata accessor for PgQuery_CaseTestExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CaseTestExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseTestExpr and conformance PgQuery_CaseTestExpr, type metadata accessor for PgQuery_CaseTestExpr);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_ArrayExpr.decodeMessage<A>(decoder:)()
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
        if (result == 1)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2 || result == 3)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 4)
        {
          goto LABEL_4;
        }

        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_ArrayExpr.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  Node = type metadata accessor for PgQuery_Node(0);
  v7 = *(Node - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v12 = v11;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v7 + 48))(v5, 1, v12) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v13 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v5, v10, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v13 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
    if (v13)
    {
      return result;
    }
  }

  v15 = v17;
  if (!*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
  {
    if (!*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
    {
      if (!*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
      {
        if (!*(*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v13))
        {
          if (*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v13))
          {
            result = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
            if (result)
            {
              return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ArrayExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v37 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v38;
      outlined init with take of PgQuery_OidList(&v16[v18], v38, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_16;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements);
    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements);

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

    if ((NodeV_Tt1g5 & 1) != 0 && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims))
    {
      v35 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v36 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v35 == v36;
    }
  }

LABEL_16:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ArrayExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ArrayExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ArrayExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_RowExpr._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t closure #1 in PgQuery_RowExpr.decodeMessage<A>(decoder:)()
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
            lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
LABEL_18:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 6:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 2:
            goto LABEL_18;
          case 3:
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RowExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v16 = v15;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v11 + 48))(v9, 1, v16) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v9, v14, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  v18 = v21;
  if (!*(*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat) || (v19 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat + 8), v22 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat), v23 = v19, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
      {
        if (!*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
        {
          result = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
          if (result)
          {
            return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RowExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v42 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v42 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v43;
      outlined init with take of PgQuery_OidList(&v16[v18], v43, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_28;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

  if ((NodeV_Tt1g5 & 1) == 0 || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid))
  {
    goto LABEL_28;
  }

  v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat);
  v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat + 8) == 1)
  {
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        if (v34 != 2)
        {
          goto LABEL_28;
        }
      }

      else if (v34 != 3)
      {
        goto LABEL_28;
      }
    }

    else if (v35)
    {
      if (v34 != 1)
      {
        goto LABEL_28;
      }
    }

    else if (v34)
    {
      goto LABEL_28;
    }
  }

  else if (v34 != v35)
  {
    goto LABEL_28;
  }

  v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames);
  v37 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames);

  v38 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

  if (v38)
  {
    v39 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v40 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v39 == v40;
  }

LABEL_28:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RowExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowExpr and conformance PgQuery_RowExpr, type metadata accessor for PgQuery_RowExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RowExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowExpr and conformance PgQuery_RowExpr, type metadata accessor for PgQuery_RowExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RowExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowExpr and conformance PgQuery_RowExpr, type metadata accessor for PgQuery_RowExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_RowCompareExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies) = v7;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids) = v7;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs) = v7;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs) = v7;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype + 8);
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype);
  *(v5 + 8) = v12;
  v13 = *(v1 + v6);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos);

  v14 = *(v1 + v8);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies);

  v15 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids);

  v16 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs);

  v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs);

  v18 = *(v1 + v11);
  *(v1 + v11) = v17;

  return v1;
}

uint64_t PgQuery_RowCompareExpr._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs);

  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

void type metadata completion function for PgQuery_RangeTblFunction._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

{
  type metadata completion function for PgQuery_RangeTblFunction._StorageClass();
}

uint64_t PgQuery_SubscriptingRef.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v17 = a6(v18);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t closure #1 in PgQuery_RowCompareExpr.decodeMessage<A>(decoder:)()
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
        if (result == 1)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

LABEL_15:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        lazy protocol witness table accessor for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result <= 6 || result == 7)
      {
        goto LABEL_15;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RowCompareExpr.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  Node = type metadata accessor for PgQuery_Node(0);
  v7 = *(Node - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v12 = v11;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v7 + 48))(v5, 1, v12) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v22;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v5, v10, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v15 = v22;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v14 = v15;
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
    if (v15)
    {
      return result;
    }
  }

  v16 = v19;
  if (!*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype) || (v17 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype + 8), v20 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype), v21 = v17, lazy protocol witness table accessor for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v14))
  {
    if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v14))
    {
      if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v14))
      {
        if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v14))
        {
          if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v14))
          {
            if (*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs) + 16))
            {
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

              dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_RowCompareExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v50 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v50 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    v23 = a1;
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v28 = v51;
      outlined init with take of PgQuery_OidList(&v16[v18], v51, type metadata accessor for PgQuery_Node);
      v29 = *(Node + 20);
      v30 = *&v11[v29];
      v31 = *(v28 + v29);

      if (v30 == v31 || (, , v32 = closure #1 in static PgQuery_Node.== infix(_:_:)(v30, v31), , , v32))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v33 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

      outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v24, v25);
      goto LABEL_8;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  v23 = a1;
  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_13:
  v34 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype);
  v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype + 8) == 1)
  {
    if (v35 <= 2)
    {
      if (v35)
      {
        if (v35 == 1)
        {
          if (v34 != 1)
          {
            goto LABEL_8;
          }
        }

        else if (v34 != 2)
        {
          goto LABEL_8;
        }
      }

      else if (v34)
      {
        goto LABEL_8;
      }
    }

    else if (v35 > 4)
    {
      if (v35 == 5)
      {
        if (v34 != 5)
        {
          goto LABEL_8;
        }
      }

      else if (v34 != 6)
      {
        goto LABEL_8;
      }
    }

    else if (v35 == 3)
    {
      if (v34 != 3)
      {
        goto LABEL_8;
      }
    }

    else if (v34 != 4)
    {
      goto LABEL_8;
    }
  }

  else if (v34 != v35)
  {
    goto LABEL_8;
  }

  v36 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos);
  v37 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

  if (NodeV_Tt1g5)
  {
    v39 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies);
    v40 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies);

    v41 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v39, v40);

    if (v41)
    {
      v42 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids);
      v43 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids);

      v44 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v42, v43);

      if (v44)
      {
        v45 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs);
        v46 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs);

        v47 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v45, v46);

        if (v47)
        {
          v48 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs);
          v49 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs);

          v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v48, v49);

          return v26 & 1;
        }
      }
    }
  }

LABEL_8:

  v26 = 0;
  return v26 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RowCompareExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowCompareExpr and conformance PgQuery_RowCompareExpr, type metadata accessor for PgQuery_RowCompareExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RowCompareExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowCompareExpr and conformance PgQuery_RowCompareExpr, type metadata accessor for PgQuery_RowCompareExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RowCompareExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowCompareExpr and conformance PgQuery_RowCompareExpr, type metadata accessor for PgQuery_RowCompareExpr);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_CoalesceExpr._StorageClass()
{
  type metadata completion function for PgQuery_CoalesceExpr._StorageClass();
}

{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_CoalesceExpr.decodeMessage<A>(decoder:)()
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
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

LABEL_14:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_14;
          case 4:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CoalesceExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v17 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v14 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v17[0];
  if (!*(v17[0] + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
    {
      if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v14))
      {
        result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CoalesceExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v37 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v38;
      outlined init with take of PgQuery_OidList(&v16[v18], v38, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_15;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

    if (NodeV_Tt1g5)
    {
      v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v34 == v35;
    }
  }

LABEL_15:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CoalesceExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CoalesceExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CoalesceExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_MinMaxExpr.decodeMessage<A>(decoder:)()
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
        if (result == 1)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2 || result == 3)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 4)
        {
          goto LABEL_4;
        }

        lazy protocol witness table accessor for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_MinMaxExpr.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  Node = type metadata accessor for PgQuery_Node(0);
  v7 = *(Node - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v12 = v11;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v7 + 48))(v5, 1, v12) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v13 = v22;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v5, v10, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v13 = v22;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
    if (v13)
    {
      return result;
    }
  }

  v15 = v19;
  if (!*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
  {
    if (!*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
    {
      if (!*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
      {
        v16 = v13;
        if (*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op))
        {
          v17 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8);
          v20 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
          v21 = v17;
          lazy protocol witness table accessor for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp();
          result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
          if (v13)
          {
            return result;
          }

          v16 = 0;
        }

        if (!*(*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v16))
        {
          result = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
          if (result)
          {
            return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_MinMaxExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v39 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v39 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v40;
      outlined init with take of PgQuery_OidList(&v16[v18], v40, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_27;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid))
  {
    goto LABEL_27;
  }

  v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8) == 1)
  {
    if (v32)
    {
      if (v32 == 1)
      {
        if (v31 != 1)
        {
          goto LABEL_27;
        }
      }

      else if (v31 != 2)
      {
        goto LABEL_27;
      }
    }

    else if (v31)
    {
      goto LABEL_27;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_27;
  }

  v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v34 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v33, v34);

  if (NodeV_Tt1g5)
  {
    v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v37 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v36 == v37;
  }

LABEL_27:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_MinMaxExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MinMaxExpr and conformance PgQuery_MinMaxExpr, type metadata accessor for PgQuery_MinMaxExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_MinMaxExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MinMaxExpr and conformance PgQuery_MinMaxExpr, type metadata accessor for PgQuery_MinMaxExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_MinMaxExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MinMaxExpr and conformance PgQuery_MinMaxExpr, type metadata accessor for PgQuery_MinMaxExpr);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_SQLValueFunction.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          lazy protocol witness table accessor for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 4 || result == 5)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_SQLValueFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v18 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v20;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v14 = v20;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v18[0];
  if (!*(v18[0] + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op) || (v17 = *(v18[0] + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), v18[2] = *(v18[0] + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), v19 = v17, lazy protocol witness table accessor for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v14))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
    {
      if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v14))
      {
        result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_SQLValueFunction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v35 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v35 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v36;
      outlined init with take of PgQuery_OidList(&v16[v18], v36, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_15;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  v31 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8);
  if (specialized == infix<A>(_:_:)(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op)) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod))
  {
    v32 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v33 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v32 == v33;
  }

LABEL_15:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SQLValueFunction(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SQLValueFunction and conformance PgQuery_SQLValueFunction, type metadata accessor for PgQuery_SQLValueFunction);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SQLValueFunction(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SQLValueFunction and conformance PgQuery_SQLValueFunction, type metadata accessor for PgQuery_SQLValueFunction);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SQLValueFunction()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SQLValueFunction and conformance PgQuery_SQLValueFunction, type metadata accessor for PgQuery_SQLValueFunction);

  return Message.hash(into:)();
}

uint64_t PgQuery_XmlExpr._StorageClass.init()()
{
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v3 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v5;
  v6 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  return v0;
}

uint64_t PgQuery_XmlExpr._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

void type metadata completion function for PgQuery_XmlExpr._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_XmlExpr.decodeMessage<A>(decoder:)()
{
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    v9 = v1;
    v4 = v10;
    for (i = v1; ; i = v7)
    {
      if (v3)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
LABEL_4:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
LABEL_5:
            v6 = v10;
            v7 = v9;
            goto LABEL_6;
          }

          v6 = v4;
          v8 = v0;
          lazy protocol witness table accessor for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType();
LABEL_22:
          v0 = v8;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_23:
          v7 = v9;
          goto LABEL_6;
        }

        if (result == 8)
        {
          v6 = v4;
          v7 = i;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        v7 = i;
        if (result == 9)
        {
          v6 = v4;
          goto LABEL_28;
        }

        if (result == 10)
        {
          v6 = v4;
LABEL_28:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_6;
        }

        v6 = v4;
      }

      else
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            goto LABEL_5;
          }

          v6 = v4;
          if (result == 2)
          {
            v8 = v0;
            lazy protocol witness table accessor for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp();
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        if (result != 3)
        {
          goto LABEL_4;
        }

        v7 = i;
        v6 = v4;
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
      v4 = v6;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_XmlExpr.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - v4;
  Node = type metadata accessor for PgQuery_Node(0);
  v7 = *(Node - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v12 = v11;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v7 + 48))(v5, 1, v12) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v13 = v26;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v5, v10, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v14 = v26;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v13 = v14;
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v23;
  if (!*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op) || (v17 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), v24 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), v25 = v17, lazy protocol witness table accessor for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v13))
  {
    v18 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8);
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name) & 0xFFFFFFFFFFFFLL;
    }

    if (!v19 || (v20 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v13))
    {
      if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v13))
      {
        if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v13))
        {
          if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v13))
          {
            if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption) || (v21 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption + 8), v24 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption), v25 = v21, lazy protocol witness table accessor for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v13))
            {
              if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
              {
                if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v13))
                {
                  result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
                  if (result)
                  {
                    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_XmlExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v46 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v46 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v47;
      outlined init with take of PgQuery_OidList(&v16[v18], v47, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_32;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  v31 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8);
  if (!specialized == infix<A>(_:_:)(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op)) || (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_32;
  }

  v32 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs);
  v33 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v32, v33);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_32;
  }

  v35 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames);
  v36 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames);

  v37 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v35, v36);

  if ((v37 & 1) == 0)
  {
    goto LABEL_32;
  }

  v38 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v39 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v40 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v38, v39);

  if ((v40 & 1) == 0)
  {
    goto LABEL_32;
  }

  v41 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption);
  v42 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption + 8) == 1)
  {
    if (v42)
    {
      if (v42 == 1)
      {
        if (v41 != 1)
        {
          goto LABEL_32;
        }
      }

      else if (v41 != 2)
      {
        goto LABEL_32;
      }
    }

    else if (v41)
    {
      goto LABEL_32;
    }
  }

  else if (v41 != v42)
  {
    goto LABEL_32;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod))
  {
    v43 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v44 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v43 == v44;
  }

LABEL_32:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_XmlExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_XmlExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_XmlExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_NullTest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            lazy protocol witness table accessor for type PgQuery_NullTestType and conformance PgQuery_NullTestType();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_NullTest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v31 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](Node);
  v25 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  v26 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v20 = *(v14 + 48);
  if (v20(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  v22 = v26;
  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v20(v10, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v23 = v25;
    outlined init with take of PgQuery_OidList(v10, v25, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype) || (v24 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype + 8), v29 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype), v30 = v24, lazy protocol witness table accessor for type PgQuery_NullTestType and conformance PgQuery_NullTestType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      result = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_NullTest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v55 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v60 = v20;
  v24 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v55 - v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v23, &v22[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v5 + 48);
  if (v25(v22, 1, Node) == 1)
  {
    v56 = Node;
    v26 = v25(&v22[v24], 1, Node);

    if (v26 == 1)
    {
      v62 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_27;
  }

  v62 = a1;
  v59 = a2;
  outlined init with copy of PgQuery_Alias?(v22, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(&v22[v24], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v27 = v58;
  outlined init with take of PgQuery_OidList(&v22[v24], v58, type metadata accessor for PgQuery_Node);
  v56 = Node;
  v28 = *(Node + 20);
  v29 = *&v15[v28];
  v30 = *(v27 + v28);

  if (v29 != v30)
  {

    v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30);

    if (!v31)
    {
      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v59;
  if ((v32 & 1) == 0)
  {
LABEL_27:

    return 0;
  }

LABEL_10:
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v34 = v61;
  v35 = *(v60 + 48);
  outlined init with copy of PgQuery_Alias?(v62 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v33, v34 + v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = v56;
  if (v25(v34, 1, v56) == 1)
  {
    v37 = v25((v34 + v35), 1, v36);
    v38 = v62;
    if (v37 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v39 = v57;
  outlined init with copy of PgQuery_Alias?(v34, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v40 = v25((v34 + v35), 1, v36);
  v38 = v62;
  if (v40 == 1)
  {
    outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
LABEL_15:
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v34, v41, v42);
    goto LABEL_27;
  }

  v43 = v55;
  outlined init with take of PgQuery_OidList(v34 + v35, v55, type metadata accessor for PgQuery_Node);
  v44 = *(v36 + 20);
  v45 = *(v39 + v44);
  v46 = *(v43 + v44);
  if (v45 != v46)
  {
    v47 = *(v39 + v44);

    v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v45, v46);

    if (!v48)
    {
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v49 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  v50 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype);
  v51 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype + 8) == 1)
  {
    if (v51)
    {
      if (v51 == 1)
      {
        if (v50 == 1)
        {
          goto LABEL_34;
        }
      }

      else if (v50 == 2)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }

    if (v50)
    {
      goto LABEL_27;
    }
  }

  else if (v50 != v51)
  {
    goto LABEL_27;
  }

LABEL_34:
  if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow))
  {
    goto LABEL_27;
  }

  v53 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v54 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v53 == v54;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_NullTest(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullTest and conformance PgQuery_NullTest, type metadata accessor for PgQuery_NullTest);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_NullTest(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullTest and conformance PgQuery_NullTest, type metadata accessor for PgQuery_NullTest);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_NullTest()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullTest and conformance PgQuery_NullTest, type metadata accessor for PgQuery_NullTest);

  return Message.hash(into:)();
}

uint64_t PgQuery_BooleanTest.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for PgQuery_BooleanTest(0) + 20);
  v2 = *(v0 + v1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = *(v0 + v1);
    Boolean = type metadata accessor for PgQuery_BooleanTest._StorageClass(0);
    v5 = *(Boolean + 48);
    v6 = *(Boolean + 52);
    v7 = swift_allocObject();
    v8 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    Node = type metadata accessor for PgQuery_Node(0);
    v10 = *(*(Node - 8) + 56);
    v10(v7 + v8, 1, 1, Node);
    v11 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    v10(v7 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
    v12 = v7 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype;
    *v12 = 0;
    *(v12 + 8) = 1;
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v7 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;

    outlined assign with copy of PgQuery_Node?(v3 + v14, v7 + v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined assign with copy of PgQuery_Node?(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v7 + v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v15 = *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype + 8);
    *v12 = *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype);
    *(v12 + 8) = v15;
    LODWORD(v12) = *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v7 + v13) = v12;

    *(v0 + v1) = v7;
  }

  return closure #1 in PgQuery_BooleanTest.decodeMessage<A>(decoder:)();
}

uint64_t closure #1 in PgQuery_BooleanTest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        lazy protocol witness table accessor for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_BooleanTest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v31 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](Node);
  v25 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  v26 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v20 = *(v14 + 48);
  if (v20(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  v22 = v26;
  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v20(v10, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v23 = v25;
    outlined init with take of PgQuery_OidList(v10, v25, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype) || (v24 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype + 8), v29 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype), v30 = v24, lazy protocol witness table accessor for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
    if (result)
    {
      return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_BooleanTest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v55 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v60 = v20;
  v24 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v55 - v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v23, &v22[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v5 + 48);
  if (v25(v22, 1, Node) == 1)
  {
    v56 = Node;
    v26 = v25(&v22[v24], 1, Node);

    if (v26 == 1)
    {
      v62 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_28;
  }

  v62 = a1;
  v59 = a2;
  outlined init with copy of PgQuery_Alias?(v22, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(&v22[v24], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v27 = v58;
  outlined init with take of PgQuery_OidList(&v22[v24], v58, type metadata accessor for PgQuery_Node);
  v56 = Node;
  v28 = *(Node + 20);
  v29 = *&v15[v28];
  v30 = *(v27 + v28);

  if (v29 != v30)
  {

    v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30);

    if (!v31)
    {
      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_28;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v59;
  if ((v32 & 1) == 0)
  {
LABEL_28:

    return 0;
  }

LABEL_10:
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v34 = v61;
  v35 = *(v60 + 48);
  outlined init with copy of PgQuery_Alias?(v62 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v33, v34 + v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = v56;
  if (v25(v34, 1, v56) == 1)
  {
    v37 = v25((v34 + v35), 1, v36);
    v38 = v62;
    if (v37 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v39 = v57;
  outlined init with copy of PgQuery_Alias?(v34, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v40 = v25((v34 + v35), 1, v36);
  v38 = v62;
  if (v40 == 1)
  {
    outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
LABEL_15:
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v34, v41, v42);
    goto LABEL_28;
  }

  v43 = v55;
  outlined init with take of PgQuery_OidList(v34 + v35, v55, type metadata accessor for PgQuery_Node);
  v44 = *(v36 + 20);
  v45 = *(v39 + v44);
  v46 = *(v43 + v44);
  if (v45 != v46)
  {
    v47 = *(v39 + v44);

    v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v45, v46);

    if (!v48)
    {
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v49 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v50 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype);
  v51 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype + 8) == 1)
  {
    if (v51 <= 2)
    {
      if (v51)
      {
        if (v51 == 1)
        {
          if (v50 == 1)
          {
            goto LABEL_30;
          }
        }

        else if (v50 == 2)
        {
          goto LABEL_30;
        }
      }

      else if (!v50)
      {
        goto LABEL_30;
      }
    }

    else if (v51 > 4)
    {
      if (v51 == 5)
      {
        if (v50 == 5)
        {
          goto LABEL_30;
        }
      }

      else if (v50 == 6)
      {
        goto LABEL_30;
      }
    }

    else if (v51 == 3)
    {
      if (v50 == 3)
      {
        goto LABEL_30;
      }
    }

    else if (v50 == 4)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v50 != v51)
  {
    goto LABEL_28;
  }

LABEL_30:
  v53 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v54 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v53 == v54;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_BooleanTest(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_BooleanTest(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_BooleanTest()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_RelabelType._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_CoerceToDomain.decodeMessage<A>(decoder:)()
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
        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 3)
        {
LABEL_10:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            goto LABEL_10;
          }

LABEL_19:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 6)
        {
          lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CoerceToDomain.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](Node);
  v26 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v27 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v13 + 48);
  if (v19(v11, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v18, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v20 = v32;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    if (v20)
    {
      return result;
    }

    v32 = 0;
  }

  v22 = v27;
  outlined init with copy of PgQuery_Alias?(v27 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v19(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v23 = v32;
  }

  else
  {
    v24 = v26;
    outlined init with take of PgQuery_OidList(v9, v26, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v23 = v32;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
    if (v23)
    {
      return result;
    }

    v22 = v27;
  }

  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v23))
  {
    if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v23))
    {
      if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v23))
      {
        if (!*(v27 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat) || (v25 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat + 8), v30 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat), v31 = v25, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v23))
        {
          result = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
          if (result)
          {
            return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CoerceToDomain.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v55 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v60 = v20;
  v24 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v55 - v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v23, &v22[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v5 + 48);
  if (v25(v22, 1, Node) == 1)
  {
    v56 = Node;
    v26 = v25(&v22[v24], 1, Node);

    if (v26 == 1)
    {
      v62 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_29;
  }

  v62 = a1;
  v59 = a2;
  outlined init with copy of PgQuery_Alias?(v22, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(&v22[v24], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v27 = v58;
  outlined init with take of PgQuery_OidList(&v22[v24], v58, type metadata accessor for PgQuery_Node);
  v56 = Node;
  v28 = *(Node + 20);
  v29 = *&v15[v28];
  v30 = *(v27 + v28);

  if (v29 != v30)
  {

    v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30);

    if (!v31)
    {
      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_29;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v59;
  if ((v32 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v34 = v61;
  v35 = *(v60 + 48);
  outlined init with copy of PgQuery_Alias?(v62 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v33, v34 + v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = v56;
  if (v25(v34, 1, v56) != 1)
  {
    v39 = v57;
    outlined init with copy of PgQuery_Alias?(v34, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v40 = v25((v34 + v35), 1, v36);
    v38 = v62;
    if (v40 == 1)
    {
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v43 = v55;
    outlined init with take of PgQuery_OidList(v34 + v35, v55, type metadata accessor for PgQuery_Node);
    v44 = *(v36 + 20);
    v45 = *(v39 + v44);
    v46 = *(v43 + v44);
    if (v45 != v46)
    {
      v47 = *(v39 + v44);

      v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v45, v46);

      if (!v48)
      {
        outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
        v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_16;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v49)
    {
      goto LABEL_20;
    }

LABEL_29:

    return 0;
  }

  v37 = v25((v34 + v35), 1, v36);
  v38 = v62;
  if (v37 != 1)
  {
LABEL_15:
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v34, v41, v42);
    goto LABEL_29;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid))
  {
    goto LABEL_29;
  }

  v50 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat);
  v51 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat + 8) == 1)
  {
    if (v51 > 1)
    {
      if (v51 == 2)
      {
        if (v50 != 2)
        {
          goto LABEL_29;
        }
      }

      else if (v50 != 3)
      {
        goto LABEL_29;
      }
    }

    else if (v51)
    {
      if (v50 != 1)
      {
        goto LABEL_29;
      }
    }

    else if (v50)
    {
      goto LABEL_29;
    }
  }

  else if (v50 != v51)
  {
    goto LABEL_29;
  }

  v53 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v54 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v53 == v54;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CoerceToDomain(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomain and conformance PgQuery_CoerceToDomain, type metadata accessor for PgQuery_CoerceToDomain);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CoerceToDomain(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomain and conformance PgQuery_CoerceToDomain, type metadata accessor for PgQuery_CoerceToDomain);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CoerceToDomain()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomain and conformance PgQuery_CoerceToDomain, type metadata accessor for PgQuery_CoerceToDomain);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_CoerceToDomainValue.decodeMessage<A>(decoder:)()
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_15;
          case 4:
            goto LABEL_4;
          case 5:
LABEL_15:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CoerceToDomainValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v17 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v14 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v17[0];
  if (!*(v17[0] + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v14))
    {
      if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
      {
        result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CoerceToDomainValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v34 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v35;
      outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_15;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v31 == v32;
  }

LABEL_15:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CoerceToDomainValue(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomainValue and conformance PgQuery_CoerceToDomainValue, type metadata accessor for PgQuery_CoerceToDomainValue);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CoerceToDomainValue(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomainValue and conformance PgQuery_CoerceToDomainValue, type metadata accessor for PgQuery_CoerceToDomainValue);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CoerceToDomainValue()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomainValue and conformance PgQuery_CoerceToDomainValue, type metadata accessor for PgQuery_CoerceToDomainValue);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA30;
  v7 = v20 + v6;
  v8 = v20 + v6 + v4[14];
  *(v20 + v6) = 1;
  *v8 = "xpr";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = type metadata accessor for _NameMap.NameDescription();
  v11 = *(*(v10 - 8) + 104);
  (v11)(v8, v9, v10);
  v12 = v7 + v5 + v4[14];
  *(v7 + v5) = 2;
  *v12 = "type_id";
  *(v12 + 8) = 7;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v11();
  v14 = (v7 + 2 * v5);
  v15 = v14 + v4[14];
  *v14 = 3;
  *v15 = "type_mod";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v11();
  v16 = (v7 + 3 * v5);
  v17 = v16 + v4[14];
  *v16 = 4;
  *v17 = "collation";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v11();
  v18 = v7 + 4 * v5 + v4[14];
  *(v7 + 4 * v5) = 5;
  *v18 = "location";
  *(v18 + 8) = 8;
  *(v18 + 16) = 2;
  v11();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _NameMap.init()();
}

uint64_t closure #1 in PgQuery_SetToDefault.decodeMessage<A>(decoder:)()
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_15;
          case 4:
            goto LABEL_4;
          case 5:
LABEL_15:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_SetToDefault.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v17 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v14 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v17[0];
  if (!*(v17[0] + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v14))
    {
      if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
      {
        result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_SetToDefault.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v34 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v35;
      outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_15;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v31 == v32;
  }

LABEL_15:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SetToDefault(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SetToDefault(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SetToDefault()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_CurrentOfExpr.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 1)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CurrentOfExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v20 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v21;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v14 = v21;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v20[0];
  if (!*(v20[0] + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
  {
    v17 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName + 8);
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName) & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (v19 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v14))
    {
      result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CurrentOfExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v34 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v35;
      outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_16;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno) && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName + 8) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam);

    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam);

    return v31 == v32;
  }

LABEL_16:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CurrentOfExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CurrentOfExpr and conformance PgQuery_CurrentOfExpr, type metadata accessor for PgQuery_CurrentOfExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CurrentOfExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CurrentOfExpr and conformance PgQuery_CurrentOfExpr, type metadata accessor for PgQuery_CurrentOfExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CurrentOfExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CurrentOfExpr and conformance PgQuery_CurrentOfExpr, type metadata accessor for PgQuery_CurrentOfExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_NextValueExpr.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = *(type metadata accessor for PgQuery_NextValueExpr(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  v7 = &OBJC_IVAR___BMPBSiriQueryEvent__absoluteTimestamp;
  v8 = &OBJC_IVAR___BMPBSiriQueryEvent__absoluteTimestamp;
  v9 = &OBJC_IVAR___BMPBSiriQueryEvent__absoluteTimestamp;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    NextValue = type metadata accessor for PgQuery_NextValueExpr._StorageClass(0);
    v11 = *(NextValue + 48);
    v12 = *(NextValue + 52);
    v13 = swift_allocObject();
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    v24 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v13 + v14, 1, 1, Node);
    v25 = v1;
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__seqid;
    *(v13 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__seqid) = 0;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID;
    *(v13 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;

    outlined assign with copy of PgQuery_Node?(v6 + v18, v13 + v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v13 + v16) = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__seqid);
    LODWORD(v16) = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID);

    *(v13 + v17) = v16;
    v7 = &OBJC_IVAR___BMPBSiriQueryEvent__absoluteTimestamp;
    v2 = v25;

    v9 = &OBJC_IVAR___BMPBSiriQueryEvent__absoluteTimestamp;
    v8 = &OBJC_IVAR___BMPBSiriQueryEvent__absoluteTimestamp;
    *(v0 + v3) = v13;
  }

  v19 = *(v7 + 352);
  v20 = *(v8 + 353);
  v21 = *(v9 + 354);
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
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_NextValueExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NextValueExpr = type metadata accessor for PgQuery_NextValueExpr(0);
  result = closure #1 in PgQuery_NextValueExpr.traverse<A>(visitor:)(*(v3 + *(NextValueExpr + 20)), a1, a2, a3, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__seqid, MEMORY[0x1E69AADA8], &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_NextValueExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_NextValueExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_NextValueExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_CollateExpr._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_InferenceElem.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for PgQuery_InferenceElem(0) + 20);
  v2 = *(v0 + v1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = *(v0 + v1);
    Inference = type metadata accessor for PgQuery_InferenceElem._StorageClass(0);
    v5 = *(Inference + 48);
    v6 = *(Inference + 52);
    v7 = swift_allocObject();
    v8 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    Node = type metadata accessor for PgQuery_Node(0);
    v10 = *(*(Node - 8) + 56);
    v10(v7 + v8, 1, 1, Node);
    v11 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
    v10(v7 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, 1, 1, Node);
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid;
    *(v7 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid) = 0;
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass;
    *(v7 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass) = 0;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;

    outlined assign with copy of PgQuery_Node?(v3 + v14, v7 + v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined assign with copy of PgQuery_Node?(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v7 + v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v7 + v12) = *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid);
    LODWORD(v12) = *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass);

    *(v7 + v13) = v12;

    *(v0 + v1) = v7;
  }

  return closure #1 in PgQuery_InferenceElem.decodeMessage<A>(decoder:)();
}

uint64_t closure #1 in PgQuery_InferenceElem.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 1 || result == 2)
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

uint64_t closure #1 in PgQuery_InferenceElem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](Node);
  v25 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v26 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v13 + 48);
  if (v19(v11, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v18, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v20 = v29;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    if (v20)
    {
      return result;
    }

    v29 = 0;
  }

  v22 = v26;
  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v19(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v23 = v29;
  }

  else
  {
    v24 = v25;
    outlined init with take of PgQuery_OidList(v9, v25, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v23 = v29;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
    if (v23)
    {
      return result;
    }

    v22 = v26;
  }

  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v23))
  {
    result = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass);
    if (result)
    {
      return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CollateExpr.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6)
{
  v60 = a6;
  v63 = a5;
  v67 = a4;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](Node);
  v61 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v64 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v68 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v59 - v26;
  v28 = *a3;
  v66 = v25;
  v29 = *(v25 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v28, &v59 - v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v30 = a2 + v28;
  v31 = a2;
  outlined init with copy of PgQuery_Alias?(v30, &v27[v29], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v32 = *(v10 + 48);
  if (v32(v27, 1, Node) == 1)
  {
    v62 = Node;
    v33 = v32(&v27[v29], 1, Node);

    v34 = a1;
    if (v33 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v34 = a1;
  outlined init with copy of PgQuery_Alias?(v27, v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v32(&v27[v29], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
LABEL_6:
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_7:
    v37 = v27;
LABEL_18:
    _s10Foundation4UUIDVSgWOhTm_0(v37, v35, v36);
    goto LABEL_19;
  }

  v38 = v65;
  outlined init with take of PgQuery_OidList(&v27[v29], v65, type metadata accessor for PgQuery_Node);
  v62 = Node;
  v39 = *(Node + 20);
  v40 = *&v20[v39];
  v41 = *(v38 + v39);

  if (v40 != v41)
  {

    v42 = closure #1 in static PgQuery_Node.== infix(_:_:)(v40, v41);

    if (!v42)
    {
      outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v43 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v44 = *v67;
  v45 = *(v66 + 48);
  v46 = v68;
  outlined init with copy of PgQuery_Alias?(v34 + *v67, v68, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v31 + v44, v46 + v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v47 = v62;
  if (v32(v46, 1, v62) != 1)
  {
    v48 = v64;
    outlined init with copy of PgQuery_Alias?(v46, v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v32((v46 + v45), 1, v47) != 1)
    {
      v50 = v61;
      outlined init with take of PgQuery_OidList(v46 + v45, v61, type metadata accessor for PgQuery_Node);
      v51 = *(v47 + 20);
      v52 = *(v48 + v51);
      v53 = *(v50 + v51);
      if (v52 == v53 || (v54 = *(v48 + v51), , , v55 = closure #1 in static PgQuery_Node.== infix(_:_:)(v52, v53), , , v55))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v56 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }

      outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
LABEL_16:
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_17:
    v37 = v46;
    goto LABEL_18;
  }

  if (v32((v46 + v45), 1, v47) != 1)
  {
    goto LABEL_16;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_24:
  if (*(v34 + *v63) == *(v31 + *v63))
  {
    v57 = v60;
    v58 = *(v34 + *v60);

    LODWORD(v57) = *(v31 + *v57);

    return v58 == v57;
  }

LABEL_19:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_InferenceElem(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_InferenceElem(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_InferenceElem()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem);

  return Message.hash(into:)();
}

uint64_t PgQuery_NamedArgExpr._StorageClass.__deallocating_deinit(void *a1, void *a2, void *a3)
{
  _s10Foundation4UUIDVSgWOhTm_0(v3 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v3 + *a2, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(v3 + *a3 + 8);

  v7 = *(*v3 + 48);
  v8 = *(*v3 + 52);

  return MEMORY[0x1EEE6BDC0](v3, v7, v8);
}

void type metadata completion function for PgQuery_TargetEntry._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_TargetEntry.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_4;
        }

        if (result == 7)
        {
          goto LABEL_20;
        }

        if (result == 8)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            goto LABEL_4;
          }

LABEL_20:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_4;
        }

        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_4:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_TargetEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](Node);
  v29 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - v17;
  v30 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v13 + 48);
  if (v19(v11, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v18, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v20 = v33;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    if (v20)
    {
      return result;
    }

    v33 = 0;
  }

  v22 = v30;
  outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v19(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v23 = v33;
  }

  else
  {
    v24 = v29;
    outlined init with take of PgQuery_OidList(v9, v29, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v23 = v33;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
    if (v23)
    {
      return result;
    }

    v22 = v30;
  }

  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v23))
  {
    v26 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname);
    v25 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname + 8);
    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v23))
    {
      v28 = v30;
      if (!*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v23))
      {
        if (!*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v23))
        {
          result = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol);
          if (!result || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v23))
          {
            if (*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk) == 1)
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

uint64_t closure #1 in static PgQuery_TargetEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v54 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v60 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v54 - v21;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v59 = v20;
  v24 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v54 - v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v23, &v22[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v5 + 48);
  if (v25(v22, 1, Node) == 1)
  {
    v55 = Node;
    v26 = v25(&v22[v24], 1, Node);

    if (v26 == 1)
    {
      v61 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v61 = a1;
  v58 = a2;
  outlined init with copy of PgQuery_Alias?(v22, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(&v22[v24], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_30;
  }

  v27 = v57;
  outlined init with take of PgQuery_OidList(&v22[v24], v57, type metadata accessor for PgQuery_Node);
  v55 = Node;
  v28 = *(Node + 20);
  v29 = *&v15[v28];
  v30 = *(v27 + v28);

  if (v29 != v30)
  {

    v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30);

    if (!v31)
    {
      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_30;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v58;
  if ((v32 & 1) == 0)
  {
LABEL_30:

    v52 = 0;
    return v52 & 1;
  }

LABEL_10:
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  v34 = v60;
  v35 = *(v59 + 48);
  outlined init with copy of PgQuery_Alias?(v61 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v33, v34 + v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = v55;
  if (v25(v34, 1, v55) == 1)
  {
    v37 = v25((v34 + v35), 1, v36);
    v38 = v61;
    if (v37 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v39 = v56;
  outlined init with copy of PgQuery_Alias?(v34, v56, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v40 = v25((v34 + v35), 1, v36);
  v38 = v61;
  if (v40 == 1)
  {
    outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
LABEL_15:
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v34, v41, v42);
    goto LABEL_30;
  }

  v43 = v54;
  outlined init with take of PgQuery_OidList(v34 + v35, v54, type metadata accessor for PgQuery_Node);
  v44 = *(v36 + 20);
  v45 = *(v39 + v44);
  v46 = *(v43 + v44);
  if (v45 != v46)
  {
    v47 = *(v39 + v44);

    v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v45, v46);

    if (!v48)
    {
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v49 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno) || (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname) || *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref) || *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl) || *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol))
  {
    goto LABEL_30;
  }

  v50 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk);

  v51 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk);

  v52 = v50 ^ v51 ^ 1;
  return v52 & 1;
}