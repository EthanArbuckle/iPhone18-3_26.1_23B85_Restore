uint64_t PgQuery_RoleSpec.traverse<A>(visitor:)()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), lazy protocol witness table accessor for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 8) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
      {
        v5 = v0 + *(type metadata accessor for PgQuery_RoleSpec(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_RoleSpec@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RoleSpec(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RoleSpec(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RoleSpec()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);

  return Message.hash(into:)();
}

uint64_t PgQuery_TriggerTransition.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_TriggerTransition.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    if (*(v0 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      if (*(v0 + 17) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
      {
        v6 = v0 + *(type metadata accessor for PgQuery_TriggerTransition(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_TriggerTransition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TriggerTransition(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TriggerTransition and conformance PgQuery_TriggerTransition, type metadata accessor for PgQuery_TriggerTransition);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TriggerTransition(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TriggerTransition and conformance PgQuery_TriggerTransition, type metadata accessor for PgQuery_TriggerTransition);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TriggerTransition()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TriggerTransition and conformance PgQuery_TriggerTransition, type metadata accessor for PgQuery_TriggerTransition);

  return Message.hash(into:)();
}

uint64_t PgQuery_PartitionElem._StorageClass.__deallocating_deinit()
{
  v1 = v0[3];

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

void type metadata completion function for PgQuery_PartitionElem._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_TableFunc.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(void, void, void, void))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = a7;
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = a6(v18);
    a7 = v24;

    *(v10 + v14) = v22;
    v17 = v22;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t closure #1 in PgQuery_PartitionElem.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 2)
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
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_PartitionElem.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](Node);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v2))
  {
    outlined init with copy of PgQuery_Alias?(v18 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v9 + 48))(v7, 1, Node) == 1)
    {
      outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      if (v2)
      {
        return result;
      }
    }

    if (!*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v2))
    {
      if (!*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v2))
      {
        result = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_PartitionElem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](Node);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v17 & 1) != 0))
  {
    v40 = v8;
    v19 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
    v20 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v19, &v16[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = *(v5 + 48);
    if (v21(v16, 1, Node) == 1)
    {
      v22 = v21(&v16[v20], 1, Node);

      if (v22 == 1)
      {
        outlined destroy of URL?(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_14:
        v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);
        v32 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

        NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

        if (NodeV_Tt1g5)
        {
          v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);
          v35 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);

          v36 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v34, v35);

          if (v36)
          {
            v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

            v38 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

            return v37 == v38;
          }
        }

        goto LABEL_17;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v21(&v16[v20], 1, Node) != 1)
      {
        v25 = v40;
        outlined init with take of PgQuery_OidList(&v16[v20], v40, type metadata accessor for PgQuery_Node);
        v26 = *(Node + 20);
        v27 = *&v12[v26];
        v28 = *(v25 + v26);

        if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , (v29 & 1) != 0))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
          v30 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
          outlined destroy of URL?(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v30)
          {
            goto LABEL_14;
          }

LABEL_17:

          return 0;
        }

        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_10:
        outlined destroy of URL?(v16, v23, v24);
        goto LABEL_17;
      }

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    }

    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_10;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PartitionElem(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionElem and conformance PgQuery_PartitionElem, type metadata accessor for PgQuery_PartitionElem);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PartitionElem(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionElem and conformance PgQuery_PartitionElem, type metadata accessor for PgQuery_PartitionElem);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PartitionElem()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionElem and conformance PgQuery_PartitionElem, type metadata accessor for PgQuery_PartitionElem);

  return Message.hash(into:)();
}

uint64_t PgQuery_PartitionSpec.decodeMessage<A>(decoder:)()
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_PartitionSpec.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    if (*(v0[2] + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      if (!*(v0 + 6))
      {
        goto LABEL_11;
      }
    }

    else if (!*(v0 + 6))
    {
LABEL_11:
      v6 = v0 + *(type metadata accessor for PgQuery_PartitionSpec(0) + 28);
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_PartitionSpec@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_AlterTableStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_AlterTableStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PartitionSpec(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PartitionSpec(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PartitionSpec()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec);

  return Message.hash(into:)();
}

uint64_t PgQuery_PartitionBoundSpec.decodeMessage<A>(decoder:)()
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
        if (result < 8)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_4;
        }

        if (result == 8)
        {
LABEL_17:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          goto LABEL_17;
        }

        if (result == 1)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 2)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

LABEL_4:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_PartitionBoundSpec.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    if (*(v0 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 5) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
      {
        if (!*(v0 + 6) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
        {
          v6 = v1;
          if (*(v0[4] + 16))
          {
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
            if (v1)
            {
              return result;
            }

            v6 = 0;
          }

          if (*(v0[5] + 16))
          {
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
            if (v6)
            {
              return result;
            }

            v6 = 0;
          }

          if (*(v0[6] + 16))
          {
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            v7 = v6;
            result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
            if (v6)
            {
              return result;
            }
          }

          else
          {
            v7 = v6;
          }

          if (!*(v0 + 14) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v7))
          {
            v8 = v0 + *(type metadata accessor for PgQuery_PartitionBoundSpec(0) + 48);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_PartitionBoundSpec@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v2 = MEMORY[0x277D84F90];
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v2;
  *(a2 + 40) = v2;
  *(a2 + 48) = v2;
  *(a2 + 56) = 0;
  v3 = a2 + *(a1 + 48);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_GrantStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_GrantStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PartitionBoundSpec(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PartitionBoundSpec(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PartitionBoundSpec()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec);

  return Message.hash(into:)();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void type metadata completion function for PgQuery_TypeName()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_PartitionSpec()
{
  type metadata completion function for PgQuery_PartitionSpec();
}

{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_PartitionBoundSpec()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for PgQuery_RoleSpec()
{
  return type metadata completion function for PgQuery_RoleSpec();
}

{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PgQuery_WithClause()
{
  type metadata completion function for PgQuery_WithClause();
}

{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_RangeVar()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Alias?, type metadata accessor for PgQuery_Alias, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for PgQuery_Node.OneOf_Node()
{
  result = type metadata accessor for PgQuery_Alias(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PgQuery_RangeVar(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PgQuery_TableFunc(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PgQuery_Expr(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for PgQuery_Var(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for PgQuery_Param(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for PgQuery_Aggref(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for PgQuery_GroupingFunc(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for PgQuery_WindowFunc(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for PgQuery_SubscriptingRef(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for PgQuery_FuncExpr(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for PgQuery_NamedArgExpr(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for PgQuery_OpExpr(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for PgQuery_DistinctExpr(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for PgQuery_NullIfExpr(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for PgQuery_ScalarArrayOpExpr(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for PgQuery_BoolExpr(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for PgQuery_SubLink(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for PgQuery_SubPlan(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for PgQuery_AlternativeSubPlan(319);
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for PgQuery_FieldSelect(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for PgQuery_FieldStore(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for PgQuery_RelabelType(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for PgQuery_CoerceViaIO(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for PgQuery_ArrayCoerceExpr(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for PgQuery_ConvertRowtypeExpr(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for PgQuery_CollateExpr(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for PgQuery_CaseExpr(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for PgQuery_CaseWhen(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for PgQuery_CaseTestExpr(319);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for PgQuery_ArrayExpr(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for PgQuery_RowExpr(319);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for PgQuery_RowCompareExpr(319);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for PgQuery_CoalesceExpr(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for PgQuery_MinMaxExpr(319);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for PgQuery_SQLValueFunction(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for PgQuery_XmlExpr(319);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for PgQuery_NullTest(319);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for PgQuery_BooleanTest(319);
                                                                              if (v39 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for PgQuery_CoerceToDomain(319);
                                                                                if (v40 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for PgQuery_CoerceToDomainValue(319);
                                                                                  if (v41 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for PgQuery_SetToDefault(319);
                                                                                    if (v42 <= 0x3F)
                                                                                    {
                                                                                      result = type metadata accessor for PgQuery_CurrentOfExpr(319);
                                                                                      if (v43 <= 0x3F)
                                                                                      {
                                                                                        result = type metadata accessor for PgQuery_NextValueExpr(319);
                                                                                        if (v44 <= 0x3F)
                                                                                        {
                                                                                          result = type metadata accessor for PgQuery_InferenceElem(319);
                                                                                          if (v45 <= 0x3F)
                                                                                          {
                                                                                            result = type metadata accessor for PgQuery_TargetEntry(319);
                                                                                            if (v46 <= 0x3F)
                                                                                            {
                                                                                              result = type metadata accessor for PgQuery_RangeTblRef(319);
                                                                                              if (v47 <= 0x3F)
                                                                                              {
                                                                                                result = type metadata accessor for PgQuery_JoinExpr(319);
                                                                                                if (v48 <= 0x3F)
                                                                                                {
                                                                                                  result = type metadata accessor for PgQuery_FromExpr(319);
                                                                                                  if (v49 <= 0x3F)
                                                                                                  {
                                                                                                    result = type metadata accessor for PgQuery_OnConflictExpr(319);
                                                                                                    if (v50 <= 0x3F)
                                                                                                    {
                                                                                                      result = type metadata accessor for PgQuery_IntoClause(319);
                                                                                                      if (v51 <= 0x3F)
                                                                                                      {
                                                                                                        result = type metadata accessor for PgQuery_RawStmt(319);
                                                                                                        if (v52 <= 0x3F)
                                                                                                        {
                                                                                                          result = type metadata accessor for PgQuery_Query(319);
                                                                                                          if (v53 <= 0x3F)
                                                                                                          {
                                                                                                            result = type metadata accessor for PgQuery_InsertStmt(319);
                                                                                                            if (v54 <= 0x3F)
                                                                                                            {
                                                                                                              result = type metadata accessor for PgQuery_DeleteStmt(319);
                                                                                                              if (v55 <= 0x3F)
                                                                                                              {
                                                                                                                result = type metadata accessor for PgQuery_UpdateStmt(319);
                                                                                                                if (v56 <= 0x3F)
                                                                                                                {
                                                                                                                  result = type metadata accessor for PgQuery_SelectStmt(319);
                                                                                                                  if (v57 <= 0x3F)
                                                                                                                  {
                                                                                                                    result = type metadata accessor for PgQuery_AlterTableStmt(319);
                                                                                                                    if (v58 <= 0x3F)
                                                                                                                    {
                                                                                                                      result = type metadata accessor for PgQuery_AlterTableCmd(319);
                                                                                                                      if (v59 <= 0x3F)
                                                                                                                      {
                                                                                                                        result = type metadata accessor for PgQuery_AlterDomainStmt(319);
                                                                                                                        if (v60 <= 0x3F)
                                                                                                                        {
                                                                                                                          result = type metadata accessor for PgQuery_SetOperationStmt(319);
                                                                                                                          if (v61 <= 0x3F)
                                                                                                                          {
                                                                                                                            result = type metadata accessor for PgQuery_GrantStmt(319);
                                                                                                                            if (v62 <= 0x3F)
                                                                                                                            {
                                                                                                                              result = type metadata accessor for PgQuery_GrantRoleStmt(319);
                                                                                                                              if (v63 <= 0x3F)
                                                                                                                              {
                                                                                                                                result = type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(319);
                                                                                                                                if (v64 <= 0x3F)
                                                                                                                                {
                                                                                                                                  result = type metadata accessor for PgQuery_ClosePortalStmt(319);
                                                                                                                                  if (v65 <= 0x3F)
                                                                                                                                  {
                                                                                                                                    result = type metadata accessor for PgQuery_ClusterStmt(319);
                                                                                                                                    if (v66 <= 0x3F)
                                                                                                                                    {
                                                                                                                                      result = type metadata accessor for PgQuery_CopyStmt(319);
                                                                                                                                      if (v67 <= 0x3F)
                                                                                                                                      {
                                                                                                                                        result = type metadata accessor for PgQuery_CreateStmt(319);
                                                                                                                                        if (v68 <= 0x3F)
                                                                                                                                        {
                                                                                                                                          result = type metadata accessor for PgQuery_DefineStmt(319);
                                                                                                                                          if (v69 <= 0x3F)
                                                                                                                                          {
                                                                                                                                            result = type metadata accessor for PgQuery_DropStmt(319);
                                                                                                                                            if (v70 <= 0x3F)
                                                                                                                                            {
                                                                                                                                              result = type metadata accessor for PgQuery_TruncateStmt(319);
                                                                                                                                              if (v71 <= 0x3F)
                                                                                                                                              {
                                                                                                                                                result = type metadata accessor for PgQuery_CommentStmt(319);
                                                                                                                                                if (v72 <= 0x3F)
                                                                                                                                                {
                                                                                                                                                  result = type metadata accessor for PgQuery_FetchStmt(319);
                                                                                                                                                  if (v73 <= 0x3F)
                                                                                                                                                  {
                                                                                                                                                    result = type metadata accessor for PgQuery_IndexStmt(319);
                                                                                                                                                    if (v74 <= 0x3F)
                                                                                                                                                    {
                                                                                                                                                      result = type metadata accessor for PgQuery_CreateFunctionStmt(319);
                                                                                                                                                      if (v75 <= 0x3F)
                                                                                                                                                      {
                                                                                                                                                        result = type metadata accessor for PgQuery_AlterFunctionStmt(319);
                                                                                                                                                        if (v76 <= 0x3F)
                                                                                                                                                        {
                                                                                                                                                          result = type metadata accessor for PgQuery_DoStmt(319);
                                                                                                                                                          if (v77 <= 0x3F)
                                                                                                                                                          {
                                                                                                                                                            result = type metadata accessor for PgQuery_RenameStmt(319);
                                                                                                                                                            if (v78 <= 0x3F)
                                                                                                                                                            {
                                                                                                                                                              result = type metadata accessor for PgQuery_RuleStmt(319);
                                                                                                                                                              if (v79 <= 0x3F)
                                                                                                                                                              {
                                                                                                                                                                result = type metadata accessor for PgQuery_NotifyStmt(319);
                                                                                                                                                                if (v80 <= 0x3F)
                                                                                                                                                                {
                                                                                                                                                                  result = type metadata accessor for PgQuery_ListenStmt(319);
                                                                                                                                                                  if (v81 <= 0x3F)
                                                                                                                                                                  {
                                                                                                                                                                    result = type metadata accessor for PgQuery_UnlistenStmt(319);
                                                                                                                                                                    if (v82 <= 0x3F)
                                                                                                                                                                    {
                                                                                                                                                                      result = type metadata accessor for PgQuery_TransactionStmt(319);
                                                                                                                                                                      if (v83 <= 0x3F)
                                                                                                                                                                      {
                                                                                                                                                                        result = type metadata accessor for PgQuery_ViewStmt(319);
                                                                                                                                                                        if (v84 <= 0x3F)
                                                                                                                                                                        {
                                                                                                                                                                          result = type metadata accessor for PgQuery_LoadStmt(319);
                                                                                                                                                                          if (v85 <= 0x3F)
                                                                                                                                                                          {
                                                                                                                                                                            result = type metadata accessor for PgQuery_CreateDomainStmt(319);
                                                                                                                                                                            if (v86 <= 0x3F)
                                                                                                                                                                            {
                                                                                                                                                                              result = type metadata accessor for PgQuery_CreatedbStmt(319);
                                                                                                                                                                              if (v87 <= 0x3F)
                                                                                                                                                                              {
                                                                                                                                                                                result = type metadata accessor for PgQuery_DropdbStmt(319);
                                                                                                                                                                                if (v88 <= 0x3F)
                                                                                                                                                                                {
                                                                                                                                                                                  result = type metadata accessor for PgQuery_VacuumStmt(319);
                                                                                                                                                                                  if (v89 <= 0x3F)
                                                                                                                                                                                  {
                                                                                                                                                                                    result = type metadata accessor for PgQuery_ExplainStmt(319);
                                                                                                                                                                                    if (v90 <= 0x3F)
                                                                                                                                                                                    {
                                                                                                                                                                                      result = type metadata accessor for PgQuery_CreateTableAsStmt(319);
                                                                                                                                                                                      if (v91 <= 0x3F)
                                                                                                                                                                                      {
                                                                                                                                                                                        result = type metadata accessor for PgQuery_CreateSeqStmt(319);
                                                                                                                                                                                        if (v92 <= 0x3F)
                                                                                                                                                                                        {
                                                                                                                                                                                          result = type metadata accessor for PgQuery_AlterSeqStmt(319);
                                                                                                                                                                                          if (v93 <= 0x3F)
                                                                                                                                                                                          {
                                                                                                                                                                                            result = type metadata accessor for PgQuery_VariableSetStmt(319);
                                                                                                                                                                                            if (v94 <= 0x3F)
                                                                                                                                                                                            {
                                                                                                                                                                                              result = type metadata accessor for PgQuery_VariableShowStmt(319);
                                                                                                                                                                                              if (v95 <= 0x3F)
                                                                                                                                                                                              {
                                                                                                                                                                                                result = type metadata accessor for PgQuery_DiscardStmt(319);
                                                                                                                                                                                                if (v96 <= 0x3F)
                                                                                                                                                                                                {
                                                                                                                                                                                                  result = type metadata accessor for PgQuery_CreateTrigStmt(319);
                                                                                                                                                                                                  if (v97 <= 0x3F)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CreatePLangStmt(319);
                                                                                                                                                                                                    if (v98 <= 0x3F)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      result = type metadata accessor for PgQuery_CreateRoleStmt(319);
                                                                                                                                                                                                      if (v99 <= 0x3F)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        result = type metadata accessor for PgQuery_AlterRoleStmt(319);
                                                                                                                                                                                                        if (v100 <= 0x3F)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          result = type metadata accessor for PgQuery_DropRoleStmt(319);
                                                                                                                                                                                                          if (v101 <= 0x3F)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            result = type metadata accessor for PgQuery_LockStmt(319);
                                                                                                                                                                                                            if (v102 <= 0x3F)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              result = type metadata accessor for PgQuery_ConstraintsSetStmt(319);
                                                                                                                                                                                                              if (v103 <= 0x3F)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                result = type metadata accessor for PgQuery_ReindexStmt(319);
                                                                                                                                                                                                                if (v104 <= 0x3F)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_CheckPointStmt(319);
                                                                                                                                                                                                                  if (v105 <= 0x3F)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CreateSchemaStmt(319);
                                                                                                                                                                                                                    if (v106 <= 0x3F)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_AlterDatabaseStmt(319);
                                                                                                                                                                                                                      if (v107 <= 0x3F)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_AlterDatabaseSetStmt(319);
                                                                                                                                                                                                                        if (v108 <= 0x3F)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_AlterRoleSetStmt(319);
                                                                                                                                                                                                                          if (v109 <= 0x3F)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_CreateConversionStmt(319);
                                                                                                                                                                                                                            if (v110 <= 0x3F)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_CreateCastStmt(319);
                                                                                                                                                                                                                              if (v111 <= 0x3F)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_CreateOpClassStmt(319);
                                                                                                                                                                                                                                if (v112 <= 0x3F)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_CreateOpFamilyStmt(319);
                                                                                                                                                                                                                                  if (v113 <= 0x3F)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_AlterOpFamilyStmt(319);
                                                                                                                                                                                                                                    if (v114 <= 0x3F)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_PrepareStmt(319);
                                                                                                                                                                                                                                      if (v115 <= 0x3F)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_ExecuteStmt(319);
                                                                                                                                                                                                                                        if (v116 <= 0x3F)
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_DeallocateStmt(319);
                                                                                                                                                                                                                                          if (v117 <= 0x3F)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_DeclareCursorStmt(319);
                                                                                                                                                                                                                                            if (v118 <= 0x3F)
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_CreateTableSpaceStmt(319);
                                                                                                                                                                                                                                              if (v119 <= 0x3F)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_DropTableSpaceStmt(319);
                                                                                                                                                                                                                                                if (v120 <= 0x3F)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_AlterObjectDependsStmt(319);
                                                                                                                                                                                                                                                  if (v121 <= 0x3F)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_AlterObjectSchemaStmt(319);
                                                                                                                                                                                                                                                    if (v122 <= 0x3F)
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_AlterOwnerStmt(319);
                                                                                                                                                                                                                                                      if (v123 <= 0x3F)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_AlterOperatorStmt(319);
                                                                                                                                                                                                                                                        if (v124 <= 0x3F)
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_AlterTypeStmt(319);
                                                                                                                                                                                                                                                          if (v125 <= 0x3F)
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_DropOwnedStmt(319);
                                                                                                                                                                                                                                                            if (v126 <= 0x3F)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_ReassignOwnedStmt(319);
                                                                                                                                                                                                                                                              if (v127 <= 0x3F)
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_CompositeTypeStmt(319);
                                                                                                                                                                                                                                                                if (v128 <= 0x3F)
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_CreateEnumStmt(319);
                                                                                                                                                                                                                                                                  if (v129 <= 0x3F)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CreateRangeStmt(319);
                                                                                                                                                                                                                                                                    if (v130 <= 0x3F)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_AlterEnumStmt(319);
                                                                                                                                                                                                                                                                      if (v131 <= 0x3F)
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_AlterTSDictionaryStmt(319);
                                                                                                                                                                                                                                                                        if (v132 <= 0x3F)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_AlterTSConfigurationStmt(319);
                                                                                                                                                                                                                                                                          if (v133 <= 0x3F)
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_CreateFdwStmt(319);
                                                                                                                                                                                                                                                                            if (v134 <= 0x3F)
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_AlterFdwStmt(319);
                                                                                                                                                                                                                                                                              if (v135 <= 0x3F)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_CreateForeignServerStmt(319);
                                                                                                                                                                                                                                                                                if (v136 <= 0x3F)
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_AlterForeignServerStmt(319);
                                                                                                                                                                                                                                                                                  if (v137 <= 0x3F)
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CreateUserMappingStmt(319);
                                                                                                                                                                                                                                                                                    if (v138 <= 0x3F)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_AlterUserMappingStmt(319);
                                                                                                                                                                                                                                                                                      if (v139 <= 0x3F)
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_DropUserMappingStmt(319);
                                                                                                                                                                                                                                                                                        if (v140 <= 0x3F)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt(319);
                                                                                                                                                                                                                                                                                          if (v141 <= 0x3F)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_AlterTableMoveAllStmt(319);
                                                                                                                                                                                                                                                                                            if (v142 <= 0x3F)
                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_SecLabelStmt(319);
                                                                                                                                                                                                                                                                                              if (v143 <= 0x3F)
                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_CreateForeignTableStmt(319);
                                                                                                                                                                                                                                                                                                if (v144 <= 0x3F)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_ImportForeignSchemaStmt(319);
                                                                                                                                                                                                                                                                                                  if (v145 <= 0x3F)
                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CreateExtensionStmt(319);
                                                                                                                                                                                                                                                                                                    if (v146 <= 0x3F)
                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_AlterExtensionStmt(319);
                                                                                                                                                                                                                                                                                                      if (v147 <= 0x3F)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_AlterExtensionContentsStmt(319);
                                                                                                                                                                                                                                                                                                        if (v148 <= 0x3F)
                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_CreateEventTrigStmt(319);
                                                                                                                                                                                                                                                                                                          if (v149 <= 0x3F)
                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_AlterEventTrigStmt(319);
                                                                                                                                                                                                                                                                                                            if (v150 <= 0x3F)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_RefreshMatViewStmt(319);
                                                                                                                                                                                                                                                                                                              if (v151 <= 0x3F)
                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_ReplicaIdentityStmt(319);
                                                                                                                                                                                                                                                                                                                if (v152 <= 0x3F)
                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_AlterSystemStmt(319);
                                                                                                                                                                                                                                                                                                                  if (v153 <= 0x3F)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CreatePolicyStmt(319);
                                                                                                                                                                                                                                                                                                                    if (v154 <= 0x3F)
                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_AlterPolicyStmt(319);
                                                                                                                                                                                                                                                                                                                      if (v155 <= 0x3F)
                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_CreateTransformStmt(319);
                                                                                                                                                                                                                                                                                                                        if (v156 <= 0x3F)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_CreateAmStmt(319);
                                                                                                                                                                                                                                                                                                                          if (v157 <= 0x3F)
                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_CreatePublicationStmt(319);
                                                                                                                                                                                                                                                                                                                            if (v158 <= 0x3F)
                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_AlterPublicationStmt(319);
                                                                                                                                                                                                                                                                                                                              if (v159 <= 0x3F)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_CreateSubscriptionStmt(319);
                                                                                                                                                                                                                                                                                                                                if (v160 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_AlterSubscriptionStmt(319);
                                                                                                                                                                                                                                                                                                                                  if (v161 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_DropSubscriptionStmt(319);
                                                                                                                                                                                                                                                                                                                                    if (v162 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_CreateStatsStmt(319);
                                                                                                                                                                                                                                                                                                                                      if (v163 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_AlterCollationStmt(319);
                                                                                                                                                                                                                                                                                                                                        if (v164 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_CallStmt(319);
                                                                                                                                                                                                                                                                                                                                          if (v165 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_AlterStatsStmt(319);
                                                                                                                                                                                                                                                                                                                                            if (v166 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_A_Expr(319);
                                                                                                                                                                                                                                                                                                                                              if (v167 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_ColumnRef(319);
                                                                                                                                                                                                                                                                                                                                                if (v168 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_ParamRef(319);
                                                                                                                                                                                                                                                                                                                                                  if (v169 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_A_Const(319);
                                                                                                                                                                                                                                                                                                                                                    if (v170 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_FuncCall(319);
                                                                                                                                                                                                                                                                                                                                                      if (v171 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_A_Star(319);
                                                                                                                                                                                                                                                                                                                                                        if (v172 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_A_Indices(319);
                                                                                                                                                                                                                                                                                                                                                          if (v173 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_A_Indirection(319);
                                                                                                                                                                                                                                                                                                                                                            if (v174 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_A_ArrayExpr(319);
                                                                                                                                                                                                                                                                                                                                                              if (v175 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_ResTarget(319);
                                                                                                                                                                                                                                                                                                                                                                if (v176 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_MultiAssignRef(319);
                                                                                                                                                                                                                                                                                                                                                                  if (v177 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_TypeCast(319);
                                                                                                                                                                                                                                                                                                                                                                    if (v178 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_CollateClause(319);
                                                                                                                                                                                                                                                                                                                                                                      if (v179 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_SortBy(319);
                                                                                                                                                                                                                                                                                                                                                                        if (v180 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_WindowDef(319);
                                                                                                                                                                                                                                                                                                                                                                          if (v181 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_RangeSubselect(319);
                                                                                                                                                                                                                                                                                                                                                                            if (v182 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_RangeFunction(319);
                                                                                                                                                                                                                                                                                                                                                                              if (v183 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_RangeTableSample(319);
                                                                                                                                                                                                                                                                                                                                                                                if (v184 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_RangeTableFunc(319);
                                                                                                                                                                                                                                                                                                                                                                                  if (v185 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_RangeTableFuncCol(319);
                                                                                                                                                                                                                                                                                                                                                                                    if (v186 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_TypeName(319);
                                                                                                                                                                                                                                                                                                                                                                                      if (v187 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_ColumnDef(319);
                                                                                                                                                                                                                                                                                                                                                                                        if (v188 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_IndexElem(319);
                                                                                                                                                                                                                                                                                                                                                                                          if (v189 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_Constraint(319);
                                                                                                                                                                                                                                                                                                                                                                                            if (v190 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_DefElem(319);
                                                                                                                                                                                                                                                                                                                                                                                              if (v191 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_RangeTblEntry(319);
                                                                                                                                                                                                                                                                                                                                                                                                if (v192 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_RangeTblFunction(319);
                                                                                                                                                                                                                                                                                                                                                                                                  if (v193 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_TableSampleClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                    if (v194 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_WithCheckOption(319);
                                                                                                                                                                                                                                                                                                                                                                                                      if (v195 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_SortGroupClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                        if (v196 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_GroupingSet(319);
                                                                                                                                                                                                                                                                                                                                                                                                          if (v197 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_WindowClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                            if (v198 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_ObjectWithArgs(319);
                                                                                                                                                                                                                                                                                                                                                                                                              if (v199 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_AccessPriv(319);
                                                                                                                                                                                                                                                                                                                                                                                                                if (v200 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_CreateOpClassItem(319);
                                                                                                                                                                                                                                                                                                                                                                                                                  if (v201 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_TableLikeClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                                    if (v202 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_FunctionParameter(319);
                                                                                                                                                                                                                                                                                                                                                                                                                      if (v203 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_LockingClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                                        if (v204 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_RowMarkClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                                          if (v205 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_XmlSerialize(319);
                                                                                                                                                                                                                                                                                                                                                                                                                            if (v206 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_WithClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                                              if (v207 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_InferClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                if (v208 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_OnConflictClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                  if (v209 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CommonTableExpr(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if (v210 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_RoleSpec(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                      if (v211 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_TriggerTransition(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                        if (v212 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_PartitionElem(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if (v213 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_PartitionSpec(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                            if (v214 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_PartitionBoundSpec(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                              if (v215 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_PartitionRangeDatum(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if (v216 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_PartitionCmd(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                  if (v217 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_VacuumRelation(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                    if (v218 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_InlineCodeBlock(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if (v219 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_CallContext(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                        if (v220 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_Integer(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                          if (v221 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_Float(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if (v222 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_String(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                              if (v223 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_BitString(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                if (v224 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_Null(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if (v225 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_List(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if (v226 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_IntList(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if (v227 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_OidList(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if (v228 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          return 0;
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
        }
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for PgQuery_InlineCodeBlock()
{
  return type metadata completion function for PgQuery_InlineCodeBlock();
}

{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PgQuery_PartitionCmd()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_PartitionBoundSpec?, type metadata accessor for PgQuery_PartitionBoundSpec, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_CreateOpClassItem()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_ObjectWithArgs?, type metadata accessor for PgQuery_ObjectWithArgs, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for PgQuery_SortGroupClause()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PgQuery_RangeFunction()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Alias?, type metadata accessor for PgQuery_Alias, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for PgQuery_ParamRef()
{
  return type metadata completion function for PgQuery_ParamRef();
}

{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PgQuery_CreateStatsStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterSubscriptionStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterPublicationStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_CreatePublicationStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_CreateTransformStmt()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_ObjectWithArgs?, type metadata accessor for PgQuery_ObjectWithArgs, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_AlterSystemStmt()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_VariableSetStmt?, type metadata accessor for PgQuery_VariableSetStmt, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_CreateSubscriptionStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_ImportForeignSchemaStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4224Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_4225Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_AlterTableMoveAllStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_CreateUserMappingStmt()
{
  type metadata completion function for PgQuery_CreateUserMappingStmt();
}

{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3768Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_3769Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_AlterForeignServerStmt()
{
  type metadata completion function for PgQuery_AlterForeignServerStmt();
}

{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4350Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_4351Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_CreateForeignServerStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterFdwStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterTSConfigurationStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4182Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_4183Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_AlterEnumStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterTSDictionaryStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterOpFamilyStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_CreateOpClassStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_CreateConversionStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterRoleSetStmt()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_VariableSetStmt?, type metadata accessor for PgQuery_VariableSetStmt, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_AlterDatabaseSetStmt()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_VariableSetStmt?, type metadata accessor for PgQuery_VariableSetStmt, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4419Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_4420Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for PgQuery_CreateSchemaStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_ReindexStmt()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4083Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_4084Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_A_ArrayExpr()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterRoleStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3464Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_3465Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_CreatePLangStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterSeqStmt()
{
  type metadata completion function for PgQuery_AlterSeqStmt();
}

{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_CreateSeqStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_ObjectWithArgs()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3434Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_3435Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_CreateExtensionStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_TransactionStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_3591Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_3687Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_3688Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_OidList()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_VacuumRelation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v8 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v9 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, a5, a6, MEMORY[0x277D83D88]);
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4029Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 40);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_4030Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 40);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void type metadata completion function for PgQuery_CreateFunctionStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3395Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_3396Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_4677Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_4678Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_DropStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4464Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_4465Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_DefineStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3777Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_4366Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void type metadata completion function for PgQuery_TableLikeClause(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v9 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, a6, a7, MEMORY[0x277D83D88]);
    if (v10 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3723Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_3724Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_4515Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 24);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_4516Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 24);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void type metadata completion function for PgQuery_CompositeTypeStmt(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v7 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v8 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, a4, a5, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4659Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 40);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_4660Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 40);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void type metadata completion function for PgQuery_GrantRoleStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_GrantStmt()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4854Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_index_4855Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_3750Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_3751Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata completion function for PgQuery_BitString()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for PgQuery_InferClause(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_3714Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_3715Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for PgQuery_Null()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_3590Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void type metadata completion function for PgQuery_Alias(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, a5, a6, MEMORY[0x277D83940]);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for PgQuery_Node._StorageClass(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_Token and conformance PgQuery_Token()
{
  result = lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token;
  if (!lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token;
  if (!lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token;
  if (!lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token;
  if (!lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind;
  if (!lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind;
  if (!lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind;
  if (!lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind;
  if (!lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType()
{
  result = lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType;
  if (!lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType;
  if (!lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType;
  if (!lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType;
  if (!lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection()
{
  result = lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection;
  if (!lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection;
  if (!lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection;
  if (!lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection;
  if (!lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind;
  if (!lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind;
  if (!lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind;
  if (!lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind;
  if (!lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode()
{
  result = lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode;
  if (!lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode;
  if (!lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode;
  if (!lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode;
  if (!lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType()
{
  result = lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType()
{
  result = lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType()
{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType()
{
  result = lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType;
  if (!lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType;
  if (!lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType;
  if (!lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType;
  if (!lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType()
{
  result = lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength()
{
  result = lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength;
  if (!lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength;
  if (!lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength;
  if (!lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength;
  if (!lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy()
{
  result = lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy;
  if (!lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy;
  if (!lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy;
  if (!lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy;
  if (!lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ParamKind and conformance PgQuery_ParamKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind;
  if (!lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind;
  if (!lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind;
  if (!lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind;
  if (!lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_AggSplit and conformance PgQuery_AggSplit()
{
  result = lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit;
  if (!lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit;
  if (!lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit;
  if (!lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit;
  if (!lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm()
{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType()
{
  result = lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType()
{
  result = lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType;
  if (!lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType;
  if (!lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType;
  if (!lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType;
  if (!lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType()
{
  result = lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType;
  if (!lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType;
  if (!lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType;
  if (!lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType;
  if (!lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp()
{
  result = lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp;
  if (!lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp;
  if (!lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp;
  if (!lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp;
  if (!lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp()
{
  result = lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp;
  if (!lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp;
  if (!lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp;
  if (!lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp;
  if (!lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp()
{
  result = lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType()
{
  result = lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_NullTestType and conformance PgQuery_NullTestType()
{
  result = lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType()
{
  result = lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_JoinType and conformance PgQuery_JoinType()
{
  result = lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType;
  if (!lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType;
  if (!lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType;
  if (!lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType;
  if (!lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction()
{
  result = lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction()
{
  result = lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType()
{
  result = lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType;
  if (!lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType;
  if (!lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType;
  if (!lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType;
  if (!lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_QuerySource and conformance PgQuery_QuerySource()
{
  result = lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource;
  if (!lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource;
  if (!lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource;
  if (!lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource;
  if (!lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind;
  if (!lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind;
  if (!lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind;
  if (!lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind;
  if (!lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption()
{
  result = lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption;
  if (!lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption;
  if (!lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption;
  if (!lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption;
  if (!lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation()
{
  result = lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType()
{
  result = lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType()
{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior()
{
  result = lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior;
  if (!lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior;
  if (!lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior;
  if (!lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior;
  if (!lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType()
{
  result = lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption()
{
  result = lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption;
  if (!lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption;
  if (!lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption;
  if (!lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption;
  if (!lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext()
{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind()
{
  result = lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind;
  if (!lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind;
  if (!lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind;
  if (!lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind;
  if (!lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir()
{
  result = lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls()
{
  result = lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ConstrType and conformance PgQuery_ConstrType()
{
  result = lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType;
  if (!lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType;
  if (!lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType;
  if (!lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType;
  if (!lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction()
{
  result = lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction;
  if (!lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction;
  if (!lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction;
  if (!lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction;
  if (!lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_RTEKind and conformance PgQuery_RTEKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind;
  if (!lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind;
  if (!lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind;
  if (!lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind;
  if (!lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_WCOKind and conformance PgQuery_WCOKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind;
  if (!lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind;
  if (!lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind;
  if (!lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind;
  if (!lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode()
{
  result = lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode;
  if (!lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode;
  if (!lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode;
  if (!lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode;
  if (!lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize()
{
  result = lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize;
  if (!lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize;
  if (!lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize;
  if (!lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize;
  if (!lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind;
  if (!lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind;
  if (!lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind;
  if (!lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind;
  if (!lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind);
  }

  return result;
}

uint64_t PgQuery_PartitionRangeDatum.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = *(type metadata accessor for PgQuery_PartitionRangeDatum(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  v7 = &unk_280DBA000;
  v8 = &unk_280DBA000;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    PartitionRange = type metadata accessor for PgQuery_PartitionRangeDatum._StorageClass(0);
    v10 = *(PartitionRange + 48);
    v11 = *(PartitionRange + 52);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 1;
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__value;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v12 + v13, 1, 1, Node);
    v22 = v1;
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v12 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v16 = *(v6 + 24);
    *(v12 + 16) = *(v6 + 16);
    *(v12 + 24) = v16;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__value;

    outlined assign with copy of PgQuery_Node?(v6 + v17, v12 + v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    LODWORD(v13) = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v12 + v15) = v13;
    v2 = v22;

    v8 = &unk_280DBA000;
    v7 = &unk_280DBA000;
    *(v0 + v3) = v12;
  }

  v18 = v7[367];
  v19 = v8[368];
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v2)
  {
    while ((v21 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          lazy protocol witness table accessor for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 3:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_PartitionRangeDatum.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](Node);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v13 = *(a1 + 24);
    v15 = *(a1 + 16);
    v16 = v13;
    lazy protocol witness table accessor for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__value, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v7, 1, Node) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    if (v2)
    {
      return result;
    }
  }

  result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_PartitionRangeDatum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](Node);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = *(a1 + 16);
  v19 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        if (v18 != 2)
        {
          return 0;
        }
      }

      else if (v18 != 3)
      {
        return 0;
      }
    }

    else if (v19)
    {
      if (v18 != 1)
      {
        return 0;
      }
    }

    else if (v18)
    {
      return 0;
    }
  }

  else if (v18 != v19)
  {
    return 0;
  }

  v36 = v8;
  v21 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__value;
  v22 = *(v15 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__value, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v21, &v17[v22], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v23 = *(v5 + 48);
  if (v23(v17, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v17, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v23(&v17[v22], 1, Node) != 1)
    {
      v27 = v36;
      outlined init with take of PgQuery_OidList(&v17[v22], v36, type metadata accessor for PgQuery_Node);
      v28 = *(Node + 20);
      v29 = *&v12[v28];
      v30 = *(v27 + v28);

      if (v29 == v30 || (, , v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30), , , (v31 & 1) != 0))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v32)
        {
          goto LABEL_25;
        }

LABEL_17:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_16:
      outlined destroy of URL?(v17, v25, v26);
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_15:
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

  v24 = v23(&v17[v22], 1, Node);

  if (v24 != 1)
  {
    goto LABEL_15;
  }

  outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_25:
  v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v34 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v33 == v34;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_Node@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PartitionRangeDatum(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatum and conformance PgQuery_PartitionRangeDatum, type metadata accessor for PgQuery_PartitionRangeDatum);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PartitionRangeDatum(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatum and conformance PgQuery_PartitionRangeDatum, type metadata accessor for PgQuery_PartitionRangeDatum);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PartitionRangeDatum()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatum and conformance PgQuery_PartitionRangeDatum, type metadata accessor for PgQuery_PartitionRangeDatum);

  return Message.hash(into:)();
}

uint64_t PgQuery_PartitionCmd.decodeMessage<A>(decoder:)()
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

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v3 = v0;
        v7 = *(type metadata accessor for PgQuery_PartitionCmd(0) + 20);
        type metadata accessor for PgQuery_RangeVar(0);
        v5 = type metadata accessor for PgQuery_RangeVar;
        v6 = &lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for PgQuery_PartitionCmd(0) + 24);
    type metadata accessor for PgQuery_PartitionBoundSpec(0);
    v5 = type metadata accessor for PgQuery_PartitionBoundSpec;
    v6 = &lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec;
LABEL_5:
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(v6, v5);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t PgQuery_PartitionCmd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v29 = *(PartitionBoundSpec - 8);
  v30 = PartitionBoundSpec;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](PartitionBoundSpec);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v17 = *(RangeVar - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  PartitionCmd = type metadata accessor for PgQuery_PartitionCmd(0);
  v22 = *(PartitionCmd + 20);
  v31 = v4;
  outlined init with copy of PgQuery_Alias?(v4 + v22, v15, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v17 + 48))(v15, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v15, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v23 = v35;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v31 + *(PartitionCmd + 24), v8, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  }

  else
  {
    v25 = v28;
    outlined init with take of PgQuery_OidList(v8, v28, type metadata accessor for PgQuery_PartitionBoundSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec);
    v26 = v35;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_PartitionBoundSpec);
    if (v26)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_PartitionCmd@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(a2 + v4, 1, 1, RangeVar);
  v6 = *(a1 + 24);
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v8 = *(*(PartitionBoundSpec - 8) + 56);

  return v8(a2 + v6, 1, 1, PartitionBoundSpec);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_Node@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_Node(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PartitionCmd(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionCmd and conformance PgQuery_PartitionCmd, type metadata accessor for PgQuery_PartitionCmd);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PartitionCmd(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionCmd and conformance PgQuery_PartitionCmd, type metadata accessor for PgQuery_PartitionCmd);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PartitionCmd()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionCmd and conformance PgQuery_PartitionCmd, type metadata accessor for PgQuery_PartitionCmd);

  return Message.hash(into:)();
}

uint64_t PgQuery_VacuumRelation.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 1:
          v3 = *(type metadata accessor for PgQuery_VacuumRelation(0) + 28);
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

uint64_t PgQuery_VacuumRelation.traverse<A>(visitor:)(uint64_t a1)
{
  v18 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v7 = *(RangeVar - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  VacuumRelation = type metadata accessor for PgQuery_VacuumRelation(0);
  v17 = v1;
  outlined init with copy of PgQuery_Alias?(v1 + *(VacuumRelation + 28), v5, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v7 + 48))(v5, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v5, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v11 = v19;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v5, v10, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v11 = v19;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RangeVar);
    if (v11)
    {
      return result;
    }
  }

  v13 = v17;
  if (!*v17 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v11))
  {
    if (!*(*(v13 + 1) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v11))
    {
      v14 = v13 + *(VacuumRelation + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_VacuumRelation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v7 = *(*(RangeVar - 8) + 56);

  return v7(a2 + v5, 1, 1, RangeVar);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_ParseResult@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_ParseResult(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_VacuumRelation(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumRelation and conformance PgQuery_VacuumRelation, type metadata accessor for PgQuery_VacuumRelation);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_VacuumRelation(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumRelation and conformance PgQuery_VacuumRelation, type metadata accessor for PgQuery_VacuumRelation);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_VacuumRelation()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumRelation and conformance PgQuery_VacuumRelation, type metadata accessor for PgQuery_VacuumRelation);

  return Message.hash(into:)();
}

uint64_t PgQuery_InlineCodeBlock.decodeMessage<A>(decoder:)()
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
      if (result == 3 || result == 4)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_InlineCodeBlock.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 4) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
    {
      if (*(v0 + 20) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
      {
        if (*(v0 + 21) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
        {
          v6 = v0 + *(type metadata accessor for PgQuery_InlineCodeBlock(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_InlineCodeBlock@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_InlineCodeBlock(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InlineCodeBlock and conformance PgQuery_InlineCodeBlock, type metadata accessor for PgQuery_InlineCodeBlock);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_InlineCodeBlock(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InlineCodeBlock and conformance PgQuery_InlineCodeBlock, type metadata accessor for PgQuery_InlineCodeBlock);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_InlineCodeBlock()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InlineCodeBlock and conformance PgQuery_InlineCodeBlock, type metadata accessor for PgQuery_InlineCodeBlock);

  return Message.hash(into:)();
}

uint64_t PgQuery_CallContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_CallContext.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    v3 = &v0[*(type metadata accessor for PgQuery_CallContext(0) + 20)];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CallContext@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v2 = &a2[*(a1 + 20)];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_Integer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_Integer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CallContext(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallContext and conformance PgQuery_CallContext, type metadata accessor for PgQuery_CallContext);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CallContext(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallContext and conformance PgQuery_CallContext, type metadata accessor for PgQuery_CallContext);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CallContext()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallContext and conformance PgQuery_CallContext, type metadata accessor for PgQuery_CallContext);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_CallContext(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_ScanToken.decodeMessage<A>(decoder:)()
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
        if (result == 4)
        {
          v3 = v0;
          lazy protocol witness table accessor for type PgQuery_Token and conformance PgQuery_Token();
        }

        else
        {
          if (result != 5)
          {
            goto LABEL_5;
          }

          v3 = v0;
          lazy protocol witness table accessor for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind();
        }

        v0 = v3;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_ScanToken.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 4) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
    {
      if (PgQuery_Token.rawValue.getter(*(v0 + 8), *(v0 + 16)))
      {
        lazy protocol witness table accessor for type PgQuery_Token and conformance PgQuery_Token();
        result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        if (!*(v0 + 24))
        {
          goto LABEL_11;
        }
      }

      else if (!*(v0 + 24))
      {
LABEL_11:
        v3 = v0 + *(type metadata accessor for PgQuery_ScanToken(0) + 32);
        return UnknownStorage.traverse<A>(visitor:)();
      }

      v4 = *(v0 + 32);
      lazy protocol witness table accessor for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_ScanToken@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_FetchStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_FetchStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ScanToken(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanToken and conformance PgQuery_ScanToken, type metadata accessor for PgQuery_ScanToken);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance PgQuery_OverridingKind@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ScanToken(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanToken and conformance PgQuery_ScanToken, type metadata accessor for PgQuery_ScanToken);

  return MEMORY[0x28217E428](a1, Scan);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PgQuery_ParseResult()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ScanToken()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanToken and conformance PgQuery_ScanToken, type metadata accessor for PgQuery_ScanToken);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PgQuery_ParseResult()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [PgQuery_Token] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t specialized PgQuery_Token.init(rawValue:)(uint64_t result)
{
  switch(result)
  {
    case 0:
      return result;
    case 37:
      result = 1;
      break;
    case 40:
      result = 2;
      break;
    case 41:
      result = 3;
      break;
    case 42:
      result = 4;
      break;
    case 43:
      result = 5;
      break;
    case 44:
      result = 6;
      break;
    case 45:
      result = 7;
      break;
    case 46:
      result = 8;
      break;
    case 47:
      result = 9;
      break;
    case 58:
      result = 10;
      break;
    case 59:
      result = 11;
      break;
    case 60:
      result = 12;
      break;
    case 61:
      result = 13;
      break;
    case 62:
      result = 14;
      break;
    case 63:
      result = 15;
      break;
    case 91:
      result = 16;
      break;
    case 92:
      result = 17;
      break;
    case 93:
      result = 18;
      break;
    case 94:
      result = 19;
      break;
    case 258:
      result = 20;
      break;
    case 259:
      result = 21;
      break;
    case 260:
      result = 22;
      break;
    case 261:
      result = 23;
      break;
    case 262:
      result = 24;
      break;
    case 263:
      result = 25;
      break;
    case 264:
      result = 26;
      break;
    case 265:
      result = 27;
      break;
    case 266:
      result = 28;
      break;
    case 267:
      result = 29;
      break;
    case 268:
      result = 30;
      break;
    case 269:
      result = 31;
      break;
    case 270:
      result = 32;
      break;
    case 271:
      result = 33;
      break;
    case 272:
      result = 34;
      break;
    case 273:
      result = 35;
      break;
    case 274:
      result = 36;
      break;
    case 275:
      result = 37;
      break;
    case 276:
      result = 38;
      break;
    case 277:
      result = 39;
      break;
    case 278:
      result = 40;
      break;
    case 279:
      result = 41;
      break;
    case 280:
      result = 42;
      break;
    case 281:
      result = 43;
      break;
    case 282:
      result = 44;
      break;
    case 283:
      result = 45;
      break;
    case 284:
      result = 46;
      break;
    case 285:
      result = 47;
      break;
    case 286:
      result = 48;
      break;
    case 287:
      result = 49;
      break;
    case 288:
      result = 50;
      break;
    case 289:
      result = 51;
      break;
    case 290:
      result = 52;
      break;
    case 291:
      result = 53;
      break;
    case 292:
      result = 54;
      break;
    case 293:
      result = 55;
      break;
    case 294:
      result = 56;
      break;
    case 295:
      result = 57;
      break;
    case 296:
      result = 58;
      break;
    case 297:
      result = 59;
      break;
    case 298:
      result = 60;
      break;
    case 299:
      result = 61;
      break;
    case 300:
      result = 62;
      break;
    case 301:
      result = 63;
      break;
    case 302:
      result = 64;
      break;
    case 303:
      result = 65;
      break;
    case 304:
      result = 66;
      break;
    case 305:
      result = 67;
      break;
    case 306:
      result = 68;
      break;
    case 307:
      result = 69;
      break;
    case 308:
      result = 70;
      break;
    case 309:
      result = 71;
      break;
    case 310:
      result = 72;
      break;
    case 311:
      result = 73;
      break;
    case 312:
      result = 74;
      break;
    case 313:
      result = 75;
      break;
    case 314:
      result = 76;
      break;
    case 315:
      result = 77;
      break;
    case 316:
      result = 78;
      break;
    case 317:
      result = 79;
      break;
    case 318:
      result = 80;
      break;
    case 319:
      result = 81;
      break;
    case 320:
      result = 82;
      break;
    case 321:
      result = 83;
      break;
    case 322:
      result = 84;
      break;
    case 323:
      result = 85;
      break;
    case 324:
      result = 86;
      break;
    case 325:
      result = 87;
      break;
    case 326:
      result = 88;
      break;
    case 327:
      result = 89;
      break;
    case 328:
      result = 90;
      break;
    case 329:
      result = 91;
      break;
    case 330:
      result = 92;
      break;
    case 331:
      result = 93;
      break;
    case 332:
      result = 94;
      break;
    case 333:
      result = 95;
      break;
    case 334:
      result = 96;
      break;
    case 335:
      result = 97;
      break;
    case 336:
      result = 98;
      break;
    case 337:
      result = 99;
      break;
    case 338:
      result = 100;
      break;
    case 339:
      result = 101;
      break;
    case 340:
      result = 102;
      break;
    case 341:
      result = 103;
      break;
    case 342:
      result = 104;
      break;
    case 343:
      result = 105;
      break;
    case 344:
      result = 106;
      break;
    case 345:
      result = 107;
      break;
    case 346:
      result = 108;
      break;
    case 347:
      result = 109;
      break;
    case 348:
      result = 110;
      break;
    case 349:
      result = 111;
      break;
    case 350:
      result = 112;
      break;
    case 351:
      result = 113;
      break;
    case 352:
      result = 114;
      break;
    case 353:
      result = 115;
      break;
    case 354:
      result = 116;
      break;
    case 355:
      result = 117;
      break;
    case 356:
      result = 118;
      break;
    case 357:
      result = 119;
      break;
    case 358:
      result = 120;
      break;
    case 359:
      result = 121;
      break;
    case 360:
      result = 122;
      break;
    case 361:
      result = 123;
      break;
    case 362:
      result = 124;
      break;
    case 363:
      result = 125;
      break;
    case 364:
      result = 126;
      break;
    case 365:
      result = 127;
      break;
    default:
      v1 = result - 366;
      result = 128;
      switch(v1)
      {
        case 0:
          return result;
        case 1:
          result = 129;
          break;
        case 2:
          result = 130;
          break;
        case 3:
          result = 131;
          break;
        case 4:
          result = 132;
          break;
        case 5:
          result = 133;
          break;
        case 6:
          result = 134;
          break;
        case 7:
          result = 135;
          break;
        case 8:
          result = 136;
          break;
        case 9:
          result = 137;
          break;
        case 10:
          result = 138;
          break;
        case 11:
          result = 139;
          break;
        case 12:
          result = 140;
          break;
        case 13:
          result = 141;
          break;
        case 14:
          result = 142;
          break;
        case 15:
          result = 143;
          break;
        case 16:
          result = 144;
          break;
        case 17:
          result = 145;
          break;
        case 18:
          result = 146;
          break;
        case 19:
          result = 147;
          break;
        case 20:
          result = 148;
          break;
        case 21:
          result = 149;
          break;
        case 22:
          result = 150;
          break;
        case 23:
          result = 151;
          break;
        case 24:
          result = 152;
          break;
        case 25:
          result = 153;
          break;
        case 26:
          result = 154;
          break;
        case 27:
          result = 155;
          break;
        case 28:
          result = 156;
          break;
        case 29:
          result = 157;
          break;
        case 30:
          result = 158;
          break;
        case 31:
          result = 159;
          break;
        case 32:
          result = 160;
          break;
        case 33:
          result = 161;
          break;
        case 34:
          result = 162;
          break;
        case 35:
          result = 163;
          break;
        case 36:
          result = 164;
          break;
        case 37:
          result = 165;
          break;
        case 38:
          result = 166;
          break;
        case 39:
          result = 167;
          break;
        case 40:
          result = 168;
          break;
        case 41:
          result = 169;
          break;
        case 42:
          result = 170;
          break;
        case 43:
          result = 171;
          break;
        case 44:
          result = 172;
          break;
        case 45:
          result = 173;
          break;
        case 46:
          result = 174;
          break;
        case 47:
          result = 175;
          break;
        case 48:
          result = 176;
          break;
        case 49:
          result = 177;
          break;
        case 50:
          result = 178;
          break;
        case 51:
          result = 179;
          break;
        case 52:
          result = 180;
          break;
        case 53:
          result = 181;
          break;
        case 54:
          result = 182;
          break;
        case 55:
          result = 183;
          break;
        case 56:
          result = 184;
          break;
        case 57:
          result = 185;
          break;
        case 58:
          result = 186;
          break;
        case 59:
          result = 187;
          break;
        case 60:
          result = 188;
          break;
        case 61:
          result = 189;
          break;
        case 62:
          result = 190;
          break;
        case 63:
          result = 191;
          break;
        default:
          result = 448;
          break;
      }

      break;
  }

  return result;
}

uint64_t specialized static PgQuery_DropTableSpaceStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(type metadata accessor for PgQuery_DropTableSpaceStmt(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateOpFamilyStmt.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for PgQuery_CreateOpFamilyStmt(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_ReplicaIdentityStmt.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterTableSpaceOptionsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v6 = *(type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterDefaultPrivilegesStmt.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  GrantStmt = type metadata accessor for PgQuery_GrantStmt(0);
  v5 = *(GrantStmt - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](GrantStmt);
  v8 = &AlterDefaultPrivilegesStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &AlterDefaultPrivilegesStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_GrantStmtVSg_ADtMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &AlterDefaultPrivilegesStmt - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  AlterDefaultPrivilegesStmt = type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(0);
  v37 = a2;
  v17 = *(AlterDefaultPrivilegesStmt + 24);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  outlined init with copy of PgQuery_Alias?(v37 + v17, &v16[v18], &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, GrantStmt) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
    if (v19(&v16[v18], 1, GrantStmt) == 1)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_GrantStmt);
      goto LABEL_7;
    }

    outlined init with take of PgQuery_OidList(&v16[v18], v8, type metadata accessor for PgQuery_GrantStmt);
    if (*v12 != *v8)
    {
      goto LABEL_9;
    }

    v25 = *(v12 + 1);
    v26 = *(v8 + 1);
    if (v8[16] == 1)
    {
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          if (v25 != 2)
          {
            goto LABEL_9;
          }
        }

        else if (v25 != 3)
        {
          goto LABEL_9;
        }
      }

      else if (v26)
      {
        if (v25 != 1)
        {
          goto LABEL_9;
        }
      }

      else if (v25)
      {
        goto LABEL_9;
      }
    }

    else if (v25 != v26)
    {
      goto LABEL_9;
    }

    v27 = *(v8 + 3);
    v28 = v8[32];
    ResultSetCursor.columns.modify(*(v12 + 3), v12[32]);
    v30 = v29;
    ResultSetCursor.columns.modify(v27, v28);
    if (v30 != v31 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 5), *(v8 + 5)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 6), *(v8 + 6)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 7), *(v8 + 7)) & 1) == 0 || v12[64] != v8[64])
    {
      goto LABEL_9;
    }

    v32 = *(v12 + 9);
    v33 = *(v8 + 9);
    if (v8[80] == 1)
    {
      if (v33)
      {
        if (v33 == 1)
        {
          if (v32 == 1)
          {
            goto LABEL_42;
          }
        }

        else if (v32 == 2)
        {
          goto LABEL_42;
        }

LABEL_9:
        outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_GrantStmt);
LABEL_10:
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_GrantStmt);
        v22 = &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd;
        v23 = &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR;
        goto LABEL_11;
      }

      if (v32)
      {
        goto LABEL_9;
      }
    }

    else if (v32 != v33)
    {
      goto LABEL_9;
    }

LABEL_42:
    v34 = *(GrantStmt + 48);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_GrantStmt);
    if (v35)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_GrantStmt);
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v19(&v16[v18], 1, GrantStmt) != 1)
  {
LABEL_7:
    v22 = &_s14BiomeSQLParser17PgQuery_GrantStmtVSg_ADtMd;
    v23 = &_s14BiomeSQLParser17PgQuery_GrantStmtVSg_ADtMR;
LABEL_11:
    outlined destroy of URL?(v16, v22, v23);
LABEL_12:
    v21 = 0;
    return v21 & 1;
  }

LABEL_4:
  outlined destroy of URL?(v16, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  v20 = *(AlterDefaultPrivilegesStmt + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static PgQuery_AlterTSConfigurationStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], *(a2 + 16)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[3], *(a2 + 24)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], *(a2 + 32)) & 1) != 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 41) == *(a2 + 41) && *(a1 + 42) == *(a2 + 42))
  {
    v6 = *(type metadata accessor for PgQuery_AlterTSConfigurationStmt(0) + 44);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_ImportForeignSchemaStmt.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = *(a2 + 48);
  if (*(a2 + 56) == 1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[8], *(a2 + 64)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[9], *(a2 + 72)))
  {
    v8 = *(type metadata accessor for PgQuery_ImportForeignSchemaStmt(0) + 40);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_CreateForeignServerStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 64) != *(a2 + 64) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for PgQuery_CreateForeignServerStmt(0) + 40);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateForeignTableStmt.== infix(_:_:)(void *a1, void *a2)
{
  Stmt = type metadata accessor for PgQuery_CreateStmt(0);
  v5 = *(Stmt - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](Stmt);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_CreateStmtVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  ForeignTableStmt = type metadata accessor for PgQuery_CreateForeignTableStmt(0);
  v17 = *(ForeignTableStmt + 28);
  v18 = *(v13 + 56);
  v35 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, Stmt) == 1)
  {
    if (v19(&v16[v18], 1, Stmt) == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  if (v19(&v16[v18], 1, Stmt) == 1)
  {
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_CreateStmt);
LABEL_6:
    v20 = &_s14BiomeSQLParser18PgQuery_CreateStmtVSg_ADtMd;
    v21 = &_s14BiomeSQLParser18PgQuery_CreateStmtVSg_ADtMR;
LABEL_17:
    outlined destroy of URL?(v16, v20, v21);
LABEL_18:
    v30 = 0;
    return v30 & 1;
  }

  v22 = v34;
  outlined init with take of PgQuery_OidList(&v16[v18], v34, type metadata accessor for PgQuery_CreateStmt);
  v23 = *(Stmt + 20);
  v24 = *&v11[v23];
  v25 = *(v22 + v23);
  if (v24 != v25)
  {
    v26 = *&v11[v23];

    v27 = closure #1 in static PgQuery_CreateStmt.== infix(_:_:)(v24, v25);

    if ((v27 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
LABEL_16:
    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_CreateStmt);
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_CreateStmt);
    v20 = &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd;
    v21 = &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR;
    goto LABEL_17;
  }

  outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_CreateStmt);
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_CreateStmt);
LABEL_11:
  outlined destroy of URL?(v16, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  v28 = v35;
  if ((*v35 != *a2 || v35[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v28[2], a2[2]) & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = *(ForeignTableStmt + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v30 & 1;
}

uint64_t specialized static PgQuery_AlterExtensionContentsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterForeignServerStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v7 = *(type metadata accessor for PgQuery_AlterForeignServerStmt(0) + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateUserMappingStmt.== infix(_:_:)(void *a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](RoleSpec);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  UserMappingStmt = type metadata accessor for PgQuery_CreateUserMappingStmt(0);
  v17 = *(UserMappingStmt + 32);
  v18 = *(v13 + 56);
  v35 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v19(&v16[v18], 1, RoleSpec) == 1)
    {
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
      goto LABEL_11;
    }

    v25 = v34;
    outlined init with take of PgQuery_OidList(&v16[v18], v34, type metadata accessor for PgQuery_RoleSpec);
    v26 = *v11;
    v27 = *v25;
    if (*(v25 + 8) == 1)
    {
      if (v27 <= 1)
      {
        if (v27)
        {
          if (v26 != 1)
          {
            goto LABEL_35;
          }
        }

        else if (v26)
        {
          goto LABEL_35;
        }
      }

      else if (v27 == 2)
      {
        if (v26 != 2)
        {
          goto LABEL_35;
        }
      }

      else if (v27 == 3)
      {
        if (v26 != 3)
        {
          goto LABEL_35;
        }
      }

      else if (v26 != 4)
      {
        goto LABEL_35;
      }
    }

    else if (v26 != v27)
    {
      goto LABEL_35;
    }

    v28 = *(v11 + 2) == *(v25 + 16) && *(v11 + 3) == *(v25 + 24);
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v11 + 8) == *(v25 + 32))
    {
      v29 = *(RoleSpec + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RoleSpec);
      if (v30)
      {
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_3;
      }

      goto LABEL_36;
    }

LABEL_35:
    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RoleSpec);
LABEL_36:
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_37;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_11:
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_37:
    outlined destroy of URL?(v16, v23, v24);
LABEL_38:
    v22 = 0;
    return v22 & 1;
  }

LABEL_3:
  outlined destroy of URL?(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v20 = v35;
  if ((*v35 != *a2 || v35[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v20 + 16) != *(a2 + 16) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v20[3], *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_38;
  }

  v21 = *(UserMappingStmt + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t specialized static PgQuery_CreatePublicationStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 24), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(type metadata accessor for PgQuery_CreatePublicationStmt(0) + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterTableMoveAllStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  ResultSetCursor.columns.modify(*(a1 + 16), *(a1 + 24));
  v8 = v7;
  ResultSetCursor.columns.modify(v5, v6);
  if (v8 != v9 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v11 = *(type metadata accessor for PgQuery_AlterTableMoveAllStmt(0) + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterSubscriptionStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[6], *(a2 + 48)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[7], *(a2 + 56)))
  {
    v7 = *(type metadata accessor for PgQuery_AlterSubscriptionStmt(0) + 36);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_DropSubscriptionStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (*(a2 + 32) != 1)
  {
    if (v6 == v7)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v7 == 1)
  {
    if (v6 == 1)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_18:
  v8 = *(type metadata accessor for PgQuery_DropSubscriptionStmt(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateTableSpaceStmt.== infix(_:_:)(void *a1, void *a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](RoleSpec);
  v8 = &TableSpaceStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &TableSpaceStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &TableSpaceStmt - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_40;
  }

  v33 = v8;
  TableSpaceStmt = type metadata accessor for PgQuery_CreateTableSpaceStmt(0);
  v17 = *(TableSpaceStmt + 32);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v19(&v16[v18], 1, RoleSpec) == 1)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
      goto LABEL_13;
    }

    v24 = &v16[v18];
    v25 = v33;
    outlined init with take of PgQuery_OidList(v24, v33, type metadata accessor for PgQuery_RoleSpec);
    v26 = *v12;
    v27 = *v25;
    if (*(v25 + 8) == 1)
    {
      if (v27 <= 1)
      {
        if (v27)
        {
          if (v26 != 1)
          {
            goto LABEL_37;
          }
        }

        else if (v26)
        {
          goto LABEL_37;
        }
      }

      else if (v27 == 2)
      {
        if (v26 != 2)
        {
          goto LABEL_37;
        }
      }

      else if (v27 == 3)
      {
        if (v26 != 3)
        {
          goto LABEL_37;
        }
      }

      else if (v26 != 4)
      {
        goto LABEL_37;
      }
    }

    else if (v26 != v27)
    {
      goto LABEL_37;
    }

    v28 = *(v12 + 2) == *(v25 + 16) && *(v12 + 3) == *(v25 + 24);
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v12 + 8) == *(v25 + 32))
    {
      v29 = *(RoleSpec + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RoleSpec);
      if (v30)
      {
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_6;
      }

      goto LABEL_38;
    }

LABEL_37:
    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RoleSpec);
LABEL_38:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_39;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_13:
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_39:
    outlined destroy of URL?(v16, v22, v23);
LABEL_40:
    v21 = 0;
    return v21 & 1;
  }

LABEL_6:
  outlined destroy of URL?(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], a2[4]) & 1) == 0)
  {
    goto LABEL_40;
  }

  v20 = *(TableSpaceStmt + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static PgQuery_CreateConversionStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 40), *(a2 + 40)) & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v7 = *(type metadata accessor for PgQuery_CreateConversionStmt(0) + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterUserMappingStmt.== infix(_:_:)(void *a1, void *a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](RoleSpec);
  v34 = &AlterUserMappingStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &AlterUserMappingStmt - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &AlterUserMappingStmt - v15;
  AlterUserMappingStmt = type metadata accessor for PgQuery_AlterUserMappingStmt(0);
  v17 = *(AlterUserMappingStmt + 28);
  v18 = *(v13 + 56);
  v35 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v36 = a2;
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v19(&v16[v18], 1, RoleSpec) == 1)
    {
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
      goto LABEL_10;
    }

    v26 = v34;
    outlined init with take of PgQuery_OidList(&v16[v18], v34, type metadata accessor for PgQuery_RoleSpec);
    v27 = *v11;
    v28 = *v26;
    if (*(v26 + 8) == 1)
    {
      if (v28 <= 1)
      {
        if (v28)
        {
          if (v27 != 1)
          {
            goto LABEL_34;
          }
        }

        else if (v27)
        {
          goto LABEL_34;
        }
      }

      else if (v28 == 2)
      {
        if (v27 != 2)
        {
          goto LABEL_34;
        }
      }

      else if (v28 == 3)
      {
        if (v27 != 3)
        {
          goto LABEL_34;
        }
      }

      else if (v27 != 4)
      {
        goto LABEL_34;
      }
    }

    else if (v27 != v28)
    {
      goto LABEL_34;
    }

    v29 = *(v11 + 2) == *(v26 + 16) && *(v11 + 3) == *(v26 + 24);
    if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v11 + 8) == *(v26 + 32))
    {
      v30 = *(RoleSpec + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_RoleSpec);
      if (v31)
      {
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_3;
      }

      goto LABEL_35;
    }

LABEL_34:
    outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_RoleSpec);
LABEL_35:
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v25 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_36;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_10:
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v25 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_36:
    outlined destroy of URL?(v16, v24, v25);
LABEL_37:
    v23 = 0;
    return v23 & 1;
  }

LABEL_3:
  outlined destroy of URL?(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v21 = v35;
  v20 = v36;
  if ((*v35 != *v36 || v35[1] != v36[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v21[2], v20[2]) & 1) == 0)
  {
    goto LABEL_37;
  }

  v22 = *(AlterUserMappingStmt + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static PgQuery_AlterPublicationStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 24), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (*(a2 + 48) == 1)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v6 == 1)
        {
          goto LABEL_17;
        }
      }

      else if (!v6)
      {
        goto LABEL_17;
      }
    }

    else if (v7 == 2)
    {
      if (v6 == 2)
      {
        goto LABEL_17;
      }
    }

    else if (v7 == 3)
    {
      if (v6 == 3)
      {
        goto LABEL_17;
      }
    }

    else if (v6 == 4)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v6 != v7)
  {
    return 0;
  }

LABEL_17:
  v8 = *(type metadata accessor for PgQuery_AlterPublicationStmt(0) + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterDatabaseSetStmt.== infix(_:_:)(void *a1, void *a2)
{
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v5 = *(VariableSetStmt - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](VariableSetStmt);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  if (*a1 == *a2 && a1[1] == a2[1] || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), v18 = 0, (v17 & 1) != 0))
  {
    v33 = v8;
    AlterDatabaseSetStmt = type metadata accessor for PgQuery_AlterDatabaseSetStmt(0);
    v19 = *(AlterDatabaseSetStmt + 24);
    v20 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + v19, v16, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v19, &v16[v20], &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    v21 = *(v5 + 48);
    if (v21(v16, 1, VariableSetStmt) == 1)
    {
      if (v21(&v16[v20], 1, VariableSetStmt) == 1)
      {
LABEL_6:
        outlined destroy of URL?(v16, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
        v22 = *(AlterDatabaseSetStmt + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v18 & 1;
      }

      goto LABEL_9;
    }

    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    if (v21(&v16[v20], 1, VariableSetStmt) == 1)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_VariableSetStmt);
LABEL_9:
      v23 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMd;
      v24 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMR;
LABEL_42:
      outlined destroy of URL?(v16, v23, v24);
      v18 = 0;
      return v18 & 1;
    }

    v25 = &v16[v20];
    v26 = v33;
    outlined init with take of PgQuery_OidList(v25, v33, type metadata accessor for PgQuery_VariableSetStmt);
    v27 = *v12;
    v28 = *v26;
    if (*(v26 + 8) == 1)
    {
      if (v28 <= 2)
      {
        if (v28)
        {
          if (v28 == 1)
          {
            if (v27 != 1)
            {
              goto LABEL_40;
            }
          }

          else if (v27 != 2)
          {
            goto LABEL_40;
          }
        }

        else if (v27)
        {
          goto LABEL_40;
        }
      }

      else if (v28 > 4)
      {
        if (v28 == 5)
        {
          if (v27 != 5)
          {
            goto LABEL_40;
          }
        }

        else if (v27 != 6)
        {
          goto LABEL_40;
        }
      }

      else if (v28 == 3)
      {
        if (v27 != 3)
        {
          goto LABEL_40;
        }
      }

      else if (v27 != 4)
      {
        goto LABEL_40;
      }
    }

    else if (v27 != v28)
    {
      goto LABEL_40;
    }

    v29 = *(v12 + 2) == *(v26 + 16) && *(v12 + 3) == *(v26 + 24);
    if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 4), *(v26 + 32)) & 1) != 0 && v12[40] == *(v26 + 40))
    {
      v30 = *(VariableSetStmt + 32);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_VariableSetStmt);
      if (v31)
      {
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_VariableSetStmt);
        goto LABEL_6;
      }

      goto LABEL_41;
    }

LABEL_40:
    outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_VariableSetStmt);
LABEL_41:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_VariableSetStmt);
    v23 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd;
    v24 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR;
    goto LABEL_42;
  }

  return v18 & 1;
}

uint64_t specialized static PgQuery_DropUserMappingStmt.== infix(_:_:)(void *a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](RoleSpec);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  DropUserMappingStmt = type metadata accessor for PgQuery_DropUserMappingStmt(0);
  v17 = *(DropUserMappingStmt + 28);
  v18 = *(v13 + 56);
  v35 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v19(&v16[v18], 1, RoleSpec) == 1)
    {
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
      goto LABEL_10;
    }

    v25 = v34;
    outlined init with take of PgQuery_OidList(&v16[v18], v34, type metadata accessor for PgQuery_RoleSpec);
    v26 = *v11;
    v27 = *v25;
    if (*(v25 + 8) == 1)
    {
      if (v27 <= 1)
      {
        if (v27)
        {
          if (v26 != 1)
          {
            goto LABEL_34;
          }
        }

        else if (v26)
        {
          goto LABEL_34;
        }
      }

      else if (v27 == 2)
      {
        if (v26 != 2)
        {
          goto LABEL_34;
        }
      }

      else if (v27 == 3)
      {
        if (v26 != 3)
        {
          goto LABEL_34;
        }
      }

      else if (v26 != 4)
      {
        goto LABEL_34;
      }
    }

    else if (v26 != v27)
    {
      goto LABEL_34;
    }

    v28 = *(v11 + 2) == *(v25 + 16) && *(v11 + 3) == *(v25 + 24);
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v11 + 8) == *(v25 + 32))
    {
      v29 = *(RoleSpec + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RoleSpec);
      if (v30)
      {
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_3;
      }

      goto LABEL_35;
    }

LABEL_34:
    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RoleSpec);
LABEL_35:
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_36;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_10:
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_36:
    outlined destroy of URL?(v16, v23, v24);
LABEL_37:
    v22 = 0;
    return v22 & 1;
  }

LABEL_3:
  outlined destroy of URL?(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v20 = v35;
  if ((*v35 != *a2 || v35[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v20 + 16) != *(a2 + 16))
  {
    goto LABEL_37;
  }

  v21 = *(DropUserMappingStmt + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t specialized static PgQuery_CreateTransformStmt.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v73 = *(ObjectWithArgs - 8);
  v74 = ObjectWithArgs;
  v5 = *(v73 + 64);
  v6 = MEMORY[0x28223BE20](ObjectWithArgs);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v69 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = &v64 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR);
  v15 = *(*(v75 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v75);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v64 - v19;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v21 = *(TypeName - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](TypeName);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v64 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v64 - v31;
  if (*a1 != *a2)
  {
    goto LABEL_29;
  }

  v65 = v8;
  v66 = v18;
  TransformStmt = type metadata accessor for PgQuery_CreateTransformStmt(0);
  v34 = *(TransformStmt + 28);
  v35 = *(v29 + 48);
  v67 = a1;
  v68 = TransformStmt;
  outlined init with copy of PgQuery_Alias?(&a1[v34], v32, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v36 = &a2[v34];
  v37 = a2;
  outlined init with copy of PgQuery_Alias?(v36, &v32[v35], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v38 = *(v21 + 48);
  if (v38(v32, 1, TypeName) == 1)
  {
    if (v38(&v32[v35], 1, TypeName) == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  outlined init with copy of PgQuery_Alias?(v32, v28, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v38(&v32[v35], 1, TypeName) == 1)
  {
    outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_TypeName);
LABEL_14:
    v51 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v52 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
LABEL_27:
    v54 = v32;
LABEL_28:
    outlined destroy of URL?(v54, v51, v52);
LABEL_29:
    v50 = 0;
    return v50 & 1;
  }

  outlined init with take of PgQuery_OidList(&v32[v35], v24, type metadata accessor for PgQuery_TypeName);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v28, *v24) & 1) == 0 || *(v28 + 2) != *(v24 + 2) || v28[12] != v24[12] || v28[13] != v24[13] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v28 + 2), *(v24 + 2)) & 1) == 0 || *(v28 + 6) != *(v24 + 6) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v28 + 4), *(v24 + 4)) & 1) == 0 || *(v28 + 10) != *(v24 + 10))
  {
    outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_TypeName);
    goto LABEL_26;
  }

  v53 = *(TypeName + 48);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  LOBYTE(v53) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_TypeName);
  if ((v53 & 1) == 0)
  {
LABEL_26:
    outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_TypeName);
    v51 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd;
    v52 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR;
    goto LABEL_27;
  }

  outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_TypeName);
LABEL_4:
  outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v39 = v67;
  if ((*(v67 + 1) != *(a2 + 1) || *(v67 + 2) != *(a2 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  v40 = v68[8];
  v41 = *(v75 + 48);
  v42 = v72;
  outlined init with copy of PgQuery_Alias?(&v39[v40], v72, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  outlined init with copy of PgQuery_Alias?(&v37[v40], v42 + v41, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v43 = v74;
  v44 = *(v73 + 48);
  if (v44(v42, 1, v74) == 1)
  {
    if (v44(v42 + v41, 1, v43) != 1)
    {
LABEL_38:
      v51 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd;
      v52 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR;
      v54 = v42;
      goto LABEL_28;
    }
  }

  else
  {
    v56 = v71;
    outlined init with copy of PgQuery_Alias?(v42, v71, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    if (v44(v42 + v41, 1, v43) == 1)
    {
LABEL_37:
      outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_ObjectWithArgs);
      goto LABEL_38;
    }

    v57 = v42 + v41;
    v58 = v70;
    outlined init with take of PgQuery_OidList(v57, v70, type metadata accessor for PgQuery_ObjectWithArgs);
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v56, *v58) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v56 + 8), *(v58 + 8)) & 1) == 0 || *(v56 + 16) != *(v58 + 16))
    {
      v59 = v58;
LABEL_43:
      outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_44:
      outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_ObjectWithArgs);
      v51 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd;
      v52 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR;
      v54 = v42;
      goto LABEL_28;
    }

    v62 = *(v43 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    LOBYTE(v62) = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_ObjectWithArgs);
    if ((v62 & 1) == 0)
    {
      goto LABEL_44;
    }

    outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_ObjectWithArgs);
  }

  outlined destroy of URL?(v42, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v45 = v68[9];
  v46 = *(v75 + 48);
  v47 = v66;
  outlined init with copy of PgQuery_Alias?(&v39[v45], v66, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v48 = &v37[v45];
  v42 = v47;
  outlined init with copy of PgQuery_Alias?(v48, v47 + v46, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (v44(v47, 1, v43) != 1)
  {
    v60 = v47;
    v56 = v69;
    outlined init with copy of PgQuery_Alias?(v60, v69, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    if (v44(v42 + v46, 1, v43) == 1)
    {
      goto LABEL_37;
    }

    v61 = v65;
    outlined init with take of PgQuery_OidList(v42 + v46, v65, type metadata accessor for PgQuery_ObjectWithArgs);
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v56, *v61) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v56 + 8), *(v61 + 8)) & 1) != 0 && *(v56 + 16) == *(v61 + 16))
    {
      v63 = *(v43 + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      LOBYTE(v63) = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_ObjectWithArgs);
      if (v63)
      {
        outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_ObjectWithArgs);
        goto LABEL_11;
      }

      goto LABEL_44;
    }

    v59 = v61;
    goto LABEL_43;
  }

  if (v44(v47 + v46, 1, v43) != 1)
  {
    goto LABEL_38;
  }

LABEL_11:
  outlined destroy of URL?(v42, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v49 = v68[6];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v50 & 1;
}

uint64_t specialized static PgQuery_CreateSubscriptionStmt.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], a2[4]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[5], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_RefreshMatViewStmt.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v8 = &RefreshMatViewStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &RefreshMatViewStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &RefreshMatViewStmt - v16;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_9;
  }

  v18 = v15;
  RefreshMatViewStmt = type metadata accessor for PgQuery_RefreshMatViewStmt(0);
  v19 = *(RefreshMatViewStmt + 28);
  v20 = *(v18 + 48);
  outlined init with copy of PgQuery_Alias?(&a1[v19], v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v28 = v20;
  outlined init with copy of PgQuery_Alias?(&a2[v19], &v17[v20], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v21 = *(v5 + 48);
  if (v21(v17, 1, RangeVar) == 1)
  {
    if (v21(&v17[v28], 1, RangeVar) == 1)
    {
      outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_12:
      v26 = *(RefreshMatViewStmt + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of PgQuery_Alias?(v17, v12, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v22 = v28;
  if (v21(&v17[v28], 1, RangeVar) == 1)
  {
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
LABEL_8:
    outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_9;
  }

  outlined init with take of PgQuery_OidList(&v17[v22], v8, type metadata accessor for PgQuery_RangeVar);
  v25 = specialized static PgQuery_RangeVar.== infix(_:_:)(v12, v8);
  outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_9:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static PgQuery_CreateFunctionStmt.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v5 = *(TypeName - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](TypeName);
  v8 = &FunctionStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &FunctionStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &FunctionStmt - v16;
  if (*a1 != *a2)
  {
    goto LABEL_25;
  }

  if (a1[1] != a2[1])
  {
    goto LABEL_25;
  }

  v18 = v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 1), *(a2 + 1)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 2), *(a2 + 2)) & 1) == 0)
  {
    goto LABEL_25;
  }

  FunctionStmt = type metadata accessor for PgQuery_CreateFunctionStmt(0);
  v19 = *(FunctionStmt + 40);
  v20 = *(v18 + 48);
  outlined init with copy of PgQuery_Alias?(&a1[v19], v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v31 = v20;
  outlined init with copy of PgQuery_Alias?(&a2[v19], &v17[v20], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v21 = *(v5 + 48);
  if (v21(v17, 1, TypeName) == 1)
  {
    if (v21(&v17[v31], 1, TypeName) == 1)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  outlined init with copy of PgQuery_Alias?(v17, v12, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v24 = v31;
  if (v21(&v17[v31], 1, TypeName) == 1)
  {
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
LABEL_11:
    v25 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v26 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
LABEL_24:
    outlined destroy of URL?(v17, v25, v26);
    goto LABEL_25;
  }

  outlined init with take of PgQuery_OidList(&v17[v24], v8, type metadata accessor for PgQuery_TypeName);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v12, *v8) & 1) == 0 || *(v12 + 2) != *(v8 + 2) || v12[12] != v8[12] || v12[13] != v8[13] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 2), *(v8 + 2)) & 1) == 0 || *(v12 + 6) != *(v8 + 6) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 4), *(v8 + 4)) & 1) == 0 || *(v12 + 10) != *(v8 + 10))
  {
    outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_TypeName);
    goto LABEL_23;
  }

  v27 = *(TypeName + 48);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_TypeName);
  if ((v28 & 1) == 0)
  {
LABEL_23:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
    v25 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd;
    v26 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR;
    goto LABEL_24;
  }

  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
LABEL_7:
  outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 3), *(a2 + 3)) & 1) == 0)
  {
LABEL_25:
    v23 = 0;
    return v23 & 1;
  }

  v22 = *(FunctionStmt + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static PgQuery_ExplainStmt.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, void *a5)
{
  v9 = *(a3(0) + 20);
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 != v11)
  {
    v12 = *(a1 + v9);

    v13 = closure #1 in static PgQuery_AlternativeSubPlan.== infix(_:_:)(v10, v11, a4, a5);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_TriggerTransition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  v6 = *(type metadata accessor for PgQuery_TriggerTransition(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_ReassignOwnedStmt.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](RoleSpec);
  v8 = &ReassignOwnedStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &ReassignOwnedStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &ReassignOwnedStmt - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_34;
  }

  ReassignOwnedStmt = type metadata accessor for PgQuery_ReassignOwnedStmt(0);
  v31 = a2;
  v17 = *(ReassignOwnedStmt + 24);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(v31 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v19(&v16[v18], 1, RoleSpec) == 1)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
      goto LABEL_7;
    }

    outlined init with take of PgQuery_OidList(&v16[v18], v8, type metadata accessor for PgQuery_RoleSpec);
    v24 = *v12;
    v25 = *v8;
    if (v8[8] == 1)
    {
      if (v25 <= 1)
      {
        if (v25)
        {
          if (v24 != 1)
          {
            goto LABEL_31;
          }
        }

        else if (v24)
        {
          goto LABEL_31;
        }
      }

      else if (v25 == 2)
      {
        if (v24 != 2)
        {
          goto LABEL_31;
        }
      }

      else if (v25 == 3)
      {
        if (v24 != 3)
        {
          goto LABEL_31;
        }
      }

      else if (v24 != 4)
      {
        goto LABEL_31;
      }
    }

    else if (v24 != v25)
    {
      goto LABEL_31;
    }

    v26 = *(v12 + 2) == *(v8 + 2) && *(v12 + 3) == *(v8 + 3);
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v12 + 8) == *(v8 + 8))
    {
      v27 = *(RoleSpec + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_RoleSpec);
      if (v28)
      {
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_4;
      }

      goto LABEL_32;
    }

LABEL_31:
    outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_RoleSpec);
LABEL_32:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_33;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_7:
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_33:
    outlined destroy of URL?(v16, v22, v23);
LABEL_34:
    v21 = 0;
    return v21 & 1;
  }

LABEL_4:
  outlined destroy of URL?(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v20 = *(ReassignOwnedStmt + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static PgQuery_CreateOpClassStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v5 = *(TypeName - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](TypeName);
  v8 = &OpClassStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &OpClassStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &OpClassStmt - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v30 = v8;
  OpClassStmt = type metadata accessor for PgQuery_CreateOpClassStmt(0);
  v17 = *(OpClassStmt + 40);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, TypeName) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if (v19(&v16[v18], 1, TypeName) != 1)
    {
      v24 = &v16[v18];
      v25 = v30;
      outlined init with take of PgQuery_OidList(v24, v30, type metadata accessor for PgQuery_TypeName);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v12, *v25) & 1) != 0 && *(v12 + 2) == *(v25 + 8) && v12[12] == *(v25 + 12) && v12[13] == *(v25 + 13) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 2), *(v25 + 16)) & 1) != 0 && *(v12 + 6) == *(v25 + 24) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 4), *(v25 + 32)) & 1) != 0 && *(v12 + 10) == *(v25 + 40))
      {
        v26 = *(TypeName + 48);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_TypeName);
        if (v27)
        {
          outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
          goto LABEL_8;
        }
      }

      else
      {
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_TypeName);
      }

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
      v22 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd;
      v23 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR;
LABEL_26:
      outlined destroy of URL?(v16, v22, v23);
LABEL_27:
      v21 = 0;
      return v21 & 1;
    }

    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
LABEL_13:
    v22 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v23 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    goto LABEL_26;
  }

  if (v19(&v16[v18], 1, TypeName) != 1)
  {
    goto LABEL_13;
  }

LABEL_8:
  outlined destroy of URL?(v16, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    goto LABEL_27;
  }

  v20 = *(OpClassStmt + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}