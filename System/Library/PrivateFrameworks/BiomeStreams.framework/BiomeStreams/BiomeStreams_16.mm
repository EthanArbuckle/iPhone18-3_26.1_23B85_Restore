uint64_t closure #1 in PgQuery_RangeTableFunc.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v34 - v9;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v36 = *(Alias - 8);
  v37 = Alias;
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](Alias);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  Node = type metadata accessor for PgQuery_Node(0);
  v20 = *(Node - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](Node);
  v38 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v42 = a1;
  if (*(a1 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    v40 = a4;
    outlined init with copy of PgQuery_Alias?(v42 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v27 = *(v20 + 48);
    v28 = Node;
    if (v27(v19, 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v19, v25, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      if (v4)
      {
        return result;
      }
    }

    v29 = v42;
    outlined init with copy of PgQuery_Alias?(v42 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v27(v17, 1, v28) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v30 = v39;
    }

    else
    {
      v31 = v38;
      outlined init with take of PgQuery_OidList(v17, v38, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_Node);
      v30 = v39;
      if (v4)
      {
        return result;
      }
    }

    if (!*(*(v29 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      if (!*(*(v29 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        outlined init with copy of PgQuery_Alias?(v29 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v30, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
        if ((*(v36 + 48))(v30, 1, v37) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v30, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
        }

        else
        {
          v32 = v30;
          v33 = v35;
          outlined init with take of PgQuery_OidList(v32, v35, type metadata accessor for PgQuery_Alias);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Alias);
          if (v4)
          {
            return result;
          }
        }

        result = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RangeTableFunc.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v88 = *(Alias - 8);
  v5 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](Alias);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v81 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  v12 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v14 = &v81 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(Node - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](Node);
  v89 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v81 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v90 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v81 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v92 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v81 - v32;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v83 = v14;
  v84 = Alias;
  v81 = v7;
  v82 = v11;
  v34 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr;
  v86 = v31;
  v35 = *(v31 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr, &v81 - v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v34, &v33[v35], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = *(v16 + 48);
  v37 = Node;
  if (v36(v33, 1, Node) == 1)
  {
    v38 = v36(&v33[v35], 1, Node);

    v39 = a2;
    v40 = a1;
    if (v38 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_11;
    }

LABEL_7:
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v43 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v44 = v33;
LABEL_18:
    _s10Foundation4UUIDVSgWOhTm_0(v44, v42, v43);
    goto LABEL_19;
  }

  v85 = a1;
  v41 = a2;
  outlined init with copy of PgQuery_Alias?(v33, v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v36(&v33[v35], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
    goto LABEL_7;
  }

  v45 = v91;
  outlined init with take of PgQuery_OidList(&v33[v35], v91, type metadata accessor for PgQuery_Node);
  v46 = *(Node + 20);
  v47 = *&v26[v46];
  v48 = *(v45 + v46);

  v39 = v41;

  if (v47 != v48)
  {

    v49 = closure #1 in static PgQuery_Node.== infix(_:_:)(v47, v48);

    if (!v49)
    {
      outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_19;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v40 = v85;
  if (v50)
  {
LABEL_11:
    v51 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr;
    v52 = *(v86 + 48);
    v53 = v92;
    outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, v92, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v39 + v51, v53 + v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v36(v53, 1, Node) == 1)
    {
      if (v36((v53 + v52), 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        goto LABEL_25;
      }
    }

    else
    {
      v54 = v90;
      outlined init with copy of PgQuery_Alias?(v53, v90, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v36((v53 + v52), 1, v37) != 1)
      {
        v56 = v89;
        outlined init with take of PgQuery_OidList(v53 + v52, v89, type metadata accessor for PgQuery_Node);
        v57 = *(v37 + 20);
        v58 = *(v54 + v57);
        v59 = *(v56 + v57);
        if (v58 == v59 || (v60 = *(v54 + v57), , , v61 = closure #1 in static PgQuery_Node.== infix(_:_:)(v58, v59), , , v61))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
          v62 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v62 & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_25:
          v63 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces);
          v64 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces);

          NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v63, v64);

          if ((NodeV_Tt1g5 & 1) == 0)
          {
            goto LABEL_19;
          }

          v66 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);
          v67 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);

          v68 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v66, v67);

          if ((v68 & 1) == 0)
          {
            goto LABEL_19;
          }

          v69 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
          v70 = *(v87 + 48);
          v71 = v83;
          outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v83, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
          outlined init with copy of PgQuery_Alias?(v39 + v69, v71 + v70, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
          v72 = *(v88 + 48);
          v73 = v84;
          if (v72(v71, 1, v84) == 1)
          {
            if (v72(v71 + v70, 1, v73) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v71, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
LABEL_30:
              v74 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

              v75 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

              return v74 == v75;
            }
          }

          else
          {
            v76 = v82;
            outlined init with copy of PgQuery_Alias?(v71, v82, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
            if (v72(v71 + v70, 1, v73) != 1)
            {
              v77 = v81;
              outlined init with take of PgQuery_OidList(v71 + v70, v81, type metadata accessor for PgQuery_Alias);
              if (*v76 == *v77 && v76[1] == v77[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v82[2], v81[2]))
              {
                v78 = *(v84 + 24);
                type metadata accessor for UnknownStorage();
                lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
                v79 = v81;
                v80 = v82;
                LOBYTE(v78) = dispatch thunk of static Equatable.== infix(_:_:)();
                outlined destroy of PgQuery_OidList(v79, type metadata accessor for PgQuery_Alias);
                outlined destroy of PgQuery_OidList(v80, type metadata accessor for PgQuery_Alias);
                _s10Foundation4UUIDVSgWOhTm_0(v71, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                if (v78)
                {
                  goto LABEL_30;
                }

                goto LABEL_19;
              }

              outlined destroy of PgQuery_OidList(v81, type metadata accessor for PgQuery_Alias);
              outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_Alias);
              v42 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
              v43 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
              goto LABEL_43;
            }

            outlined destroy of PgQuery_OidList(v76, type metadata accessor for PgQuery_Alias);
          }

          v42 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
          v43 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
LABEL_43:
          v44 = v71;
          goto LABEL_18;
        }

        outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
        v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v43 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_17;
      }

      outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
    }

    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v43 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_17:
    v44 = v53;
    goto LABEL_18;
  }

LABEL_19:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTableFunc(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFunc and conformance PgQuery_RangeTableFunc, type metadata accessor for PgQuery_RangeTableFunc);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTableFunc(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFunc and conformance PgQuery_RangeTableFunc, type metadata accessor for PgQuery_RangeTableFunc);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTableFunc()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFunc and conformance PgQuery_RangeTableFunc, type metadata accessor for PgQuery_RangeTableFunc);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTableFuncCol._StorageClass.__deallocating_deinit()
{
  v1 = v0[3];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void type metadata completion function for PgQuery_RangeTableFuncCol._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
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

uint64_t closure #1 in PgQuery_RangeTableFuncCol.decodeMessage<A>(decoder:)()
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
        break;
      }

      if (result <= 5)
      {
        if (result == 4)
        {
          goto LABEL_18;
        }

LABEL_10:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_21:
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_5;
      }

      if (result == 6)
      {
        goto LABEL_10;
      }

      if (result == 7)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
      goto LABEL_5;
    }

    if (result != 2)
    {
      if (result != 3)
      {
        goto LABEL_5;
      }

LABEL_18:
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      goto LABEL_5;
    }

    type metadata accessor for PgQuery_TypeName(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
    goto LABEL_21;
  }

  return result;
}

uint64_t closure #1 in PgQuery_RangeTableFuncCol.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v38 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v43 = *(Node - 8);
  v44 = Node;
  v10 = *(v43 + 64);
  v11 = MEMORY[0x1EEE9AC00](Node);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - v16;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v19 = *(TypeName - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();

    v45 = v2;
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v45 = v2;
  }

  outlined init with copy of PgQuery_Alias?(v46 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v19 + 48))(v17, 1, TypeName) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v27 = v45;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v17, v22, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
    v27 = v45;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_TypeName);
    if (v27)
    {
      return result;
    }
  }

  v28 = v46;
  v30 = v43;
  v29 = v44;
  v31 = v42;
  if (*(v46 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v27))
  {
    if (*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v27))
    {
      v32 = v27;
      outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr, v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v33 = *(v30 + 48);
      if (v33(v31, 1, v29) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v34 = v31;
        v35 = v40;
        outlined init with take of PgQuery_OidList(v34, v40, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
        if (v27)
        {
          return result;
        }

        v32 = 0;
      }

      v36 = v41;
      outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v33(v36, 1, v29) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v37 = v39;
        outlined init with take of PgQuery_OidList(v36, v39, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
        if (v32)
        {
          return result;
        }
      }

      result = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RangeTableFuncCol.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v85 = *(Node - 8);
  v4 = *(v85 + 64);
  v5 = MEMORY[0x1EEE9AC00](Node);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v77 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v84 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v84);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v77 - v18;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v20 = *(TypeName - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v77 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v77 - v30;
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (v32 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v32 & 1) != 0))
  {
    v77 = v17;
    v78 = v7;
    v86 = a2;
    v34 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
    v35 = *(v28 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v31, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v36 = v86 + v34;
    v37 = v86;
    outlined init with copy of PgQuery_Alias?(v36, &v31[v35], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v38 = *(v20 + 48);
    if (v38(v31, 1, TypeName) == 1)
    {
      v39 = v38(&v31[v35], 1, TypeName);

      if (v39 == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
LABEL_12:
        if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality) != *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) != *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull))
        {
          goto LABEL_14;
        }

        v43 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr;
        v44 = v83;
        v45 = *(v84 + 48);
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v31 = v44;
        outlined init with copy of PgQuery_Alias?(v86 + v43, v44 + v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v46 = v85 + 48;
        v47 = *(v85 + 48);
        v48 = Node;
        if (v47(v31, 1, Node) == 1)
        {
          v49 = v47(&v31[v45], 1, v48);
          v51 = v77;
          v50 = v78;
          if (v49 == 1)
          {
            _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_25:
            v62 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr;
            v63 = *(v84 + 48);
            outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, v51, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            v64 = v86 + v62;
            v65 = v86;
            outlined init with copy of PgQuery_Alias?(v64, v51 + v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v47(v51, 1, v48) == 1)
            {
              if (v47((v51 + v63), 1, v48) == 1)
              {
                _s10Foundation4UUIDVSgWOhTm_0(v51, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_35:
                v75 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

                v76 = *(v65 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

                return v75 == v76;
              }

              goto LABEL_30;
            }

            v66 = v79;
            outlined init with copy of PgQuery_Alias?(v51, v79, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v47((v51 + v63), 1, v48) == 1)
            {
              outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_Node);
LABEL_30:
              v67 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
              v68 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_31:
              _s10Foundation4UUIDVSgWOhTm_0(v51, v67, v68);
              goto LABEL_14;
            }

            outlined init with take of PgQuery_OidList(v51 + v63, v50, type metadata accessor for PgQuery_Node);
            v69 = *(v48 + 20);
            v70 = *(v66 + v69);
            v71 = *(v50 + v69);
            if (v70 != v71)
            {
              v72 = *(v66 + v69);

              v73 = closure #1 in static PgQuery_Node.== infix(_:_:)(v70, v71);

              if (!v73)
              {
                outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
                outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_Node);
                v67 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
                v68 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
                goto LABEL_31;
              }
            }

            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
            v74 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
            outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_Node);
            _s10Foundation4UUIDVSgWOhTm_0(v51, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v74)
            {
              goto LABEL_35;
            }

LABEL_14:

            return 0;
          }
        }

        else
        {
          v52 = v81;
          outlined init with copy of PgQuery_Alias?(v31, v81, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          v53 = v47(&v31[v45], 1, v48);
          v51 = v77;
          v50 = v78;
          if (v53 != 1)
          {
            v85 = v46;
            v54 = &v31[v45];
            v55 = v80;
            outlined init with take of PgQuery_OidList(v54, v80, type metadata accessor for PgQuery_Node);
            v56 = *(v48 + 20);
            v57 = *(v52 + v56);
            v58 = *(v55 + v56);
            if (v57 != v58)
            {

              v59 = closure #1 in static PgQuery_Node.== infix(_:_:)(v57, v58);

              if (!v59)
              {
                outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
                outlined destroy of PgQuery_OidList(v81, type metadata accessor for PgQuery_Node);
                _s10Foundation4UUIDVSgWOhTm_0(v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
                goto LABEL_14;
              }
            }

            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
            v60 = v81;
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
            outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
            _s10Foundation4UUIDVSgWOhTm_0(v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if ((v61 & 1) == 0)
            {
              goto LABEL_14;
            }

            goto LABEL_25;
          }

          outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
        }

        v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
        v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_10:
        _s10Foundation4UUIDVSgWOhTm_0(v31, v40, v41);
        goto LABEL_14;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v31, v27, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if (v38(&v31[v35], 1, TypeName) != 1)
      {
        outlined init with take of PgQuery_OidList(&v31[v35], v23, type metadata accessor for PgQuery_TypeName);

        v42 = specialized static PgQuery_TypeName.== infix(_:_:)(v27, v23);
        outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_TypeName);
        outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_TypeName);
        _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
        if ((v42 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_TypeName);
    }

    v40 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v41 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    goto LABEL_10;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTableFuncCol(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFuncCol and conformance PgQuery_RangeTableFuncCol, type metadata accessor for PgQuery_RangeTableFuncCol);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTableFuncCol(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFuncCol and conformance PgQuery_RangeTableFuncCol, type metadata accessor for PgQuery_RangeTableFuncCol);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTableFuncCol()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFuncCol and conformance PgQuery_RangeTableFuncCol, type metadata accessor for PgQuery_RangeTableFuncCol);

  return Message.hash(into:)();
}

uint64_t PgQuery_TypeName.decodeMessage<A>(decoder:)()
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
          if (result == 5)
          {
            goto LABEL_4;
          }

LABEL_18:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 8)
        {
          goto LABEL_18;
        }
      }

      else if (result > 2)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_TypeName.traverse<A>(visitor:)()
{
  if (*(*v0 + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + 8))
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + 12) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + 13) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  if (*(*(v0 + 16) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    if (!*(v0 + 24))
    {
      goto LABEL_15;
    }

LABEL_14:
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (*(v0 + 24))
  {
    goto LABEL_14;
  }

LABEL_15:
  if (!*(*(v0 + 32) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 40) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for PgQuery_TypeName(0) + 48);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_TypeName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = v2;
  *(a2 + 40) = 0;
  v3 = a2 + *(a1 + 48);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TypeName(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TypeName(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TypeName()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);

  return Message.hash(into:)();
}

uint64_t PgQuery_ColumnDef._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v0 + v1, 1, 1, TypeName);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType) = 0;
  v3 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v0 + v4, 1, 1, Node);
  v6(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, 1, 1, Node);
  v7 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v8, 1, 1, RangeVar);
  v10 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  (*(*(CollateClause - 8) + 56))(v0 + v11, 1, 1, CollateClause);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions) = v13;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  return v0;
}

uint64_t PgQuery_ColumnDef._StorageClass.deinit()
{
  v1 = *(v0 + 24);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage + 8);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity + 8);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated + 8);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

  v6 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions);

  return v0;
}

void type metadata completion function for PgQuery_ColumnDef._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_CollateClause?, type metadata accessor for PgQuery_CollateClause, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t closure #1 in PgQuery_ColumnDef.decodeMessage<A>(decoder:)()
{
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    v3 = v9;
    v4 = v8;
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v5 = v4;
          v6 = v3;
          goto LABEL_5;
        case 2:
          type metadata accessor for PgQuery_TypeName(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
          goto LABEL_28;
        case 3:
          v5 = v4;
          v6 = v3;
          goto LABEL_15;
        case 4:
          v5 = v4;
          v6 = v3;
          goto LABEL_22;
        case 5:
          v5 = v4;
          v6 = v3;
          goto LABEL_22;
        case 6:
          v5 = v4;
          v6 = v3;
LABEL_22:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 7:
          v5 = v4;
          v6 = v3;
          goto LABEL_5;
        case 8:
        case 9:
          v7 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          goto LABEL_27;
        case 10:
          v5 = v4;
          v6 = v3;
          goto LABEL_5;
        case 11:
          v7 = v0;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
          goto LABEL_27;
        case 12:
          v5 = v4;
          v6 = v3;
LABEL_5:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 13:
          v7 = v0;
          type metadata accessor for PgQuery_CollateClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause);
LABEL_27:
          v0 = v7;
LABEL_28:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_29;
        case 14:
          v6 = v3;
          v5 = v4;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 15:
        case 16:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
LABEL_29:
          v6 = v9;
          v5 = v8;
          break;
        case 17:
          v5 = v4;
          v6 = v3;
LABEL_15:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        default:
          v5 = v4;
          v6 = v3;
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
      v3 = v6;
      v4 = v5;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_ColumnDef.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v68 - v6;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  v69 = *(CollateClause - 8);
  v7 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](CollateClause);
  v68 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v77 = &v68 - v11;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v71 = *(RangeVar - 8);
  v12 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v70 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v68 - v18;
  Node = type metadata accessor for PgQuery_Node(0);
  v20 = *(Node - 8);
  v78 = Node;
  v79 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](Node);
  v72 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v68 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v68 - v27;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v30 = *(TypeName - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a1;
  v34 = *(a1 + 16);
  v35 = *(a1 + 24);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v2)
    {
    }
  }

  v38 = v82;
  outlined init with copy of PgQuery_Alias?(v82 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v28, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v30 + 48))(v28, 1, TypeName) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v28, v33, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      v39 = type metadata accessor for PgQuery_TypeName;
LABEL_11:
      v40 = v39;
      v41 = v33;
      return outlined destroy of PgQuery_OidList(v41, v40);
    }

    outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_TypeName);
  }

  v42 = v80;
  v43 = RangeVar;
  if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }
  }

  if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }
  }

  if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }
  }

  if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }
  }

  v44 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage);
  v45 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage + 8);
  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v2)
    {
    }
  }

  outlined init with copy of PgQuery_Alias?(v82 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault, v42, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v47 = *(v79 + 48);
  v79 += 48;
  if (v47(v42, 1, v78) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v42, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_33;
  }

  v33 = v75;
  outlined init with take of PgQuery_OidList(v42, v75, type metadata accessor for PgQuery_Node);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  if (v2)
  {
    v39 = type metadata accessor for PgQuery_Node;
    goto LABEL_11;
  }

  outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
  v43 = RangeVar;
LABEL_33:
  v48 = v76;
  outlined init with copy of PgQuery_Alias?(v82 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, v76, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v49 = v47(v48, 1, v78);
  v50 = v77;
  if (v49 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_38;
  }

  v51 = v72;
  outlined init with take of PgQuery_OidList(v48, v72, type metadata accessor for PgQuery_Node);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  if (v2)
  {
    v40 = type metadata accessor for PgQuery_Node;
    v41 = v51;
    return outlined destroy of PgQuery_OidList(v41, v40);
  }

  outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
LABEL_38:
  v52 = *(v82 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity + 8);
  v53 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v53 = *(v82 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity) & 0xFFFFFFFFFFFFLL;
  }

  v55 = v73;
  v54 = CollateClause;
  if (v53)
  {
    v56 = *(v82 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity + 8);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v2)
    {
    }
  }

  v57 = v82;
  outlined init with copy of PgQuery_Alias?(v82 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence, v50, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v71 + 48))(v50, 1, v43) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    v58 = v50;
    v59 = v70;
    outlined init with take of PgQuery_OidList(v58, v70, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_RangeVar);
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  v60 = *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated);
  v61 = *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated + 8);
  v62 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v62 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (v62)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();

    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  v63 = v82;
  outlined init with copy of PgQuery_Alias?(v82 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v55, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if ((*(v69 + 48))(v55, 1, v54) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v55, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
    v64 = v2;
  }

  else
  {
    v65 = v55;
    v66 = v68;
    outlined init with take of PgQuery_OidList(v65, v68, type metadata accessor for PgQuery_CollateClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause);
    v64 = v2;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_CollateClause);
    if (v2)
    {
      return result;
    }
  }

  if (!*(v63 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v64))
  {
    v67 = v64;
    if (*(*(v63 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

      if (v64)
      {
        return result;
      }

      v67 = 0;
    }

    if (!*(*(v82 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v67))
    {
      result = *(v82 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ColumnDef.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  v126 = *(CollateClause - 8);
  v127 = CollateClause;
  v5 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](CollateClause);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v123 = &v120 - v10;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMR);
  v11 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v13 = &v120 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v131 = *(RangeVar - 8);
  v132 = RangeVar;
  v15 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v124 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v128 = &v120 - v19;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v20 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v120 - v21;
  Node = type metadata accessor for PgQuery_Node(0);
  v139 = *(Node - 8);
  v140 = Node;
  v23 = *(v139 + 64);
  v24 = MEMORY[0x1EEE9AC00](Node);
  v129 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v135 = &v120 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v134 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v137 = &v120 - v31;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v32 = *(*(v138 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v138);
  v136 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v141 = &v120 - v35;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v37 = *(TypeName - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v40 = &v120 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v120 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v120 - v47;
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (v49 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v49 & 1) != 0))
  {
    v121 = v7;
    v122 = v13;
    v142 = a2;
    v51 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
    v52 = *(v45 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v48, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v53 = v142 + v51;
    v54 = v142;
    outlined init with copy of PgQuery_Alias?(v53, &v48[v52], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v55 = *(v37 + 48);
    if (v55(v48, 1, TypeName) == 1)
    {
      v56 = v55(&v48[v52], 1, TypeName);

      if (v56 == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
        goto LABEL_12;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v48, v44, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if (v55(&v48[v52], 1, TypeName) != 1)
      {
        outlined init with take of PgQuery_OidList(&v48[v52], v40, type metadata accessor for PgQuery_TypeName);

        v60 = specialized static PgQuery_TypeName.== infix(_:_:)(v44, v40);
        outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_TypeName);
        outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_TypeName);
        _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
        if ((v60 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_12:
        if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType) || (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage + 8) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_16;
        }

        v61 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault;
        v62 = v138;
        v63 = *(v138 + 48);
        v64 = v141;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault, v141, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v65 = v64;
        outlined init with copy of PgQuery_Alias?(v54 + v61, v64 + v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v66 = v140;
        v67 = *(v139 + 48);
        if (v67(v65, 1, v140) == 1)
        {
          if (v67(v65 + v63, 1, v66) != 1)
          {
            goto LABEL_35;
          }

          _s10Foundation4UUIDVSgWOhTm_0(v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v68 = v137;
          outlined init with copy of PgQuery_Alias?(v65, v137, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v67(v65 + v63, 1, v66) == 1)
          {
            v69 = v68;
            goto LABEL_34;
          }

          v70 = v135;
          outlined init with take of PgQuery_OidList(v65 + v63, v135, type metadata accessor for PgQuery_Node);
          v71 = *(v66 + 20);
          v72 = *(v68 + v71);
          v73 = *(v70 + v71);
          if (v72 != v73)
          {

            v74 = closure #1 in static PgQuery_Node.== infix(_:_:)(v72, v73);

            if (!v74)
            {
              outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
              outlined destroy of PgQuery_OidList(v137, type metadata accessor for PgQuery_Node);
              v57 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
              v58 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
              v59 = v141;
              goto LABEL_10;
            }
          }

          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
          v75 = v137;
          v76 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v141, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v76 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v77 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault;
        v78 = *(v62 + 48);
        v79 = v136;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, v136, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v65 = v79;
        outlined init with copy of PgQuery_Alias?(v54 + v77, v79 + v78, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v67(v79, 1, v66) == 1)
        {
          if (v67(v79 + v78, 1, v66) == 1)
          {
            _s10Foundation4UUIDVSgWOhTm_0(v79, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            goto LABEL_39;
          }

LABEL_35:
          v57 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
          v58 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
          v59 = v65;
          goto LABEL_10;
        }

        v80 = v79;
        v81 = v134;
        outlined init with copy of PgQuery_Alias?(v80, v134, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v67(v65 + v78, 1, v66) != 1)
        {
          v82 = v129;
          outlined init with take of PgQuery_OidList(v65 + v78, v129, type metadata accessor for PgQuery_Node);
          v83 = *(v66 + 20);
          v84 = *(v81 + v83);
          v85 = *(v82 + v83);
          if (v84 != v85)
          {
            v86 = *(v81 + v83);

            v87 = closure #1 in static PgQuery_Node.== infix(_:_:)(v84, v85);

            if (!v87)
            {
              outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_Node);
              outlined destroy of PgQuery_OidList(v81, type metadata accessor for PgQuery_Node);
              v57 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
              v58 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
              v59 = v136;
              goto LABEL_10;
            }
          }

          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
          v88 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v81, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v136, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v88 & 1) == 0)
          {
            goto LABEL_16;
          }

LABEL_39:
          if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity + 8) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_16;
          }

          v89 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence;
          v90 = *(v130 + 48);
          v91 = v133;
          outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence, v133, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
          outlined init with copy of PgQuery_Alias?(v54 + v89, v91 + v90, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
          v92 = v132;
          v93 = *(v131 + 48);
          if (v93(v91, 1, v132) == 1)
          {
            if (v93(v91 + v90, 1, v92) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v91, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_51:
              if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated + 8) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_16;
              }

              v98 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
              v99 = *(v125 + 48);
              v91 = v122;
              outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v122, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
              outlined init with copy of PgQuery_Alias?(v54 + v98, v91 + v99, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
              v100 = v127;
              v101 = *(v126 + 48);
              if (v101(v91, 1, v127) == 1)
              {
                if (v101(v91 + v99, 1, v100) == 1)
                {
                  _s10Foundation4UUIDVSgWOhTm_0(v91, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
LABEL_64:
                  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) == *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid))
                  {
                    v112 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);
                    v113 = *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

                    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v112, v113);

                    if (NodeV_Tt1g5)
                    {
                      v115 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions);
                      v116 = *(v142 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions);

                      v117 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v115, v116);

                      if (v117)
                      {
                        v118 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

                        v119 = *(v142 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

                        return v118 == v119;
                      }
                    }
                  }

                  goto LABEL_16;
                }

                goto LABEL_59;
              }

              v102 = v123;
              outlined init with copy of PgQuery_Alias?(v91, v123, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
              if (v101(v91 + v99, 1, v100) == 1)
              {
                outlined destroy of PgQuery_OidList(v102, type metadata accessor for PgQuery_CollateClause);
                v91 = v122;
LABEL_59:
                v57 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMd;
                v58 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMR;
                goto LABEL_60;
              }

              v103 = v100;
              v104 = v121;
              outlined init with take of PgQuery_OidList(&v122[v99], v121, type metadata accessor for PgQuery_CollateClause);
              v105 = *(v103 + 20);
              v106 = *(v102 + v105);
              v107 = *(v104 + v105);
              if (v106 == v107 || (v108 = *(v102 + v105), , , v109 = closure #1 in static PgQuery_CollateClause.== infix(_:_:)(v106, v107), , , v109))
              {
                type metadata accessor for UnknownStorage();
                lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
                v110 = v121;
                v111 = dispatch thunk of static Equatable.== infix(_:_:)();
                outlined destroy of PgQuery_OidList(v110, type metadata accessor for PgQuery_CollateClause);
                outlined destroy of PgQuery_OidList(v102, type metadata accessor for PgQuery_CollateClause);
                _s10Foundation4UUIDVSgWOhTm_0(v122, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
                if (v111)
                {
                  goto LABEL_64;
                }

LABEL_16:

                return 0;
              }

              outlined destroy of PgQuery_OidList(v121, type metadata accessor for PgQuery_CollateClause);
              outlined destroy of PgQuery_OidList(v102, type metadata accessor for PgQuery_CollateClause);
              v57 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd;
              v58 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR;
              v59 = v122;
LABEL_10:
              _s10Foundation4UUIDVSgWOhTm_0(v59, v57, v58);
              goto LABEL_16;
            }
          }

          else
          {
            v94 = v128;
            outlined init with copy of PgQuery_Alias?(v91, v128, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
            if (v93(v91 + v90, 1, v92) != 1)
            {
              v95 = v91 + v90;
              v96 = v124;
              outlined init with take of PgQuery_OidList(v95, v124, type metadata accessor for PgQuery_RangeVar);
              v97 = specialized static PgQuery_RangeVar.== infix(_:_:)(v94, v96);
              outlined destroy of PgQuery_OidList(v96, type metadata accessor for PgQuery_RangeVar);
              outlined destroy of PgQuery_OidList(v94, type metadata accessor for PgQuery_RangeVar);
              _s10Foundation4UUIDVSgWOhTm_0(v91, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
              if ((v97 & 1) == 0)
              {
                goto LABEL_16;
              }

              goto LABEL_51;
            }

            outlined destroy of PgQuery_OidList(v94, type metadata accessor for PgQuery_RangeVar);
          }

          v57 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
          v58 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_60:
          v59 = v91;
          goto LABEL_10;
        }

        v69 = v81;
LABEL_34:
        outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
        goto LABEL_35;
      }

      outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_TypeName);
    }

    v57 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v58 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v59 = v48;
    goto LABEL_10;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ColumnDef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnDef and conformance PgQuery_ColumnDef, type metadata accessor for PgQuery_ColumnDef);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ColumnDef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnDef and conformance PgQuery_ColumnDef, type metadata accessor for PgQuery_ColumnDef);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ColumnDef()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnDef and conformance PgQuery_ColumnDef, type metadata accessor for PgQuery_ColumnDef);

  return Message.hash(into:)();
}

uint64_t PgQuery_IndexElem._StorageClass.__deallocating_deinit()
{
  v1 = v0[3];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);

  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

void type metadata completion function for PgQuery_IndexElem._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_IndexElem.decodeMessage<A>(decoder:)()
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
          goto LABEL_21;
        }

        if (result == 7)
        {
          v3 = v0;
          lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir();
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 8)
        {
          v3 = v0;
          lazy protocol witness table accessor for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls();
          goto LABEL_5;
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
LABEL_21:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            goto LABEL_6;
          }

LABEL_22:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_6;
        }

        if (result == 1)
        {
          goto LABEL_22;
        }

        if (result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_IndexElem.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v2))
  {
    outlined init with copy of PgQuery_Alias?(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v9 + 48))(v7, 1, Node) == 1)
    {
      result = _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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

    v17 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname + 8);
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname) & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (v19 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v2))
    {
      if (!*(*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v2))
      {
        if (!*(*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v2))
        {
          if (!*(*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v2))
          {
            if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering) || (v20 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering + 8), v22 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering), v23 = v20, lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v2))
            {
              if (*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering))
              {
                v21 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering + 8);
                v22 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering);
                v23 = v21;
                lazy protocol witness table accessor for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls();
                return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_IndexElem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v48 = v8;
  v17 = a1;
  v18 = a2;
  v19 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  v20 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v18 + v19, &v16[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) == 1)
  {
    v22 = v21(&v16[v20], 1, Node);

    if (v22 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(&v16[v20], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_9:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_10:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
    goto LABEL_11;
  }

  v26 = v48;
  outlined init with take of PgQuery_OidList(&v16[v20], v48, type metadata accessor for PgQuery_Node);
  v27 = *(Node + 20);
  v28 = *&v12[v27];
  v29 = *(v26 + v27);

  if (v28 != v29)
  {

    v30 = closure #1 in static PgQuery_Node.== infix(_:_:)(v28, v29);

    if (!v30)
    {
      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_10;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v31 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_16:
  if ((*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname) != *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname) || *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname + 8) != *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v32 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);
  v33 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v32, v33);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_11;
  }

  v35 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);
  v36 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);

  v37 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v35, v36);

  if ((v37 & 1) == 0)
  {
    goto LABEL_11;
  }

  v38 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts);
  v39 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts);

  v40 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v38, v39);

  if ((v40 & 1) == 0)
  {
    goto LABEL_11;
  }

  v41 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering);
  v42 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering);
  if (*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering + 8) != 1)
  {
    if (v41 == v42)
    {
      goto LABEL_30;
    }

    goto LABEL_11;
  }

  if (v42 <= 1)
  {
    if (v42)
    {
      if (v41 != 1)
      {
        goto LABEL_11;
      }
    }

    else if (v41)
    {
      goto LABEL_11;
    }
  }

  else if (v42 == 2)
  {
    if (v41 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v42 == 3)
    {
      if (v41 == 3)
      {
        goto LABEL_30;
      }

LABEL_11:

      return 0;
    }

    if (v41 != 4)
    {
      goto LABEL_11;
    }
  }

LABEL_30:
  v43 = v18;
  v44 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering);

  v45 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering);
  v46 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering + 8);

  if (v46 == 1)
  {
    if (v45 > 1)
    {
      if (v45 == 2)
      {
        if (v44 == 2)
        {
          return 1;
        }
      }

      else if (v44 == 3)
      {
        return 1;
      }
    }

    else if (v45)
    {
      if (v44 == 1)
      {
        return 1;
      }
    }

    else if (!v44)
    {
      return 1;
    }

    return 0;
  }

  return v44 == v45;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_IndexElem(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexElem and conformance PgQuery_IndexElem, type metadata accessor for PgQuery_IndexElem);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_IndexElem(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexElem and conformance PgQuery_IndexElem, type metadata accessor for PgQuery_IndexElem);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_IndexElem()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexElem and conformance PgQuery_IndexElem, type metadata accessor for PgQuery_IndexElem);

  return Message.hash(into:)();
}

uint64_t PgQuery_Constraint._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 52) = 0;
  *(v0 + 56) = 0;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  v4 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v6;
  v7 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) = 0;
  v9 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, 1, 1, Node);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v10, 1, 1, RangeVar);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs) = v6;
  v12 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldPktableOid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipValidation) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid) = 0;
  return v0;
}

uint64_t PgQuery_Constraint._StorageClass.deinit()
{
  v1 = *(v0 + 40);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys);

  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including);

  v6 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions);

  v7 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v8 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname + 8);

  v9 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace + 8);

  v10 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v11 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs);

  v12 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs);

  v13 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype + 8);

  v14 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction + 8);

  v15 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction + 8);

  v16 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop);

  return v0;
}

void type metadata completion function for PgQuery_Constraint._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_Constraint.decodeMessage<A>(decoder:)()
{
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    v3 = v6;
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v4 = v3;
          lazy protocol witness table accessor for type PgQuery_ConstrType and conformance PgQuery_ConstrType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 2:
          v4 = v3;
          goto LABEL_31;
        case 3:
          v4 = v3;
          goto LABEL_5;
        case 4:
          v4 = v3;
          goto LABEL_5;
        case 5:
          v4 = v3;
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 6:
          v4 = v3;
          goto LABEL_5;
        case 7:
        case 18:
          v5 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          goto LABEL_24;
        case 8:
          v4 = v3;
          goto LABEL_31;
        case 9:
          v4 = v3;
          goto LABEL_31;
        case 10:
        case 11:
        case 12:
        case 13:
        case 20:
        case 21:
        case 25:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_28;
        case 14:
          v4 = v3;
          goto LABEL_31;
        case 15:
          v4 = v3;
          goto LABEL_31;
        case 16:
          v4 = v3;
          goto LABEL_5;
        case 17:
          v4 = v3;
          goto LABEL_31;
        case 19:
          v5 = v0;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
LABEL_24:
          v0 = v5;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_28:
          v4 = v6;
          break;
        case 22:
          v4 = v3;
          goto LABEL_31;
        case 23:
          v4 = v3;
          goto LABEL_31;
        case 24:
          v4 = v3;
LABEL_31:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 26:
          v4 = v3;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 27:
          v4 = v3;
          goto LABEL_5;
        case 28:
          v4 = v3;
LABEL_5:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
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

uint64_t closure #1 in PgQuery_Constraint.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = &v74 - v5;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v76 = *(RangeVar - 8);
  v6 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v74 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(Node - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](Node);
  v84 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v74 - v20;
  if (*(a1 + 16))
  {
    v21 = *(a1 + 24);
    v82 = *(a1 + 16);
    v83 = v21;
    lazy protocol witness table accessor for type PgQuery_ConstrType and conformance PgQuery_ConstrType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v75 = v8;
    v23 = Node;
  }

  else
  {
    v75 = v8;
    v23 = Node;
  }

  v24 = *(a1 + 40);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  v80 = a1;
  if (v25)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
    }

    a1 = v80;
  }

  if (*(a1 + 48) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    a1 = v80;
  }

  if (*(a1 + 49) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    a1 = v80;
  }

  if (*(a1 + 52))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    a1 = v80;
  }

  if (*(a1 + 56) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v26 = 0;
    a1 = v80;
  }

  else
  {
    v26 = v1;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = *(v16 + 48);
  if (v27(v14, 1, v23) == 1)
  {
    v74 = v27;
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v28 = v75;
  }

  else
  {
    v29 = v14;
    v30 = v81;
    outlined init with take of PgQuery_OidList(v29, v81, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v28 = v75;
    if (v26)
    {
      return outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
    }

    v74 = v27;
    outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
  }

  v31 = v80;
  v32 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr + 8);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr) & 0xFFFFFFFFFFFFLL;
  }

  v34 = v26;
  if (v33)
  {
    v35 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr + 8);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    v36 = v84;
    if (v34)
    {
    }

    v31 = v80;
  }

  else
  {
    v36 = v84;
  }

  v37 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen + 8);
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen) & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v39 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen + 8);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v34)
    {
    }

    v31 = v80;
  }

  if (*(*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v34)
    {
    }

    v36 = v84;
    v31 = v80;
  }

  if (*(*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v34)
    {
    }

    v36 = v84;
    v31 = v80;
  }

  if (*(*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v34)
    {
    }

    v36 = v84;
    v31 = v80;
  }

  if (*(*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v34)
    {
    }

    v36 = v84;
    v31 = v80;
  }

  v40 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname + 8);
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname) & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname + 8);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (!v34)
    {

      v31 = v80;
      goto LABEL_57;
    }
  }

LABEL_57:
  v43 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace + 8);
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace) & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    v45 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace + 8);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v34)
    {
    }

    v31 = v80;
  }

  if (*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v34)
    {
      return result;
    }

    v46 = v79;
    v31 = v80;
  }

  else
  {
    v46 = v79;
  }

  v47 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    v49 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    v84 = v34;
    if (v34)
    {
    }

    v46 = v79;
    v31 = v80;
  }

  else
  {
    v84 = v34;
  }

  v50 = v46;
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v51 = v74(v50, 1, v23);
  v52 = v77;
  v53 = RangeVar;
  if (v51 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v50, v36, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v54 = v84;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v84 = v54;
    if (v54)
    {
      return outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
  }

  outlined init with copy of PgQuery_Alias?(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable, v52, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v76 + 48))(v52, 1, v53) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v52, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v52, v28, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v55 = v84;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v84 = v55;
    if (v55)
    {
      return outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_RangeVar);
    }

    outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_RangeVar);
  }

  v56 = v80;
  if (*(*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v57 = v84;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v84 = v57;
    if (!v57)
    {

      v56 = v80;
      goto LABEL_87;
    }
  }

LABEL_87:
  if (*(*(v56 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v58 = v84;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v84 = v58;
    if (v58)
    {
    }
  }

  v59 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype + 8);
  v60 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v60 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype) & 0xFFFFFFFFFFFFLL;
  }

  if (!v60 || (v61 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype + 8), , v62 = v84, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , (v84 = v62) == 0))
  {
    v63 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction + 8);
    v64 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v64 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction) & 0xFFFFFFFFFFFFLL;
    }

    if (!v64 || (v65 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction + 8), , v66 = v84, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , (v84 = v66) == 0))
    {
      v67 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction + 8);
      v68 = HIBYTE(v67) & 0xF;
      if ((v67 & 0x2000000000000000) == 0)
      {
        v68 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction) & 0xFFFFFFFFFFFFLL;
      }

      if (!v68 || (v69 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction + 8), , v70 = v84, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , (v84 = v70) == 0))
      {
        if (!*(*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , v71 = v84, dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , (v84 = v71) == 0))
        {
          result = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldPktableOid);
          if (!result || (v72 = v84, result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), (v84 = v72) == 0))
          {
            if (*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipValidation) != 1 || (v73 = v84, result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), (v84 = v73) == 0))
            {
              if (*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid) == 1)
              {
                return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_Constraint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v101 = *(RangeVar - 8);
  v4 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v94 - v9;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v10 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v105 = &v94 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](Node);
  v103 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v94 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v94 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v94 - v30;
  v32 = *(a1 + 16);
  v33 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v33)
    {
      case 1:
        if (v32 != 1)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 2:
        if (v32 != 2)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 3:
        if (v32 != 3)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 4:
        if (v32 != 4)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 5:
        if (v32 != 5)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 6:
        if (v32 != 6)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 7:
        if (v32 != 7)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 8:
        if (v32 != 8)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 9:
        if (v32 != 9)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 10:
        if (v32 != 10)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 11:
        if (v32 != 11)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 12:
        if (v32 != 12)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 13:
        if (v32 != 13)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 14:
        if (v32 != 14)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      default:
        if (!v32)
        {
          goto LABEL_6;
        }

        goto LABEL_50;
    }
  }

  if (v32 != v33)
  {
    goto LABEL_50;
  }

LABEL_6:
  v99 = v29;
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 48) == *(a2 + 48) && *(a1 + 49) == *(a2 + 49) && *(a1 + 52) == *(a2 + 52) && *(a1 + 56) == *(a2 + 56))
  {
    v97 = v6;
    v98 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr;
    v34 = *(v26 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr, v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v35 = a2 + v98;
    v98 = v34;
    outlined init with copy of PgQuery_Alias?(v35, &v31[v34], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v38 = *(v13 + 48);
    v37 = v13 + 48;
    v36 = v38;
    if (v38(v31, 1, Node) == 1)
    {
      v95 = v36;
      v96 = v37;
      v39 = v36(&v31[v98], 1, Node);

      if (v39 == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        goto LABEL_55;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v31, v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v36(&v31[v98], 1, Node) != 1)
      {
        v95 = v36;
        v96 = v37;
        outlined init with take of PgQuery_OidList(&v31[v98], v18, type metadata accessor for PgQuery_Node);
        v45 = *(Node + 20);
        v46 = *&v25[v45];
        v47 = *&v18[v45];

        if (v46 == v47 || (, , LODWORD(v98) = closure #1 in static PgQuery_Node.== infix(_:_:)(v46, v47), , , (v98 & 1) != 0))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
          v48 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v48 & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_55:
          if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_49;
          }

          if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_49;
          }

          v49 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys);
          v50 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys);

          NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v49, v50);

          if ((NodeV_Tt1g5 & 1) == 0)
          {
            goto LABEL_49;
          }

          v52 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including);
          v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including);

          v54 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v52, v53);

          if ((v54 & 1) == 0)
          {
            goto LABEL_49;
          }

          v55 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions);
          v56 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions);

          v57 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v55, v56);

          if ((v57 & 1) == 0)
          {
            goto LABEL_49;
          }

          v58 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
          v59 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

          v60 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v58, v59);

          if ((v60 & 1) == 0)
          {
            goto LABEL_49;
          }

          if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_49;
          }

          if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) || (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_49;
          }

          v61 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
          v62 = *(v26 + 48);
          v63 = v99;
          outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v99, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          outlined init with copy of PgQuery_Alias?(a2 + v61, v63 + v62, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v95(v63, 1, Node) == 1)
          {
            if (v95(v99 + v62, 1, Node) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v99, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_85:
              v73 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable;
              v74 = *(v100 + 48);
              v75 = v105;
              outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable, v105, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
              outlined init with copy of PgQuery_Alias?(a2 + v73, v75 + v74, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
              v76 = *(v101 + 48);
              if (v76(v75, 1, RangeVar) == 1)
              {
                if (v76(v105 + v74, 1, RangeVar) == 1)
                {
                  _s10Foundation4UUIDVSgWOhTm_0(v105, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_92:
                  v83 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs);
                  v84 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs);

                  v85 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v83, v84);

                  if (v85)
                  {
                    v86 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs);
                    v87 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs);

                    v88 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v86, v87);

                    if (v88 & 1) != 0 && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
                    {
                      v89 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop);
                      v90 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop);

                      v91 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v89, v90);

                      if ((v91 & 1) != 0 && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldPktableOid) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldPktableOid) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipValidation) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipValidation))
                      {
                        v92 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid);

                        v93 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid);

                        v43 = v92 ^ v93 ^ 1;
                        return v43 & 1;
                      }
                    }
                  }

                  goto LABEL_49;
                }
              }

              else
              {
                v77 = v105;
                outlined init with copy of PgQuery_Alias?(v105, v102, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
                if (v76(v77 + v74, 1, RangeVar) != 1)
                {
                  v78 = v105;
                  v79 = v105 + v74;
                  v80 = v97;
                  outlined init with take of PgQuery_OidList(v79, v97, type metadata accessor for PgQuery_RangeVar);
                  v81 = v102;
                  v82 = specialized static PgQuery_RangeVar.== infix(_:_:)(v102, v80);
                  outlined destroy of PgQuery_OidList(v80, type metadata accessor for PgQuery_RangeVar);
                  outlined destroy of PgQuery_OidList(v81, type metadata accessor for PgQuery_RangeVar);
                  _s10Foundation4UUIDVSgWOhTm_0(v78, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
                  if (v82)
                  {
                    goto LABEL_92;
                  }

LABEL_49:

                  goto LABEL_50;
                }

                outlined destroy of PgQuery_OidList(v102, type metadata accessor for PgQuery_RangeVar);
              }

              v40 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
              v41 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
              v42 = v105;
LABEL_48:
              _s10Foundation4UUIDVSgWOhTm_0(v42, v40, v41);
              goto LABEL_49;
            }
          }

          else
          {
            v64 = v99;
            outlined init with copy of PgQuery_Alias?(v99, v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v95(v64 + v62, 1, Node) != 1)
            {
              v65 = v103;
              outlined init with take of PgQuery_OidList(v99 + v62, v103, type metadata accessor for PgQuery_Node);
              v66 = *(Node + 20);
              v67 = *&v23[v66];
              v68 = *(v65 + v66);
              if (v67 != v68)
              {
                v69 = *&v23[v66];

                v70 = closure #1 in static PgQuery_Node.== infix(_:_:)(v67, v68);

                if (!v70)
                {
                  outlined destroy of PgQuery_OidList(v103, type metadata accessor for PgQuery_Node);
                  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
                  v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
                  v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
                  v42 = v99;
                  goto LABEL_48;
                }
              }

              type metadata accessor for UnknownStorage();
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
              v71 = v103;
              v72 = dispatch thunk of static Equatable.== infix(_:_:)();
              outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Node);
              outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
              _s10Foundation4UUIDVSgWOhTm_0(v99, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
              if ((v72 & 1) == 0)
              {
                goto LABEL_49;
              }

              goto LABEL_85;
            }

            outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
          }

          v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
          v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
          v42 = v99;
          goto LABEL_48;
        }

        outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_47:
        v42 = v31;
        goto LABEL_48;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    }

    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_47;
  }

LABEL_50:
  v43 = 0;
  return v43 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_Constraint(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Constraint and conformance PgQuery_Constraint, type metadata accessor for PgQuery_Constraint);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_Constraint(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Constraint and conformance PgQuery_Constraint, type metadata accessor for PgQuery_Constraint);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_Constraint()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Constraint and conformance PgQuery_Constraint, type metadata accessor for PgQuery_Constraint);

  return Message.hash(into:)();
}

uint64_t PgQuery_DefElem._StorageClass.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void type metadata completion function for PgQuery_DefElem._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_DefElem.decodeMessage<A>(decoder:)()
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
      if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 4:
          lazy protocol witness table accessor for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 5:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
      }
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_DefElem.traverse<A>(visitor:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  Node = type metadata accessor for PgQuery_Node(0);
  v7 = *(Node - 8);
  v8 = *(v7 + 64);
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
    v15 = a1[5];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = a1[4] & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (v17 = a1[5], , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v1))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v7 + 48))(v6, 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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

      if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction) || (v18 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction + 8), v19 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction), v20 = v18, lazy protocol witness table accessor for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
      {
        result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_DefElem.== infix(_:_:)(void *a1, void *a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v35 = v8;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, Node) == 1)
  {
    v20 = v19(&v16[v18], 1, Node);

    if (v20 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v19(&v16[v18], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_12:
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v22 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_13:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v21, v22);
    goto LABEL_14;
  }

  v24 = v35;
  outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
  v25 = *(Node + 20);
  v26 = *&v12[v25];
  v27 = *(v24 + v25);

  if (v26 != v27)
  {

    v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v26, v27);

    if (!v28)
    {
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v22 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_13;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_19:
  v30 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction);
  v31 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction + 8) == 1)
  {
    if (v31 <= 1)
    {
      if (v31)
      {
        if (v30 == 1)
        {
          goto LABEL_26;
        }
      }

      else if (!v30)
      {
        goto LABEL_26;
      }
    }

    else if (v31 == 2)
    {
      if (v30 == 2)
      {
        goto LABEL_26;
      }
    }

    else if (v31 == 3)
    {
      if (v30 == 3)
      {
        goto LABEL_26;
      }
    }

    else if (v30 == 4)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (v30 != v31)
  {
LABEL_14:

    return 0;
  }

LABEL_26:
  v32 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v33 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v32 == v33;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DefElem(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefElem and conformance PgQuery_DefElem, type metadata accessor for PgQuery_DefElem);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DefElem(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefElem and conformance PgQuery_DefElem, type metadata accessor for PgQuery_DefElem);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DefElem()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefElem and conformance PgQuery_DefElem, type metadata accessor for PgQuery_DefElem);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTblEntry._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 28) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample;
  TableSampleClause = type metadata accessor for PgQuery_TableSampleClause(0);
  (*(*(TableSampleClause - 8) + 56))(v0 + v1, 1, 1, TableSampleClause);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
  Query = type metadata accessor for PgQuery_Query(0);
  (*(*(Query - 8) + 56))(v0 + v3, 1, 1, Query);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier) = 0;
  v5 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc;
  TableFunc = type metadata accessor for PgQuery_TableFunc(0);
  (*(*(TableFunc - 8) + 56))(v0 + v7, 1, 1, TableFunc);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) = v6;
  v9 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations) = v6;
  v10 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v13 = *(*(Alias - 8) + 56);
  v13(v0 + v11, 1, 1, Alias);
  v13(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref, 1, 1, Alias);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals) = v6;
  return v0;
}

uint64_t PgQuery_RangeTblEntry._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample;
  TableSampleClause = type metadata accessor for PgQuery_TableSampleClause(0);
  (*(*(TableSampleClause - 8) + 56))(v1 + v3, 1, 1, TableSampleClause);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
  v44 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
  Query = type metadata accessor for PgQuery_Query(0);
  (*(*(Query - 8) + 56))(v1 + v5, 1, 1, Query);
  v42 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier) = 0;
  v7 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype;
  *v7 = 0;
  *(v7 + 8) = 1;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols) = 0;
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars) = MEMORY[0x1E69E7CC0];
  v45 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols) = v8;
  v47 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols) = v8;
  v49 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions) = v8;
  v51 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc;
  v50 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc;
  TableFunc = type metadata accessor for PgQuery_TableFunc(0);
  (*(*(TableFunc - 8) + 56))(v1 + v9, 1, 1, TableFunc);
  v48 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) = v8;
  v11 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v54 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup) = 0;
  v53 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference) = 0;
  v52 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes) = v8;
  v55 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods) = v8;
  v56 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations) = v8;
  v12 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v65 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples) = 0;
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  v64 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v15 = *(*(Alias - 8) + 56);
  v15(v1 + v13, 1, 1, Alias);
  v63 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref;
  v15(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref, 1, 1, Alias);
  v62 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral) = 0;
  v61 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh) = 0;
  v60 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl) = 0;
  v59 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms) = 0;
  v58 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser) = 0;
  v57 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols) = v8;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols) = v8;
  v66 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols) = v8;
  v67 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols) = v8;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals) = v8;
  v18 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v18;
  *(v1 + 28) = *(a1 + 28);
  v19 = *(a1 + 40);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = v19;
  *(v1 + 48) = *(a1 + 48);
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample;

  outlined assign with copy of PgQuery_Node?(a1 + v20, v1 + v46, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, v1 + v44, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  *(v1 + v42) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier);
  v21 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype + 8);
  *v7 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype);
  *(v7 + 8) = v21;
  *(v1 + v43) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols);
  v22 = *(v1 + v41);
  *(v1 + v41) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars);

  v23 = *(v1 + v45);
  *(v1 + v45) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols);

  v24 = *(v1 + v47);
  *(v1 + v47) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols);

  v25 = *(v1 + v49);
  *(v1 + v49) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions);

  *(v1 + v51) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc, v1 + v50, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  v26 = *(v1 + v48);
  *(v1 + v48) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);

  v27 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename + 8);
  v28 = v11[1];
  *v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename);
  v11[1] = v27;

  *(v1 + v54) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup);
  *(v1 + v53) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference);
  v29 = *(v1 + v52);
  *(v1 + v52) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes);

  v30 = *(v1 + v55);
  *(v1 + v55) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods);

  v31 = *(v1 + v56);
  *(v1 + v56) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations);

  v32 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname + 8);
  v33 = v12[1];
  *v12 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname);
  v12[1] = v32;

  *(v1 + v65) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v1 + v64, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref, v1 + v63, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  *(v1 + v62) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral);
  *(v1 + v61) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh);
  *(v1 + v60) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl);
  *(v1 + v59) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms);
  *(v1 + v58) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser);
  v34 = *(v1 + v57);
  *(v1 + v57) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols);

  v35 = *(v1 + v16);
  *(v1 + v16) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols);

  v36 = *(v1 + v66);
  *(v1 + v66) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols);

  v37 = *(v1 + v67);
  *(v1 + v67) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols);

  v38 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals);

  v39 = *(v1 + v17);
  *(v1 + v17) = v38;

  return v1;
}

uint64_t PgQuery_RangeTblEntry._StorageClass.deinit()
{
  v1 = *(v0 + 40);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols);

  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  v6 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);

  v7 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes);

  v9 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods);

  v10 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations);

  v11 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname + 8);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v12 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols);

  v13 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols);

  v14 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols);

  v15 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols);

  v16 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals);

  return v0;
}

uint64_t PgQuery_TableFunc._StorageClass.__deallocating_deinit(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void type metadata completion function for PgQuery_RangeTblEntry._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TableSampleClause?, type metadata accessor for PgQuery_TableSampleClause, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Query?, type metadata accessor for PgQuery_Query, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TableFunc?, type metadata accessor for PgQuery_TableFunc, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Alias?, type metadata accessor for PgQuery_Alias, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t closure #1 in PgQuery_RangeTblEntry.decodeMessage<A>(decoder:)()
{
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    v3 = v7;
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v5 = v3;
          v6 = v0;
          lazy protocol witness table accessor for type PgQuery_RTEKind and conformance PgQuery_RTEKind();
          goto LABEL_20;
        case 2:
          v5 = v3;
          goto LABEL_40;
        case 3:
          v5 = v3;
          goto LABEL_35;
        case 4:
          v5 = v3;
          goto LABEL_29;
        case 5:
          v4 = v0;
          type metadata accessor for PgQuery_TableSampleClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableSampleClause and conformance PgQuery_TableSampleClause, type metadata accessor for PgQuery_TableSampleClause);
          goto LABEL_5;
        case 6:
          v4 = v0;
          type metadata accessor for PgQuery_Query(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query);
          goto LABEL_5;
        case 7:
          v5 = v3;
          goto LABEL_42;
        case 8:
          v5 = v3;
          v6 = v0;
          lazy protocol witness table accessor for type PgQuery_JoinType and conformance PgQuery_JoinType();
LABEL_20:
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 9:
          v5 = v3;
LABEL_29:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 10:
        case 11:
        case 12:
        case 13:
        case 16:
        case 20:
        case 21:
        case 22:
        case 36:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_6;
        case 14:
          v5 = v3;
          goto LABEL_42;
        case 15:
          v4 = v0;
          type metadata accessor for PgQuery_TableFunc(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableFunc and conformance PgQuery_TableFunc, type metadata accessor for PgQuery_TableFunc);
          goto LABEL_5;
        case 17:
          v5 = v3;
          goto LABEL_35;
        case 18:
          v5 = v3;
          goto LABEL_40;
        case 19:
          v5 = v3;
          goto LABEL_42;
        case 23:
          v5 = v3;
LABEL_35:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 24:
          v5 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 25:
        case 26:
          v4 = v0;
          type metadata accessor for PgQuery_Alias(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
LABEL_5:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_6:
          v5 = v7;
          break;
        case 27:
          v5 = v3;
          goto LABEL_42;
        case 28:
          v5 = v3;
          goto LABEL_42;
        case 29:
          v5 = v3;
LABEL_42:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 30:
          v5 = v3;
          goto LABEL_40;
        case 31:
          v5 = v3;
LABEL_40:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 32:
          v5 = v3;
          goto LABEL_33;
        case 33:
          v5 = v3;
          goto LABEL_33;
        case 34:
          v5 = v3;
          goto LABEL_33;
        case 35:
          v5 = v3;
LABEL_33:
          dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
          break;
        default:
          v5 = v3;
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
      v3 = v5;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RangeTblEntry.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v62 - v7;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v64 = *(Alias - 8);
  v8 = *(v64 + 64);
  v9 = MEMORY[0x1EEE9AC00](Alias);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v62 - v14;
  TableFunc = type metadata accessor for PgQuery_TableFunc(0);
  v69 = *(TableFunc - 8);
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](TableFunc);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v74 = &v62 - v19;
  Query = type metadata accessor for PgQuery_Query(0);
  v73 = *(Query - 8);
  v20 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](Query);
  v78 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v62 - v24;
  TableSampleClause = type metadata accessor for PgQuery_TableSampleClause(0);
  v27 = *(TableSampleClause - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](TableSampleClause);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v31 = *(a1 + 24);
    v76 = *(a1 + 16);
    v77 = v31;
    lazy protocol witness table accessor for type PgQuery_RTEKind and conformance PgQuery_RTEKind();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    if (!*(a1 + 28))
    {
      goto LABEL_7;
    }
  }

  else if (!*(a1 + 28))
  {
    goto LABEL_7;
  }

  result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_7:
  v33 = *(a1 + 32);
  v34 = *(a1 + 40);
  v62 = a1;
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  if (*(v62 + 48))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v36 = 0;
  }

  else
  {
    v36 = v1;
  }

  v37 = v62;
  outlined init with copy of PgQuery_Alias?(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample, v25, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  if ((*(v27 + 48))(v25, 1, TableSampleClause) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v25, v30, type metadata accessor for PgQuery_TableSampleClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableSampleClause and conformance PgQuery_TableSampleClause, type metadata accessor for PgQuery_TableSampleClause);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v36)
    {
      v38 = type metadata accessor for PgQuery_TableSampleClause;
      v39 = v30;
      return outlined destroy of PgQuery_OidList(v39, v38);
    }

    outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_TableSampleClause);
  }

  v40 = v74;
  outlined init with copy of PgQuery_Alias?(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, v74, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  v41 = (*(v73 + 48))(v40, 1, Query);
  v42 = v78;
  if (v41 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
    goto LABEL_28;
  }

  outlined init with take of PgQuery_OidList(v40, v78, type metadata accessor for PgQuery_Query);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  if (v36)
  {
    v38 = type metadata accessor for PgQuery_Query;
    v39 = v42;
    return outlined destroy of PgQuery_OidList(v39, v38);
  }

  outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Query);
LABEL_28:
  if (*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v36)
    {
      return result;
    }

    v36 = 0;
  }

  if (*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype))
  {
    v43 = *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype + 8);
    v76 = *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype);
    v77 = v43;
    lazy protocol witness table accessor for type PgQuery_JoinType and conformance PgQuery_JoinType();
    v44 = v36;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v36)
    {
      return result;
    }
  }

  else
  {
    v44 = v36;
  }

  v45 = TableFunc;
  if (*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v44)
    {
      return result;
    }
  }

  if (*(*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v44)
    {
    }
  }

  if (*(*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v44)
    {
    }
  }

  if (!*(*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols) + 16))
  {
    goto LABEL_46;
  }

  type metadata accessor for PgQuery_Node(0);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (v44)
  {
  }

LABEL_46:
  if (*(*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v44)
    {
    }
  }

  v46 = v71;
  if (*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v44)
    {
      return result;
    }
  }

  v47 = v70;
  outlined init with copy of PgQuery_Alias?(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc, v70, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  if ((*(v69 + 48))(v47, 1, v45) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v47, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v47, v46, type metadata accessor for PgQuery_TableFunc);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableFunc and conformance PgQuery_TableFunc, type metadata accessor for PgQuery_TableFunc);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v44)
    {
      return outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_TableFunc);
    }

    outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_TableFunc);
  }

  if (*(*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v44)
    {
    }
  }

  v48 = *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename + 8);
  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename) & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    v50 = *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename + 8);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v44)
    {
    }
  }

  if (*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup))
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v44)
    {
      return result;
    }
  }

  if (*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v44)
    {
      return result;
    }
  }

  if (*(*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v44)
    {
    }
  }

  if (*(*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v44)
    {
    }
  }

  if (!*(*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations) + 16))
  {
    goto LABEL_81;
  }

  type metadata accessor for PgQuery_Node(0);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (v44)
  {
  }

LABEL_81:
  v51 = *(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname + 8);
  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = *(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname) & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
    v53 = *(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname + 8);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v44)
    {
    }
  }

  if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples) == 0.0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v44))
  {
    v54 = v67;
    outlined init with copy of PgQuery_Alias?(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v67, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    v55 = *(v64 + 48);
    if (v55(v54, 1, Alias) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v67, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v67, v65, type metadata accessor for PgQuery_Alias);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      if (v44)
      {
        v56 = v65;
        return outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Alias);
      }

      outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_Alias);
    }

    v57 = v66;
    outlined init with copy of PgQuery_Alias?(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref, v66, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    if (v55(v57, 1, Alias) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v66, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
      goto LABEL_102;
    }

    outlined init with take of PgQuery_OidList(v66, v63, type metadata accessor for PgQuery_Alias);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (!v44)
    {
      outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_Alias);
LABEL_102:
      if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v44))
      {
        if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v44))
        {
          if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v44))
          {
            if (!*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v44))
            {
              result = *(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser);
              if (!result || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v44))
              {
                if (*(*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols) + 16))
                {
                  v58 = *(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols);

                  dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
                  if (v44)
                  {
                  }
                }

                if (*(*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols) + 16))
                {
                  v59 = *(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols);

                  dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
                  if (v44)
                  {
                  }
                }

                if (*(*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols) + 16))
                {
                  v60 = *(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols);

                  dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
                  if (v44)
                  {
                  }
                }

                if (*(*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols) + 16))
                {
                  v61 = *(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols);

                  dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
                  if (v44)
                  {
                  }
                }

                if (*(*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals) + 16))
                {
                  type metadata accessor for PgQuery_Node(0);
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

    v56 = v63;
    return outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Alias);
  }

  return result;
}

uint64_t closure #1 in static PgQuery_RangeTblEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v153 = *(Alias - 8);
  v154 = Alias;
  v5 = *(v153 + 64);
  v6 = MEMORY[0x1EEE9AC00](Alias);
  v150 = (&v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v147 = (&v142 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v148 = (&v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v146 = (&v142 - v13);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  v14 = *(*(v152 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v152);
  v149 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v151 = &v142 - v17;
  TableFunc = type metadata accessor for PgQuery_TableFunc(0);
  v157 = *(TableFunc - 8);
  v18 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](TableFunc);
  v155 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v158 = &v142 - v22;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_TableFuncVSg_ADtMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSg_ADtMR);
  v23 = *(*(v156 - 8) + 64);
  MEMORY[0x1EEE9AC00](v156);
  v160 = &v142 - v24;
  Query = type metadata accessor for PgQuery_Query(0);
  v163 = *(Query - 8);
  v26 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](Query);
  v161 = &v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v162 = &v142 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser08PgQuery_D0VSg_ADtMd, &_s14BiomeSQLParser08PgQuery_D0VSg_ADtMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v164 = &v142 - v33;
  TableSampleClause = type metadata accessor for PgQuery_TableSampleClause(0);
  v35 = *(TableSampleClause - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](TableSampleClause);
  v38 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = &v142 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_TableSampleClauseVSg_ADtMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSg_ADtMR);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v142 - v45;
  v47 = *(a1 + 16);
  v48 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v48 > 4)
    {
      if (v48 <= 6)
      {
        if (v48 == 5)
        {
          if (v47 != 5)
          {
            goto LABEL_67;
          }
        }

        else if (v47 != 6)
        {
          goto LABEL_67;
        }
      }

      else if (v48 == 7)
      {
        if (v47 != 7)
        {
          goto LABEL_67;
        }
      }

      else if (v48 == 8)
      {
        if (v47 != 8)
        {
          goto LABEL_67;
        }
      }

      else if (v47 != 9)
      {
        goto LABEL_67;
      }

      goto LABEL_9;
    }

    if (v48 > 1)
    {
      if (v48 == 2)
      {
        if (v47 != 2)
        {
          goto LABEL_67;
        }
      }

      else if (v48 == 3)
      {
        if (v47 != 3)
        {
          goto LABEL_67;
        }
      }

      else if (v47 != 4)
      {
        goto LABEL_67;
      }

LABEL_9:
      if (*(a1 + 28) != *(a2 + 28) || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
      {
        goto LABEL_67;
      }

      v145 = a2;
      v49 = a1;
      v50 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample;
      v51 = *(v43 + 48);
      v144 = v49;
      outlined init with copy of PgQuery_Alias?(v49 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample, v46, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
      v52 = v145 + v50;
      v53 = v145;
      v143 = v51;
      outlined init with copy of PgQuery_Alias?(v52, &v46[v51], &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
      v54 = *(v35 + 48);
      if (v54(v46, 1, TableSampleClause) == 1)
      {
        v55 = v54(&v46[v143], 1, TableSampleClause);

        v56 = v53;
        if (v55 == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v46, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
          goto LABEL_46;
        }
      }

      else
      {
        outlined init with copy of PgQuery_Alias?(v46, v42, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
        v57 = v143;
        if (v54(&v46[v143], 1, TableSampleClause) != 1)
        {
          outlined init with take of PgQuery_OidList(&v46[v57], v38, type metadata accessor for PgQuery_TableSampleClause);
          v58 = *(TableSampleClause + 20);
          v59 = *&v42[v58];
          v60 = *&v38[v58];

          if (v59 != v60)
          {

            v61 = closure #1 in static PgQuery_TableSampleClause.== infix(_:_:)(v59, v60);

            if ((v61 & 1) == 0)
            {
              outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_TableSampleClause);
              outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_TableSampleClause);
              _s10Foundation4UUIDVSgWOhTm_0(v46, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
              goto LABEL_66;
            }
          }

          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
          v62 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_TableSampleClause);
          outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_TableSampleClause);
          _s10Foundation4UUIDVSgWOhTm_0(v46, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
          v56 = v53;
          if ((v62 & 1) == 0)
          {
LABEL_66:

            goto LABEL_67;
          }

LABEL_46:
          v63 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
          v64 = *(v31 + 48);
          v65 = v164;
          outlined init with copy of PgQuery_Alias?(v144 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, v164, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
          outlined init with copy of PgQuery_Alias?(v56 + v63, v65 + v64, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
          v66 = *(v163 + 48);
          if (v66(v65, 1, Query) == 1)
          {
            if (v66(v65 + v64, 1, Query) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v65, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
              goto LABEL_56;
            }
          }

          else
          {
            v67 = v162;
            outlined init with copy of PgQuery_Alias?(v65, v162, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
            if (v66(v65 + v64, 1, Query) != 1)
            {
              v70 = v65 + v64;
              v71 = v161;
              outlined init with take of PgQuery_OidList(v70, v161, type metadata accessor for PgQuery_Query);
              v72 = *(Query + 20);
              v73 = *(v67 + v72);
              v74 = *(v71 + v72);
              if (v73 == v74 || (v75 = *(v67 + v72), , , v76 = closure #1 in static PgQuery_Query.== infix(_:_:)(v73, v74), , , v76))
              {
                type metadata accessor for UnknownStorage();
                lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
                v77 = dispatch thunk of static Equatable.== infix(_:_:)();
                outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Query);
                outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Query);
                _s10Foundation4UUIDVSgWOhTm_0(v65, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
                if ((v77 & 1) == 0)
                {
                  goto LABEL_66;
                }

LABEL_56:
                v78 = v144;
                if (*(v144 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier) != *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier))
                {
                  goto LABEL_66;
                }

                v79 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype + 8);
                if (!specialized == infix<A>(_:_:)(*(v144 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype), *(v144 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype + 8), *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype)))
                {
                  goto LABEL_66;
                }

                if (*(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols) != *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols))
                {
                  goto LABEL_66;
                }

                v80 = *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars);
                v81 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars);

                NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v80, v81);

                if ((NodeV_Tt1g5 & 1) == 0)
                {
                  goto LABEL_66;
                }

                v83 = *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols);
                v84 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols);

                v85 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v83, v84);

                if ((v85 & 1) == 0)
                {
                  goto LABEL_66;
                }

                v86 = *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols);
                v87 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols);

                v88 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v86, v87);

                if ((v88 & 1) == 0)
                {
                  goto LABEL_66;
                }

                v89 = *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions);
                v90 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions);

                v91 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v89, v90);

                if ((v91 & 1) == 0 || *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality) != *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality))
                {
                  goto LABEL_66;
                }

                v94 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc;
                v95 = *(v156 + 48);
                v96 = v160;
                outlined init with copy of PgQuery_Alias?(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc, v160, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
                outlined init with copy of PgQuery_Alias?(v56 + v94, v96 + v95, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
                v97 = *(v157 + 48);
                if (v97(v96, 1, TableFunc) == 1)
                {
                  if (v97(v160 + v95, 1, TableFunc) == 1)
                  {
                    _s10Foundation4UUIDVSgWOhTm_0(v160, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
LABEL_81:
                    v111 = *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);
                    v112 = *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);

                    v113 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v111, v112);

                    if ((v113 & 1) == 0 || (*(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename) || *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename + 8) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      goto LABEL_66;
                    }

                    if (*(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup))
                    {
                      goto LABEL_66;
                    }

                    if (*(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference))
                    {
                      goto LABEL_66;
                    }

                    v114 = *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes);
                    v115 = *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes);

                    v116 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v114, v115);

                    if ((v116 & 1) == 0)
                    {
                      goto LABEL_66;
                    }

                    v117 = *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods);
                    v118 = *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods);

                    v119 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v117, v118);

                    if ((v119 & 1) == 0)
                    {
                      goto LABEL_66;
                    }

                    v120 = *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations);
                    v121 = *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations);

                    v122 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v120, v121);

                    if ((v122 & 1) == 0)
                    {
                      goto LABEL_66;
                    }

                    if ((*(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname) || *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname + 8) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      goto LABEL_66;
                    }

                    if (*(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples))
                    {
                      goto LABEL_66;
                    }

                    v123 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
                    v124 = v151;
                    v125 = *(v152 + 48);
                    outlined init with copy of PgQuery_Alias?(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v151, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                    outlined init with copy of PgQuery_Alias?(v145 + v123, v124 + v125, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                    v126 = *(v153 + 48);
                    if (v126(v124, 1, v154) == 1)
                    {
                      if (v126(v151 + v125, 1, v154) == 1)
                      {
                        _s10Foundation4UUIDVSgWOhTm_0(v151, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
LABEL_97:
                        v127 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref;
                        v128 = *(v152 + 48);
                        v129 = v149;
                        outlined init with copy of PgQuery_Alias?(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref, v149, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                        outlined init with copy of PgQuery_Alias?(v145 + v127, v129 + v128, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                        if (v126(v129, 1, v154) == 1)
                        {
                          if (v126(v149 + v128, 1, v154) == 1)
                          {
                            _s10Foundation4UUIDVSgWOhTm_0(v149, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
LABEL_100:
                            if (*(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral) == *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral) && *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh) == *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh) && *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl) == *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl) && *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms) == *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms) && *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser) == *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols), *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols), *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols), *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols), *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols)) & 1) != 0)
                            {
                              v130 = *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals);
                              v131 = *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals);

                              v92 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v130, v131);

                              return v92 & 1;
                            }

                            goto LABEL_66;
                          }

                          goto LABEL_123;
                        }

                        v137 = v149;
                        outlined init with copy of PgQuery_Alias?(v149, v148, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                        if (v126(v137 + v128, 1, v154) == 1)
                        {
                          outlined destroy of PgQuery_OidList(v148, type metadata accessor for PgQuery_Alias);
LABEL_123:
                          v99 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
                          v100 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
                          v101 = v149;
                          goto LABEL_77;
                        }

                        v138 = v150;
                        outlined init with take of PgQuery_OidList(v149 + v128, v150, type metadata accessor for PgQuery_Alias);
                        if ((*v148 != *v138 || v148[1] != v138[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v148[2], v150[2]) & 1) == 0)
                        {
                          outlined destroy of PgQuery_OidList(v150, type metadata accessor for PgQuery_Alias);
                          outlined destroy of PgQuery_OidList(v148, type metadata accessor for PgQuery_Alias);
                          v99 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
                          v100 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
                          v101 = v149;
                          goto LABEL_77;
                        }

                        v139 = *(v154 + 24);
                        type metadata accessor for UnknownStorage();
                        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
                        v140 = v148;
                        v141 = v150;
                        LOBYTE(v139) = dispatch thunk of static Equatable.== infix(_:_:)();
                        outlined destroy of PgQuery_OidList(v141, type metadata accessor for PgQuery_Alias);
                        outlined destroy of PgQuery_OidList(v140, type metadata accessor for PgQuery_Alias);
                        _s10Foundation4UUIDVSgWOhTm_0(v149, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                        if (v139)
                        {
                          goto LABEL_100;
                        }

                        goto LABEL_66;
                      }

                      goto LABEL_113;
                    }

                    v132 = v151;
                    outlined init with copy of PgQuery_Alias?(v151, v146, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                    if (v126(v132 + v125, 1, v154) == 1)
                    {
                      outlined destroy of PgQuery_OidList(v146, type metadata accessor for PgQuery_Alias);
LABEL_113:
                      v99 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
                      v100 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
                      v101 = v151;
                      goto LABEL_77;
                    }

                    v133 = v147;
                    outlined init with take of PgQuery_OidList(v151 + v125, v147, type metadata accessor for PgQuery_Alias);
                    if (*v146 == *v133 && v146[1] == v133[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v146[2], v147[2]))
                    {
                      v134 = *(v154 + 24);
                      type metadata accessor for UnknownStorage();
                      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
                      v136 = v146;
                      v135 = v147;
                      LOBYTE(v134) = dispatch thunk of static Equatable.== infix(_:_:)();
                      outlined destroy of PgQuery_OidList(v135, type metadata accessor for PgQuery_Alias);
                      outlined destroy of PgQuery_OidList(v136, type metadata accessor for PgQuery_Alias);
                      _s10Foundation4UUIDVSgWOhTm_0(v151, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                      if ((v134 & 1) == 0)
                      {
                        goto LABEL_66;
                      }

                      goto LABEL_97;
                    }

                    outlined destroy of PgQuery_OidList(v147, type metadata accessor for PgQuery_Alias);
                    outlined destroy of PgQuery_OidList(v146, type metadata accessor for PgQuery_Alias);
                    v99 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
                    v100 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
                    v101 = v151;
LABEL_77:
                    _s10Foundation4UUIDVSgWOhTm_0(v101, v99, v100);
                    goto LABEL_66;
                  }
                }

                else
                {
                  v98 = v160;
                  outlined init with copy of PgQuery_Alias?(v160, v158, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
                  if (v97(v98 + v95, 1, TableFunc) != 1)
                  {
                    v102 = v155;
                    outlined init with take of PgQuery_OidList(v160 + v95, v155, type metadata accessor for PgQuery_TableFunc);
                    v103 = *(TableFunc + 20);
                    v104 = *(v158 + v103);
                    v105 = *(v102 + v103);
                    if (v104 == v105 || (v106 = *(v158 + v103), , , v107 = closure #1 in static PgQuery_TableFunc.== infix(_:_:)(v104, v105), , , v107))
                    {
                      type metadata accessor for UnknownStorage();
                      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
                      v108 = v158;
                      v109 = v155;
                      v110 = dispatch thunk of static Equatable.== infix(_:_:)();
                      outlined destroy of PgQuery_OidList(v109, type metadata accessor for PgQuery_TableFunc);
                      outlined destroy of PgQuery_OidList(v108, type metadata accessor for PgQuery_TableFunc);
                      _s10Foundation4UUIDVSgWOhTm_0(v160, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
                      if ((v110 & 1) == 0)
                      {
                        goto LABEL_66;
                      }

                      goto LABEL_81;
                    }

                    outlined destroy of PgQuery_OidList(v155, type metadata accessor for PgQuery_TableFunc);
                    outlined destroy of PgQuery_OidList(v158, type metadata accessor for PgQuery_TableFunc);
                    v99 = &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd;
                    v100 = &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR;
LABEL_76:
                    v101 = v160;
                    goto LABEL_77;
                  }

                  outlined destroy of PgQuery_OidList(v158, type metadata accessor for PgQuery_TableFunc);
                }

                v99 = &_s14BiomeSQLParser17PgQuery_TableFuncVSg_ADtMd;
                v100 = &_s14BiomeSQLParser17PgQuery_TableFuncVSg_ADtMR;
                goto LABEL_76;
              }

              outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Query);
              outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Query);
              v68 = &_s14BiomeSQLParser08PgQuery_D0VSgMd;
              v69 = &_s14BiomeSQLParser08PgQuery_D0VSgMR;
LABEL_52:
              _s10Foundation4UUIDVSgWOhTm_0(v65, v68, v69);
              goto LABEL_66;
            }

            outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Query);
          }

          v68 = &_s14BiomeSQLParser08PgQuery_D0VSg_ADtMd;
          v69 = &_s14BiomeSQLParser08PgQuery_D0VSg_ADtMR;
          goto LABEL_52;
        }

        outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_TableSampleClause);
      }

      _s10Foundation4UUIDVSgWOhTm_0(v46, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSg_ADtMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSg_ADtMR);
      goto LABEL_66;
    }

    if (v48)
    {
      if (v47 != 1)
      {
        goto LABEL_67;
      }

      goto LABEL_9;
    }

    if (!v47)
    {
      goto LABEL_9;
    }
  }

  else if (v47 == v48)
  {
    goto LABEL_9;
  }

LABEL_67:
  v92 = 0;
  return v92 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTblEntry(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblEntry and conformance PgQuery_RangeTblEntry, type metadata accessor for PgQuery_RangeTblEntry);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTblEntry(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblEntry and conformance PgQuery_RangeTblEntry, type metadata accessor for PgQuery_RangeTblEntry);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTblEntry()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblEntry and conformance PgQuery_RangeTblEntry, type metadata accessor for PgQuery_RangeTblEntry);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTblFunction._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes) = v7;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods) = v7;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations) = v7;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams) = v7;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount);
  v12 = *(v1 + v6);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames);

  v13 = *(v1 + v8);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes);

  v14 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods);

  v15 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations);

  v16 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams);

  v17 = *(v1 + v11);
  *(v1 + v11) = v16;

  return v1;
}

uint64_t PgQuery_RangeTblFunction._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations);

  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

uint64_t closure #1 in PgQuery_RangeTblFunction.decodeMessage<A>(decoder:)()
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
        v3 = v0;
        switch(result)
        {
          case 1:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 2:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            goto LABEL_17;
        }
      }

      else
      {
        if (result <= 5)
        {
          v3 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_17:
          v0 = v3;
LABEL_19:
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 6)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          goto LABEL_19;
        }

        if (result == 7)
        {
          dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RangeTblFunction.traverse<A>(visitor:)(uint64_t a1)
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
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v7 + 48))(v5, 1, v12) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v13 = v20;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v5, v10, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v13 = v20;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
    if (v13)
    {
      return result;
    }
  }

  v15 = v19;
  result = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount);
  if (!result || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v13))
  {
    v16 = v13;
    if (*(*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

      if (v13)
      {
        return result;
      }

      v16 = 0;
    }

    if (*(*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

      if (v16)
      {
        return result;
      }

      v16 = 0;
    }

    if (*(*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

      if (v16)
      {
        return result;
      }

      v16 = 0;
    }

    if (!*(*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v16))
    {
      if (*(*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams) + 16))
      {
        v17 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams);

        dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_RangeTblFunction.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, &v46 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
      v26 = v47;
      outlined init with take of PgQuery_OidList(&v16[v18], v47, type metadata accessor for PgQuery_Node);
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
          goto LABEL_11;
        }

LABEL_17:

        v44 = 0;
        return v44 & 1;
      }

      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v24, v25);
      goto LABEL_17;
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
LABEL_11:
  if (*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount))
  {
    goto LABEL_17;
  }

  v32 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames);
  v33 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v32, v33);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_17;
  }

  v35 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes);
  v36 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes);

  v37 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v35, v36);

  if ((v37 & 1) == 0)
  {
    goto LABEL_17;
  }

  v38 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods);
  v39 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods);

  v40 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v38, v39);

  if ((v40 & 1) == 0)
  {
    goto LABEL_17;
  }

  v41 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations);
  v42 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations);

  v43 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v41, v42);

  if ((v43 & 1) == 0)
  {
    goto LABEL_17;
  }

  v44 = _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams), *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams));

  return v44 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTblFunction(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblFunction and conformance PgQuery_RangeTblFunction, type metadata accessor for PgQuery_RangeTblFunction);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTblFunction(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblFunction and conformance PgQuery_RangeTblFunction, type metadata accessor for PgQuery_RangeTblFunction);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTblFunction()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblFunction and conformance PgQuery_RangeTblFunction, type metadata accessor for PgQuery_RangeTblFunction);

  return Message.hash(into:)();
}

uint64_t PgQuery_TableSampleClause.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = *(type metadata accessor for PgQuery_TableSampleClause(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    TableSample = type metadata accessor for PgQuery_TableSampleClause._StorageClass(0);
    v8 = *(TableSample + 48);
    v9 = *(TableSample + 52);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = MEMORY[0x1E69E7CC0];
    v16 = v1;
    v11 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_TableSampleClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v10 + v11, 1, 1, Node);
    *(v10 + 16) = *(v6 + 16);
    *(v10 + 24) = *(v6 + 24);
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_TableSampleClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable;

    v2 = v16;
    outlined assign with copy of PgQuery_Node?(v6 + v13, v10 + v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

    *(v0 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v2)
  {
    while ((v15 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 3:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_TableSampleClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v3))
  {
    v16[1] = a3;
    if (!*(*(a1 + 24) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v3))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_TableSampleClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
  }

  return result;
}

uint64_t closure #1 in static PgQuery_TableSampleClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v34 = v8;
  v17 = *(a1 + 24);
  v18 = *(a2 + 24);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v17, v18);

  if (NodeV_Tt1g5)
  {
    v20 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_TableSampleClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable;
    v21 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_TableSampleClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v20, &v16[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v22 = *(v5 + 48);
    if (v22(v16, 1, Node) == 1)
    {

      if (v22(&v16[v21], 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        return 1;
      }

      goto LABEL_9;
    }

    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v22(&v16[v21], 1, Node) == 1)
    {

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_9:
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_10:
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
        goto LABEL_10;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v32)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TableSampleClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableSampleClause and conformance PgQuery_TableSampleClause, type metadata accessor for PgQuery_TableSampleClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TableSampleClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableSampleClause and conformance PgQuery_TableSampleClause, type metadata accessor for PgQuery_TableSampleClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TableSampleClause()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableSampleClause and conformance PgQuery_TableSampleClause, type metadata accessor for PgQuery_TableSampleClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_WithCheckOption._StorageClass.__deallocating_deinit()
{
  v1 = v0[5];

  v2 = v0[7];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void type metadata completion function for PgQuery_WithCheckOption._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_WithCheckOption.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_5;
        }

        lazy protocol witness table accessor for type PgQuery_WCOKind and conformance PgQuery_WCOKind();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
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
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_WithCheckOption.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  Node = type metadata accessor for PgQuery_Node(0);
  v8 = *(Node - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v12 = *(a1 + 24);
    v20 = *(a1 + 16);
    v21 = v12;
    lazy protocol witness table accessor for type PgQuery_WCOKind and conformance PgQuery_WCOKind();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v22 = v8;
  }

  else
  {
    v22 = v8;
  }

  v14 = *(a1 + 40);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (v16 = *(a1 + 40), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v1))
  {
    v17 = *(a1 + 56);
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (v19 = *(a1 + 56), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v1))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v22 + 48))(v6, 1, Node) == 1)
      {
        result = _s10Foundation4UUIDVSgWOhTm_0(v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        outlined init with take of PgQuery_OidList(v6, v11, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        if (v1)
        {
          return result;
        }
      }

      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cascaded) == 1)
      {
        return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_WithCheckOption.== infix(_:_:)(void *a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = a1[2];
  v18 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (v17 != 2)
        {
          goto LABEL_30;
        }
      }

      else if (v18 == 3)
      {
        if (v17 != 3)
        {
          goto LABEL_30;
        }
      }

      else if (v17 != 4)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (v18)
    {
      if (v17 != 1)
      {
        goto LABEL_30;
      }

LABEL_8:
      if ((a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_30;
      }

      v36 = v8;
      v19 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
      v20 = *(v13 + 48);
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      outlined init with copy of PgQuery_Alias?(a2 + v19, &v16[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v21 = *(v5 + 48);
      if (v21(v16, 1, Node) == 1)
      {
        v22 = v21(&v16[v20], 1, Node);

        if (v22 == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_35:
          v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cascaded);

          v34 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cascaded);

          v25 = v33 ^ v34 ^ 1;
          return v25 & 1;
        }
      }

      else
      {
        outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v21(&v16[v20], 1, Node) != 1)
        {
          v27 = v36;
          outlined init with take of PgQuery_OidList(&v16[v20], v36, type metadata accessor for PgQuery_Node);
          v28 = *(Node + 20);
          v29 = *&v12[v28];
          v30 = *(v27 + v28);

          if (v29 == v30 || (, , v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30), , , v31))
          {
            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
            v32 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
            outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
            _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v32)
            {
              goto LABEL_35;
            }

            goto LABEL_24;
          }

          outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
          v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
          v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_23:
          _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
LABEL_24:

          goto LABEL_30;
        }

        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      }

      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
      goto LABEL_23;
    }

    if (!v17)
    {
      goto LABEL_8;
    }
  }

  else if (v17 == v18)
  {
    goto LABEL_8;
  }

LABEL_30:
  v25 = 0;
  return v25 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_WithCheckOption(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithCheckOption and conformance PgQuery_WithCheckOption, type metadata accessor for PgQuery_WithCheckOption);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_WithCheckOption(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithCheckOption and conformance PgQuery_WithCheckOption, type metadata accessor for PgQuery_WithCheckOption);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_WithCheckOption()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithCheckOption and conformance PgQuery_WithCheckOption, type metadata accessor for PgQuery_WithCheckOption);

  return Message.hash(into:)();
}

uint64_t PgQuery_SortGroupClause.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }

    else
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4 || result == 5)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }
  }
}

uint64_t PgQuery_SortGroupClause.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 4) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
      {
        if (*(v0 + 12) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
        {
          if (*(v0 + 13) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
          {
            v3 = v0 + *(type metadata accessor for PgQuery_SortGroupClause(0) + 36);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_SortGroupClause@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(a2 + 6) = 0;
  *a2 = 0;
  v2 = a2 + *(a1 + 36);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_GrantRoleStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_GrantRoleStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SortGroupClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortGroupClause and conformance PgQuery_SortGroupClause, type metadata accessor for PgQuery_SortGroupClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SortGroupClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortGroupClause and conformance PgQuery_SortGroupClause, type metadata accessor for PgQuery_SortGroupClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SortGroupClause()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortGroupClause and conformance PgQuery_SortGroupClause, type metadata accessor for PgQuery_SortGroupClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_GroupingSet.decodeMessage<A>(decoder:)()
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
          lazy protocol witness table accessor for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_GroupingSet.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*v0)
  {
    v6 = *v0;
    v7 = *(v0 + 8);
    lazy protocol witness table accessor for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind();
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
    v4 = v2;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    if (!*(v0 + 6))
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  v4 = v2;
  if (*(v0 + 6))
  {
    goto LABEL_9;
  }

LABEL_10:
  v5 = v0 + *(type metadata accessor for PgQuery_GroupingSet(0) + 28);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_GroupingSet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_GroupingSet(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GroupingSet and conformance PgQuery_GroupingSet, type metadata accessor for PgQuery_GroupingSet);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_GroupingSet(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GroupingSet and conformance PgQuery_GroupingSet, type metadata accessor for PgQuery_GroupingSet);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_GroupingSet()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GroupingSet and conformance PgQuery_GroupingSet, type metadata accessor for PgQuery_GroupingSet);

  return Message.hash(into:)();
}

uint64_t PgQuery_WindowClause._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0;
  v2 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset;
  Node = type metadata accessor for PgQuery_Node(0);
  v4 = *(*(Node - 8) + 56);
  v4(v0 + v2, 1, 1, Node);
  v4(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startInRangeFunc) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endInRangeFunc) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeColl) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeAsc) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeNullsFirst) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder) = 0;
  return v0;
}

uint64_t PgQuery_WindowDef._StorageClass.__deallocating_deinit(void *a1, void *a2)
{
  v5 = v2[3];

  v6 = v2[5];

  v7 = v2[6];

  v8 = v2[7];

  _s10Foundation4UUIDVSgWOhTm_0(v2 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v2 + *a2, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*v2 + 48);
  v10 = *(*v2 + 52);

  return MEMORY[0x1EEE6BDC0](v2, v9, v10);
}

void type metadata completion function for PgQuery_WindowClause._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_WindowClause.decodeMessage<A>(decoder:)()
{
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    v6 = v1;
    v4 = v1;
    while ((v3 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v5 = v4;
          goto LABEL_17;
        case 2:
          v5 = v4;
LABEL_17:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 3:
        case 4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        case 5:
          v5 = v4;
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 6:
        case 7:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_5:
          v5 = v6;
          break;
        case 8:
          v5 = v4;
          goto LABEL_23;
        case 9:
          v5 = v4;
          goto LABEL_23;
        case 10:
          v5 = v4;
          goto LABEL_23;
        case 11:
          v5 = v4;
          goto LABEL_21;
        case 12:
          v5 = v4;
          goto LABEL_21;
        case 13:
          v5 = v4;
LABEL_23:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 14:
          v5 = v4;
LABEL_21:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        default:
          v5 = v4;
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
      v4 = v5;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_WindowClause.traverse<A>(visitor:)(uint64_t a1)
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

  if (v16)
  {
    v17 = *(a1 + 24);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  v18 = *(a1 + 40);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = *(a1 + 40);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  if (!*(*(a1 + 48) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
  {
    if (!*(*(a1 + 56) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
    {
      if (!*(a1 + 64) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
      {
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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

        if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startInRangeFunc) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
        {
          if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endInRangeFunc) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
          {
            if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeColl) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
            {
              if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeAsc) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
              {
                if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeNullsFirst) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
                {
                  result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref);
                  if (!result || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
                  {
                    if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder) == 1)
                    {
                      return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
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

uint64_t closure #1 in static PgQuery_WindowClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v66 = *(Node - 8);
  v5 = *(v66 + 64);
  v6 = MEMORY[0x1EEE9AC00](Node);
  v8 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v61[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v61[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v61[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v61[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v61[-v23];
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_28;
  }

  v64 = v15;
  v65 = v22;
  v63 = v8;
  v25 = *(a1 + 48);
  v26 = *(a2 + 48);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v25, v26);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_27;
  }

  v28 = *(a1 + 56);
  v29 = *(a2 + 56);

  v30 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v28, v29);

  if ((v30 & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_27;
  }

  v31 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset;
  v32 = *(v18 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset, v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = a2 + v31;
  v34 = v32;
  outlined init with copy of PgQuery_Alias?(v33, &v24[v32], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v35 = v66 + 48;
  v36 = *(v66 + 48);
  if (v36(v24, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v24, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v36(&v24[v34], 1, Node) != 1)
    {
      v66 = v35;
      outlined init with take of PgQuery_OidList(&v24[v34], v10, type metadata accessor for PgQuery_Node);
      v40 = *(Node + 20);
      v41 = *&v17[v40];
      v42 = *&v10[v40];
      if (v41 == v42 || (v43 = *&v17[v40], , , v62 = closure #1 in static PgQuery_Node.== infix(_:_:)(v41, v42), , , v62))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v44 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v44 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_16:
      v39 = v24;
LABEL_26:
      _s10Foundation4UUIDVSgWOhTm_0(v39, v37, v38);
      goto LABEL_27;
    }

    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
LABEL_15:
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

  if (v36(&v24[v34], 1, Node) != 1)
  {
    goto LABEL_15;
  }

  v66 = v35;
  _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  v45 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset;
  v46 = *(v18 + 48);
  v47 = v65;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v45, v47 + v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v36(v47, 1, Node) == 1)
  {
    if (v36((v47 + v46), 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_33:
      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startInRangeFunc) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startInRangeFunc) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endInRangeFunc) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endInRangeFunc) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeColl) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeColl) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeAsc) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeAsc) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeNullsFirst) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeNullsFirst) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref))
      {
        v59 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder);

        v60 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder);

        v49 = v59 ^ v60 ^ 1;
        return v49 & 1;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v48 = v64;
  outlined init with copy of PgQuery_Alias?(v47, v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v36((v47 + v46), 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
LABEL_25:
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v39 = v47;
    goto LABEL_26;
  }

  v51 = v47 + v46;
  v52 = v63;
  outlined init with take of PgQuery_OidList(v51, v63, type metadata accessor for PgQuery_Node);
  v53 = *(Node + 20);
  v54 = *(v48 + v53);
  v55 = *(v52 + v53);
  if (v54 != v55)
  {

    v56 = closure #1 in static PgQuery_Node.== infix(_:_:)(v54, v55);

    if (!v56)
    {
      outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v64, type metadata accessor for PgQuery_Node);
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v39 = v65;
      goto LABEL_26;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v57 = v64;
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v58)
  {
    goto LABEL_33;
  }

LABEL_27:

LABEL_28:
  v49 = 0;
  return v49 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_WindowClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowClause and conformance PgQuery_WindowClause, type metadata accessor for PgQuery_WindowClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_WindowClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowClause and conformance PgQuery_WindowClause, type metadata accessor for PgQuery_WindowClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_WindowClause()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowClause and conformance PgQuery_WindowClause, type metadata accessor for PgQuery_WindowClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_VacuumStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v5;
  if (*(*v4 + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v7 = 0;
  }

  if (*(*(v4 + 8) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v9 = v7;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v7)
    {
      return result;
    }
  }

  else
  {
    v9 = v7;
  }

  if (*(v4 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v9))
  {
    v10 = v4 + *(a4(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_VacuumStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  v3 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ObjectWithArgs(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ObjectWithArgs(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ObjectWithArgs()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);

  return Message.hash(into:)();
}

uint64_t PgQuery_Alias.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
      v11 = v4 + *(a4(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_Alias@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = a2;
  a5[1] = a3;
  a5[2] = a4;
  v5 = a5 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AccessPriv(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AccessPriv and conformance PgQuery_AccessPriv, type metadata accessor for PgQuery_AccessPriv);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AccessPriv(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AccessPriv and conformance PgQuery_AccessPriv, type metadata accessor for PgQuery_AccessPriv);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AccessPriv()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AccessPriv and conformance PgQuery_AccessPriv, type metadata accessor for PgQuery_AccessPriv);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_Alias(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_CreateOpClassItem.decodeMessage<A>(decoder:)()
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 6)
        {
          v3 = v0;
          v7 = *(type metadata accessor for PgQuery_CreateOpClassItem(0) + 40);
          type metadata accessor for PgQuery_TypeName(0);
          v5 = type metadata accessor for PgQuery_TypeName;
          v6 = &lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName;
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_17;
          case 2:
            v3 = v0;
            v4 = *(type metadata accessor for PgQuery_CreateOpClassItem(0) + 36);
            type metadata accessor for PgQuery_ObjectWithArgs(0);
            v5 = type metadata accessor for PgQuery_ObjectWithArgs;
            v6 = &lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs;
LABEL_5:
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(v6, v5);
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 3:
LABEL_17:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateOpClassItem.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &OpClassItem - v5;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v26 = *(TypeName - 8);
  v27 = TypeName;
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v25 = &OpClassItem - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &OpClassItem - v11;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v14 = *(ObjectWithArgs - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](ObjectWithArgs);
  v17 = &OpClassItem - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  OpClassItem = type metadata accessor for PgQuery_CreateOpClassItem(0);
  outlined init with copy of PgQuery_Alias?(v0 + OpClassItem[9], v12, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v14 + 48))(v12, 1, ObjectWithArgs) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v19 = v2;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v17, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);
    v19 = v2;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v2)
    {
      return result;
    }
  }

  v20 = v28;
  if (!*(v0 + 4) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v19))
  {
    v21 = v19;
    if (*(*(v0 + 8) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v19)
      {
        return result;
      }

      v21 = 0;
    }

    if (*(*(v0 + 16) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v21)
      {
        return result;
      }

      v21 = 0;
    }

    outlined init with copy of PgQuery_Alias?(v0 + OpClassItem[10], v20, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if ((*(v26 + 48))(v20, 1, v27) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v20, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    }

    else
    {
      v22 = v25;
      outlined init with take of PgQuery_OidList(v20, v25, type metadata accessor for PgQuery_TypeName);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_TypeName);
      if (v21)
      {
        return result;
      }
    }

    v23 = v0 + OpClassItem[8];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateOpClassItem@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = MEMORY[0x1E69E7CC0];
  *(a2 + 2) = v4;
  v5 = &a2[a1[8]];
  UnknownStorage.init()();
  v6 = a1[9];
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  (*(*(ObjectWithArgs - 8) + 56))(&a2[v6], 1, 1, ObjectWithArgs);
  v8 = a1[10];
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v10 = *(*(TypeName - 8) + 56);

  return v10(&a2[v8], 1, 1, TypeName);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateOpClassItem(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassItem and conformance PgQuery_CreateOpClassItem, type metadata accessor for PgQuery_CreateOpClassItem);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateOpClassItem(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassItem and conformance PgQuery_CreateOpClassItem, type metadata accessor for PgQuery_CreateOpClassItem);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateOpClassItem()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassItem and conformance PgQuery_CreateOpClassItem, type metadata accessor for PgQuery_CreateOpClassItem);

  return Message.hash(into:)();
}

uint64_t PgQuery_TableLikeClause.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 1)
      {
        v3 = *(type metadata accessor for PgQuery_TableLikeClause(0) + 28);
        type metadata accessor for PgQuery_RangeVar(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_TableLikeClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TableLikeClause = type metadata accessor for PgQuery_TableLikeClause(0);
  v19 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(TableLikeClause + 28), v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v9 + 48))(v7, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v13 = v21;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v13 = v21;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
    if (v13)
    {
      return result;
    }
  }

  v15 = v19;
  if (!*v19 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
  {
    if (!v15[1] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
    {
      v16 = v15 + *(TableLikeClause + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_TableLikeClause@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 24)];
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v7 = *(*(RangeVar - 8) + 56);

  return v7(&a2[v5], 1, 1, RangeVar);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TableLikeClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableLikeClause and conformance PgQuery_TableLikeClause, type metadata accessor for PgQuery_TableLikeClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TableLikeClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableLikeClause and conformance PgQuery_TableLikeClause, type metadata accessor for PgQuery_TableLikeClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TableLikeClause()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableLikeClause and conformance PgQuery_TableLikeClause, type metadata accessor for PgQuery_TableLikeClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_FunctionParameter._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v1 + v7, 1, 1, TypeName);
  v9 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v10, 1, 1, Node);
  v12 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v12;
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType;

  outlined assign with copy of PgQuery_Node?(a1 + v13, v1 + v7, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode + 8);
  *v9 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode);
  *(v9 + 8) = v14;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v6, v1 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_FunctionParameter._StorageClass.__deallocating_deinit()
{
  v1 = v0[3];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void type metadata completion function for PgQuery_FunctionParameter._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
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

uint64_t closure #1 in PgQuery_FunctionParameter.decodeMessage<A>(decoder:)()
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
        lazy protocol witness table accessor for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 4)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_12:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for PgQuery_TypeName(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
      goto LABEL_12;
    }
  }
}

uint64_t closure #1 in PgQuery_FunctionParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v31 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v32 = *(Node - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v31 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v31 - v14;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v17 = *(TypeName - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
  {
    outlined init with copy of PgQuery_Alias?(v21 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType, v15, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if ((*(v17 + 48))(v15, 1, TypeName) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_TypeName);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_TypeName);
      if (v5)
      {
        return result;
      }
    }

    v27 = v33;
    v26 = Node;
    if (!*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode) || (v28 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode + 8), v35 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode), v36 = v28, lazy protocol witness table accessor for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v5))
    {
      outlined init with copy of PgQuery_Alias?(v21 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v32 + 48))(v27, 1, v26) == 1)
      {
        return _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v29 = v27;
        v30 = v31;
        outlined init with take of PgQuery_OidList(v29, v31, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_FunctionParameter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v60 = *(Node - 8);
  v61 = Node;
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v55 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v13 = &v55 - v12;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v15 = *(TypeName - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v55 - v25;
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v56 = v10;
  v57 = v13;
  v62 = a2;
  v27 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType;
  v28 = a1;
  v29 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType, v26, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v30 = v62 + v27;
  v31 = v62;
  outlined init with copy of PgQuery_Alias?(v30, &v26[v29], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v32 = *(v15 + 48);
  if (v32(v26, 1, TypeName) == 1)
  {
    v33 = v32(&v26[v29], 1, TypeName);

    if (v33 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      goto LABEL_13;
    }

LABEL_9:
    _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
    goto LABEL_10;
  }

  outlined init with copy of PgQuery_Alias?(v26, v22, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v32(&v26[v29], 1, TypeName) == 1)
  {

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_TypeName);
    goto LABEL_9;
  }

  outlined init with take of PgQuery_OidList(&v26[v29], v18, type metadata accessor for PgQuery_TypeName);

  v35 = specialized static PgQuery_TypeName.== infix(_:_:)(v22, v18);
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_TypeName);
  _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v36 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode);
  v37 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode);
  if (*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode + 8) != 1)
  {
    v38 = v57;
    v39 = v61;
    if (v36 == v37)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v38 = v57;
  v39 = v61;
  if (v37 > 2)
  {
    if (v37 == 3)
    {
      if (v36 != 3)
      {
        goto LABEL_10;
      }
    }

    else if (v37 == 4)
    {
      if (v36 != 4)
      {
        goto LABEL_10;
      }
    }

    else if (v36 != 5)
    {
      goto LABEL_10;
    }
  }

  else if (v37)
  {
    if (v37 == 1)
    {
      if (v36 == 1)
      {
        goto LABEL_20;
      }

LABEL_10:

      return 0;
    }

    if (v36 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v36)
  {
    goto LABEL_10;
  }

LABEL_20:
  v40 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr;
  v41 = *(v59 + 48);
  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr, v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v62 + v40, v38 + v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v42 = *(v60 + 48);
  if (v42(v38, 1, v39) != 1)
  {
    v43 = v56;
    outlined init with copy of PgQuery_Alias?(v38, v56, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v42(v38 + v41, 1, v39) == 1)
    {

      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      goto LABEL_29;
    }

    v46 = v38 + v41;
    v47 = v58;
    outlined init with take of PgQuery_OidList(v46, v58, type metadata accessor for PgQuery_Node);
    v48 = *(v39 + 20);
    v49 = *(v43 + v48);
    v50 = *(v47 + v48);
    if (v49 != v50)
    {

      v51 = closure #1 in static PgQuery_Node.== infix(_:_:)(v49, v50);

      if (!v51)
      {

        outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
        v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_30;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v52 = v56;
    v53 = v58;
    v54 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    return (v54 & 1) != 0;
  }

  if (v42(v38 + v41, 1, v39) != 1)
  {
LABEL_29:
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_30:
    _s10Foundation4UUIDVSgWOhTm_0(v38, v44, v45);
    return 0;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FunctionParameter(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FunctionParameter and conformance PgQuery_FunctionParameter, type metadata accessor for PgQuery_FunctionParameter);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FunctionParameter(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FunctionParameter and conformance PgQuery_FunctionParameter, type metadata accessor for PgQuery_FunctionParameter);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FunctionParameter()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FunctionParameter and conformance PgQuery_FunctionParameter, type metadata accessor for PgQuery_FunctionParameter);

  return Message.hash(into:)();
}

uint64_t PgQuery_LockingClause.decodeMessage<A>(decoder:)()
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        lazy protocol witness table accessor for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength();
LABEL_5:
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_6;
      }

      if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    lazy protocol witness table accessor for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy();
    goto LABEL_5;
  }

  return result;
}

uint64_t PgQuery_LockingClause.traverse<A>(visitor:)()
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

  if (*(v0 + 8))
  {
    v6 = *(v0 + 8);
    v7 = *(v0 + 16);
    lazy protocol witness table accessor for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength();
    v4 = v2;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    if (!*(v0 + 24))
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = *(v0 + 32);
    lazy protocol witness table accessor for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  v4 = v2;
  if (*(v0 + 24))
  {
    goto LABEL_9;
  }

LABEL_10:
  v5 = v0 + *(type metadata accessor for PgQuery_LockingClause(0) + 28);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_LockingClause@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_LockingClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockingClause and conformance PgQuery_LockingClause, type metadata accessor for PgQuery_LockingClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_LockingClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockingClause and conformance PgQuery_LockingClause, type metadata accessor for PgQuery_LockingClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_LockingClause()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockingClause and conformance PgQuery_LockingClause, type metadata accessor for PgQuery_LockingClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_RowMarkClause.decodeMessage<A>(decoder:)()
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
          v3 = v0;
          lazy protocol witness table accessor for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy();
          goto LABEL_15;
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
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          lazy protocol witness table accessor for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength();
LABEL_15:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_RowMarkClause.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
  {
    v3 = v1;
    if (*(v0 + 8))
    {
      v6 = *(v0 + 8);
      v8 = *(v0 + 16);
      lazy protocol witness table accessor for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      v3 = 0;
    }

    if (*(v0 + 24))
    {
      v7 = *(v0 + 24);
      v9 = *(v0 + 32);
      lazy protocol witness table accessor for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy();
      v4 = v3;
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v3)
      {
        return result;
      }
    }

    else
    {
      v4 = v3;
    }

    if (*(v0 + 33) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      v5 = v0 + *(type metadata accessor for PgQuery_RowMarkClause(0) + 32);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_RowMarkClause@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RowMarkClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowMarkClause and conformance PgQuery_RowMarkClause, type metadata accessor for PgQuery_RowMarkClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RowMarkClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowMarkClause and conformance PgQuery_RowMarkClause, type metadata accessor for PgQuery_RowMarkClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RowMarkClause()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowMarkClause and conformance PgQuery_RowMarkClause, type metadata accessor for PgQuery_RowMarkClause);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_XmlSerialize._StorageClass()
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

uint64_t PgQuery_XmlSerialize.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for PgQuery_XmlSerialize(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = *(v0 + v1);
    Xml = type metadata accessor for PgQuery_XmlSerialize._StorageClass(0);
    v7 = *(Xml + 48);
    v8 = *(Xml + 52);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
    TypeName = type metadata accessor for PgQuery_TypeName(0);
    (*(*(TypeName - 8) + 56))(v9 + v12, 1, 1, TypeName);
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v15 = *(v5 + 24);
    *(v9 + 16) = *(v5 + 16);
    *(v9 + 24) = v15;
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;

    outlined assign with copy of PgQuery_Node?(v5 + v16, v9 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined assign with copy of PgQuery_Node?(v5 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v9 + v12, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    LODWORD(v12) = *(v5 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v9 + v14) = v12;

    *(v0 + v1) = v9;
  }

  return closure #1 in PgQuery_XmlSerialize.decodeMessage<A>(decoder:)();
}

uint64_t closure #1 in PgQuery_XmlSerialize.decodeMessage<A>(decoder:)()
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
        type metadata accessor for PgQuery_TypeName(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
LABEL_13:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 1)
    {
      lazy protocol witness table accessor for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      goto LABEL_13;
    }
  }
}

uint64_t closure #1 in PgQuery_XmlSerialize.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - v4;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v26 = *(TypeName - 8);
  v27 = TypeName;
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v18 = *(a1 + 24);
    v28 = *(a1 + 16);
    v29 = v18;
    lazy protocol witness table accessor for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType();
    v19 = v30;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v19)
    {
      return result;
    }

    v30 = 0;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v14 + 48))(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v17, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v21 = v30;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
    if (v21)
    {
      return result;
    }

    v30 = 0;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v5, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v26 + 48))(v5, 1, v27) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v5, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v22 = v25;
    outlined init with take of PgQuery_OidList(v5, v25, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
    v23 = v30;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_TypeName);
    if (v23)
    {
      return result;
    }
  }

  result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_XmlSerialize.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v61 = *(TypeName - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](TypeName);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v55 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v11 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v13 = &v55 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v55 - v26;
  v28 = *(a1 + 16);
  v29 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v28 != v29)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (!v29)
  {
    if (!v28)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v29 != 1)
  {
    if (v28 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v28 != 1)
  {
    return 0;
  }

LABEL_11:
  v57 = TypeName;
  v58 = v13;
  v56 = v7;
  v62 = a2;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  v31 = a1;
  v32 = *(v25 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v62 + v30, &v27[v32], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = *(v15 + 48);
  if (v33(v27, 1, Node) == 1)
  {
    v34 = v33(&v27[v32], 1, Node);

    v35 = v58;
    if (v34 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  outlined init with copy of PgQuery_Alias?(v27, v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v33(&v27[v32], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
LABEL_16:
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_17:
    _s10Foundation4UUIDVSgWOhTm_0(v27, v36, v37);
    goto LABEL_28;
  }

  outlined init with take of PgQuery_OidList(&v27[v32], v18, type metadata accessor for PgQuery_Node);
  v38 = *(Node + 20);
  v39 = *&v22[v38];
  v40 = *&v18[v38];

  if (v39 != v40)
  {

    v41 = closure #1 in static PgQuery_Node.== infix(_:_:)(v39, v40);

    if (!v41)
    {
      outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_17;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v35 = v58;
  if ((v42 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  v44 = *(v60 + 48);
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v35, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v45 = v62;
  outlined init with copy of PgQuery_Alias?(v62 + v43, v35 + v44, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v46 = *(v61 + 48);
  v47 = v57;
  if (v46(v35, 1, v57) != 1)
  {
    v48 = v59;
    outlined init with copy of PgQuery_Alias?(v35, v59, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if (v46(v35 + v44, 1, v47) != 1)
    {
      v50 = v35 + v44;
      v51 = v56;
      outlined init with take of PgQuery_OidList(v50, v56, type metadata accessor for PgQuery_TypeName);
      v52 = specialized static PgQuery_TypeName.== infix(_:_:)(v48, v51);
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_TypeName);
      outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_TypeName);
      _s10Foundation4UUIDVSgWOhTm_0(v35, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if (v52)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_TypeName);
    goto LABEL_27;
  }

  if (v46(v35 + v44, 1, v47) != 1)
  {
LABEL_27:
    _s10Foundation4UUIDVSgWOhTm_0(v35, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
LABEL_28:

    return 0;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v35, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
LABEL_31:
  v53 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v54 = *(v45 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v53 == v54;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_XmlSerialize(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlSerialize and conformance PgQuery_XmlSerialize, type metadata accessor for PgQuery_XmlSerialize);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_XmlSerialize(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlSerialize and conformance PgQuery_XmlSerialize, type metadata accessor for PgQuery_XmlSerialize);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_XmlSerialize()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlSerialize and conformance PgQuery_XmlSerialize, type metadata accessor for PgQuery_XmlSerialize);

  return Message.hash(into:)();
}

uint64_t PgQuery_WithClause.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 1:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_WithClause.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    if (*(v0 + 8) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 12) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
      {
        v3 = v0 + *(type metadata accessor for PgQuery_WithClause(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_WithClause@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_WithClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_WithClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_WithClause()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_InferClause._StorageClass.__deallocating_deinit()
{
  v1 = v0[2];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t closure #1 in PgQuery_InferClause.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
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

uint64_t closure #1 in PgQuery_InferClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(a1 + 16) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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

    v16 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname + 8);
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname) & 0xFFFFFFFFFFFFLL;
    }

    if (!v17 || (v18 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
    {
      result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_InferClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = *(a1 + 16);
  v17 = *(a2 + 16);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v16, v17);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_9;
  }

  v19 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v20 = *(v12 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v19, &v15[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v15, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v15, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v15[v20], 1, Node) != 1)
    {
      v25 = v35;
      outlined init with take of PgQuery_OidList(&v15[v20], v35, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);
      if (v27 == v28 || (v29 = *&v11[v26], , , v30 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v30))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v31 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v22 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_8:
      _s10Foundation4UUIDVSgWOhTm_0(v15, v22, v23);
      goto LABEL_9;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_7:
    v22 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_8;
  }

  if (v21(&v15[v20], 1, Node) != 1)
  {
    goto LABEL_7;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_14:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v32 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v33 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v32 == v33;
  }

LABEL_9:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_InferClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferClause and conformance PgQuery_InferClause, type metadata accessor for PgQuery_InferClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_InferClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferClause and conformance PgQuery_InferClause, type metadata accessor for PgQuery_InferClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_InferClause()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferClause and conformance PgQuery_InferClause, type metadata accessor for PgQuery_InferClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_OnConflictClause._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infer, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void type metadata completion function for PgQuery_OnConflictClause._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_InferClause?, type metadata accessor for PgQuery_InferClause, MEMORY[0x1E69E6720]);
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

uint64_t closure #1 in PgQuery_OnConflictClause.decodeMessage<A>(decoder:)()
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
          type metadata accessor for PgQuery_InferClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferClause and conformance PgQuery_InferClause, type metadata accessor for PgQuery_InferClause);
          goto LABEL_16;
        }

        lazy protocol witness table accessor for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
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
            v3 = v0;
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_16:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
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

uint64_t closure #1 in PgQuery_OnConflictClause.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = &v23 - v5;
  Node = type metadata accessor for PgQuery_Node(0);
  v25 = *(Node - 8);
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - v10;
  InferClause = type metadata accessor for PgQuery_InferClause(0);
  v13 = *(InferClause - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](InferClause);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v17 = *(a1 + 24), v27 = *(a1 + 16), v28 = v17, lazy protocol witness table accessor for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infer, v11, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
    if ((*(v13 + 48))(v11, 1, InferClause) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v11, v16, type metadata accessor for PgQuery_InferClause);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferClause and conformance PgQuery_InferClause, type metadata accessor for PgQuery_InferClause);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_InferClause);
      if (v1)
      {
        return result;
      }
    }

    v19 = Node;
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
    {
      v20 = v26;
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v25 + 48))(v20, 1, v19) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v21 = v20;
        v22 = v24;
        outlined init with take of PgQuery_OidList(v21, v24, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
        if (v1)
        {
          return result;
        }
      }

      result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_OnConflictClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v72 = *(Node - 8);
  v5 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v66 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v12 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v14 = &v66 - v13;
  InferClause = type metadata accessor for PgQuery_InferClause(0);
  v16 = *(InferClause - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](InferClause);
  v73 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_InferClauseVSg_ADtMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v66 - v26;
  v28 = *(a1 + 16);
  v29 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v28 == v29)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v29 > 1)
  {
    if (v29 == 2)
    {
      if (v28 != 2)
      {
        return 0;
      }
    }

    else if (v28 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (!v29)
    {
      if (!v28)
      {
        goto LABEL_7;
      }

      return 0;
    }

    if (v28 != 1)
    {
      return 0;
    }
  }

LABEL_7:
  v68 = v11;
  v69 = Node;
  v67 = v7;
  v70 = v14;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infer;
  v31 = *(v25 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infer, v27, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v30, &v27[v31], &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  v32 = *(v16 + 48);
  if (v32(v27, 1, InferClause) == 1)
  {
    v33 = v32(&v27[v31], 1, InferClause);

    v34 = a1;
    if (v33 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  outlined init with copy of PgQuery_Alias?(v27, v22, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  if (v32(&v27[v31], 1, InferClause) == 1)
  {

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_InferClause);
LABEL_15:
    v35 = &_s14BiomeSQLParser19PgQuery_InferClauseVSg_ADtMd;
    v36 = &_s14BiomeSQLParser19PgQuery_InferClauseVSg_ADtMR;
LABEL_16:
    v37 = v27;
LABEL_17:
    _s10Foundation4UUIDVSgWOhTm_0(v37, v35, v36);
LABEL_18:

    return 0;
  }

  v39 = v73;
  outlined init with take of PgQuery_OidList(&v27[v31], v73, type metadata accessor for PgQuery_InferClause);
  v40 = *(InferClause + 20);
  v41 = *&v22[v40];
  v42 = *(v39 + v40);
  v34 = a1;

  if (v41 != v42)
  {

    v43 = closure #1 in static PgQuery_InferClause.== infix(_:_:)(v41, v42);

    if (!v43)
    {
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_InferClause);
      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_InferClause);
      v35 = &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd;
      v36 = &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_InferClause);
  outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_InferClause);
  _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  if ((v44 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_27:
  v45 = *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);
  v46 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v45, v46);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_18;
  }

  v48 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v49 = v70;
  v50 = *(v71 + 48);
  outlined init with copy of PgQuery_Alias?(v34 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v70, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v48, v49 + v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v51 = *(v72 + 48);
  v52 = v69;
  if (v51(v49, 1, v69) != 1)
  {
    v53 = v68;
    outlined init with copy of PgQuery_Alias?(v49, v68, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v51(v49 + v50, 1, v52) != 1)
    {
      v54 = v49 + v50;
      v55 = v67;
      outlined init with take of PgQuery_OidList(v54, v67, type metadata accessor for PgQuery_Node);
      v56 = *(v52 + 20);
      v57 = *(v53 + v56);
      v58 = *(v55 + v56);
      if (v57 == v58 || (v59 = *(v53 + v56), , , v60 = closure #1 in static PgQuery_Node.== infix(_:_:)(v57, v58), , , v60))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v61 = v67;
        v62 = v68;
        v63 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v63)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }

      outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v68, type metadata accessor for PgQuery_Node);
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v37 = v49;
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
    goto LABEL_33;
  }

  if (v51(v49 + v50, 1, v52) != 1)
  {
LABEL_33:
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v37 = v49;
    goto LABEL_17;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_38:
  v64 = *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v65 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v64 == v65;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_OnConflictClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_OnConflictClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_OnConflictClause()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_CommonTableExpr._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  v2 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v2, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames) = v1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes) = v1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods) = v1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations) = v1;
  return v0;
}

uint64_t PgQuery_CommonTableExpr._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery;
  v21 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v4, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames) = v3;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes) = v3;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods) = v3;
  v22 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations) = v3;
  v12 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v12;
  *(v1 + 32) = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 40) = *(a1 + 40);
  *(v1 + 48) = v13;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery;

  outlined assign with copy of PgQuery_Node?(a1 + v14, v1 + v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount);
  v15 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames);

  v16 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes);

  v17 = *(v1 + v11);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods);

  v18 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations);

  v19 = *(v1 + v22);
  *(v1 + v22) = v18;

  return v1;
}

uint64_t PgQuery_CommonTableExpr._StorageClass.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes);

  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods);

  v6 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v7, v8);
}

void type metadata completion function for PgQuery_CommonTableExpr._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_CommonTableExpr.decodeMessage<A>(decoder:)()
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

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
          }

          else if (result == 2)
          {
            goto LABEL_4;
          }
        }

        else if (result == 3)
        {
          lazy protocol witness table accessor for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_15;
          }

          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result > 8)
      {
        if (result == 9 || result == 10 || result == 11)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        if (result != 6)
        {
          if (result != 7)
          {
            goto LABEL_4;
          }

LABEL_15:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CommonTableExpr.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  Node = type metadata accessor for PgQuery_Node(0);
  v7 = *(Node - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = *(a1 + 24);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  if (!*(*(a1 + 32) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
  {
    if (!*(a1 + 40) || (v15 = *(a1 + 48), v16 = *(a1 + 40), v17 = v15, lazy protocol witness table accessor for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v7 + 48))(v6, 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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

      if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
      {
        if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
        {
          result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount);
          if (!result || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
          {
            if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
            {
              if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
              {
                if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
                {
                  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations) + 16))
                  {
                    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

                    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
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

uint64_t closure #1 in static PgQuery_CommonTableExpr.== infix(_:_:)(void *a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  if (a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24) || (v17 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v48 = v8;
    v18 = a1[4];
    v19 = *(a2 + 32);

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v18, v19);

    if ((NodeV_Tt1g5 & 1) == 0)
    {
      goto LABEL_35;
    }

    v21 = a1[5];
    v22 = *(a2 + 40);
    if (*(a2 + 48) == 1)
    {
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          if (v21 != 2)
          {
            goto LABEL_35;
          }
        }

        else if (v21 != 3)
        {
          goto LABEL_35;
        }
      }

      else if (v22)
      {
        if (v21 != 1)
        {
          goto LABEL_35;
        }
      }

      else if (v21)
      {
        goto LABEL_35;
      }
    }

    else if (v21 != v22)
    {
      goto LABEL_35;
    }

    v23 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery;
    v24 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v23, &v16[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v25 = *(v5 + 48);
    if (v25(v16, 1, Node) == 1)
    {
      if (v25(&v16[v24], 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_28:
        if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount))
        {
          v35 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames);
          v36 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames);

          v37 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v35, v36);

          if (v37)
          {
            v38 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes);
            v39 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes);

            v40 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v38, v39);

            if (v40)
            {
              v41 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods);
              v42 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods);

              v43 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v41, v42);

              if (v43)
              {
                v44 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations);
                v45 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations);

                v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v44, v45);

                return v17 & 1;
              }
            }
          }
        }

LABEL_35:

        v17 = 0;
        return v17 & 1;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v25(&v16[v24], 1, Node) != 1)
      {
        v28 = v48;
        outlined init with take of PgQuery_OidList(&v16[v24], v48, type metadata accessor for PgQuery_Node);
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
          if ((v34 & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_28;
        }

        outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v27 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_20:
        _s10Foundation4UUIDVSgWOhTm_0(v16, v26, v27);
        goto LABEL_35;
      }

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    }

    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v27 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_20;
  }

  return v17 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CommonTableExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommonTableExpr and conformance PgQuery_CommonTableExpr, type metadata accessor for PgQuery_CommonTableExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CommonTableExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommonTableExpr and conformance PgQuery_CommonTableExpr, type metadata accessor for PgQuery_CommonTableExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CommonTableExpr()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommonTableExpr and conformance PgQuery_CommonTableExpr, type metadata accessor for PgQuery_CommonTableExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_RoleSpec.decodeMessage<A>(decoder:)()
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
          lazy protocol witness table accessor for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

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

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}