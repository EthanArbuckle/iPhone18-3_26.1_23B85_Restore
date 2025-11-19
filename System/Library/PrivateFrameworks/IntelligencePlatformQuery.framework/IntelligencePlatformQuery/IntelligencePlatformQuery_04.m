uint64_t PgQuery_ParseResult.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (type metadata accessor for PgQuery_RawStmt(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for PgQuery_ParseResult(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

double (*protocol witness for Message.unknownFields.modify in conformance PgQuery_ParseResult(uint64_t a1, uint64_t a2))(void, void)
{
  result = ResultSetCursor.columns.modify;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ParseResult(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParseResult and conformance PgQuery_ParseResult, type metadata accessor for PgQuery_ParseResult);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ParseResult(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParseResult and conformance PgQuery_ParseResult, type metadata accessor for PgQuery_ParseResult);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ParseResult()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParseResult and conformance PgQuery_ParseResult, type metadata accessor for PgQuery_ParseResult);

  return Message.hash(into:)();
}

uint64_t PgQuery_ParseResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      a4(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(a5, a6);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_ScanResult.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (type metadata accessor for PgQuery_ScanToken(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanToken and conformance PgQuery_ScanToken, type metadata accessor for PgQuery_ScanToken), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for PgQuery_ScanResult(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ScanResult(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanResult and conformance PgQuery_ScanResult, type metadata accessor for PgQuery_ScanResult);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ScanResult(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanResult and conformance PgQuery_ScanResult, type metadata accessor for PgQuery_ScanResult);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ScanResult()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanResult and conformance PgQuery_ScanResult, type metadata accessor for PgQuery_ScanResult);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_ParseResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (*a1 != *a2 || (a5(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t one-time initialization function for defaultInstance()
{
  v0 = type metadata accessor for PgQuery_Node._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v5 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  static PgQuery_Node._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for PgQuery_Var._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varno) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattno) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartypmod) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varcollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varlevelsup) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varnosyn) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattnosyn) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_Var._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for PgQuery_Param._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v7 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramkind;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtypmod) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramcollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_Param._StorageClass.defaultInstance = v3;
  return result;
}

{
  Grouping = type metadata accessor for PgQuery_GroupingFunc._StorageClass(0);
  v1 = *(Grouping + 48);
  v2 = *(Grouping + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v7 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refs) = v7;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols) = v7;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__agglevelsup) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_GroupingFunc._StorageClass.defaultInstance = v3;
  return result;
}

{
  Subscripting = type metadata accessor for PgQuery_SubscriptingRef._StorageClass(0);
  v1 = *(Subscripting + 48);
  v2 = *(Subscripting + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refcontainertype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refelemtype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__reftypmod) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refcollid) = 0;
  v7 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refupperindexpr) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__reflowerindexpr) = v7;
  v6(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refexpr, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refassgnexpr, 1, 1, Node);
  static PgQuery_SubscriptingRef._StorageClass.defaultInstance = v3;
  return result;
}

{
  NamedArg = type metadata accessor for PgQuery_NamedArgExpr._StorageClass(0);
  v1 = *(NamedArg + 48);
  v2 = *(NamedArg + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v8 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argnumber) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_NamedArgExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  Op = type metadata accessor for PgQuery_OpExpr._StorageClass(0);
  v1 = *(Op + 48);
  v2 = *(Op + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_OpExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  Distinct = type metadata accessor for PgQuery_DistinctExpr._StorageClass(0);
  v1 = *(Distinct + 48);
  v2 = *(Distinct + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_DistinctExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  NullIf = type metadata accessor for PgQuery_NullIfExpr._StorageClass(0);
  v1 = *(NullIf + 48);
  v2 = *(NullIf + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_NullIfExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  ScalarArrayOp = type metadata accessor for PgQuery_ScalarArrayOpExpr._StorageClass(0);
  v1 = *(ScalarArrayOp + 48);
  v2 = *(ScalarArrayOp + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOr) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_ScalarArrayOpExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  Bool = type metadata accessor for PgQuery_BoolExpr._StorageClass(0);
  v1 = *(Bool + 48);
  v2 = *(Bool + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v7 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_BoolExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  Sub = type metadata accessor for PgQuery_SubLink._StorageClass(0);
  v1 = *(Sub + 48);
  v2 = *(Sub + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  v7 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkID) = 0;
  v6(v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__operName) = MEMORY[0x277D84F90];
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subselect, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_SubLink._StorageClass.defaultInstance = v3;
  return result;
}

{
  Field = type metadata accessor for PgQuery_FieldSelect._StorageClass(0);
  v1 = *(Field + 48);
  v2 = *(Field + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnum) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  static PgQuery_FieldSelect._StorageClass.defaultInstance = v3;
  return result;
}

{
  Field = type metadata accessor for PgQuery_FieldStore._StorageClass(0);
  v1 = *(Field + 48);
  v2 = *(Field + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v8 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums) = v8;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  static PgQuery_FieldStore._StorageClass.defaultInstance = v3;
  return result;
}

{
  Relabel = type metadata accessor for PgQuery_RelabelType._StorageClass(0);
  v1 = *(Relabel + 48);
  v2 = *(Relabel + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  v8 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_RelabelType._StorageClass.defaultInstance = v3;
  return result;
}

{
  CoerceVia = type metadata accessor for PgQuery_CoerceViaIO._StorageClass(0);
  v1 = *(CoerceVia + 48);
  v2 = *(CoerceVia + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  v8 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CoerceViaIO._StorageClass.defaultInstance = v3;
  return result;
}

{
  ArrayCoerce = type metadata accessor for PgQuery_ArrayCoerceExpr._StorageClass(0);
  v1 = *(ArrayCoerce + 48);
  v2 = *(ArrayCoerce + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  v6(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  v8 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_ArrayCoerceExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  ConvertRowtype = type metadata accessor for PgQuery_ConvertRowtypeExpr._StorageClass(0);
  v1 = *(ConvertRowtype + 48);
  v2 = *(ConvertRowtype + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  v8 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_ConvertRowtypeExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  Collate = type metadata accessor for PgQuery_CollateExpr._StorageClass(0);
  v1 = *(Collate + 48);
  v2 = *(Collate + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CollateExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  Case = type metadata accessor for PgQuery_CaseExpr._StorageClass(0);
  v1 = *(Case + 48);
  v2 = *(Case + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid) = 0;
  v6(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CaseExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  Case = type metadata accessor for PgQuery_CaseWhen._StorageClass(0);
  v1 = *(Case + 48);
  v2 = *(Case + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  v6(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CaseWhen._StorageClass.defaultInstance = v3;
  return result;
}

{
  CaseTest = type metadata accessor for PgQuery_CaseTestExpr._StorageClass(0);
  v1 = *(CaseTest + 48);
  v2 = *(CaseTest + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = 0;
  static PgQuery_CaseTestExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  Array = type metadata accessor for PgQuery_ArrayExpr._StorageClass(0);
  v1 = *(Array + 48);
  v2 = *(Array + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_ArrayExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  Row = type metadata accessor for PgQuery_RowExpr._StorageClass(0);
  v1 = *(Row + 48);
  v2 = *(Row + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v7 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid) = 0;
  v8 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames) = v7;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_RowExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  RowCompare = type metadata accessor for PgQuery_RowCompareExpr._StorageClass(0);
  v1 = *(RowCompare + 48);
  v2 = *(RowCompare + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v7 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies) = v8;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids) = v8;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs) = v8;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs) = v8;
  static PgQuery_RowCompareExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  Coalesce = type metadata accessor for PgQuery_CoalesceExpr._StorageClass(0);
  v1 = *(Coalesce + 48);
  v2 = *(Coalesce + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CoalesceExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  MinMax = type metadata accessor for PgQuery_MinMaxExpr._StorageClass(0);
  v1 = *(MinMax + 48);
  v2 = *(MinMax + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  v7 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_MinMaxExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  SQLValue = type metadata accessor for PgQuery_SQLValueFunction._StorageClass(0);
  v1 = *(SQLValue + 48);
  v2 = *(SQLValue + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v7 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_SQLValueFunction._StorageClass.defaultInstance = v3;
  return result;
}

{
  Null = type metadata accessor for PgQuery_NullTest._StorageClass(0);
  v1 = *(Null + 48);
  v2 = *(Null + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v8 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_NullTest._StorageClass.defaultInstance = v3;
  return result;
}

{
  Boolean = type metadata accessor for PgQuery_BooleanTest._StorageClass(0);
  v1 = *(Boolean + 48);
  v2 = *(Boolean + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v8 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_BooleanTest._StorageClass.defaultInstance = v3;
  return result;
}

{
  CoerceTo = type metadata accessor for PgQuery_CoerceToDomain._StorageClass(0);
  v1 = *(CoerceTo + 48);
  v2 = *(CoerceTo + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  v8 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CoerceToDomain._StorageClass.defaultInstance = v3;
  return result;
}

{
  CoerceToDomain = type metadata accessor for PgQuery_CoerceToDomainValue._StorageClass(0);
  v1 = *(CoerceToDomain + 48);
  v2 = *(CoerceToDomain + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CoerceToDomainValue._StorageClass.defaultInstance = v3;
  return result;
}

{
  SetTo = type metadata accessor for PgQuery_SetToDefault._StorageClass(0);
  v1 = *(SetTo + 48);
  v2 = *(SetTo + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_SetToDefault._StorageClass.defaultInstance = v3;
  return result;
}

{
  CurrentOf = type metadata accessor for PgQuery_CurrentOfExpr._StorageClass(0);
  v1 = *(CurrentOf + 48);
  v2 = *(CurrentOf + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno) = 0;
  v7 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam) = 0;
  static PgQuery_CurrentOfExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  NextValue = type metadata accessor for PgQuery_NextValueExpr._StorageClass(0);
  v1 = *(NextValue + 48);
  v2 = *(NextValue + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__seqid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
  static PgQuery_NextValueExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  Inference = type metadata accessor for PgQuery_InferenceElem._StorageClass(0);
  v1 = *(Inference + 48);
  v2 = *(Inference + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass) = 0;
  static PgQuery_InferenceElem._StorageClass.defaultInstance = v3;
  return result;
}

{
  Target = type metadata accessor for PgQuery_TargetEntry._StorageClass(0);
  v1 = *(Target + 48);
  v2 = *(Target + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno) = 0;
  v8 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk) = 0;
  static PgQuery_TargetEntry._StorageClass.defaultInstance = v3;
  return result;
}

{
  Join = type metadata accessor for PgQuery_JoinExpr._StorageClass(0);
  v1 = *(Join + 48);
  v2 = *(Join + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  v6(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) = MEMORY[0x277D84F90];
  v6(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  Alias = type metadata accessor for PgQuery_Alias(0);
  result = (*(*(Alias - 8) + 56))(v3 + v7, 1, 1, Alias);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex) = 0;
  static PgQuery_JoinExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for PgQuery_FromExpr._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  static PgQuery_FromExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for PgQuery_OnConflictExpr._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 32) = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere;
  Node = type metadata accessor for PgQuery_Node(0);
  v7 = *(*(Node - 8) + 56);
  v7(v3 + v5, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet) = v4;
  result = (v7)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist) = v4;
  static PgQuery_OnConflictExpr._StorageClass.defaultInstance = v3;
  return result;
}

{
  Into = type metadata accessor for PgQuery_IntoClause._StorageClass(0);
  v1 = *(Into + 48);
  v2 = *(Into + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  v6 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames) = MEMORY[0x277D84F90];
  v7 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v6;
  v8 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v10, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData) = 0;
  static PgQuery_IntoClause._StorageClass.defaultInstance = v3;
  return result;
}

{
  Raw = type metadata accessor for PgQuery_RawStmt._StorageClass(0);
  v1 = *(Raw + 48);
  v2 = *(Raw + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmt;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen) = 0;
  static PgQuery_RawStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  Insert = type metadata accessor for PgQuery_InsertStmt._StorageClass(0);
  v1 = *(Insert + 48);
  v2 = *(Insert + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  v6 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v3 + v7, 1, 1, Node);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause;
  v10 = type metadata accessor for PgQuery_OnConflictClause(0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v6;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v12 = type metadata accessor for PgQuery_WithClause(0);
  result = (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  v14 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override;
  *v14 = 0;
  *(v14 + 8) = 1;
  static PgQuery_InsertStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for PgQuery_DeleteStmt._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  v6 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v3 + v7, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v6;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v10 = type metadata accessor for PgQuery_WithClause(0);
  result = (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  static PgQuery_DeleteStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  Update = type metadata accessor for PgQuery_UpdateStmt._StorageClass(0);
  v1 = *(Update + 48);
  v2 = *(Update + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  v6 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v3 + v7, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) = v6;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v6;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v10 = type metadata accessor for PgQuery_WithClause(0);
  result = (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  static PgQuery_UpdateStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  AlterTable = type metadata accessor for PgQuery_AlterTableCmd._StorageClass(0);
  v1 = *(AlterTable + 48);
  v2 = *(AlterTable + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  *(v3 + 48) = 0;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  (*(*(RoleSpec - 8) + 56))(v3 + v4, 1, 1, RoleSpec);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v6, 1, 1, Node);
  v9 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) = 0;
  static PgQuery_AlterTableCmd._StorageClass.defaultInstance = v3;
  return result;
}

{
  AlterDomain = type metadata accessor for PgQuery_AlterDomainStmt._StorageClass(0);
  v1 = *(AlterDomain + 48);
  v2 = *(AlterDomain + 52);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 2) = 0;
  *(v3 + 3) = 0xE000000000000000;
  *(v3 + 4) = v4;
  *(v3 + 5) = 0;
  *(v3 + 6) = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(&v3[v5], 1, 1, Node);
  v8 = &v3[OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior];
  *v8 = 0;
  v8[8] = 1;
  v3[OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk] = 0;
  static PgQuery_AlterDomainStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  SetOperation = type metadata accessor for PgQuery_SetOperationStmt._StorageClass(0);
  v1 = *(SetOperation + 48);
  v2 = *(SetOperation + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, 1, 1, Node);
  v8 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods) = v8;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations) = v8;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses) = v8;
  static PgQuery_SetOperationStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  Copy = type metadata accessor for PgQuery_CopyStmt._StorageClass(0);
  v1 = *(Copy + 48);
  v2 = *(Copy + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  v8 = *(*(Node - 8) + 56);
  v8(v3 + v6, 1, 1, Node);
  v9 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) = 0;
  v10 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v9;
  result = (v8)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, 1, 1, Node);
  static PgQuery_CopyStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  Comment = type metadata accessor for PgQuery_CommentStmt._StorageClass(0);
  v1 = *(Comment + 48);
  v2 = *(Comment + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v7 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  static PgQuery_CommentStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  Rename = type metadata accessor for PgQuery_RenameStmt._StorageClass(0);
  v1 = *(Rename + 48);
  v2 = *(Rename + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v6, 1, 1, Node);
  v9 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) = 0;
  static PgQuery_RenameStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  Rule = type metadata accessor for PgQuery_RuleStmt._StorageClass(0);
  v1 = *(Rule + 48);
  v2 = *(Rule + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  v6 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v7, 1, 1, Node);
  v10 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) = 0;
  static PgQuery_RuleStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  View = type metadata accessor for PgQuery_ViewStmt._StorageClass(0);
  v1 = *(View + 48);
  v2 = *(View + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  v6 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v7, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v6;
  v10 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption;
  *v10 = 0;
  *(v10 + 8) = 1;
  static PgQuery_ViewStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  Domain = type metadata accessor for PgQuery_CreateDomainStmt._StorageClass(0);
  v1 = *(Domain + 48);
  v2 = *(Domain + 52);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v3 + v5, 1, 1, TypeName);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  result = (*(*(CollateClause - 8) + 56))(v3 + v7, 1, 1, CollateClause);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) = v4;
  static PgQuery_CreateDomainStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  TableAs = type metadata accessor for PgQuery_CreateTableAsStmt._StorageClass(0);
  v1 = *(TableAs + 48);
  v2 = *(TableAs + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  result = (*(*(IntoClause - 8) + 56))(v3 + v6, 1, 1, IntoClause);
  v9 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) = 0;
  static PgQuery_CreateTableAsStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  Cast = type metadata accessor for PgQuery_CreateCastStmt._StorageClass(0);
  v1 = *(Cast + 48);
  v2 = *(Cast + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v6 = *(*(TypeName - 8) + 56);
  v6(v3 + v4, 1, 1, TypeName);
  v6(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype, 1, 1, TypeName);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  result = (*(*(ObjectWithArgs - 8) + 56))(v3 + v7, 1, 1, ObjectWithArgs);
  v10 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout) = 0;
  static PgQuery_CreateCastStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  Prepare = type metadata accessor for PgQuery_PrepareStmt._StorageClass(0);
  v1 = *(Prepare + 48);
  v2 = *(Prepare + 52);
  v3 = swift_allocObject();
  *(v3 + 2) = 0;
  *(v3 + 3) = 0xE000000000000000;
  *(v3 + 4) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(&v3[v4], 1, 1, Node);
  static PgQuery_PrepareStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  DeclareCursor = type metadata accessor for PgQuery_DeclareCursorStmt._StorageClass(0);
  v1 = *(DeclareCursor + 48);
  v2 = *(DeclareCursor + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  *(v3 + 32) = 0;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  static PgQuery_DeclareCursorStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  AlterObjectDepends = type metadata accessor for PgQuery_AlterObjectDependsStmt._StorageClass(0);
  v1 = *(AlterObjectDepends + 48);
  v2 = *(AlterObjectDepends + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  v8 = *(*(Node - 8) + 56);
  v8(v3 + v6, 1, 1, Node);
  result = (v8)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove) = 0;
  static PgQuery_AlterObjectDependsStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  AlterObjectSchema = type metadata accessor for PgQuery_AlterObjectSchemaStmt._StorageClass(0);
  v1 = *(AlterObjectSchema + 48);
  v2 = *(AlterObjectSchema + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v6, 1, 1, Node);
  v9 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) = 0;
  static PgQuery_AlterObjectSchemaStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  AlterOwner = type metadata accessor for PgQuery_AlterOwnerStmt._StorageClass(0);
  v1 = *(AlterOwner + 48);
  v2 = *(AlterOwner + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v3 + v6, 1, 1, Node);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  result = (*(*(RoleSpec - 8) + 56))(v3 + v8, 1, 1, RoleSpec);
  static PgQuery_AlterOwnerStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  SecLabel = type metadata accessor for PgQuery_SecLabelStmt._StorageClass(0);
  v1 = *(SecLabel + 48);
  v2 = *(SecLabel + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v7 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  static PgQuery_SecLabelStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  AlterExtensionContents = type metadata accessor for PgQuery_AlterExtensionContentsStmt._StorageClass(0);
  v1 = *(AlterExtensionContents + 48);
  v2 = *(AlterExtensionContents + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  static PgQuery_AlterExtensionContentsStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  Policy = type metadata accessor for PgQuery_CreatePolicyStmt._StorageClass(0);
  v1 = *(Policy + 48);
  v2 = *(Policy + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  v6 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(*(Node - 8) + 56);
  v9(v3 + v7, 1, 1, Node);
  result = (v9)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, 1, 1, Node);
  static PgQuery_CreatePolicyStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  AlterPolicy = type metadata accessor for PgQuery_AlterPolicyStmt._StorageClass(0);
  v1 = *(AlterPolicy + 48);
  v2 = *(AlterPolicy + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v3 + v4, 1, 1, RangeVar);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  v8 = *(*(Node - 8) + 56);
  v8(v3 + v6, 1, 1, Node);
  result = (v8)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, 1, 1, Node);
  static PgQuery_AlterPolicyStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for PgQuery_CallStmt._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall;
  v5 = type metadata accessor for PgQuery_FuncCall(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
  FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
  result = (*(*(FuncExpr - 8) + 56))(v3 + v6, 1, 1, FuncExpr);
  static PgQuery_CallStmt._StorageClass.defaultInstance = v3;
  return result;
}

{
  A = type metadata accessor for PgQuery_A_Expr._StorageClass(0);
  v1 = *(A + 48);
  v2 = *(A + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_A_Expr._StorageClass.defaultInstance = v3;
  return result;
}

{
  A = type metadata accessor for PgQuery_A_Const._StorageClass(0);
  v1 = *(A + 48);
  v2 = *(A + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_A_Const._StorageClass.defaultInstance = v3;
  return result;
}

{
  Func = type metadata accessor for PgQuery_FuncCall._StorageClass(0);
  v1 = *(Func + 48);
  v2 = *(Func + 52);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 2) = MEMORY[0x277D84F90];
  *(v3 + 3) = v4;
  *(v3 + 4) = v4;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(&v3[v5], 1, 1, Node);
  v3[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup] = 0;
  v3[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar] = 0;
  v3[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct] = 0;
  v3[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic] = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over;
  WindowDef = type metadata accessor for PgQuery_WindowDef(0);
  result = (*(*(WindowDef - 8) + 56))(&v3[v7], 1, 1, WindowDef);
  *&v3[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location] = 0;
  static PgQuery_FuncCall._StorageClass.defaultInstance = v3;
  return result;
}

{
  A = type metadata accessor for PgQuery_A_Indices._StorageClass(0);
  v1 = *(A + 48);
  v2 = *(A + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, 1, 1, Node);
  static PgQuery_A_Indices._StorageClass.defaultInstance = v3;
  return result;
}

{
  Res = type metadata accessor for PgQuery_ResTarget._StorageClass(0);
  v1 = *(Res + 48);
  v2 = *(Res + 52);
  v3 = swift_allocObject();
  *(v3 + 2) = 0;
  *(v3 + 3) = 0xE000000000000000;
  *(v3 + 4) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(&v3[v4], 1, 1, Node);
  *&v3[OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location] = 0;
  static PgQuery_ResTarget._StorageClass.defaultInstance = v3;
  return result;
}

{
  MultiAssign = type metadata accessor for PgQuery_MultiAssignRef._StorageClass(0);
  v1 = *(MultiAssign + 48);
  v2 = *(MultiAssign + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__source;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colno) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ncolumns) = 0;
  static PgQuery_MultiAssignRef._StorageClass.defaultInstance = v3;
  return result;
}

{
  Type = type metadata accessor for PgQuery_TypeCast._StorageClass(0);
  v1 = *(Type + 48);
  v2 = *(Type + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  result = (*(*(TypeName - 8) + 56))(v3 + v6, 1, 1, TypeName);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_TypeCast._StorageClass.defaultInstance = v3;
  return result;
}

{
  Collate = type metadata accessor for PgQuery_CollateClause._StorageClass(0);
  v1 = *(Collate + 48);
  v2 = *(Collate + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CollateClause._StorageClass.defaultInstance = v3;
  return result;
}

{
  Sort = type metadata accessor for PgQuery_SortBy._StorageClass(0);
  v1 = *(Sort + 48);
  v2 = *(Sort + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v7 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_SortBy._StorageClass.defaultInstance = v3;
  return result;
}

{
  Window = type metadata accessor for PgQuery_WindowDef._StorageClass(0);
  v1 = *(Window + 48);
  v2 = *(Window + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  *(v3 + 48) = v4;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset;
  Node = type metadata accessor for PgQuery_Node(0);
  v7 = *(*(Node - 8) + 56);
  v7(v3 + v5, 1, 1, Node);
  result = (v7)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_WindowDef._StorageClass.defaultInstance = v3;
  return result;
}

{
  Range = type metadata accessor for PgQuery_RangeSubselect._StorageClass(0);
  v1 = *(Range + 48);
  v2 = *(Range + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  Alias = type metadata accessor for PgQuery_Alias(0);
  result = (*(*(Alias - 8) + 56))(v3 + v6, 1, 1, Alias);
  static PgQuery_RangeSubselect._StorageClass.defaultInstance = v3;
  return result;
}

{
  RangeTable = type metadata accessor for PgQuery_RangeTableSample._StorageClass(0);
  v1 = *(RangeTable + 48);
  v2 = *(RangeTable + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  v7 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v7;
  result = (v6)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_RangeTableSample._StorageClass.defaultInstance = v3;
  return result;
}

{
  RangeTable = type metadata accessor for PgQuery_RangeTableFunc._StorageClass(0);
  v1 = *(RangeTable + 48);
  v2 = *(RangeTable + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v3 + v4, 1, 1, Node);
  v6(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, 1, 1, Node);
  v7 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) = v7;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  Alias = type metadata accessor for PgQuery_Alias(0);
  result = (*(*(Alias - 8) + 56))(v3 + v8, 1, 1, Alias);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_RangeTableFunc._StorageClass.defaultInstance = v3;
  return result;
}

{
  RangeTableFunc = type metadata accessor for PgQuery_RangeTableFuncCol._StorageClass(0);
  v1 = *(RangeTableFunc + 48);
  v2 = *(RangeTableFunc + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v3 + v4, 1, 1, TypeName);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality) = 0;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v8 = *(*(Node - 8) + 56);
  v8(v3 + v6, 1, 1, Node);
  result = (v8)(v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_RangeTableFuncCol._StorageClass.defaultInstance = v3;
  return result;
}

{
  Index = type metadata accessor for PgQuery_IndexElem._StorageClass(0);
  v1 = *(Index + 48);
  v2 = *(Index + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v7 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass) = v8;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts) = v8;
  v9 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering;
  *v10 = 0;
  *(v10 + 8) = 1;
  static PgQuery_IndexElem._StorageClass.defaultInstance = v3;
  return result;
}

{
  Def = type metadata accessor for PgQuery_DefElem._StorageClass(0);
  v1 = *(Def + 48);
  v2 = *(Def + 52);
  v3 = swift_allocObject();
  *(v3 + 2) = 0;
  *(v3 + 3) = 0xE000000000000000;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(&v3[v4], 1, 1, Node);
  v7 = &v3[OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction];
  *v7 = 0;
  v7[8] = 1;
  *&v3[OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location] = 0;
  static PgQuery_DefElem._StorageClass.defaultInstance = v3;
  return result;
}

{
  RangeTbl = type metadata accessor for PgQuery_RangeTblFunction._StorageClass(0);
  v1 = *(RangeTbl + 48);
  v2 = *(RangeTbl + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount) = 0;
  v7 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes) = v7;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods) = v7;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations) = v7;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams) = v7;
  static PgQuery_RangeTblFunction._StorageClass.defaultInstance = v3;
  return result;
}

{
  TableSample = type metadata accessor for PgQuery_TableSampleClause._StorageClass(0);
  v1 = *(TableSample + 48);
  v2 = *(TableSample + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_TableSampleClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  static PgQuery_TableSampleClause._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for PgQuery_WithCheckOption._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cascaded) = 0;
  static PgQuery_WithCheckOption._StorageClass.defaultInstance = v3;
  return result;
}

{
  Function = type metadata accessor for PgQuery_FunctionParameter._StorageClass(0);
  v1 = *(Function + 48);
  v2 = *(Function + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v3 + v4, 1, 1, TypeName);
  v6 = v3 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v7, 1, 1, Node);
  static PgQuery_FunctionParameter._StorageClass.defaultInstance = v3;
  return result;
}

{
  Xml = type metadata accessor for PgQuery_XmlSerialize._StorageClass(0);
  v1 = *(Xml + 48);
  v2 = *(Xml + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  result = (*(*(TypeName - 8) + 56))(v3 + v6, 1, 1, TypeName);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_XmlSerialize._StorageClass.defaultInstance = v3;
  return result;
}

{
  Infer = type metadata accessor for PgQuery_InferClause._StorageClass(0);
  v1 = *(Infer + 48);
  v2 = *(Infer + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v7 = (v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_InferClause._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for PgQuery_OnConflictClause._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infer;
  InferClause = type metadata accessor for PgQuery_InferClause(0);
  (*(*(InferClause - 8) + 56))(v3 + v4, 1, 1, InferClause);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v6, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_OnConflictClause._StorageClass.defaultInstance = v3;
  return result;
}

{
  Partition = type metadata accessor for PgQuery_PartitionElem._StorageClass(0);
  v1 = *(Partition + 48);
  v2 = *(Partition + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  v7 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass) = v7;
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_PartitionElem._StorageClass.defaultInstance = v3;
  return result;
}

{
  PartitionRange = type metadata accessor for PgQuery_PartitionRangeDatum._StorageClass(0);
  v1 = *(PartitionRange + 48);
  v2 = *(PartitionRange + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__value;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v3 + v4, 1, 1, Node);
  *(v3 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_PartitionRangeDatum._StorageClass.defaultInstance = v3;
  return result;
}

void type metadata completion function for PgQuery_Node._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node.OneOf_Node?, type metadata accessor for PgQuery_Node.OneOf_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PgQuery_Node(0) + 20);
  v8 = *(v3 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = *(v3 + v7);
    v11 = type metadata accessor for PgQuery_Node._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    v21 = a2;
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
    v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
    (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
    outlined destroy of URL?(v14 + v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v18 = v14 + v15;
    a2 = v21;
    outlined init with copy of PgQuery_Alias?(v20 + v17, v18, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);

    *(v3 + v7) = v14;
    v10 = v14;
  }

  return closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(v10, a1, a2, a3);
}

uint64_t closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        closure #1 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 2:
        closure #2 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 3:
        closure #3 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 4:
        closure #4 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 5:
        closure #5 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 6:
        closure #6 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 7:
        closure #7 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 8:
        closure #8 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 9:
        closure #9 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 10:
        closure #10 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 11:
        closure #11 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 12:
        closure #12 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 13:
        closure #13 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 14:
        closure #14 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 15:
        closure #15 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 16:
        closure #16 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 17:
        closure #17 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 18:
        closure #18 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 19:
        closure #19 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 20:
        closure #20 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 21:
        closure #21 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 22:
        closure #22 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 23:
        closure #23 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 24:
        closure #24 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 25:
        closure #25 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 26:
        closure #26 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 27:
        closure #27 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 28:
        closure #28 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 29:
        closure #29 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 30:
        closure #30 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 31:
        closure #31 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 32:
        closure #32 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 33:
        closure #33 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 34:
        closure #34 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 35:
        closure #35 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 36:
        closure #36 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 37:
        closure #37 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 38:
        closure #38 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 39:
        closure #39 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 40:
        closure #40 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 41:
        closure #41 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 42:
        closure #42 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 43:
        closure #43 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 44:
        closure #44 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 45:
        closure #45 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 46:
        closure #46 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 47:
        closure #47 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 48:
        closure #48 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 49:
        closure #49 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 50:
        closure #50 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 51:
        closure #51 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 52:
        closure #52 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 53:
        closure #53 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 54:
        closure #54 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 55:
        closure #55 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 56:
        closure #56 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 57:
        closure #57 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 58:
        closure #58 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 59:
        closure #59 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 60:
        closure #60 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 61:
        closure #61 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 62:
        closure #62 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 63:
        closure #63 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 64:
        closure #64 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      default:
        switch(result)
        {
          case 65:
            closure #65 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 66:
            closure #66 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 67:
            closure #67 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 68:
            closure #68 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 69:
            closure #69 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 70:
            closure #70 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 71:
            closure #71 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 72:
            closure #72 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 73:
            closure #73 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 74:
            closure #74 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 75:
            closure #75 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 76:
            closure #76 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 77:
            closure #77 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 78:
            closure #78 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 79:
            closure #79 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 80:
            closure #80 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 81:
            closure #81 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 82:
            closure #82 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 83:
            closure #83 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 84:
            closure #84 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 85:
            closure #85 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 86:
            closure #86 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 87:
            closure #87 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 88:
            closure #88 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 89:
            closure #89 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 90:
            closure #90 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 91:
            closure #91 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 92:
            closure #92 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 93:
            closure #93 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 94:
            closure #94 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 95:
            closure #95 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 96:
            closure #96 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 97:
            closure #97 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 98:
            closure #98 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 99:
            closure #99 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 100:
            closure #100 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 101:
            closure #101 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 102:
            closure #102 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 103:
            closure #103 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 104:
            closure #104 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 105:
            closure #105 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 106:
            closure #106 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 107:
            closure #107 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 108:
            closure #108 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 109:
            closure #109 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 110:
            closure #110 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 111:
            closure #111 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 112:
            closure #112 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 113:
            closure #113 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 114:
            closure #114 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 115:
            closure #115 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 116:
            closure #116 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 117:
            closure #117 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 118:
            closure #118 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 119:
            closure #119 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 120:
            closure #120 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 121:
            closure #121 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 122:
            closure #122 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 123:
            closure #123 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 124:
            closure #124 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 125:
            closure #125 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 126:
            closure #126 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 127:
            closure #127 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 128:
            closure #128 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          default:
            switch(result)
            {
              case 129:
                closure #129 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 130:
                closure #130 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 131:
                closure #131 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 132:
                closure #132 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 133:
                closure #133 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 134:
                closure #134 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 135:
                closure #135 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 136:
                closure #136 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 137:
                closure #137 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 138:
                closure #138 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 139:
                closure #139 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 140:
                closure #140 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 141:
                closure #141 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 142:
                closure #142 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 143:
                closure #143 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 144:
                closure #144 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 145:
                closure #145 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 146:
                closure #146 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 147:
                closure #147 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 148:
                closure #148 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 149:
                closure #149 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 150:
                closure #150 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 151:
                closure #151 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 152:
                closure #152 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 153:
                closure #153 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 154:
                closure #154 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 155:
                closure #155 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 156:
                closure #156 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 157:
                closure #157 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 158:
                closure #158 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 159:
                closure #159 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 160:
                closure #160 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 161:
                closure #161 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 162:
                closure #162 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 163:
                closure #163 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 164:
                closure #164 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 165:
                closure #165 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 166:
                closure #166 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 167:
                closure #167 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 168:
                closure #168 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 169:
                closure #169 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 170:
                closure #170 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 171:
                closure #171 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 172:
                closure #172 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 173:
                closure #173 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 174:
                closure #174 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 175:
                closure #175 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 176:
                closure #176 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 177:
                closure #177 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 178:
                closure #178 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 179:
                closure #179 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 180:
                closure #180 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 181:
                closure #181 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 182:
                closure #182 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 183:
                closure #183 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 184:
                closure #184 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 185:
                closure #185 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 186:
                closure #186 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 187:
                closure #187 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 188:
                closure #188 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 189:
                closure #189 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 190:
                closure #190 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 191:
                closure #191 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 192:
                closure #192 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              default:
                switch(result)
                {
                  case 193:
                    closure #193 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 194:
                    closure #194 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 195:
                    closure #195 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 196:
                    closure #196 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 197:
                    closure #197 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 198:
                    closure #198 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 199:
                    closure #199 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 200:
                    closure #200 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 201:
                    closure #201 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 202:
                    closure #202 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 203:
                    closure #203 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 204:
                    closure #204 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 205:
                    closure #205 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 206:
                    closure #206 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 207:
                    closure #207 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 208:
                    closure #208 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 209:
                    closure #209 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 210:
                    closure #210 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 211:
                    closure #211 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 212:
                    closure #212 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 213:
                    closure #213 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 214:
                    closure #214 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 215:
                    closure #215 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 216:
                    closure #216 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 217:
                    closure #217 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 218:
                    closure #218 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 219:
                    closure #219 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 220:
                    closure #220 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 221:
                    closure #221 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 222:
                    closure #222 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 223:
                    closure #223 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 224:
                    closure #224 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 225:
                    closure #225 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 226:
                    closure #226 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 227:
                    closure #227 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 228:
                    closure #228 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  default:
                    continue;
                }

                break;
            }

            break;
        }

        break;
    }
  }
}

uint64_t closure #1 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v6 = *(Alias - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Alias);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - v10;
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = Alias;
  v30 = Alias;
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
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node.OneOf_Node);
      v33 = v51;
    }

    else
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
      v35 = v46;
      outlined init with take of PgQuery_OidList(v20, v46, type metadata accessor for PgQuery_Alias);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_Alias);
      v33 = v51;
      v31(v28, 0, 1, v51);
    }
  }

  v36 = v49;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  }

  else
  {
    v39 = v47;
    outlined init with take of PgQuery_OidList(v36, v47, type metadata accessor for PgQuery_Alias);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_Alias);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #2 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v6 = *(RangeVar - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RangeVar);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RangeVar;
  v30 = RangeVar;
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
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RangeVar);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RangeVar);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RangeVar);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RangeVar);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #3 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TableFunc = type metadata accessor for PgQuery_TableFunc(0);
  v6 = *(TableFunc - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TableFunc);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TableFunc;
  v30 = TableFunc;
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
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_TableFunc);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_TableFunc);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableFunc and conformance PgQuery_TableFunc, type metadata accessor for PgQuery_TableFunc);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_TableFunc);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_TableFunc);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #4 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  Expr = type metadata accessor for PgQuery_Expr(0);
  v6 = *(Expr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Expr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = Expr;
  v30 = Expr;
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
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_Expr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_Expr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Expr and conformance PgQuery_Expr, type metadata accessor for PgQuery_Expr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_Expr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_Expr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #5 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  Var = type metadata accessor for PgQuery_Var(0);
  v6 = *(Var - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Var);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = Var;
  v30 = Var;
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
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_Var);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_Var);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Var and conformance PgQuery_Var, type metadata accessor for PgQuery_Var);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_Var);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_Var);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #6 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  Param = type metadata accessor for PgQuery_Param(0);
  v6 = *(Param - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Param);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = Param;
  v30 = Param;
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
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_Param);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_Param);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Param and conformance PgQuery_Param, type metadata accessor for PgQuery_Param);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_Param);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_Param);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #7 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  Aggref = type metadata accessor for PgQuery_Aggref(0);
  v6 = *(Aggref - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Aggref);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = Aggref;
  v30 = Aggref;
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
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_Aggref);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_Aggref);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Aggref and conformance PgQuery_Aggref, type metadata accessor for PgQuery_Aggref);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_Aggref);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_Aggref);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #8 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  GroupingFunc = type metadata accessor for PgQuery_GroupingFunc(0);
  v6 = *(GroupingFunc - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](GroupingFunc);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = GroupingFunc;
  v30 = GroupingFunc;
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
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_GroupingFunc);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_GroupingFunc);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GroupingFunc and conformance PgQuery_GroupingFunc, type metadata accessor for PgQuery_GroupingFunc);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_GroupingFunc);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_GroupingFunc);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #9 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  WindowFunc = type metadata accessor for PgQuery_WindowFunc(0);
  v6 = *(WindowFunc - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](WindowFunc);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = WindowFunc;
  v30 = WindowFunc;
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
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_WindowFunc);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_WindowFunc);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowFunc and conformance PgQuery_WindowFunc, type metadata accessor for PgQuery_WindowFunc);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_WindowFunc);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_WindowFunc);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #10 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SubscriptingRef = type metadata accessor for PgQuery_SubscriptingRef(0);
  v6 = *(SubscriptingRef - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](SubscriptingRef);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SubscriptingRef;
  v30 = SubscriptingRef;
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
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_SubscriptingRef);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_SubscriptingRef);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubscriptingRef and conformance PgQuery_SubscriptingRef, type metadata accessor for PgQuery_SubscriptingRef);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_SubscriptingRef);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_SubscriptingRef);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #11 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
  v6 = *(FuncExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](FuncExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = FuncExpr;
  v30 = FuncExpr;
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
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_FuncExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_FuncExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncExpr and conformance PgQuery_FuncExpr, type metadata accessor for PgQuery_FuncExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_FuncExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_FuncExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #12 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  NamedArgExpr = type metadata accessor for PgQuery_NamedArgExpr(0);
  v6 = *(NamedArgExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](NamedArgExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = NamedArgExpr;
  v30 = NamedArgExpr;
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
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_NamedArgExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_NamedArgExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NamedArgExpr and conformance PgQuery_NamedArgExpr, type metadata accessor for PgQuery_NamedArgExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_NamedArgExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_NamedArgExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #13 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  OpExpr = type metadata accessor for PgQuery_OpExpr(0);
  v6 = *(OpExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](OpExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = OpExpr;
  v30 = OpExpr;
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
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_OpExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_OpExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OpExpr and conformance PgQuery_OpExpr, type metadata accessor for PgQuery_OpExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_OpExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_OpExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #14 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DistinctExpr = type metadata accessor for PgQuery_DistinctExpr(0);
  v6 = *(DistinctExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DistinctExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DistinctExpr;
  v30 = DistinctExpr;
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
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DistinctExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DistinctExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DistinctExpr and conformance PgQuery_DistinctExpr, type metadata accessor for PgQuery_DistinctExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DistinctExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DistinctExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #15 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  NullIfExpr = type metadata accessor for PgQuery_NullIfExpr(0);
  v6 = *(NullIfExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](NullIfExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = NullIfExpr;
  v30 = NullIfExpr;
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
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_NullIfExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_NullIfExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullIfExpr and conformance PgQuery_NullIfExpr, type metadata accessor for PgQuery_NullIfExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_NullIfExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_NullIfExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #16 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ScalarArrayOpExpr = type metadata accessor for PgQuery_ScalarArrayOpExpr(0);
  v6 = *(ScalarArrayOpExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ScalarArrayOpExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ScalarArrayOpExpr;
  v30 = ScalarArrayOpExpr;
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
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ScalarArrayOpExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ScalarArrayOpExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScalarArrayOpExpr and conformance PgQuery_ScalarArrayOpExpr, type metadata accessor for PgQuery_ScalarArrayOpExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ScalarArrayOpExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ScalarArrayOpExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #17 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  BoolExpr = type metadata accessor for PgQuery_BoolExpr(0);
  v6 = *(BoolExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](BoolExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = BoolExpr;
  v30 = BoolExpr;
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
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_BoolExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_BoolExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BoolExpr and conformance PgQuery_BoolExpr, type metadata accessor for PgQuery_BoolExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_BoolExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_BoolExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #18 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SubLink = type metadata accessor for PgQuery_SubLink(0);
  v6 = *(SubLink - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](SubLink);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SubLink;
  v30 = SubLink;
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
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_SubLink);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_SubLink);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubLink and conformance PgQuery_SubLink, type metadata accessor for PgQuery_SubLink);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_SubLink);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_SubLink);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #19 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SubPlan = type metadata accessor for PgQuery_SubPlan(0);
  v6 = *(SubPlan - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](SubPlan);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SubPlan;
  v30 = SubPlan;
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
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_SubPlan);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_SubPlan);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubPlan and conformance PgQuery_SubPlan, type metadata accessor for PgQuery_SubPlan);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_SubPlan);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_SubPlan);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #20 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlternativeSubPlan = type metadata accessor for PgQuery_AlternativeSubPlan(0);
  v6 = *(AlternativeSubPlan - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AlternativeSubPlan);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlternativeSubPlan;
  v30 = AlternativeSubPlan;
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
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlternativeSubPlan);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlternativeSubPlan);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlternativeSubPlan and conformance PgQuery_AlternativeSubPlan, type metadata accessor for PgQuery_AlternativeSubPlan);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlternativeSubPlan);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlternativeSubPlan);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #21 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  FieldSelect = type metadata accessor for PgQuery_FieldSelect(0);
  v6 = *(FieldSelect - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](FieldSelect);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = FieldSelect;
  v30 = FieldSelect;
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
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_FieldSelect);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_FieldSelect);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldSelect and conformance PgQuery_FieldSelect, type metadata accessor for PgQuery_FieldSelect);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_FieldSelect);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_FieldSelect);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #22 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  FieldStore = type metadata accessor for PgQuery_FieldStore(0);
  v6 = *(FieldStore - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](FieldStore);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = FieldStore;
  v30 = FieldStore;
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
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_FieldStore);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_FieldStore);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_FieldStore);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_FieldStore);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #23 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RelabelType = type metadata accessor for PgQuery_RelabelType(0);
  v6 = *(RelabelType - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RelabelType);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RelabelType;
  v30 = RelabelType;
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
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RelabelType);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RelabelType);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RelabelType);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RelabelType);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #24 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CoerceViaIO = type metadata accessor for PgQuery_CoerceViaIO(0);
  v6 = *(CoerceViaIO - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](CoerceViaIO);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CoerceViaIO;
  v30 = CoerceViaIO;
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
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CoerceViaIO);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CoerceViaIO);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CoerceViaIO);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CoerceViaIO);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #25 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ArrayCoerceExpr = type metadata accessor for PgQuery_ArrayCoerceExpr(0);
  v6 = *(ArrayCoerceExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ArrayCoerceExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ArrayCoerceExpr;
  v30 = ArrayCoerceExpr;
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
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ArrayCoerceExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ArrayCoerceExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayCoerceExpr and conformance PgQuery_ArrayCoerceExpr, type metadata accessor for PgQuery_ArrayCoerceExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ArrayCoerceExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ArrayCoerceExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #26 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ConvertRowtypeExpr = type metadata accessor for PgQuery_ConvertRowtypeExpr(0);
  v6 = *(ConvertRowtypeExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ConvertRowtypeExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ConvertRowtypeExpr;
  v30 = ConvertRowtypeExpr;
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
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ConvertRowtypeExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ConvertRowtypeExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConvertRowtypeExpr and conformance PgQuery_ConvertRowtypeExpr, type metadata accessor for PgQuery_ConvertRowtypeExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ConvertRowtypeExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ConvertRowtypeExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #27 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CollateExpr = type metadata accessor for PgQuery_CollateExpr(0);
  v6 = *(CollateExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](CollateExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CollateExpr;
  v30 = CollateExpr;
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
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CollateExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CollateExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateExpr and conformance PgQuery_CollateExpr, type metadata accessor for PgQuery_CollateExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CollateExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CollateExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #28 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CaseExpr = type metadata accessor for PgQuery_CaseExpr(0);
  v6 = *(CaseExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](CaseExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CaseExpr;
  v30 = CaseExpr;
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
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CaseExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CaseExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CaseExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CaseExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #29 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CaseWhen = type metadata accessor for PgQuery_CaseWhen(0);
  v6 = *(CaseWhen - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](CaseWhen);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CaseWhen;
  v30 = CaseWhen;
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
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CaseWhen);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CaseWhen);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseWhen and conformance PgQuery_CaseWhen, type metadata accessor for PgQuery_CaseWhen);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CaseWhen);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CaseWhen);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #30 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CaseTestExpr = type metadata accessor for PgQuery_CaseTestExpr(0);
  v6 = *(CaseTestExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](CaseTestExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CaseTestExpr;
  v30 = CaseTestExpr;
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
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CaseTestExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CaseTestExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseTestExpr and conformance PgQuery_CaseTestExpr, type metadata accessor for PgQuery_CaseTestExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CaseTestExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CaseTestExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #31 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ArrayExpr = type metadata accessor for PgQuery_ArrayExpr(0);
  v6 = *(ArrayExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ArrayExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ArrayExpr;
  v30 = ArrayExpr;
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
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ArrayExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ArrayExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ArrayExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ArrayExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #32 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RowExpr = type metadata accessor for PgQuery_RowExpr(0);
  v6 = *(RowExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RowExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RowExpr;
  v30 = RowExpr;
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
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RowExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RowExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowExpr and conformance PgQuery_RowExpr, type metadata accessor for PgQuery_RowExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RowExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RowExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #33 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RowCompareExpr = type metadata accessor for PgQuery_RowCompareExpr(0);
  v6 = *(RowCompareExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RowCompareExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RowCompareExpr;
  v30 = RowCompareExpr;
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
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RowCompareExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RowCompareExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowCompareExpr and conformance PgQuery_RowCompareExpr, type metadata accessor for PgQuery_RowCompareExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RowCompareExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RowCompareExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #34 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CoalesceExpr = type metadata accessor for PgQuery_CoalesceExpr(0);
  v6 = *(CoalesceExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](CoalesceExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CoalesceExpr;
  v30 = CoalesceExpr;
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
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CoalesceExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CoalesceExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CoalesceExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CoalesceExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #35 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  MinMaxExpr = type metadata accessor for PgQuery_MinMaxExpr(0);
  v6 = *(MinMaxExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](MinMaxExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = MinMaxExpr;
  v30 = MinMaxExpr;
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
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_MinMaxExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_MinMaxExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MinMaxExpr and conformance PgQuery_MinMaxExpr, type metadata accessor for PgQuery_MinMaxExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_MinMaxExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_MinMaxExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #36 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SQLValueFunction = type metadata accessor for PgQuery_SQLValueFunction(0);
  v6 = *(SQLValueFunction - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](SQLValueFunction);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SQLValueFunction;
  v30 = SQLValueFunction;
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
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_SQLValueFunction);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_SQLValueFunction);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SQLValueFunction and conformance PgQuery_SQLValueFunction, type metadata accessor for PgQuery_SQLValueFunction);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_SQLValueFunction);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_SQLValueFunction);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #37 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  XmlExpr = type metadata accessor for PgQuery_XmlExpr(0);
  v6 = *(XmlExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](XmlExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = XmlExpr;
  v30 = XmlExpr;
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
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_XmlExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_XmlExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_XmlExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_XmlExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #38 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  NullTest = type metadata accessor for PgQuery_NullTest(0);
  v6 = *(NullTest - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](NullTest);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = NullTest;
  v30 = NullTest;
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
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_NullTest);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_NullTest);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullTest and conformance PgQuery_NullTest, type metadata accessor for PgQuery_NullTest);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_NullTest);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_NullTest);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #39 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  BooleanTest = type metadata accessor for PgQuery_BooleanTest(0);
  v6 = *(BooleanTest - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](BooleanTest);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = BooleanTest;
  v30 = BooleanTest;
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
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_BooleanTest);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_BooleanTest);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_BooleanTest);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_BooleanTest);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #40 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CoerceToDomain = type metadata accessor for PgQuery_CoerceToDomain(0);
  v6 = *(CoerceToDomain - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](CoerceToDomain);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CoerceToDomain;
  v30 = CoerceToDomain;
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
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CoerceToDomain);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CoerceToDomain);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomain and conformance PgQuery_CoerceToDomain, type metadata accessor for PgQuery_CoerceToDomain);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CoerceToDomain);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CoerceToDomain);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #41 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CoerceToDomainValue = type metadata accessor for PgQuery_CoerceToDomainValue(0);
  v6 = *(CoerceToDomainValue - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](CoerceToDomainValue);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CoerceToDomainValue;
  v30 = CoerceToDomainValue;
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
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CoerceToDomainValue);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CoerceToDomainValue);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomainValue and conformance PgQuery_CoerceToDomainValue, type metadata accessor for PgQuery_CoerceToDomainValue);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CoerceToDomainValue);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CoerceToDomainValue);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #42 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SetToDefault = type metadata accessor for PgQuery_SetToDefault(0);
  v6 = *(SetToDefault - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](SetToDefault);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SetToDefault;
  v30 = SetToDefault;
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
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_SetToDefault);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_SetToDefault);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_SetToDefault);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_SetToDefault);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #43 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CurrentOfExpr = type metadata accessor for PgQuery_CurrentOfExpr(0);
  v6 = *(CurrentOfExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](CurrentOfExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CurrentOfExpr;
  v30 = CurrentOfExpr;
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
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CurrentOfExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CurrentOfExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CurrentOfExpr and conformance PgQuery_CurrentOfExpr, type metadata accessor for PgQuery_CurrentOfExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CurrentOfExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CurrentOfExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #44 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  NextValueExpr = type metadata accessor for PgQuery_NextValueExpr(0);
  v6 = *(NextValueExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](NextValueExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = NextValueExpr;
  v30 = NextValueExpr;
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
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_NextValueExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_NextValueExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_NextValueExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_NextValueExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #45 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  InferenceElem = type metadata accessor for PgQuery_InferenceElem(0);
  v6 = *(InferenceElem - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](InferenceElem);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = InferenceElem;
  v30 = InferenceElem;
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
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_InferenceElem);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_InferenceElem);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_InferenceElem);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_InferenceElem);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #46 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  TargetEntry = type metadata accessor for PgQuery_TargetEntry(0);
  v6 = *(TargetEntry - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TargetEntry);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = TargetEntry;
  v30 = TargetEntry;
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
    if (swift_getEnumCaseMultiPayload() == 45)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_TargetEntry);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_TargetEntry);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TargetEntry and conformance PgQuery_TargetEntry, type metadata accessor for PgQuery_TargetEntry);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_TargetEntry);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_TargetEntry);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #47 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RangeTblRef = type metadata accessor for PgQuery_RangeTblRef(0);
  v6 = *(RangeTblRef - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RangeTblRef);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RangeTblRef;
  v30 = RangeTblRef;
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
    if (swift_getEnumCaseMultiPayload() == 46)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RangeTblRef);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RangeTblRef);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblRef and conformance PgQuery_RangeTblRef, type metadata accessor for PgQuery_RangeTblRef);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RangeTblRef);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RangeTblRef);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #48 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  JoinExpr = type metadata accessor for PgQuery_JoinExpr(0);
  v6 = *(JoinExpr - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](JoinExpr);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = JoinExpr;
  v30 = JoinExpr;
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
    if (swift_getEnumCaseMultiPayload() == 47)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_JoinExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_JoinExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_JoinExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_JoinExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #49 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for PgQuery_FromExpr(0);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
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
    if (swift_getEnumCaseMultiPayload() == 48)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_FromExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_FromExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_FromExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_FromExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #50 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for PgQuery_OnConflictExpr(0);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
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
    if (swift_getEnumCaseMultiPayload() == 49)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_OnConflictExpr);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_OnConflictExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_OnConflictExpr);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_OnConflictExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #51 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v6 = *(IntoClause - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](IntoClause);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = IntoClause;
  v30 = IntoClause;
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
    if (swift_getEnumCaseMultiPayload() == 50)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_IntoClause);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_IntoClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_IntoClause);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_IntoClause);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #52 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  RawStmt = type metadata accessor for PgQuery_RawStmt(0);
  v6 = *(RawStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](RawStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = RawStmt;
  v30 = RawStmt;
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
    if (swift_getEnumCaseMultiPayload() == 51)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_RawStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_RawStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_RawStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_RawStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #53 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  Query = type metadata accessor for PgQuery_Query(0);
  v6 = *(Query - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Query);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = Query;
  v30 = Query;
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
    if (swift_getEnumCaseMultiPayload() == 52)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_Query);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_Query);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_Query);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_Query);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #54 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  InsertStmt = type metadata accessor for PgQuery_InsertStmt(0);
  v6 = *(InsertStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](InsertStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = InsertStmt;
  v30 = InsertStmt;
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
    if (swift_getEnumCaseMultiPayload() == 53)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_InsertStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_InsertStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_InsertStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_InsertStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #55 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for PgQuery_DeleteStmt(0);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
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
    if (swift_getEnumCaseMultiPayload() == 54)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DeleteStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DeleteStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DeleteStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DeleteStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #56 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  UpdateStmt = type metadata accessor for PgQuery_UpdateStmt(0);
  v6 = *(UpdateStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](UpdateStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = UpdateStmt;
  v30 = UpdateStmt;
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
    if (swift_getEnumCaseMultiPayload() == 55)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_UpdateStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_UpdateStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_UpdateStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_UpdateStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #57 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v6 = *(SelectStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](SelectStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SelectStmt;
  v30 = SelectStmt;
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
    if (swift_getEnumCaseMultiPayload() == 56)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_SelectStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_SelectStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_SelectStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_SelectStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #58 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterTableStmt = type metadata accessor for PgQuery_AlterTableStmt(0);
  v6 = *(AlterTableStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AlterTableStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterTableStmt;
  v30 = AlterTableStmt;
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
    if (swift_getEnumCaseMultiPayload() == 57)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterTableStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterTableStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableStmt and conformance PgQuery_AlterTableStmt, type metadata accessor for PgQuery_AlterTableStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterTableStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterTableStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #59 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterTableCmd = type metadata accessor for PgQuery_AlterTableCmd(0);
  v6 = *(AlterTableCmd - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AlterTableCmd);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterTableCmd;
  v30 = AlterTableCmd;
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
    if (swift_getEnumCaseMultiPayload() == 58)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterTableCmd);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterTableCmd);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterTableCmd);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterTableCmd);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #60 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterDomainStmt = type metadata accessor for PgQuery_AlterDomainStmt(0);
  v6 = *(AlterDomainStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AlterDomainStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterDomainStmt;
  v30 = AlterDomainStmt;
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
    if (swift_getEnumCaseMultiPayload() == 59)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterDomainStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterDomainStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDomainStmt and conformance PgQuery_AlterDomainStmt, type metadata accessor for PgQuery_AlterDomainStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterDomainStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterDomainStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #61 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  SetOperationStmt = type metadata accessor for PgQuery_SetOperationStmt(0);
  v6 = *(SetOperationStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](SetOperationStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = SetOperationStmt;
  v30 = SetOperationStmt;
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
    if (swift_getEnumCaseMultiPayload() == 60)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_SetOperationStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_SetOperationStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetOperationStmt and conformance PgQuery_SetOperationStmt, type metadata accessor for PgQuery_SetOperationStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_SetOperationStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_SetOperationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #62 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  GrantStmt = type metadata accessor for PgQuery_GrantStmt(0);
  v6 = *(GrantStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](GrantStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = GrantStmt;
  v30 = GrantStmt;
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
    if (swift_getEnumCaseMultiPayload() == 61)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_GrantStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_GrantStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_GrantStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_GrantStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #63 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  GrantRoleStmt = type metadata accessor for PgQuery_GrantRoleStmt(0);
  v6 = *(GrantRoleStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](GrantRoleStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = GrantRoleStmt;
  v30 = GrantRoleStmt;
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
    if (swift_getEnumCaseMultiPayload() == 62)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_GrantRoleStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_GrantRoleStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantRoleStmt and conformance PgQuery_GrantRoleStmt, type metadata accessor for PgQuery_GrantRoleStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_GrantRoleStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_GrantRoleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #64 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  AlterDefaultPrivilegesStmt = type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(0);
  v6 = *(AlterDefaultPrivilegesStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AlterDefaultPrivilegesStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = AlterDefaultPrivilegesStmt;
  v30 = AlterDefaultPrivilegesStmt;
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
    if (swift_getEnumCaseMultiPayload() == 63)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #65 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ClosePortalStmt = type metadata accessor for PgQuery_ClosePortalStmt(0);
  v6 = *(ClosePortalStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ClosePortalStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ClosePortalStmt;
  v30 = ClosePortalStmt;
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
    if (swift_getEnumCaseMultiPayload() == 64)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ClosePortalStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ClosePortalStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClosePortalStmt and conformance PgQuery_ClosePortalStmt, type metadata accessor for PgQuery_ClosePortalStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ClosePortalStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ClosePortalStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #66 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  ClusterStmt = type metadata accessor for PgQuery_ClusterStmt(0);
  v6 = *(ClusterStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ClusterStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = ClusterStmt;
  v30 = ClusterStmt;
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
    if (swift_getEnumCaseMultiPayload() == 65)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_ClusterStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_ClusterStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClusterStmt and conformance PgQuery_ClusterStmt, type metadata accessor for PgQuery_ClusterStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_ClusterStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_ClusterStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #67 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  CopyStmt = type metadata accessor for PgQuery_CopyStmt(0);
  v6 = *(CopyStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](CopyStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = CopyStmt;
  v30 = CopyStmt;
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
    if (swift_getEnumCaseMultiPayload() == 66)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CopyStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CopyStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CopyStmt and conformance PgQuery_CopyStmt, type metadata accessor for PgQuery_CopyStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CopyStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CopyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #68 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  Stmt = type metadata accessor for PgQuery_CreateStmt(0);
  v6 = *(Stmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Stmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
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
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v33 = v51;
    v34 = v15;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v22, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v22, v20, type metadata accessor for PgQuery_Node.OneOf_Node);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 67)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_CreateStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_CreateStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_CreateStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_CreateStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #69 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DefineStmt = type metadata accessor for PgQuery_DefineStmt(0);
  v6 = *(DefineStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DefineStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DefineStmt;
  v30 = DefineStmt;
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
    if (swift_getEnumCaseMultiPayload() == 68)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DefineStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DefineStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefineStmt and conformance PgQuery_DefineStmt, type metadata accessor for PgQuery_DefineStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DefineStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DefineStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}

uint64_t closure #70 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  DropStmt = type metadata accessor for PgQuery_DropStmt(0);
  v6 = *(DropStmt - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DropStmt);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v48 = v6;
  v29 = *(v6 + 56);
  v51 = DropStmt;
  v30 = DropStmt;
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
    if (swift_getEnumCaseMultiPayload() == 69)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
      v35 = v47;
      outlined init with take of PgQuery_OidList(v20, v47, type metadata accessor for PgQuery_DropStmt);
      outlined init with take of PgQuery_OidList(v35, v28, type metadata accessor for PgQuery_DropStmt);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropStmt and conformance PgQuery_DropStmt, type metadata accessor for PgQuery_DropStmt);
  v37 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v28, v36, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
  if ((*(v48 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
    return outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
  }

  else
  {
    v39 = v46;
    outlined init with take of PgQuery_OidList(v36, v46, type metadata accessor for PgQuery_DropStmt);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
    v40 = v45;
    v41 = v43;
    outlined destroy of URL?(v45 + v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v39, v40 + v41, type metadata accessor for PgQuery_DropStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v40 + v41, 0, 1, v34);
  }
}