uint64_t PgQuery_ReassignOwnedStmt.traverse<A>(visitor:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - v3;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v6 = *(RoleSpec - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](RoleSpec);
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

  ReassignOwnedStmt = type metadata accessor for PgQuery_ReassignOwnedStmt(0);
  outlined init with copy of PgQuery_Alias?(v0 + *(ReassignOwnedStmt + 24), v4, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v6 + 48))(v4, 1, RoleSpec) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v4, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v4, v9, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
    v14 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_RoleSpec);
    if (v14)
    {
      return result;
    }

    v0 = v17;
  }

  v15 = v0 + *(ReassignOwnedStmt + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ReassignOwnedStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReassignOwnedStmt and conformance PgQuery_ReassignOwnedStmt, type metadata accessor for PgQuery_ReassignOwnedStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ReassignOwnedStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReassignOwnedStmt and conformance PgQuery_ReassignOwnedStmt, type metadata accessor for PgQuery_ReassignOwnedStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ReassignOwnedStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReassignOwnedStmt and conformance PgQuery_ReassignOwnedStmt, type metadata accessor for PgQuery_ReassignOwnedStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CompositeTypeStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        v3 = *(type metadata accessor for PgQuery_CompositeTypeStmt(0) + 24);
        type metadata accessor for PgQuery_RangeVar(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CompositeTypeStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v18 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v7 = *(RangeVar - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  CompositeTypeStmt = type metadata accessor for PgQuery_CompositeTypeStmt(0);
  v17 = v1;
  outlined init with copy of PgQuery_Alias?(v1 + *(CompositeTypeStmt + 24), v5, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v7 + 48))(v5, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v5, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
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
  if (!*(*v17 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v11))
  {
    v14 = v13 + *(CompositeTypeStmt + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CompositeTypeStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CompositeTypeStmt and conformance PgQuery_CompositeTypeStmt, type metadata accessor for PgQuery_CompositeTypeStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CompositeTypeStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CompositeTypeStmt and conformance PgQuery_CompositeTypeStmt, type metadata accessor for PgQuery_CompositeTypeStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CompositeTypeStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CompositeTypeStmt and conformance PgQuery_CompositeTypeStmt, type metadata accessor for PgQuery_CompositeTypeStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateEnumStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEnumStmt and conformance PgQuery_CreateEnumStmt, type metadata accessor for PgQuery_CreateEnumStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateEnumStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEnumStmt and conformance PgQuery_CreateEnumStmt, type metadata accessor for PgQuery_CreateEnumStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateEnumStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEnumStmt and conformance PgQuery_CreateEnumStmt, type metadata accessor for PgQuery_CreateEnumStmt);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_184D29A90;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "type_name";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v13 = type metadata accessor for _NameMap.NameDescription();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v14();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_184D29AA0;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v14 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateRangeStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRangeStmt and conformance PgQuery_CreateRangeStmt, type metadata accessor for PgQuery_CreateRangeStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateRangeStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRangeStmt and conformance PgQuery_CreateRangeStmt, type metadata accessor for PgQuery_CreateRangeStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateRangeStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRangeStmt and conformance PgQuery_CreateRangeStmt, type metadata accessor for PgQuery_CreateRangeStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterEnumStmt.decodeMessage<A>(decoder:)()
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
          goto LABEL_4;
        }

        if (result == 5 || result == 6)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2 || result == 3)
      {
LABEL_4:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterEnumStmt.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = *(v0 + 16);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v5 = *(v0 + 32);
      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = *(v0 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        v7 = *(v0 + 48);
        v8 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v8 = *(v0 + 40) & 0xFFFFFFFFFFFFLL;
        }

        if (!v8 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
        {
          if (*(v0 + 56) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
          {
            if (*(v0 + 57) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
            {
              v9 = v0 + *(type metadata accessor for PgQuery_AlterEnumStmt(0) + 40);
              return UnknownStorage.traverse<A>(visitor:)();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterEnumStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  v2 = a2 + *(a1 + 40);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterEnumStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEnumStmt and conformance PgQuery_AlterEnumStmt, type metadata accessor for PgQuery_AlterEnumStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterEnumStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEnumStmt and conformance PgQuery_AlterEnumStmt, type metadata accessor for PgQuery_AlterEnumStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterEnumStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEnumStmt and conformance PgQuery_AlterEnumStmt, type metadata accessor for PgQuery_AlterEnumStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterTypeStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    if (!*(v4[1] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
    {
      v8 = v4 + *(a4(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTSDictionaryStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSDictionaryStmt and conformance PgQuery_AlterTSDictionaryStmt, type metadata accessor for PgQuery_AlterTSDictionaryStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTSDictionaryStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSDictionaryStmt and conformance PgQuery_AlterTSDictionaryStmt, type metadata accessor for PgQuery_AlterTSDictionaryStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTSDictionaryStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSDictionaryStmt and conformance PgQuery_AlterTSDictionaryStmt, type metadata accessor for PgQuery_AlterTSDictionaryStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_AlterTypeStmt(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_AlterTSConfigurationStmt.decodeMessage<A>(decoder:)()
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
          lazy protocol witness table accessor for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2 || result == 3)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            goto LABEL_4;
          }

LABEL_19:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 6 || result == 7)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterTSConfigurationStmt.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*v0)
  {
    v6 = *v0;
    v7 = *(v0 + 8);
    lazy protocol witness table accessor for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[2] + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[3] + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[4] + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v4 = v2;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (*(v0 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    if (*(v0 + 41) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (*(v0 + 42) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
      {
        v5 = v0 + *(type metadata accessor for PgQuery_AlterTSConfigurationStmt(0) + 44);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterTSConfigurationStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = v2;
  *(a2 + 32) = v2;
  *(a2 + 40) = 0;
  *(a2 + 42) = 0;
  v3 = a2 + *(a1 + 44);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_DefineStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_DefineStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTSConfigurationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSConfigurationStmt and conformance PgQuery_AlterTSConfigurationStmt, type metadata accessor for PgQuery_AlterTSConfigurationStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTSConfigurationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSConfigurationStmt and conformance PgQuery_AlterTSConfigurationStmt, type metadata accessor for PgQuery_AlterTSConfigurationStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTSConfigurationStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSConfigurationStmt and conformance PgQuery_AlterTSConfigurationStmt, type metadata accessor for PgQuery_AlterTSConfigurationStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateFdwStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFdwStmt and conformance PgQuery_CreateFdwStmt, type metadata accessor for PgQuery_CreateFdwStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateFdwStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFdwStmt and conformance PgQuery_CreateFdwStmt, type metadata accessor for PgQuery_CreateFdwStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateFdwStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFdwStmt and conformance PgQuery_CreateFdwStmt, type metadata accessor for PgQuery_CreateFdwStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateFdwStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

{
  return PgQuery_AlterFdwStmt.decodeMessage<A>(decoder:)();
}

uint64_t PgQuery_CreateFdwStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    if (!*(v4[2] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
    {
      if (!*(v4[3] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
      {
        v11 = v4 + *(a4(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateFdwStmt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = v2;
  v3 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterFdwStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFdwStmt and conformance PgQuery_AlterFdwStmt, type metadata accessor for PgQuery_AlterFdwStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterFdwStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFdwStmt and conformance PgQuery_AlterFdwStmt, type metadata accessor for PgQuery_AlterFdwStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterFdwStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFdwStmt and conformance PgQuery_AlterFdwStmt, type metadata accessor for PgQuery_AlterFdwStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateForeignServerStmt.decodeMessage<A>(decoder:)()
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
            goto LABEL_4;
          case 5:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 6:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
LABEL_4:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateForeignServerStmt.traverse<A>(visitor:)()
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
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        v10 = v0[7];
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v0[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
        {
          if (*(v0 + 64) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
          {
            if (!*(v0[9] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
            {
              v12 = v0 + *(type metadata accessor for PgQuery_CreateForeignServerStmt(0) + 40);
              return UnknownStorage.traverse<A>(visitor:)();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateForeignServerStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 40);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateForeignServerStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignServerStmt and conformance PgQuery_CreateForeignServerStmt, type metadata accessor for PgQuery_CreateForeignServerStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateForeignServerStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignServerStmt and conformance PgQuery_CreateForeignServerStmt, type metadata accessor for PgQuery_CreateForeignServerStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateForeignServerStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignServerStmt and conformance PgQuery_CreateForeignServerStmt, type metadata accessor for PgQuery_CreateForeignServerStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterForeignServerStmt.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterForeignServerStmt.traverse<A>(visitor:)()
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
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0[4] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
      {
        if (*(v0 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
        {
          v8 = v0 + *(type metadata accessor for PgQuery_AlterForeignServerStmt(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterForeignServerStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  *(a2 + 40) = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterForeignServerStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterForeignServerStmt and conformance PgQuery_AlterForeignServerStmt, type metadata accessor for PgQuery_AlterForeignServerStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterForeignServerStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterForeignServerStmt and conformance PgQuery_AlterForeignServerStmt, type metadata accessor for PgQuery_AlterForeignServerStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterForeignServerStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterForeignServerStmt and conformance PgQuery_AlterForeignServerStmt, type metadata accessor for PgQuery_AlterForeignServerStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateUserMappingStmt.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 4)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1)
      {
        v3 = *(type metadata accessor for PgQuery_CreateUserMappingStmt(0) + 32);
        type metadata accessor for PgQuery_RoleSpec(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateUserMappingStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v9 = *(RoleSpec - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](RoleSpec);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UserMappingStmt = type metadata accessor for PgQuery_CreateUserMappingStmt(0);
  v22 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(UserMappingStmt + 32), v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v9 + 48))(v7, 1, RoleSpec) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v13 = v24;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
    v13 = v24;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    if (v13)
    {
      return result;
    }
  }

  v15 = v22;
  v16 = *v22;
  v17 = v22[1];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v13))
  {
    if (*(v15 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v13))
    {
      if (!*(v15[3] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v13))
      {
        v19 = v15 + *(UserMappingStmt + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateUserMappingStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  v4 = a2 + *(a1 + 28);
  UnknownStorage.init()();
  v5 = *(a1 + 32);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v7 = *(*(RoleSpec - 8) + 56);

  return v7(a2 + v5, 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateUserMappingStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateUserMappingStmt and conformance PgQuery_CreateUserMappingStmt, type metadata accessor for PgQuery_CreateUserMappingStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateUserMappingStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateUserMappingStmt and conformance PgQuery_CreateUserMappingStmt, type metadata accessor for PgQuery_CreateUserMappingStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateUserMappingStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateUserMappingStmt and conformance PgQuery_CreateUserMappingStmt, type metadata accessor for PgQuery_CreateUserMappingStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterUserMappingStmt.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          v3 = *(type metadata accessor for PgQuery_AlterUserMappingStmt(0) + 28);
          type metadata accessor for PgQuery_RoleSpec(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterUserMappingStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v20 - v7;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v10 = *(RoleSpec - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](RoleSpec);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = type metadata accessor for PgQuery_AlterUserMappingStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + *(v20[0] + 28), v8, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v10 + 48))(v8, 1, RoleSpec) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v14 = v21;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
    v14 = v21;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RoleSpec);
    if (v14)
    {
      return result;
    }
  }

  v16 = *v4;
  v17 = v4[1];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v14))
  {
    if (!*(v4[2] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v14))
    {
      v19 = v4 + *(v20[0] + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterUserMappingStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterUserMappingStmt and conformance PgQuery_AlterUserMappingStmt, type metadata accessor for PgQuery_AlterUserMappingStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterUserMappingStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterUserMappingStmt and conformance PgQuery_AlterUserMappingStmt, type metadata accessor for PgQuery_AlterUserMappingStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterUserMappingStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterUserMappingStmt and conformance PgQuery_AlterUserMappingStmt, type metadata accessor for PgQuery_AlterUserMappingStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropUserMappingStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          v3 = *(type metadata accessor for PgQuery_DropUserMappingStmt(0) + 28);
          type metadata accessor for PgQuery_RoleSpec(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_DropUserMappingStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = v1;
  v18[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v18 - v5;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v8 = *(RoleSpec - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](RoleSpec);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = type metadata accessor for PgQuery_DropUserMappingStmt(0);
  outlined init with copy of PgQuery_Alias?(v2 + *(v18[0] + 28), v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v8 + 48))(v6, 1, RoleSpec) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v12 = v19;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v11, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
    v12 = v19;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
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
    if (*(v2 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v12))
    {
      v17 = v2 + *(v18[0] + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DropUserMappingStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v4 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v7 = *(*(RoleSpec - 8) + 56);

  return v7(a2 + v5, 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropUserMappingStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropUserMappingStmt and conformance PgQuery_DropUserMappingStmt, type metadata accessor for PgQuery_DropUserMappingStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropUserMappingStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropUserMappingStmt and conformance PgQuery_DropUserMappingStmt, type metadata accessor for PgQuery_DropUserMappingStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropUserMappingStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropUserMappingStmt and conformance PgQuery_DropUserMappingStmt, type metadata accessor for PgQuery_DropUserMappingStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterTableSpaceOptionsStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
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

uint64_t PgQuery_AlterTableSpaceOptionsStmt.traverse<A>(visitor:)()
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
    if (!*(v0[2] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      if (*(v0 + 24) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
      {
        v6 = v0 + *(type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterTableSpaceOptionsStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTableSpaceOptionsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableSpaceOptionsStmt and conformance PgQuery_AlterTableSpaceOptionsStmt, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTableSpaceOptionsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableSpaceOptionsStmt and conformance PgQuery_AlterTableSpaceOptionsStmt, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTableSpaceOptionsStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableSpaceOptionsStmt and conformance PgQuery_AlterTableSpaceOptionsStmt, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterTableMoveAllStmt.decodeMessage<A>(decoder:)()
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
          goto LABEL_15;
        }

        if (result == 2)
        {
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 4:
LABEL_15:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterTableMoveAllStmt.traverse<A>(visitor:)()
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
    v6 = v1;
    if (destructiveProjectEnumData for StorableValue(v0[2], *(v0 + 24)))
    {
      lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      v6 = 0;
    }

    if (*(v0[4] + 16))
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

    v8 = v0[6];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v0[5] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v7))
    {
      if (*(v0 + 56) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v7))
      {
        v10 = v0 + *(type metadata accessor for PgQuery_AlterTableMoveAllStmt(0) + 36);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterTableMoveAllStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 1;
  *(a2 + 32) = v2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  v3 = a2 + *(a1 + 36);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTableMoveAllStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableMoveAllStmt and conformance PgQuery_AlterTableMoveAllStmt, type metadata accessor for PgQuery_AlterTableMoveAllStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTableMoveAllStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableMoveAllStmt and conformance PgQuery_AlterTableMoveAllStmt, type metadata accessor for PgQuery_AlterTableMoveAllStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTableMoveAllStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableMoveAllStmt and conformance PgQuery_AlterTableMoveAllStmt, type metadata accessor for PgQuery_AlterTableMoveAllStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_SecLabelStmt._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v7;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8);
  v9 = v5[1];
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider);
  v5[1] = v8;

  v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label);
  v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label + 8);

  v12 = v6[1];
  *v6 = v11;
  v6[1] = v10;

  return v1;
}

uint64_t PgQuery_SecLabelStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void type metadata completion function for PgQuery_SecLabelStmt._StorageClass()
{
  type metadata completion function for PgQuery_SecLabelStmt._StorageClass();
}

{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_SecLabelStmt.decodeMessage<A>(decoder:)()
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
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else if (result == 1)
    {
      lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_SecLabelStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - v4;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(Node - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = a1;
  v12 = *(a1 + 24);
  if (destructiveProjectEnumData for StorableValue(v10, v12))
  {
    v26 = v10;
    v27 = v12;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v13 = v28;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v13)
    {
      return result;
    }

    v28 = 0;
  }

  v15 = v11;
  outlined init with copy of PgQuery_Alias?(v11 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v6 + 48))(v5, 1, Node) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v16 = v28;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v5, v9, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v16 = v28;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
    if (v16)
    {
      return result;
    }
  }

  v18 = *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider);
  v17 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8);
  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19 || (v20 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v16))
  {
    v22 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label);
    v21 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label + 8);
    v23 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {

      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_SecLabelStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = destructiveProjectEnumData for StorableValue(*(a1 + 16), *(a1 + 24));
  if (v18 != destructiveProjectEnumData for StorableValue(v16, v17))
  {
    return 0;
  }

  v19 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v20 = *(v12 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v19, &v15[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v15, 1, Node) == 1)
  {
    v22 = v21(&v15[v20], 1, Node);

    if (v22 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v15, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(&v15[v20], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_7:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
    _s10Foundation4UUIDVSgWOhTm_0(v15, v23, v24);
LABEL_9:

    return 0;
  }

  v26 = v34;
  outlined init with take of PgQuery_OidList(&v15[v20], v34, type metadata accessor for PgQuery_Node);
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
      goto LABEL_8;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v31 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label + 8))
  {

    return 1;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return (v32 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SecLabelStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SecLabelStmt and conformance PgQuery_SecLabelStmt, type metadata accessor for PgQuery_SecLabelStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SecLabelStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SecLabelStmt and conformance PgQuery_SecLabelStmt, type metadata accessor for PgQuery_SecLabelStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SecLabelStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SecLabelStmt and conformance PgQuery_SecLabelStmt, type metadata accessor for PgQuery_SecLabelStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateForeignTableStmt.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          v3 = *(type metadata accessor for PgQuery_CreateForeignTableStmt(0) + 28);
          type metadata accessor for PgQuery_CreateStmt(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateForeignTableStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v20 - v7;
  Stmt = type metadata accessor for PgQuery_CreateStmt(0);
  v10 = *(Stmt - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Stmt);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = type metadata accessor for PgQuery_CreateForeignTableStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + *(v20[0] + 28), v8, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  if ((*(v10 + 48))(v8, 1, Stmt) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
    v14 = v21;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_CreateStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt);
    v14 = v21;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_CreateStmt);
    if (v14)
    {
      return result;
    }
  }

  v16 = *v4;
  v17 = v4[1];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v14))
  {
    if (!*(v4[2] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v14))
    {
      v19 = v4 + *(v20[0] + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterUserMappingStmt@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  *(a3 + 2) = MEMORY[0x1E69E7CC0];
  v6 = &a3[*(a1 + 24)];
  UnknownStorage.init()();
  v7 = *(a1 + 28);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateForeignTableStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignTableStmt and conformance PgQuery_CreateForeignTableStmt, type metadata accessor for PgQuery_CreateForeignTableStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateForeignTableStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignTableStmt and conformance PgQuery_CreateForeignTableStmt, type metadata accessor for PgQuery_CreateForeignTableStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateForeignTableStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignTableStmt and conformance PgQuery_CreateForeignTableStmt, type metadata accessor for PgQuery_CreateForeignTableStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_ImportForeignSchemaStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4)
        {
          lazy protocol witness table accessor for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 5 || result == 6)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_ImportForeignSchemaStmt.traverse<A>(visitor:)()
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
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        v10 = v1;
        if (v0[6])
        {
          v13 = v0[6];
          v14 = *(v0 + 56);
          lazy protocol witness table accessor for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType();
          result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
          if (v1)
          {
            return result;
          }

          v10 = 0;
        }

        if (*(v0[8] + 16))
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          v11 = v10;
          result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
          if (v10)
          {
            return result;
          }
        }

        else
        {
          v11 = v10;
        }

        if (!*(v0[9] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v11))
        {
          v12 = v0 + *(type metadata accessor for PgQuery_ImportForeignSchemaStmt(0) + 40);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_ImportForeignSchemaStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(a2 + 64) = MEMORY[0x1E69E7CC0];
  *(a2 + 72) = v2;
  v3 = a2 + *(a1 + 40);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ImportForeignSchemaStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaStmt and conformance PgQuery_ImportForeignSchemaStmt, type metadata accessor for PgQuery_ImportForeignSchemaStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ImportForeignSchemaStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaStmt and conformance PgQuery_ImportForeignSchemaStmt, type metadata accessor for PgQuery_ImportForeignSchemaStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ImportForeignSchemaStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaStmt and conformance PgQuery_ImportForeignSchemaStmt, type metadata accessor for PgQuery_ImportForeignSchemaStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropdbStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    if (*(v4 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
    {
      if (!*(v4[3] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
      {
        v11 = v4 + *(a4(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DropdbStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateExtensionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateExtensionStmt and conformance PgQuery_CreateExtensionStmt, type metadata accessor for PgQuery_CreateExtensionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateExtensionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateExtensionStmt and conformance PgQuery_CreateExtensionStmt, type metadata accessor for PgQuery_CreateExtensionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateExtensionStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateExtensionStmt and conformance PgQuery_CreateExtensionStmt, type metadata accessor for PgQuery_CreateExtensionStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterExtensionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionStmt and conformance PgQuery_AlterExtensionStmt, type metadata accessor for PgQuery_AlterExtensionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterExtensionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionStmt and conformance PgQuery_AlterExtensionStmt, type metadata accessor for PgQuery_AlterExtensionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterExtensionStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionStmt and conformance PgQuery_AlterExtensionStmt, type metadata accessor for PgQuery_AlterExtensionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterExtensionContentsStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v7, 1, 1, Node);
  v9 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v9;
  *(v1 + 32) = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 40) = *(a1 + 40);
  *(v1 + 48) = v10;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v6, v1 + v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_DeclareCursorStmt._StorageClass.__deallocating_deinit(void *a1)
{
  v3 = v1[3];

  _s10Foundation4UUIDVSgWOhTm_0(v1 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v4, v5);
}

void type metadata completion function for PgQuery_AlterExtensionContentsStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_AlterExtensionContentsStmt.decodeMessage<A>(decoder:)()
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_AlterExtensionContentsStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v20 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v22 = *(Node - 8);
  v11 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (v16 = *(a1 + 24), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v3))
  {
    if (!*(a1 + 32) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v3))
    {
      v20[1] = a3;
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      if (!destructiveProjectEnumData for StorableValue(v18, v19) || (v20[2] = v18, v21 = v19, lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v3))
      {
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((*(v22 + 48))(v9, 1, Node) == 1)
        {
          return _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v9, v13, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          return outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_AlterExtensionContentsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v34 = v8;
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v19 = destructiveProjectEnumData for StorableValue(*(a1 + 40), *(a1 + 48));
  if (v19 != destructiveProjectEnumData for StorableValue(v17, v18))
  {
    return 0;
  }

  v20 = OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v21 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v16[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v16, 1, Node) == 1)
  {
    if (v22(&v16[v21], 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      return 1;
    }

    goto LABEL_11;
  }

  outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(&v16[v21], 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_11:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_12:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
    return 0;
  }

  v26 = v34;
  outlined init with take of PgQuery_OidList(&v16[v21], v34, type metadata accessor for PgQuery_Node);
  v27 = *(Node + 20);
  v28 = *&v12[v27];
  v29 = *(v26 + v27);
  if (v28 != v29)
  {
    v30 = *&v12[v27];

    v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v28, v29);

    if (!v31)
    {
      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_12;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return (v32 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterExtensionContentsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionContentsStmt and conformance PgQuery_AlterExtensionContentsStmt, type metadata accessor for PgQuery_AlterExtensionContentsStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterExtensionContentsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionContentsStmt and conformance PgQuery_AlterExtensionContentsStmt, type metadata accessor for PgQuery_AlterExtensionContentsStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterExtensionContentsStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionContentsStmt and conformance PgQuery_AlterExtensionContentsStmt, type metadata accessor for PgQuery_AlterExtensionContentsStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateEventTrigStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEventTrigStmt and conformance PgQuery_CreateEventTrigStmt, type metadata accessor for PgQuery_CreateEventTrigStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateEventTrigStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEventTrigStmt and conformance PgQuery_CreateEventTrigStmt, type metadata accessor for PgQuery_CreateEventTrigStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateEventTrigStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEventTrigStmt and conformance PgQuery_CreateEventTrigStmt, type metadata accessor for PgQuery_CreateEventTrigStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_NotifyStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    v11 = v4[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
    {
      v13 = v4 + *(a4(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterEventTrigStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEventTrigStmt and conformance PgQuery_AlterEventTrigStmt, type metadata accessor for PgQuery_AlterEventTrigStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterEventTrigStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEventTrigStmt and conformance PgQuery_AlterEventTrigStmt, type metadata accessor for PgQuery_AlterEventTrigStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterEventTrigStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEventTrigStmt and conformance PgQuery_AlterEventTrigStmt, type metadata accessor for PgQuery_AlterEventTrigStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_RefreshMatViewStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        v3 = *(type metadata accessor for PgQuery_RefreshMatViewStmt(0) + 28);
        type metadata accessor for PgQuery_RangeVar(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2 || result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_RefreshMatViewStmt.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v7 = *(RangeVar - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    if (v0[1] != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      v16 = v1;
      RefreshMatViewStmt = type metadata accessor for PgQuery_RefreshMatViewStmt(0);
      outlined init with copy of PgQuery_Alias?(&v0[*(RefreshMatViewStmt + 28)], v5, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((*(v7 + 48))(v5, 1, RangeVar) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v5, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      }

      else
      {
        outlined init with take of PgQuery_OidList(v5, v10, type metadata accessor for PgQuery_RangeVar);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
        v13 = v16;
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RangeVar);
        if (v13)
        {
          return result;
        }
      }

      v14 = &v0[*(RefreshMatViewStmt + 24)];
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_RefreshMatViewStmt@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 24)];
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v7 = *(*(RangeVar - 8) + 56);

  return v7(&a2[v5], 1, 1, RangeVar);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RefreshMatViewStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RefreshMatViewStmt and conformance PgQuery_RefreshMatViewStmt, type metadata accessor for PgQuery_RefreshMatViewStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RefreshMatViewStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RefreshMatViewStmt and conformance PgQuery_RefreshMatViewStmt, type metadata accessor for PgQuery_RefreshMatViewStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RefreshMatViewStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RefreshMatViewStmt and conformance PgQuery_RefreshMatViewStmt, type metadata accessor for PgQuery_RefreshMatViewStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_NotifyStmt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ReplicaIdentityStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReplicaIdentityStmt and conformance PgQuery_ReplicaIdentityStmt, type metadata accessor for PgQuery_ReplicaIdentityStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ReplicaIdentityStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReplicaIdentityStmt and conformance PgQuery_ReplicaIdentityStmt, type metadata accessor for PgQuery_ReplicaIdentityStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ReplicaIdentityStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReplicaIdentityStmt and conformance PgQuery_ReplicaIdentityStmt, type metadata accessor for PgQuery_ReplicaIdentityStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_NotifyStmt(void *a1, void *a2, uint64_t a3)
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

  v8 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_AlterSystemStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for PgQuery_AlterSystemStmt(0) + 20);
        type metadata accessor for PgQuery_VariableSetStmt(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterSystemStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v16 - v6;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v9 = *(VariableSetStmt - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](VariableSetStmt);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterSystemStmt = type metadata accessor for PgQuery_AlterSystemStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterSystemStmt + 20), v7, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if ((*(v9 + 48))(v7, 1, VariableSetStmt) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_VariableSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt);
    v14 = v16[3];
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_VariableSetStmt);
    if (v14)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterSystemStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v6 = *(*(VariableSetStmt - 8) + 56);

  return v6(a2 + v4, 1, 1, VariableSetStmt);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterSystemStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSystemStmt and conformance PgQuery_AlterSystemStmt, type metadata accessor for PgQuery_AlterSystemStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterSystemStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSystemStmt and conformance PgQuery_AlterSystemStmt, type metadata accessor for PgQuery_AlterSystemStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterSystemStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSystemStmt and conformance PgQuery_AlterSystemStmt, type metadata accessor for PgQuery_AlterSystemStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreatePolicyStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = &v22 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v6, 1, 1, RangeVar);
  v8 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  v22 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(*(Node - 8) + 56);
  v13(v1 + v11, 1, 1, Node);
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck;
  v13(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, 1, 1, Node);
  v15 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v15;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;

  outlined assign with copy of PgQuery_Node?(a1 + v16, v1 + v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8);
  v18 = v8[1];
  *v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName);
  v8[1] = v17;

  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive);
  v19 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v1 + v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v20 = v23;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v20, v1 + v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_CreatePolicyStmt._StorageClass.__deallocating_deinit()
{
  v1 = v0[3];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

void type metadata completion function for PgQuery_CreatePolicyStmt._StorageClass()
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

uint64_t closure #1 in PgQuery_CreatePolicyStmt.decodeMessage<A>(decoder:)()
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
            goto LABEL_20;
          case 2:
            v3 = v0;
            type metadata accessor for PgQuery_RangeVar(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
            goto LABEL_5;
          case 3:
LABEL_20:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          v3 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_5:
          v0 = v3;
LABEL_6:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_7;
        }

        if (result == 7)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          goto LABEL_6;
        }
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_7:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CreatePolicyStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v37 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v41 = *(Node - 8);
  v9 = *(v41 + 64);
  v10 = MEMORY[0x1EEE9AC00](Node);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v37 - v15;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v18 = *(RangeVar - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v42 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v38 = RangeVar;

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();

    if (v2)
    {
      return result;
    }

    RangeVar = v38;
  }

  outlined init with copy of PgQuery_Alias?(v21 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v18 + 48))(v16, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v26 = v45;
  }

  else
  {
    v27 = v42;
    outlined init with take of PgQuery_OidList(v16, v42, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
    v26 = v45;
    if (v2)
    {
      return result;
    }
  }

  v28 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName) & 0xFFFFFFFFFFFFLL;
  }

  v31 = v43;
  v30 = Node;
  if (!v29 || (v32 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v2))
  {
    if (*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v2))
    {
      if (!*(*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v2))
      {
        outlined init with copy of PgQuery_Alias?(v21 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v33 = *(v41 + 48);
        v41 += 48;
        if (v33(v26, 1, v30) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v34 = v26;
          v35 = v40;
          outlined init with take of PgQuery_OidList(v34, v40, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
          if (v2)
          {
            return result;
          }
        }

        outlined init with copy of PgQuery_Alias?(v21 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v33(v31, 1, v30) == 1)
        {
          return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v36 = v39;
          outlined init with take of PgQuery_OidList(v31, v39, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          return outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CreatePolicyStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v84 = *(Node - 8);
  v4 = *(v84 + 64);
  v5 = MEMORY[0x1EEE9AC00](Node);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v76 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v83 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v83);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v76 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v20 = *(RangeVar - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v76 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v76 - v30;
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v76 = v7;
  v77 = v17;
  v85 = a2;
  v32 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  v33 = *(v28 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v34 = v85 + v32;
  v35 = v85;
  outlined init with copy of PgQuery_Alias?(v34, &v31[v33], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v36 = *(v20 + 48);
  if (v36(v31, 1, RangeVar) == 1)
  {
    v37 = v36(&v31[v33], 1, RangeVar);

    if (v37 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_13;
    }

LABEL_9:
    v38 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v39 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_10:
    v40 = v31;
    goto LABEL_11;
  }

  outlined init with copy of PgQuery_Alias?(v31, v27, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v36(&v31[v33], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_9;
  }

  outlined init with take of PgQuery_OidList(&v31[v33], v23, type metadata accessor for PgQuery_RangeVar);

  v41 = specialized static PgQuery_RangeVar.== infix(_:_:)(v27, v23);
  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v41 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_13:
  if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName) != *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8) != *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive) != *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive))
  {
    goto LABEL_30;
  }

  v42 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);
  v43 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v42, v43);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_30;
  }

  v45 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  v46 = v82;
  v47 = *(v83 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v82, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = v46;
  outlined init with copy of PgQuery_Alias?(v85 + v45, v46 + v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v48 = v84 + 48;
  v49 = *(v84 + 48);
  v50 = Node;
  if (v49(v31, 1, Node) != 1)
  {
    v54 = v80;
    outlined init with copy of PgQuery_Alias?(v31, v80, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v55 = v49(&v31[v47], 1, v50);
    v53 = v76;
    v52 = v77;
    if (v55 != 1)
    {
      v84 = v48;
      v56 = &v31[v47];
      v57 = v79;
      outlined init with take of PgQuery_OidList(v56, v79, type metadata accessor for PgQuery_Node);
      v58 = *(v50 + 20);
      v59 = *(v54 + v58);
      v60 = *(v57 + v58);
      if (v59 == v60 || (, , v61 = closure #1 in static PgQuery_Node.== infix(_:_:)(v59, v60), , , v61))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v62 = v80;
        v63 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v82, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v63)
        {
          goto LABEL_27;
        }

LABEL_30:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v80, type metadata accessor for PgQuery_Node);
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v40 = v82;
LABEL_11:
      _s10Foundation4UUIDVSgWOhTm_0(v40, v38, v39);
      goto LABEL_30;
    }

    outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
    goto LABEL_23;
  }

  v51 = v49(&v31[v47], 1, v50);
  v53 = v76;
  v52 = v77;
  if (v51 != 1)
  {
LABEL_23:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_10;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_27:
  v64 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck;
  v65 = *(v83 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v85 + v64, v52 + v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v49(v52, 1, v50) == 1)
  {

    if (v49((v52 + v65), 1, v50) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      return 1;
    }

    goto LABEL_35;
  }

  v67 = v78;
  outlined init with copy of PgQuery_Alias?(v52, v78, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v49((v52 + v65), 1, v50) == 1)
  {

    outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
LABEL_35:
    v68 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v69 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_36:
    _s10Foundation4UUIDVSgWOhTm_0(v52, v68, v69);
    return 0;
  }

  outlined init with take of PgQuery_OidList(v52 + v65, v53, type metadata accessor for PgQuery_Node);
  v70 = *(v50 + 20);
  v71 = *(v67 + v70);
  v72 = *(v53 + v70);
  if (v71 != v72)
  {
    v73 = *(v67 + v70);

    v74 = closure #1 in static PgQuery_Node.== infix(_:_:)(v71, v72);

    if (!v74)
    {

      outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
      v68 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v69 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_36;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return (v75 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreatePolicyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePolicyStmt and conformance PgQuery_CreatePolicyStmt, type metadata accessor for PgQuery_CreatePolicyStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreatePolicyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePolicyStmt and conformance PgQuery_CreatePolicyStmt, type metadata accessor for PgQuery_CreatePolicyStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreatePolicyStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePolicyStmt and conformance PgQuery_CreatePolicyStmt, type metadata accessor for PgQuery_CreatePolicyStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterPolicyStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v7, 1, 1, RangeVar);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(*(Node - 8) + 56);
  v12(v1 + v10, 1, 1, Node);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck;
  v12(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, 1, 1, Node);
  v14 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v14;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;

  outlined assign with copy of PgQuery_Node?(a1 + v15, v1 + v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v16 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v1 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v6, v1 + v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_AlterPolicyStmt._StorageClass.__deallocating_deinit()
{
  v1 = v0[3];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void type metadata completion function for PgQuery_AlterPolicyStmt._StorageClass()
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

uint64_t closure #1 in PgQuery_AlterPolicyStmt.decodeMessage<A>(decoder:)()
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
        break;
      }

      if (result != 1)
      {
        if (result != 2)
        {
          goto LABEL_5;
        }

        v3 = v0;
        type metadata accessor for PgQuery_RangeVar(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
LABEL_16:
        v0 = v3;
        goto LABEL_17;
      }

      dispatch thunk of Decoder.decodeSingularStringField(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 3)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      goto LABEL_5;
    }

    if (result == 4)
    {
      v3 = v0;
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      goto LABEL_16;
    }

    if (result != 5)
    {
      goto LABEL_5;
    }

    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_17:
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_5;
  }

  return result;
}

uint64_t closure #1 in PgQuery_AlterPolicyStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v34 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v39 = *(Node - 8);
  v9 = *(v39 + 64);
  v10 = MEMORY[0x1EEE9AC00](Node);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - v15;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v18 = *(RangeVar - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v2))
  {
    outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if ((*(v18 + 48))(v16, 1, RangeVar) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v27 = v38;
      v26 = v39;
    }

    else
    {
      outlined init with take of PgQuery_OidList(v16, v21, type metadata accessor for PgQuery_RangeVar);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_RangeVar);
      v27 = v38;
      v26 = v39;
      if (v2)
      {
        return result;
      }
    }

    v29 = v36;
    v28 = Node;
    if (!*(*(v40 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v2))
    {
      outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v30 = *(v26 + 48);
      if (v30(v27, 1, v28) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v31 = v27;
        v32 = v35;
        outlined init with take of PgQuery_OidList(v31, v35, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
        if (v2)
        {
          return result;
        }
      }

      outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v30(v29, 1, v28) == 1)
      {
        return _s10Foundation4UUIDVSgWOhTm_0(v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v33 = v34;
        outlined init with take of PgQuery_OidList(v29, v34, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_AlterPolicyStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v84 = *(Node - 8);
  v4 = *(v84 + 64);
  v5 = MEMORY[0x1EEE9AC00](Node);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v76 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v83 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v83);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v76 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v20 = *(RangeVar - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v76 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v76 - v30;
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v76 = v7;
  v77 = v17;
  v85 = a2;
  v32 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  v33 = *(v28 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v34 = v85 + v32;
  v35 = v85;
  outlined init with copy of PgQuery_Alias?(v34, &v31[v33], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v36 = *(v20 + 48);
  if (v36(v31, 1, RangeVar) == 1)
  {
    v37 = v36(&v31[v33], 1, RangeVar);

    if (v37 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_13;
    }

LABEL_9:
    v38 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v39 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_10:
    v40 = v31;
    goto LABEL_11;
  }

  outlined init with copy of PgQuery_Alias?(v31, v27, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v36(&v31[v33], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_9;
  }

  outlined init with take of PgQuery_OidList(&v31[v33], v23, type metadata accessor for PgQuery_RangeVar);

  v41 = specialized static PgQuery_RangeVar.== infix(_:_:)(v27, v23);
  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v41 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v42 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);
  v43 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v42, v43);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_26;
  }

  v45 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  v46 = v82;
  v47 = *(v83 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v82, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = v46;
  outlined init with copy of PgQuery_Alias?(v85 + v45, v46 + v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v48 = v84 + 48;
  v49 = *(v84 + 48);
  v50 = Node;
  if (v49(v31, 1, Node) != 1)
  {
    v54 = v80;
    outlined init with copy of PgQuery_Alias?(v31, v80, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v55 = v49(&v31[v47], 1, v50);
    v53 = v76;
    v52 = v77;
    if (v55 != 1)
    {
      v84 = v48;
      v56 = &v31[v47];
      v57 = v79;
      outlined init with take of PgQuery_OidList(v56, v79, type metadata accessor for PgQuery_Node);
      v58 = *(v50 + 20);
      v59 = *(v54 + v58);
      v60 = *(v57 + v58);
      if (v59 == v60 || (, , v61 = closure #1 in static PgQuery_Node.== infix(_:_:)(v59, v60), , , v61))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v62 = v80;
        v63 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v82, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v63)
        {
          goto LABEL_23;
        }

LABEL_26:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v80, type metadata accessor for PgQuery_Node);
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v40 = v82;
LABEL_11:
      _s10Foundation4UUIDVSgWOhTm_0(v40, v38, v39);
      goto LABEL_26;
    }

    outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
    goto LABEL_19;
  }

  v51 = v49(&v31[v47], 1, v50);
  v53 = v76;
  v52 = v77;
  if (v51 != 1)
  {
LABEL_19:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_10;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_23:
  v64 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck;
  v65 = *(v83 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v85 + v64, v52 + v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v49(v52, 1, v50) == 1)
  {

    if (v49((v52 + v65), 1, v50) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      return 1;
    }

    goto LABEL_31;
  }

  v67 = v78;
  outlined init with copy of PgQuery_Alias?(v52, v78, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v49((v52 + v65), 1, v50) == 1)
  {

    outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
LABEL_31:
    v68 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v69 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_32:
    _s10Foundation4UUIDVSgWOhTm_0(v52, v68, v69);
    return 0;
  }

  outlined init with take of PgQuery_OidList(v52 + v65, v53, type metadata accessor for PgQuery_Node);
  v70 = *(v50 + 20);
  v71 = *(v67 + v70);
  v72 = *(v53 + v70);
  if (v71 != v72)
  {
    v73 = *(v67 + v70);

    v74 = closure #1 in static PgQuery_Node.== infix(_:_:)(v71, v72);

    if (!v74)
    {

      outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
      v68 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v69 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_32;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return (v75 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterPolicyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPolicyStmt and conformance PgQuery_AlterPolicyStmt, type metadata accessor for PgQuery_AlterPolicyStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterPolicyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPolicyStmt and conformance PgQuery_AlterPolicyStmt, type metadata accessor for PgQuery_AlterPolicyStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterPolicyStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPolicyStmt and conformance PgQuery_AlterPolicyStmt, type metadata accessor for PgQuery_AlterPolicyStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateTransformStmt.decodeMessage<A>(decoder:)()
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
        break;
      }

      if (result != 1)
      {
        if (result != 2)
        {
          goto LABEL_5;
        }

        v3 = v0;
        v5 = *(type metadata accessor for PgQuery_CreateTransformStmt(0) + 28);
        type metadata accessor for PgQuery_TypeName(0);
        v6 = type metadata accessor for PgQuery_TypeName;
        v7 = &lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName;
        goto LABEL_17;
      }

      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    switch(result)
    {
      case 3:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        goto LABEL_5;
      case 4:
        v3 = v0;
        v8 = *(type metadata accessor for PgQuery_CreateTransformStmt(0) + 32);
        break;
      case 5:
        v3 = v0;
        v4 = *(type metadata accessor for PgQuery_CreateTransformStmt(0) + 36);
        break;
      default:
        goto LABEL_5;
    }

    type metadata accessor for PgQuery_ObjectWithArgs(0);
    v6 = type metadata accessor for PgQuery_ObjectWithArgs;
    v7 = &lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs;
LABEL_17:
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(v7, v6);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_5;
  }

  return result;
}

uint64_t PgQuery_CreateTransformStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v48 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v40 - v9;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v46 = *(ObjectWithArgs - 8);
  v47 = ObjectWithArgs;
  v11 = *(v46 + 64);
  v12 = MEMORY[0x1EEE9AC00](ObjectWithArgs);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v40 - v17;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v20 = *(TypeName - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    v3 = 0;
  }

  TransformStmt = type metadata accessor for PgQuery_CreateTransformStmt(0);
  outlined init with copy of PgQuery_Alias?(&v4[TransformStmt[7]], v18, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v20 + 48))(v18, 1, TypeName) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v18, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v26 = v3;
  }

  else
  {
    v40 = v4;
    v41 = TransformStmt;
    outlined init with take of PgQuery_OidList(v18, v23, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
    v26 = v3;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_TypeName);
    if (v3)
    {
      return result;
    }

    v4 = v40;
    TransformStmt = v41;
  }

  v27 = *(v4 + 2);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *(v4 + 1) & 0xFFFFFFFFFFFFLL;
  }

  v30 = v46;
  v29 = v47;
  if (v28)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v26)
    {
      return result;
    }

    v31 = 0;
  }

  else
  {
    v31 = v26;
  }

  v32 = v45;
  outlined init with copy of PgQuery_Alias?(&v4[TransformStmt[8]], v45, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v33 = *(v30 + 48);
  if (v33(v32, 1, v29) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v34 = v44;
  }

  else
  {
    v41 = TransformStmt;
    v35 = v32;
    v36 = v4;
    v37 = v43;
    outlined init with take of PgQuery_OidList(v35, v43, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v31)
    {
      return result;
    }

    v31 = 0;
    v4 = v36;
    v34 = v44;
    TransformStmt = v41;
  }

  outlined init with copy of PgQuery_Alias?(&v4[TransformStmt[9]], v34, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (v33(v34, 1, v29) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  }

  else
  {
    v38 = v42;
    outlined init with take of PgQuery_OidList(v34, v42, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v31)
    {
      return result;
    }
  }

  v39 = &v4[TransformStmt[6]];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateTransformStmt@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  v4 = a2 + a1[6];
  UnknownStorage.init()();
  v5 = a1[7];
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(a2 + v5, 1, 1, TypeName);
  v7 = a1[8];
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v11 = *(*(ObjectWithArgs - 8) + 56);
  (v11)((ObjectWithArgs - 8), a2 + v7, 1, 1, ObjectWithArgs);
  v9 = a2 + a1[9];

  return v11(v9, 1, 1, ObjectWithArgs);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateTransformStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTransformStmt and conformance PgQuery_CreateTransformStmt, type metadata accessor for PgQuery_CreateTransformStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateTransformStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTransformStmt and conformance PgQuery_CreateTransformStmt, type metadata accessor for PgQuery_CreateTransformStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateTransformStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTransformStmt and conformance PgQuery_CreateTransformStmt, type metadata accessor for PgQuery_CreateTransformStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateAmStmt.decodeMessage<A>(decoder:)()
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

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 1:
LABEL_10:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateAmStmt.traverse<A>(visitor:)()
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
    if (!*(v0[2] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      v6 = v0[4];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        v8 = v0 + *(type metadata accessor for PgQuery_CreateAmStmt(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateAmStmt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = 0;
  a2[4] = 0xE000000000000000;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateAmStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateAmStmt and conformance PgQuery_CreateAmStmt, type metadata accessor for PgQuery_CreateAmStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateAmStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateAmStmt and conformance PgQuery_CreateAmStmt, type metadata accessor for PgQuery_CreateAmStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateAmStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateAmStmt and conformance PgQuery_CreateAmStmt, type metadata accessor for PgQuery_CreateAmStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreatePublicationStmt.decodeMessage<A>(decoder:)()
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
          goto LABEL_14;
        }

        if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreatePublicationStmt.traverse<A>(visitor:)()
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
    v6 = v1;
    if (*(v0[2] + 16))
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

    if (*(v0[3] + 16))
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

    if (*(v0 + 32) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v7))
    {
      v8 = v0 + *(type metadata accessor for PgQuery_CreatePublicationStmt(0) + 32);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreatePublicationStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = v2;
  *(a2 + 32) = 0;
  v3 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreatePublicationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePublicationStmt and conformance PgQuery_CreatePublicationStmt, type metadata accessor for PgQuery_CreatePublicationStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreatePublicationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePublicationStmt and conformance PgQuery_CreatePublicationStmt, type metadata accessor for PgQuery_CreatePublicationStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreatePublicationStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePublicationStmt and conformance PgQuery_CreatePublicationStmt, type metadata accessor for PgQuery_CreatePublicationStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterPublicationStmt.decodeMessage<A>(decoder:)()
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

          v3 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          goto LABEL_16;
        }

        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else
      {
        v3 = v0;
        switch(result)
        {
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_16:
            v0 = v3;
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 4:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 5:
            lazy protocol witness table accessor for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterPublicationStmt.traverse<A>(visitor:)()
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
    v6 = v1;
    if (*(v0[2] + 16))
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

    if (*(v0[3] + 16))
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

    if (*(v0 + 32) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v7))
    {
      if (!v0[5] || (v9 = v0[5], v10 = *(v0 + 48), lazy protocol witness table accessor for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v7))
      {
        v8 = v0 + *(type metadata accessor for PgQuery_AlterPublicationStmt(0) + 36);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterPublicationStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = v2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  v3 = a2 + *(a1 + 36);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterPublicationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPublicationStmt and conformance PgQuery_AlterPublicationStmt, type metadata accessor for PgQuery_AlterPublicationStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterPublicationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPublicationStmt and conformance PgQuery_AlterPublicationStmt, type metadata accessor for PgQuery_AlterPublicationStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterPublicationStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPublicationStmt and conformance PgQuery_AlterPublicationStmt, type metadata accessor for PgQuery_AlterPublicationStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateEventTrigStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    v11 = v4[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
    {
      if (!*(v4[4] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
      {
        if (!*(v4[5] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
        {
          v13 = v4 + *(a4(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateEventTrigStmt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  a2[4] = MEMORY[0x1E69E7CC0];
  a2[5] = v2;
  v3 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSubscriptionStmt and conformance PgQuery_CreateSubscriptionStmt, type metadata accessor for PgQuery_CreateSubscriptionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateSubscriptionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSubscriptionStmt and conformance PgQuery_CreateSubscriptionStmt, type metadata accessor for PgQuery_CreateSubscriptionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateSubscriptionStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSubscriptionStmt and conformance PgQuery_CreateSubscriptionStmt, type metadata accessor for PgQuery_CreateSubscriptionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterSubscriptionStmt.decodeMessage<A>(decoder:)()
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
          lazy protocol witness table accessor for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        if (result == 3)
        {
          goto LABEL_14;
        }

        if (result == 4 || result == 5)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterSubscriptionStmt.traverse<A>(visitor:)()
{
  if (!*v0 || (v8 = *v0, v9 = *(v0 + 8), lazy protocol witness table accessor for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v5 = v0[5];
      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        if (!*(v0[6] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
        {
          if (!*(v0[7] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
          {
            v7 = v0 + *(type metadata accessor for PgQuery_AlterSubscriptionStmt(0) + 36);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterSubscriptionStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a2 + 48) = MEMORY[0x1E69E7CC0];
  *(a2 + 56) = v2;
  v3 = a2 + *(a1 + 36);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionStmt and conformance PgQuery_AlterSubscriptionStmt, type metadata accessor for PgQuery_AlterSubscriptionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterSubscriptionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionStmt and conformance PgQuery_AlterSubscriptionStmt, type metadata accessor for PgQuery_AlterSubscriptionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterSubscriptionStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionStmt and conformance PgQuery_AlterSubscriptionStmt, type metadata accessor for PgQuery_AlterSubscriptionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropSubscriptionStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
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

uint64_t PgQuery_DropSubscriptionStmt.traverse<A>(visitor:)()
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
      if (!v0[3] || (v7 = v0[3], v8 = *(v0 + 32), lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
      {
        v6 = v0 + *(type metadata accessor for PgQuery_DropSubscriptionStmt(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DropSubscriptionStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropSubscriptionStmt and conformance PgQuery_DropSubscriptionStmt, type metadata accessor for PgQuery_DropSubscriptionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropSubscriptionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropSubscriptionStmt and conformance PgQuery_DropSubscriptionStmt, type metadata accessor for PgQuery_DropSubscriptionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropSubscriptionStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropSubscriptionStmt and conformance PgQuery_DropSubscriptionStmt, type metadata accessor for PgQuery_DropSubscriptionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateStatsStmt.decodeMessage<A>(decoder:)()
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
            goto LABEL_4;
          case 5:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 6:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
LABEL_4:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateStatsStmt.traverse<A>(visitor:)()
{
  v2 = v1;
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
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(*(v0 + 16) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(*(v0 + 24) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v4 = v2;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  v5 = *(v0 + 40);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (*(v0 + 48) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      v7 = v0 + *(type metadata accessor for PgQuery_CreateStatsStmt(0) + 40);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateStatsStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = v2;
  *(a2 + 16) = v2;
  *(a2 + 24) = v2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  v3 = a2 + *(a1 + 40);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_RangeVar@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_RangeVar(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateStatsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStatsStmt and conformance PgQuery_CreateStatsStmt, type metadata accessor for PgQuery_CreateStatsStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateStatsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStatsStmt and conformance PgQuery_CreateStatsStmt, type metadata accessor for PgQuery_CreateStatsStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateStatsStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStatsStmt and conformance PgQuery_CreateStatsStmt, type metadata accessor for PgQuery_CreateStatsStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_List.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    v8 = v4 + *(a4(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterCollationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterCollationStmt and conformance PgQuery_AlterCollationStmt, type metadata accessor for PgQuery_AlterCollationStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterCollationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterCollationStmt and conformance PgQuery_AlterCollationStmt, type metadata accessor for PgQuery_AlterCollationStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterCollationStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterCollationStmt and conformance PgQuery_AlterCollationStmt, type metadata accessor for PgQuery_AlterCollationStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_List(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_CallStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_CallStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_FuncCall?, type metadata accessor for PgQuery_FuncCall, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_FuncExpr?, type metadata accessor for PgQuery_FuncExpr, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t PgQuery_CallStmt.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = *(type metadata accessor for PgQuery_CallStmt(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  v7 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  v8 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for PgQuery_CallStmt._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall;
    v14 = type metadata accessor for PgQuery_FuncCall(0);
    (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
    FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
    (*(*(FuncExpr - 8) + 56))(v12 + v15, 1, 1, FuncExpr);
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall;
    _s10Foundation4UUIDVSgWOhTm_0(v12 + v13, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    outlined init with copy of PgQuery_Alias?(v6 + v17, v12 + v13, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
    _s10Foundation4UUIDVSgWOhTm_0(v12 + v15, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
    v19 = v12 + v15;
    v7 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    v8 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    outlined init with copy of PgQuery_Alias?(v6 + v18, v19, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);

    *(v0 + v3) = v12;
    v2 = v1;
  }

  v20 = v7[411];
  v21 = v8[412];
  v22 = v2;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v2)
  {
    while (1)
    {
      if (v24)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v25 = v22;
        type metadata accessor for PgQuery_FuncExpr(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncExpr and conformance PgQuery_FuncExpr, type metadata accessor for PgQuery_FuncExpr);
        goto LABEL_7;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v25 = v22;
    type metadata accessor for PgQuery_FuncCall(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall);
LABEL_7:
    v22 = v25;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_8;
  }

  return result;
}

uint64_t closure #1 in PgQuery_CallStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v30 = a4;
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
  v9 = *(FuncExpr - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](FuncExpr);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - v14;
  v16 = type metadata accessor for PgQuery_FuncCall(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall, v15, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_FuncCall);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall);
    v21 = v27;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_FuncCall);
    if (v21)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, v8, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  if ((*(v9 + 48))(v8, 1, FuncExpr) == 1)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  }

  v23 = v24;
  outlined init with take of PgQuery_OidList(v8, v24, type metadata accessor for PgQuery_FuncExpr);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncExpr and conformance PgQuery_FuncExpr, type metadata accessor for PgQuery_FuncExpr);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_FuncExpr);
}

BOOL closure #1 in static PgQuery_CallStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
  v61 = *(FuncExpr - 8);
  v62 = FuncExpr;
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](FuncExpr);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v56 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncExprVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSg_ADtMR);
  v10 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v56 - v11;
  v12 = type metadata accessor for PgQuery_FuncCall(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncCallVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v56 - v23;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall;
  v26 = *(v22 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall, &v56 - v23, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  v27 = a2 + v25;
  v28 = a2;
  outlined init with copy of PgQuery_Alias?(v27, &v24[v26], &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v24, v19, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    if (v29(&v24[v26], 1, v12) != 1)
    {
      v34 = v59;
      outlined init with take of PgQuery_OidList(&v24[v26], v59, type metadata accessor for PgQuery_FuncCall);
      v35 = *(v12 + 20);
      v36 = *&v19[v35];
      v37 = *(v34 + v35);
      v31 = a1;

      if (v36 == v37 || (, , v38 = closure #1 in static PgQuery_FuncCall.== infix(_:_:)(v36, v37), , , v38))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_FuncCall);
        outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_FuncCall);
        _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
        if (v39)
        {
          goto LABEL_12;
        }

LABEL_8:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_FuncCall);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_FuncCall);
      v32 = &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd;
      v33 = &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v24, v32, v33);
      goto LABEL_8;
    }

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_FuncCall);
LABEL_6:
    v32 = &_s14BiomeSQLParser16PgQuery_FuncCallVSg_ADtMd;
    v33 = &_s14BiomeSQLParser16PgQuery_FuncCallVSg_ADtMR;
    goto LABEL_7;
  }

  v30 = v29(&v24[v26], 1, v12);

  v31 = a1;
  if (v30 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
LABEL_12:
  v40 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
  v41 = *(v60 + 48);
  v42 = v63;
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, v63, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  outlined init with copy of PgQuery_Alias?(v28 + v40, v42 + v41, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  v43 = v62;
  v44 = *(v61 + 48);
  if (v44(v42, 1, v62) == 1)
  {

    if (v44(v42 + v41, 1, v43) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v42, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
      return 1;
    }

    goto LABEL_17;
  }

  v45 = v58;
  outlined init with copy of PgQuery_Alias?(v42, v58, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  if (v44(v42 + v41, 1, v43) == 1)
  {

    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_FuncExpr);
LABEL_17:
    v46 = &_s14BiomeSQLParser16PgQuery_FuncExprVSg_ADtMd;
    v47 = &_s14BiomeSQLParser16PgQuery_FuncExprVSg_ADtMR;
LABEL_18:
    _s10Foundation4UUIDVSgWOhTm_0(v42, v46, v47);
    return 0;
  }

  v49 = v57;
  outlined init with take of PgQuery_OidList(v42 + v41, v57, type metadata accessor for PgQuery_FuncExpr);
  v50 = *(v43 + 20);
  v51 = *(v45 + v50);
  v52 = *(v49 + v50);
  if (v51 != v52)
  {
    v53 = *(v45 + v50);

    v54 = closure #1 in static PgQuery_FuncExpr.== infix(_:_:)(v51, v52);

    if (!v54)
    {

      outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_FuncExpr);
      outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_FuncExpr);
      v46 = &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd;
      v47 = &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR;
      goto LABEL_18;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_FuncExpr);
  outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_FuncExpr);
  _s10Foundation4UUIDVSgWOhTm_0(v42, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  return (v55 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CallStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallStmt and conformance PgQuery_CallStmt, type metadata accessor for PgQuery_CallStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CallStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallStmt and conformance PgQuery_CallStmt, type metadata accessor for PgQuery_CallStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CallStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallStmt and conformance PgQuery_CallStmt, type metadata accessor for PgQuery_CallStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_LockStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    if (!*(v4 + 8) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v5))
    {
      if (*(v4 + 12) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
      {
        v8 = v4 + *(a4(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_LockStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterStatsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterStatsStmt and conformance PgQuery_AlterStatsStmt, type metadata accessor for PgQuery_AlterStatsStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterStatsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterStatsStmt and conformance PgQuery_AlterStatsStmt, type metadata accessor for PgQuery_AlterStatsStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterStatsStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterStatsStmt and conformance PgQuery_AlterStatsStmt, type metadata accessor for PgQuery_AlterStatsStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_A_Expr._StorageClass.__deallocating_deinit()
{
  v1 = v0[4];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void type metadata completion function for PgQuery_A_Expr._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_A_Expr.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }
    }

    else if (result == 3 || result == 4)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    else if (result == 5)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_A_Expr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v30 = *(Node - 8);
  v16 = *(v30 + 64);
  v17 = MEMORY[0x1EEE9AC00](Node);
  v26 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - v19;
  if (*(a1 + 16))
  {
    v21 = *(a1 + 24);
    v28 = *(a1 + 16);
    v29 = v21;
    lazy protocol witness table accessor for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v27 = a4;
    v5 = 0;
  }

  else
  {
    v27 = a4;
  }

  if (*(*(a1 + 32) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v23 = *(v30 + 48);
  v30 += 48;
  if (v23(v14, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v23(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v24 = v12;
    v25 = v26;
    outlined init with take of PgQuery_OidList(v24, v26, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    if (v5)
    {
      return result;
    }
  }

  result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_A_Expr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v66 = *(Node - 8);
  v5 = *(v66 + 64);
  v6 = MEMORY[0x1EEE9AC00](Node);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v61 - v22;
  v24 = *(a1 + 16);
  v25 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v25)
    {
      case 1:
        if (v24 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v24 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v24 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v24 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v24 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v24 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v24 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v24 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v24 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v24 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      case 11:
        if (v24 != 11)
        {
          return 0;
        }

        goto LABEL_6;
      case 12:
        if (v24 != 12)
        {
          return 0;
        }

        goto LABEL_6;
      case 13:
        if (v24 != 13)
        {
          return 0;
        }

        goto LABEL_6;
      case 14:
        if (v24 != 14)
        {
          return 0;
        }

        goto LABEL_6;
      case 15:
        if (v24 != 15)
        {
          return 0;
        }

        goto LABEL_6;
      case 16:
        if (v24 != 16)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v24)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v24 != v25)
  {
    return 0;
  }

LABEL_6:
  v62 = v8;
  v63 = v15;
  v65 = v21;
  v26 = *(a1 + 32);
  v27 = *(a2 + 32);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v26, v27);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
LABEL_25:

    return 0;
  }

  v29 = a1;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr;
  v31 = *(v18 + 48);
  v64 = v29;
  outlined init with copy of PgQuery_Alias?(v29 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr, v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v30, &v23[v31], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v32 = *(v66 + 48);
  if (v32(v23, 1, Node) == 1)
  {
    if (v32(&v23[v31], 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  outlined init with copy of PgQuery_Alias?(v23, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v32(&v23[v31], 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
LABEL_12:
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_13:
    _s10Foundation4UUIDVSgWOhTm_0(v23, v33, v34);
    goto LABEL_25;
  }

  outlined init with take of PgQuery_OidList(&v23[v31], v10, type metadata accessor for PgQuery_Node);
  v35 = *(Node + 20);
  v36 = *&v17[v35];
  v37 = *&v10[v35];
  if (v36 != v37)
  {
    v38 = *&v17[v35];

    LODWORD(v66) = closure #1 in static PgQuery_Node.== infix(_:_:)(v36, v37);

    if ((v66 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_13;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v40 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr;
  v41 = *(v18 + 48);
  v42 = v65;
  outlined init with copy of PgQuery_Alias?(v64 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v40, v42 + v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v32(v42, 1, Node) != 1)
  {
    v45 = v63;
    outlined init with copy of PgQuery_Alias?(v42, v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v46 = v32((v42 + v41), 1, Node);
    v44 = v64;
    if (v46 != 1)
    {
      v51 = v42 + v41;
      v52 = v62;
      outlined init with take of PgQuery_OidList(v51, v62, type metadata accessor for PgQuery_Node);
      v53 = *(Node + 20);
      v54 = *(v45 + v53);
      v55 = *(v52 + v53);
      if (v54 == v55 || (, , v56 = closure #1 in static PgQuery_Node.== infix(_:_:)(v54, v55), , , v56))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v57 = v63;
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v58)
        {
          goto LABEL_62;
        }

        goto LABEL_25;
      }

      outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_Node);
      v47 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v48 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v49 = v65;
      goto LABEL_24;
    }

    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
LABEL_23:
    v47 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v48 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v49 = v42;
LABEL_24:
    _s10Foundation4UUIDVSgWOhTm_0(v49, v47, v48);
    goto LABEL_25;
  }

  v43 = v32((v42 + v41), 1, Node);
  v44 = v64;
  if (v43 != 1)
  {
    goto LABEL_23;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v42, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_62:
  v59 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v60 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v59 == v60;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Expr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Expr and conformance PgQuery_A_Expr, type metadata accessor for PgQuery_A_Expr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Expr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Expr and conformance PgQuery_A_Expr, type metadata accessor for PgQuery_A_Expr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Expr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Expr and conformance PgQuery_A_Expr, type metadata accessor for PgQuery_A_Expr);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ColumnRef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnRef and conformance PgQuery_ColumnRef, type metadata accessor for PgQuery_ColumnRef);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ColumnRef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnRef and conformance PgQuery_ColumnRef, type metadata accessor for PgQuery_ColumnRef);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ColumnRef()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnRef and conformance PgQuery_ColumnRef, type metadata accessor for PgQuery_ColumnRef);

  return Message.hash(into:)();
}

uint64_t PgQuery_ParamRef.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_ParamRef.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for PgQuery_ParamRef(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_ParamRef@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ParamRef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParamRef and conformance PgQuery_ParamRef, type metadata accessor for PgQuery_ParamRef);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ParamRef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParamRef and conformance PgQuery_ParamRef, type metadata accessor for PgQuery_ParamRef);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ParamRef()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParamRef and conformance PgQuery_ParamRef, type metadata accessor for PgQuery_ParamRef);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_ParamRef(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_A_Const.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = *(type metadata accessor for PgQuery_A_Const(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  v7 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    A = type metadata accessor for PgQuery_A_Const._StorageClass(0);
    v9 = *(A + 48);
    v10 = *(A + 52);
    v11 = swift_allocObject();
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v11 + v12, 1, 1, Node);
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v19 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
    _s10Foundation4UUIDVSgWOhTm_0(v11 + v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v15 = v11 + v12;
    v7 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    outlined init with copy of PgQuery_Alias?(v6 + v19, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v11 + v14) = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v0 + v3) = v11;
    v2 = v1;
  }

  v16 = v7[437];
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v2)
  {
    while ((v18 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_A_Const.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v14 = v16[3];
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_A_Const.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, &v34 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v26 = v35;
      outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
      v27 = *(Node + 20);
      v28 = *&v11[v27];
      v29 = *(v26 + v27);

      if (v28 == v29 || (, , v30 = closure #1 in static PgQuery_Node.== infix(_:_:)(v28, v29), , , v30))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v31)
        {
          goto LABEL_12;
        }

LABEL_8:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_8;
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
LABEL_12:
  v32 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v33 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v32 == v33;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Const(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Const and conformance PgQuery_A_Const, type metadata accessor for PgQuery_A_Const);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Const(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Const and conformance PgQuery_A_Const, type metadata accessor for PgQuery_A_Const);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Const()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Const and conformance PgQuery_A_Const, type metadata accessor for PgQuery_A_Const);

  return Message.hash(into:)();
}

uint64_t PgQuery_FuncCall._StorageClass.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

void type metadata completion function for PgQuery_FuncCall._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WindowDef?, type metadata accessor for PgQuery_WindowDef, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_FuncCall.decodeMessage<A>(decoder:)()
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

      if (result > 5)
      {
        if (result <= 8)
        {
          goto LABEL_11;
        }

        if (result == 9)
        {
          v3 = v0;
          type metadata accessor for PgQuery_WindowDef(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef);
LABEL_23:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 10)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            goto LABEL_4;
          }

          if (result != 4)
          {
LABEL_11:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          goto LABEL_23;
        }

        if (result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_FuncCall.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = &v22 - v5;
  WindowDef = type metadata accessor for PgQuery_WindowDef(0);
  v23 = *(WindowDef - 8);
  v6 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](WindowDef);
  v22 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  if (!*(*(a1 + 16) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
  {
    if (!*(*(v26 + 24) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
    {
      if (!*(*(v26 + 32) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
      {
        outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((*(v13 + 48))(v11, 1, Node) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v11, v16, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
          if (v1)
          {
            return result;
          }
        }

        v19 = v24;
        v18 = WindowDef;
        if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
        {
          if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
          {
            if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
            {
              if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
              {
                outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over, v19, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
                if ((*(v23 + 48))(v19, 1, v18) == 1)
                {
                  _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
                }

                else
                {
                  v20 = v19;
                  v21 = v22;
                  outlined init with take of PgQuery_OidList(v20, v22, type metadata accessor for PgQuery_WindowDef);
                  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef);
                  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
                  result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_WindowDef);
                  if (v1)
                  {
                    return result;
                  }
                }

                result = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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

  return result;
}

BOOL closure #1 in static PgQuery_FuncCall.== infix(_:_:)(void *a1, void *a2)
{
  WindowDef = type metadata accessor for PgQuery_WindowDef(0);
  v67 = *(WindowDef - 8);
  v68 = WindowDef;
  v5 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](WindowDef);
  v64 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v63 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_WindowDefVSg_ADtMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSg_ADtMR);
  v10 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v63 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v70 = *(Node - 8);
  v13 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v63 - v22;
  v24 = a1[2];
  v25 = a2[2];

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v24, v25);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v27 = a1[3];
  v28 = a2[3];

  v29 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v27, v28);

  if ((v29 & 1) == 0)
  {
    goto LABEL_7;
  }

  v30 = a1[4];
  v31 = a2[4];

  v32 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v30, v31);

  if ((v32 & 1) == 0)
  {
    goto LABEL_7;
  }

  v33 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter;
  v34 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter, v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v33, &v23[v34], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v35 = *(v70 + 48);
  v36 = a2;
  if (v35(v23, 1, Node) == 1)
  {
    if (v35(&v23[v34], 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  outlined init with copy of PgQuery_Alias?(v23, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v35(&v23[v34], 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
LABEL_10:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_11:
    v40 = v23;
    goto LABEL_12;
  }

  outlined init with take of PgQuery_OidList(&v23[v34], v15, type metadata accessor for PgQuery_Node);
  v41 = *(Node + 20);
  v42 = *&v19[v41];
  v43 = *&v15[v41];
  if (v42 != v43)
  {
    v44 = *&v19[v41];

    v45 = closure #1 in static PgQuery_Node.== infix(_:_:)(v42, v43);

    if (!v45)
    {
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_11;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v46 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic))
  {
    goto LABEL_7;
  }

  v47 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over;
  v48 = *(v66 + 48);
  v49 = v69;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over, v69, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  outlined init with copy of PgQuery_Alias?(v36 + v47, v49 + v48, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  v50 = v68;
  v51 = *(v67 + 48);
  if (v51(v49, 1, v68) != 1)
  {
    v52 = v65;
    outlined init with copy of PgQuery_Alias?(v49, v65, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
    if (v51(v49 + v48, 1, v50) == 1)
    {
      outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_WindowDef);
      goto LABEL_27;
    }

    v53 = v49 + v48;
    v54 = v64;
    outlined init with take of PgQuery_OidList(v53, v64, type metadata accessor for PgQuery_WindowDef);
    v55 = *(v50 + 20);
    v56 = *(v52 + v55);
    v57 = *(v54 + v55);
    if (v56 == v57 || (v58 = *(v52 + v55), , , v59 = closure #1 in static PgQuery_WindowDef.== infix(_:_:)(v56, v57), , , v59))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_WindowDef);
      outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_WindowDef);
      _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
      if (v60)
      {
        goto LABEL_31;
      }

LABEL_7:

      return 0;
    }

    outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_WindowDef);
    outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_WindowDef);
    v38 = &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd;
    v39 = &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR;
    v40 = v49;
LABEL_12:
    _s10Foundation4UUIDVSgWOhTm_0(v40, v38, v39);
    goto LABEL_7;
  }

  if (v51(v49 + v48, 1, v50) != 1)
  {
LABEL_27:
    v38 = &_s14BiomeSQLParser17PgQuery_WindowDefVSg_ADtMd;
    v39 = &_s14BiomeSQLParser17PgQuery_WindowDefVSg_ADtMR;
    v40 = v49;
    goto LABEL_12;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
LABEL_31:
  v61 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v62 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v61 == v62;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FuncCall(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FuncCall(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FuncCall()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Star(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Star and conformance PgQuery_A_Star, type metadata accessor for PgQuery_A_Star);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Star(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Star and conformance PgQuery_A_Star, type metadata accessor for PgQuery_A_Star);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Star()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Star and conformance PgQuery_A_Star, type metadata accessor for PgQuery_A_Star);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_Null()
{
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void type metadata completion function for PgQuery_A_Indices._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_A_Indices.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - v5;
  v7 = *(type metadata accessor for PgQuery_A_Indices(0) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  v11 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    A = type metadata accessor for PgQuery_A_Indices._StorageClass(0);
    v13 = *(A + 48);
    v14 = *(A + 52);
    v15 = swift_allocObject();
    v27 = v7;
    v28 = v6;
    v16 = v15;
    *(v15 + 16) = 0;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx;
    Node = type metadata accessor for PgQuery_Node(0);
    v19 = *(Node - 8);
    v30 = v1;
    v20 = *(v19 + 56);
    v29 = v0;
    v20(v16 + v17, 1, 1, Node);
    v26 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx;
    v20(v16 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, 1, 1, Node);
    v2 = v30;
    *(v16 + 16) = *(v10 + 16);
    v21 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx;

    outlined assign with copy of PgQuery_Node?(v10 + v21, v16 + v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v22 = v28;
    outlined init with copy of PgQuery_Alias?(v10 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

    outlined assign with take of PgQuery_Node?(v22, v16 + v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

    v11 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    *(v29 + v27) = v16;
  }

  v23 = v11[352];
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v2)
  {
    while ((v25 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2 || result == 3)
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

uint64_t closure #1 in PgQuery_A_Indices.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v27 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](Node);
  v25 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - v18;
  v28 = a1;
  if (*(a1 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    v26 = a4;
    outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = *(v14 + 48);
    if (v21(v12, 1, Node) == 1)
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

    v22 = v27;
    outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(v22, 1, Node) == 1)
    {
      return _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v23 = v25;
      outlined init with take of PgQuery_OidList(v22, v25, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_A_Indices.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v59 - v23;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v60 = v9;
  v61 = v16;
  v62 = v22;
  v63 = v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx;
  v27 = *(v22 + 48);
  v64 = Node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx, &v59 - v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = v64;
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v5 + 48);
  if (v29(v25, 1, v28) == 1)
  {
    v30 = v29(&v25[v27], 1, v28);

    v31 = v30 == 1;
    v32 = a1;
    if (!v31)
    {
      goto LABEL_8;
    }

    _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_14:
    v41 = v32;
    v42 = a2;
    v43 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx;
    v44 = v63;
    v45 = *(v62 + 48);
    outlined init with copy of PgQuery_Alias?(v41 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v42 + v43, v44 + v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v46 = v64;
    if (v29(v44, 1, v64) == 1)
    {

      if (v29((v44 + v45), 1, v46) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        return 1;
      }
    }

    else
    {
      v47 = v61;
      outlined init with copy of PgQuery_Alias?(v44, v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v29((v44 + v45), 1, v46) != 1)
      {
        v52 = v60;
        outlined init with take of PgQuery_OidList(v44 + v45, v60, type metadata accessor for PgQuery_Node);
        v53 = *(v46 + 20);
        v54 = *(v47 + v53);
        v55 = *(v52 + v53);
        if (v54 == v55 || (, , v56 = closure #1 in static PgQuery_Node.== infix(_:_:)(v54, v55), , , v56))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
          v57 = v61;
          v58 = dispatch thunk of static Equatable.== infix(_:_:)();

          outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          return (v58 & 1) != 0;
        }

        outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
        v48 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v49 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v50 = v63;
LABEL_20:
        _s10Foundation4UUIDVSgWOhTm_0(v50, v48, v49);
        return 0;
      }

      outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
    }

    v48 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v49 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v50 = v44;
    goto LABEL_20;
  }

  v33 = a1;
  outlined init with copy of PgQuery_Alias?(v25, v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v29(&v25[v27], 1, v28) != 1)
  {
    outlined init with take of PgQuery_OidList(&v25[v27], v11, type metadata accessor for PgQuery_Node);
    v36 = *(v28 + 20);
    v37 = *&v18[v36];
    v38 = *&v11[v36];
    v32 = v33;

    if (v37 != v38)
    {

      v39 = closure #1 in static PgQuery_Node.== infix(_:_:)(v37, v38);

      if (!v39)
      {
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
        v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_9;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v40 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
LABEL_8:
  v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
  v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_9:
  _s10Foundation4UUIDVSgWOhTm_0(v25, v34, v35);
LABEL_10:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Indices(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indices and conformance PgQuery_A_Indices, type metadata accessor for PgQuery_A_Indices);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Indices(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indices and conformance PgQuery_A_Indices, type metadata accessor for PgQuery_A_Indices);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Indices()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indices and conformance PgQuery_A_Indices, type metadata accessor for PgQuery_A_Indices);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_AlternativeSubPlan._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_AlternativeSubPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), void *a6, void *a7)
{
  v11 = *(a4(0) + 20);
  v12 = *(v7 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v7 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a5(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v30 = a7;
    v19 = *a6;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v18 + v19, 1, 1, Node);
    v21 = a6;
    v22 = *v30;
    *(v18 + *v30) = MEMORY[0x1E69E7CC0];
    v28 = *v21;
    _s10Foundation4UUIDVSgWOhTm_0(v18 + v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v14 + v28, v18 + v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v23 = *(v18 + v22);
    *(v18 + v22) = *(v14 + *v30);
    a6 = v21;

    a7 = v30;

    *(v7 + v11) = v18;
  }

  v24 = *a7;
  v25 = *a6;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v29)
  {
    while ((v27 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
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

uint64_t closure #1 in PgQuery_AlternativeSubPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v20 = a6;
  v21 = a2;
  v23 = a4;
  v22 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + *a5, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v14 + 48))(v12, 1, Node) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v17, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
    if (v6)
    {
      return result;
    }
  }

  if (*(*(a1 + *v20) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlternativeSubPlan.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v37 = a4;
  Node = type metadata accessor for PgQuery_Node(0);
  v8 = *(Node - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v36 - v18;
  v20 = *a3;
  v21 = *(v17 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + v20, &v36 - v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v19[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v8 + 48);
  if (v22(v19, 1, Node) == 1)
  {
    v23 = v22(&v19[v21], 1, Node);

    if (v23 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_12:
      v33 = *(a1 + *v37);
      v34 = *(a2 + *v37);

      NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v33, v34);

      return NodeV_Tt1g5 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v19, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(&v19[v21], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
LABEL_6:
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v19, v24, v25);
    goto LABEL_8;
  }

  v27 = v36;
  outlined init with take of PgQuery_OidList(&v19[v21], v36, type metadata accessor for PgQuery_Node);
  v28 = *(Node + 20);
  v29 = *&v14[v28];
  v30 = *(v27 + v28);

  if (v29 != v30)
  {

    v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30);

    if (!v31)
    {
      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v32)
  {
    goto LABEL_12;
  }

LABEL_8:

  NodeV_Tt1g5 = 0;
  return NodeV_Tt1g5 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Indirection(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indirection and conformance PgQuery_A_Indirection, type metadata accessor for PgQuery_A_Indirection);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Indirection(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indirection and conformance PgQuery_A_Indirection, type metadata accessor for PgQuery_A_Indirection);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Indirection()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indirection and conformance PgQuery_A_Indirection, type metadata accessor for PgQuery_A_Indirection);

  return Message.hash(into:)();
}

uint64_t PgQuery_ColumnRef.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    if (!v4[2] || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v5))
    {
      v8 = v4 + *(a4(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_ArrayExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_ArrayExpr and conformance PgQuery_A_ArrayExpr, type metadata accessor for PgQuery_A_ArrayExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_ArrayExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_ArrayExpr and conformance PgQuery_A_ArrayExpr, type metadata accessor for PgQuery_A_ArrayExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_ArrayExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_ArrayExpr and conformance PgQuery_A_ArrayExpr, type metadata accessor for PgQuery_A_ArrayExpr);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_ColumnRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_PrepareStmt._StorageClass.__deallocating_deinit(void *a1)
{
  v3 = v1[3];

  v4 = v1[4];

  _s10Foundation4UUIDVSgWOhTm_0(v1 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v5, v6);
}

void type metadata completion function for PgQuery_ResTarget._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_ResTarget.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
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

uint64_t closure #1 in PgQuery_ResTarget.traverse<A>(visitor:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  Node = type metadata accessor for PgQuery_Node(0);
  v8 = *(Node - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v18 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v8 + 48))(v6, 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v15 = v6;
        v16 = v18;
        outlined init with take of PgQuery_OidList(v15, v18, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
        if (v1)
        {
          return result;
        }
      }

      result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ResTarget.== infix(_:_:)(void *a1, void *a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - v15;
  if (a1[2] == a2[2] && a1[3] == a2[3] || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v17 & 1) != 0))
  {
    v37 = v8;
    v19 = a1[4];
    v20 = a2[4];

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v19, v20);

    if ((NodeV_Tt1g5 & 1) == 0)
    {
LABEL_12:

      return 0;
    }

    v22 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
    v23 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v22, &v16[v23], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v24 = *(v5 + 48);
    if (v24(v16, 1, Node) == 1)
    {
      if (v24(&v16[v23], 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_17:
        v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

        v35 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

        return v34 == v35;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v24(&v16[v23], 1, Node) != 1)
      {
        v27 = v37;
        outlined init with take of PgQuery_OidList(&v16[v23], v37, type metadata accessor for PgQuery_Node);
        v28 = *(Node + 20);
        v29 = *&v12[v28];
        v30 = *(v27 + v28);
        if (v29 == v30 || (v31 = *&v12[v28], , , v32 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30), , , v32))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
          v33 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v33)
          {
            goto LABEL_17;
          }

          goto LABEL_12;
        }

        outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    }

    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_11:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v25, v26);
    goto LABEL_12;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ResTarget(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ResTarget and conformance PgQuery_ResTarget, type metadata accessor for PgQuery_ResTarget);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ResTarget(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ResTarget and conformance PgQuery_ResTarget, type metadata accessor for PgQuery_ResTarget);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ResTarget()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ResTarget and conformance PgQuery_ResTarget, type metadata accessor for PgQuery_ResTarget);

  return Message.hash(into:)();
}

uint64_t PgQuery_MultiAssignRef.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = *(type metadata accessor for PgQuery_MultiAssignRef(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  v7 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  v8 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  v9 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    MultiAssign = type metadata accessor for PgQuery_MultiAssignRef._StorageClass(0);
    v11 = *(MultiAssign + 48);
    v12 = *(MultiAssign + 52);
    v13 = swift_allocObject();
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__source;
    v24 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__source;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v13 + v14, 1, 1, Node);
    v25 = v1;
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colno;
    *(v13 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colno) = 0;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ncolumns;
    *(v13 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ncolumns) = 0;
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__source;

    outlined assign with copy of PgQuery_Node?(v6 + v18, v13 + v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v13 + v16) = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colno);
    LODWORD(v16) = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ncolumns);

    *(v13 + v17) = v16;
    v7 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    v2 = v25;

    v9 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    v8 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    *(v0 + v3) = v13;
  }

  v19 = v7[12];
  v20 = v8[14];
  v21 = v9[13];
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

uint64_t closure #1 in PgQuery_NextValueExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), void *a8)
{
  v26 = a8;
  v27 = a6;
  v28 = a7;
  v29 = a3;
  v30 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + *a5, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v15 + 48))(v13, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v19 = v31;
    v21 = v29;
    v20 = v30;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v18, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v19 = v31;
    v21 = v29;
    v20 = v30;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    if (v19)
    {
      return result;
    }
  }

  v23 = v28;
  v24 = *(a1 + *v27);
  if (!v24 || (result = v28(v24, 2, v21, v20), !v19))
  {
    result = *(a1 + *v26);
    if (result)
    {
      return v23(result, 3, v21, v20);
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_NextValueExpr.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v40 = a5;
  v42 = a4;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v39 - v19;
  v21 = *a3;
  v22 = *(v18 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + v21, &v39 - v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v23 = a2 + v21;
  v24 = a2;
  outlined init with copy of PgQuery_Alias?(v23, &v20[v22], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v9 + 48);
  if (v25(v20, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v20, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v25(&v20[v22], 1, Node) != 1)
    {
      v29 = v41;
      outlined init with take of PgQuery_OidList(&v20[v22], v41, type metadata accessor for PgQuery_Node);
      v30 = *(Node + 20);
      v31 = *&v15[v30];
      v32 = *(v29 + v30);

      if (v31 == v32 || (, , v33 = closure #1 in static PgQuery_Node.== infix(_:_:)(v31, v32), , , v33))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v34 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      v27 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v28 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v20, v27, v28);
      goto LABEL_13;
    }

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
LABEL_6:
    v27 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v28 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v26 = v25(&v20[v22], 1, Node);

  if (v26 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  if (*(a1 + *v42) == *(v24 + *v42))
  {
    v35 = v40;
    v36 = v24;
    v37 = *(a1 + *v40);

    LODWORD(v35) = *(v36 + *v35);

    return v37 == v35;
  }

LABEL_13:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_MultiAssignRef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MultiAssignRef and conformance PgQuery_MultiAssignRef, type metadata accessor for PgQuery_MultiAssignRef);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_MultiAssignRef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MultiAssignRef and conformance PgQuery_MultiAssignRef, type metadata accessor for PgQuery_MultiAssignRef);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_MultiAssignRef()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MultiAssignRef and conformance PgQuery_MultiAssignRef, type metadata accessor for PgQuery_MultiAssignRef);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_TypeCast._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t PgQuery_TypeCast.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = *(type metadata accessor for PgQuery_TypeCast(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  v7 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  v8 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    Type = type metadata accessor for PgQuery_TypeCast._StorageClass(0);
    v10 = *(Type + 48);
    v11 = *(Type + 52);
    v25 = v1;
    v12 = swift_allocObject();
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    v24 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v12 + v13, 1, 1, Node);
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
    TypeName = type metadata accessor for PgQuery_TypeName(0);
    (*(*(TypeName - 8) + 56))(v12 + v15, 1, 1, TypeName);
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v12 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;

    outlined assign with copy of PgQuery_Node?(v6 + v18, v12 + v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined assign with copy of PgQuery_Node?(v6 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v12 + v15, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    LODWORD(v15) = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v12 + v17) = v15;
    v7 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;

    v8 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    *(v0 + v3) = v12;
    v2 = v25;
  }

  v19 = v7[363];
  v20 = v8[364];
  v21 = v2;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v21 || (v23 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_12:
        v21 = 0;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        break;
      case 2:
        type metadata accessor for PgQuery_TypeName(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
        goto LABEL_12;
      case 3:
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        break;
    }
  }
}

uint64_t closure #1 in PgQuery_TypeCast.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26 - v7;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v27 = *(TypeName - 8);
  v28 = TypeName;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v26 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - v14;
  Node = type metadata accessor for PgQuery_Node(0);
  v17 = *(Node - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v17 + 48))(v15, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = v30;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v22 = v30;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v21 = v22;
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v22)
    {
      return result;
    }
  }

  v24 = v29;
  outlined init with copy of PgQuery_Alias?(v29 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v8, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v27 + 48))(v8, 1, v28) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v25 = v26;
    outlined init with take of PgQuery_OidList(v8, v26, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_TypeName);
    if (v21)
    {
      return result;
    }
  }

  result = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_TypeCast.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v58 = *(TypeName - 8);
  v59 = TypeName;
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v53 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v10 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v53 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v56 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v53 - v23;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v26 = *(v22 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, &v53 - v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = a2 + v25;
  v28 = a2;
  outlined init with copy of PgQuery_Alias?(v27, &v24[v26], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v13 + 48);
  if (v29(v24, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v24, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v29(&v24[v26], 1, Node) != 1)
    {
      v35 = &v24[v26];
      v36 = v56;
      outlined init with take of PgQuery_OidList(v35, v56, type metadata accessor for PgQuery_Node);
      v37 = *(Node + 20);
      v38 = *&v19[v37];
      v39 = *(v36 + v37);
      v31 = a1;

      if (v38 == v39 || (, , v40 = closure #1 in static PgQuery_Node.== infix(_:_:)(v38, v39), , , v40))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v41 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      v34 = v24;
LABEL_17:
      _s10Foundation4UUIDVSgWOhTm_0(v34, v32, v33);
      goto LABEL_18;
    }

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
LABEL_6:
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v30 = v29(&v24[v26], 1, Node);

  v31 = a1;
  if (v30 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  v42 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  v43 = *(v57 + 48);
  v44 = v60;
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v60, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v28 + v42, v44 + v43, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v45 = v59;
  v46 = *(v58 + 48);
  if (v46(v44, 1, v59) == 1)
  {
    if (v46(v44 + v43, 1, v45) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v44, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
LABEL_21:
      v51 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v52 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v51 == v52;
    }

    goto LABEL_16;
  }

  v47 = v55;
  outlined init with copy of PgQuery_Alias?(v44, v55, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v46(v44 + v43, 1, v45) == 1)
  {
    outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_TypeName);
LABEL_16:
    v32 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v33 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v34 = v44;
    goto LABEL_17;
  }

  v49 = v54;
  outlined init with take of PgQuery_OidList(v44 + v43, v54, type metadata accessor for PgQuery_TypeName);
  v50 = specialized static PgQuery_TypeName.== infix(_:_:)(v47, v49);
  outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_TypeName);
  _s10Foundation4UUIDVSgWOhTm_0(v44, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v50)
  {
    goto LABEL_21;
  }

LABEL_18:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TypeCast(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeCast and conformance PgQuery_TypeCast, type metadata accessor for PgQuery_TypeCast);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TypeCast(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeCast and conformance PgQuery_TypeCast, type metadata accessor for PgQuery_TypeCast);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TypeCast()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeCast and conformance PgQuery_TypeCast, type metadata accessor for PgQuery_TypeCast);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_NextValueExpr._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_CollateClause.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = *(type metadata accessor for PgQuery_CollateClause(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  v7 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  v8 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  v9 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    Collate = type metadata accessor for PgQuery_CollateClause._StorageClass(0);
    v11 = *(Collate + 48);
    v12 = *(Collate + 52);
    v26 = v1;
    v13 = swift_allocObject();
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v13 + v14, 1, 1, Node);
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname;
    *(v13 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname) = MEMORY[0x1E69E7CC0];
    v25 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v13 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;

    v18 = v13 + v14;
    v7 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    outlined assign with copy of PgQuery_Node?(v6 + v17, v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v19 = *(v13 + v16);
    *(v13 + v16) = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname);

    LODWORD(v16) = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v13 + v25) = v16;

    v9 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    v8 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    *(v0 + v3) = v13;
    v2 = v26;
  }

  v20 = v7[100];
  v21 = v8[101];
  v22 = v9[102];
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v2 || (v24 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        break;
      case 2:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        break;
      case 3:
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CollateClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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

  v16 = v17[0];
  if (!*(*(v17[0] + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
    if (result)
    {
      return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CollateClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, &v37 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_13;
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
  v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname);
  v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

  if (NodeV_Tt1g5)
  {
    v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v34 == v35;
  }

LABEL_13:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CollateClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CollateClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CollateClause()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_SortBy.decodeMessage<A>(decoder:)()
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

          lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir();
          goto LABEL_16;
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
            lazy protocol witness table accessor for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls();
LABEL_16:
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
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

uint64_t closure #1 in PgQuery_SortBy.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v16 = v15;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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

  v18 = v22;
  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir) || (v19 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir + 8), v23 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir), v24 = v19, lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls) || (v20 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls + 8), v23 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls), v24 = v20, lazy protocol witness table accessor for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        result = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_SortBy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v41 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, &v41 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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

  v26 = v42;
  outlined init with take of PgQuery_OidList(&v16[v18], v42, type metadata accessor for PgQuery_Node);
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
  v32 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir);
  v33 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir + 8) == 1)
  {
    if (v33 <= 1)
    {
      if (v33)
      {
        if (v32 != 1)
        {
          goto LABEL_8;
        }
      }

      else if (v32)
      {
        goto LABEL_8;
      }
    }

    else if (v33 == 2)
    {
      if (v32 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v33 == 3)
    {
      if (v32 != 3)
      {
        goto LABEL_8;
      }
    }

    else if (v32 != 4)
    {
      goto LABEL_8;
    }
  }

  else if (v32 != v33)
  {
    goto LABEL_8;
  }

  v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls);
  v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls + 8) != 1)
  {
    if (v34 == v35)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  if (v35 > 1)
  {
    if (v35 == 2)
    {
      if (v34 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v34 != 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v35)
    {
      if (!v34)
      {
        goto LABEL_25;
      }

LABEL_8:

      return 0;
    }

    if (v34 != 1)
    {
      goto LABEL_8;
    }
  }

LABEL_25:
  v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp);
  v37 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v39 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v40 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v39 == v40;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SortBy(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortBy and conformance PgQuery_SortBy, type metadata accessor for PgQuery_SortBy);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SortBy(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortBy and conformance PgQuery_SortBy, type metadata accessor for PgQuery_SortBy);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SortBy()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortBy and conformance PgQuery_SortBy, type metadata accessor for PgQuery_SortBy);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_WindowDef._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_WindowDef.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          goto LABEL_17;
        }

        if (result == 8)
        {
LABEL_16:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 5)
        {
          goto LABEL_16;
        }

LABEL_17:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }
    }

    else if (result > 2)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }
}

uint64_t closure #1 in PgQuery_WindowDef.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v28 = *(Node - 8);
  v10 = *(v28 + 64);
  v11 = MEMORY[0x1EEE9AC00](Node);
  v26 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = *(a1 + 24);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (v17 = *(a1 + 24), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v1))
  {
    v19 = *(a1 + 40);
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (!v20 || (v21 = *(a1 + 40), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v1))
    {
      if (!*(*(a1 + 48) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
      {
        if (!*(*(a1 + 56) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
        {
          if (!*(a1 + 64) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
          {
            outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            v22 = *(v28 + 48);
            v28 += 48;
            if (v22(v8, 1, Node) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            }

            else
            {
              outlined init with take of PgQuery_OidList(v8, v14, type metadata accessor for PgQuery_Node);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
              dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
              result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
              if (v1)
              {
                return result;
              }
            }

            v23 = v27;
            outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v22(v23, 1, Node) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            }

            else
            {
              v24 = v23;
              v25 = v26;
              outlined init with take of PgQuery_OidList(v24, v26, type metadata accessor for PgQuery_Node);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
              dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
              result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
              if (v1)
              {
                return result;
              }
            }

            result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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

BOOL closure #1 in static PgQuery_WindowDef.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v65 = *(Node - 8);
  v5 = *(v65 + 64);
  v6 = MEMORY[0x1EEE9AC00](Node);
  v8 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v60[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v60[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v60[-v23];
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v63 = v15;
  v64 = v22;
  v62 = v8;
  v25 = *(a1 + 48);
  v26 = *(a2 + 48);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v25, v26);

  if (NodeV_Tt1g5)
  {
    v28 = *(a1 + 56);
    v29 = *(a2 + 56);

    v30 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v28, v29);

    if ((v30 & 1) != 0 && *(a1 + 64) == *(a2 + 64))
    {
      v31 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset;
      v32 = *(v18 + 48);
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset, v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v33 = a2 + v31;
      v34 = v32;
      outlined init with copy of PgQuery_Alias?(v33, &v24[v32], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v35 = v65 + 48;
      v36 = *(v65 + 48);
      if (v36(v24, 1, Node) == 1)
      {
        if (v36(&v24[v34], 1, Node) == 1)
        {
          v65 = v35;
          _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
          v45 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset;
          v46 = *(v18 + 48);
          v47 = v64;
          outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          outlined init with copy of PgQuery_Alias?(a2 + v45, v47 + v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v36(v47, 1, Node) == 1)
          {
            if (v36(v47 + v46, 1, Node) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_33:
              v58 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

              v59 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

              return v58 == v59;
            }
          }

          else
          {
            v48 = v63;
            outlined init with copy of PgQuery_Alias?(v47, v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v36(v47 + v46, 1, Node) != 1)
            {
              v50 = v47 + v46;
              v51 = v62;
              outlined init with take of PgQuery_OidList(v50, v62, type metadata accessor for PgQuery_Node);
              v52 = *(Node + 20);
              v53 = *(v48 + v52);
              v54 = *(v51 + v52);
              if (v53 == v54 || (, , v55 = closure #1 in static PgQuery_Node.== infix(_:_:)(v53, v54), , , v55))
              {
                type metadata accessor for UnknownStorage();
                lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
                v56 = v63;
                v57 = dispatch thunk of static Equatable.== infix(_:_:)();
                outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
                outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
                _s10Foundation4UUIDVSgWOhTm_0(v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
                if (v57)
                {
                  goto LABEL_33;
                }

                goto LABEL_27;
              }

              outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
              outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_Node);
              v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
              v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
              v39 = v64;
              goto LABEL_26;
            }

            outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
          }

          v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
          v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
          v39 = v47;
LABEL_26:
          _s10Foundation4UUIDVSgWOhTm_0(v39, v37, v38);
          goto LABEL_27;
        }

        goto LABEL_15;
      }

      outlined init with copy of PgQuery_Alias?(v24, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v36(&v24[v34], 1, Node) == 1)
      {
        outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
LABEL_15:
        v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
        v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
        v39 = v24;
        goto LABEL_26;
      }

      v65 = v35;
      outlined init with take of PgQuery_OidList(&v24[v34], v10, type metadata accessor for PgQuery_Node);
      v40 = *(Node + 20);
      v41 = *&v17[v40];
      v42 = *&v10[v40];
      if (v41 != v42)
      {
        v43 = *&v17[v40];

        v61 = closure #1 in static PgQuery_Node.== infix(_:_:)(v41, v42);

        if (!v61)
        {
          outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
          v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
          v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
          goto LABEL_16;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v44)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_27:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_WindowDef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_WindowDef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_WindowDef()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_RangeSubselect._StorageClass()
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

uint64_t PgQuery_RangeSubselect.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29 - v5;
  v7 = *(type metadata accessor for PgQuery_RangeSubselect(0) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  v11 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  v12 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    Range = type metadata accessor for PgQuery_RangeSubselect._StorageClass(0);
    v14 = *(Range + 48);
    v15 = *(Range + 52);
    v16 = swift_allocObject();
    v31 = v1;
    v17 = v16;
    *(v16 + 16) = 0;
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
    v29 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v17 + v18, 1, 1, Node);
    v20 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
    v30 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
    Alias = type metadata accessor for PgQuery_Alias(0);
    (*(*(Alias - 8) + 56))(v17 + v20, 1, 1, Alias);
    *(v17 + 16) = *(v10 + 16);
    v22 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;

    outlined assign with copy of PgQuery_Node?(v10 + v22, v17 + v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v10 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v6, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);

    outlined assign with take of PgQuery_Node?(v6, v17 + v30, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);

    v12 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    v11 = &type metadata singleton initialization cache for PgQuery_RangeSubselect;
    *(v0 + v7) = v17;
    v2 = v31;
  }

  v23 = v11[5];
  v24 = v12[4];
  v25 = v2;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v2)
  {
    while (1)
    {
      if (v27)
      {
        return result;
      }

      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_7;
        case 2:
          v28 = v25;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          break;
        case 3:
          v28 = v25;
          type metadata accessor for PgQuery_Alias(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
          break;
        default:
          goto LABEL_7;
      }

      v25 = v28;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RangeSubselect.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = &v21 - v5;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v22 = *(Alias - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](Alias);
  v21 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  if (*(a1 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v13 + 48))(v11, 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v11, v16, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
      if (v1)
      {
        return result;
      }
    }

    v18 = v23;
    outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v23, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    if ((*(v22 + 48))(v18, 1, Alias) == 1)
    {
      return _s10Foundation4UUIDVSgWOhTm_0(v18, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    }

    else
    {
      v19 = v18;
      v20 = v21;
      outlined init with take of PgQuery_OidList(v19, v21, type metadata accessor for PgQuery_Alias);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Alias);
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RangeSubselect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v63 = *(Alias - 8);
  v5 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](Alias);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v56 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  v12 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v14 = &v56 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(Node - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v61 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v56 - v26;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v59 = v14;
  v60 = Alias;
  v57 = v7;
  v58 = v11;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
  v29 = a1;
  v30 = *(v25 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = a2 + v28;
  v32 = a2;
  outlined init with copy of PgQuery_Alias?(v31, &v27[v30], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = *(v16 + 48);
  if (v33(v27, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v27, v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v33(&v27[v30], 1, Node) != 1)
    {
      v37 = v61;
      outlined init with take of PgQuery_OidList(&v27[v30], v61, type metadata accessor for PgQuery_Node);
      v38 = *(Node + 20);
      v39 = *&v22[v38];
      v40 = *(v37 + v38);

      if (v39 == v40 || (, , v41 = closure #1 in static PgQuery_Node.== infix(_:_:)(v39, v40), , , v41))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v42)
        {
          goto LABEL_13;
        }

LABEL_9:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_8:
      _s10Foundation4UUIDVSgWOhTm_0(v27, v35, v36);
      goto LABEL_9;
    }

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
LABEL_7:
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_8;
  }

  v34 = v33(&v27[v30], 1, Node);

  if (v34 != 1)
  {
    goto LABEL_7;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_13:
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  v44 = *(v62 + 48);
  v45 = v59;
  outlined init with copy of PgQuery_Alias?(v29 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v59, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  outlined init with copy of PgQuery_Alias?(v32 + v43, v45 + v44, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v46 = *(v63 + 48);
  v47 = v60;
  if (v46(v45, 1, v60) == 1)
  {

    if (v46(v45 + v44, 1, v47) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v45, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
      return 1;
    }

    goto LABEL_19;
  }

  v49 = v58;
  outlined init with copy of PgQuery_Alias?(v45, v58, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if (v46(v45 + v44, 1, v47) == 1)
  {

    outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Alias);
LABEL_19:
    v50 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
    v51 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
LABEL_28:
    _s10Foundation4UUIDVSgWOhTm_0(v45, v50, v51);
    return 0;
  }

  v52 = v45 + v44;
  v53 = v57;
  outlined init with take of PgQuery_OidList(v52, v57, type metadata accessor for PgQuery_Alias);
  if ((*v49 != *v53 || v49[1] != v53[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v49[2], v53[2]) & 1) == 0)
  {

    outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Alias);
    outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Alias);
    v50 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
    v51 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
    goto LABEL_28;
  }

  v54 = *(v60 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Alias);
  outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Alias);
  _s10Foundation4UUIDVSgWOhTm_0(v45, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  return (v55 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeSubselect(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeSubselect and conformance PgQuery_RangeSubselect, type metadata accessor for PgQuery_RangeSubselect);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeSubselect(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeSubselect and conformance PgQuery_RangeSubselect, type metadata accessor for PgQuery_RangeSubselect);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeSubselect()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeSubselect and conformance PgQuery_RangeSubselect, type metadata accessor for PgQuery_RangeSubselect);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeFunction.decodeMessage<A>(decoder:)()
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
          goto LABEL_15;
        }

        if (result != 5)
        {
          if (result != 6)
          {
            goto LABEL_5;
          }

LABEL_15:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        v3 = *(type metadata accessor for PgQuery_RangeFunction(0) + 40);
        type metadata accessor for PgQuery_Alias(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_RangeFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v21 - v9;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v12 = *(Alias - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](Alias);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v4 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v3))
  {
    if (*(v4 + 1) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v3))
    {
      if (*(v4 + 2) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v3))
      {
        v21[0] = a1;
        v21[1] = a2;
        v22 = v3;
        if (*(*(v4 + 8) + 16))
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          v17 = v22;
          result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
          if (v17)
          {
            return result;
          }

          v22 = 0;
        }

        RangeFunction = type metadata accessor for PgQuery_RangeFunction(0);
        outlined init with copy of PgQuery_Alias?(v4 + *(RangeFunction + 40), v10, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
        if ((*(v12 + 48))(v10, 1, Alias) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
          v19 = v22;
        }

        else
        {
          outlined init with take of PgQuery_OidList(v10, v15, type metadata accessor for PgQuery_Alias);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
          v19 = v22;
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Alias);
          if (v19)
          {
            return result;
          }
        }

        if (!*(*(v4 + 16) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v19))
        {
          v20 = v4 + *(RangeFunction + 36);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_RangeFunction@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = v4;
  v5 = a2 + *(a1 + 36);
  UnknownStorage.init()();
  v6 = *(a1 + 40);
  Alias = type metadata accessor for PgQuery_Alias(0);
  v8 = *(*(Alias - 8) + 56);

  return v8(a2 + v6, 1, 1, Alias);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeFunction(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeFunction and conformance PgQuery_RangeFunction, type metadata accessor for PgQuery_RangeFunction);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeFunction(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeFunction and conformance PgQuery_RangeFunction, type metadata accessor for PgQuery_RangeFunction);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeFunction()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeFunction and conformance PgQuery_RangeFunction, type metadata accessor for PgQuery_RangeFunction);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTableSample._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void type metadata completion function for PgQuery_RangeTableSample._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_RangeTableSample.decodeMessage<A>(decoder:)()
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
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
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
            goto LABEL_14;
          case 4:
            goto LABEL_4;
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

uint64_t closure #1 in PgQuery_RangeTableSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](Node);
  v24 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v13 + 48);
  if (v19(v11, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v18, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  if (!*(*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      v21 = v25;
      outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v19(v21, 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v22 = v21;
        v23 = v24;
        outlined init with take of PgQuery_OidList(v22, v24, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
        if (v4)
        {
          return result;
        }
      }

      result = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RangeTableSample.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](Node);
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v62 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v58 - v21;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v61 = v20;
  v24 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v58 - v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v23, &v22[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v5 + 48);
  if (v25(v22, 1, Node) != 1)
  {
    v64 = a1;
    v65 = a2;
    outlined init with copy of PgQuery_Alias?(v22, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v25(&v22[v24], 1, Node) != 1)
    {
      v30 = v63;
      outlined init with take of PgQuery_OidList(&v22[v24], v63, type metadata accessor for PgQuery_Node);
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
          goto LABEL_17;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      a1 = v64;
      a2 = v65;
      Node = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
LABEL_6:
    v27 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v28 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v29 = v22;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v29, v27, v28);
    goto LABEL_17;
  }

  v26 = v25(&v22[v24], 1, Node);

  if (v26 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method);
  v38 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v37, v38);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_17;
  }

  v40 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v41 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v42 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v40, v41);

  if ((v42 & 1) == 0)
  {
    goto LABEL_17;
  }

  v43 = Node;
  v44 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable;
  v45 = v62;
  v46 = *(v61 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, v62, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v44, v45 + v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(v45, 1, v43) == 1)
  {
    if (v25((v45 + v46), 1, v43) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_26:
      v56 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v57 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v56 == v57;
    }

    goto LABEL_21;
  }

  v48 = v60;
  outlined init with copy of PgQuery_Alias?(v45, v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25((v45 + v46), 1, v43) == 1)
  {
    outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
LABEL_21:
    v27 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v28 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_22:
    v29 = v45;
    goto LABEL_7;
  }

  v49 = v59;
  outlined init with take of PgQuery_OidList(v45 + v46, v59, type metadata accessor for PgQuery_Node);
  v50 = *(v43 + 20);
  v51 = *(v48 + v50);
  v52 = *(v49 + v50);
  if (v51 != v52)
  {
    v53 = *(v48 + v50);

    v54 = closure #1 in static PgQuery_Node.== infix(_:_:)(v51, v52);

    if (!v54)
    {
      outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
      v27 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v28 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_22;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v55)
  {
    goto LABEL_26;
  }

LABEL_17:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTableSample(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableSample and conformance PgQuery_RangeTableSample, type metadata accessor for PgQuery_RangeTableSample);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTableSample(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableSample and conformance PgQuery_RangeTableSample, type metadata accessor for PgQuery_RangeTableSample);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTableSample()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableSample and conformance PgQuery_RangeTableSample, type metadata accessor for PgQuery_RangeTableSample);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTableFunc._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void type metadata completion function for PgQuery_RangeTableFunc._StorageClass()
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

uint64_t closure #1 in PgQuery_RangeTableFunc.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 3)
      {
        if (result == 1)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 2 || result == 3)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          type metadata accessor for PgQuery_Alias(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
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