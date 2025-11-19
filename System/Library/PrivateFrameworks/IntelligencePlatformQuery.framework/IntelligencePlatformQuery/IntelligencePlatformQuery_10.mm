uint64_t closure #1 in static PgQuery_CreateStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v121 = a2;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v107 = *(TypeName - 8);
  v108 = TypeName;
  v4 = *(v107 + 64);
  MEMORY[0x28223BE20](TypeName);
  v103 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v104 = &v103 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v9 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v109 = &v103 - v10;
  PartitionSpec = type metadata accessor for PgQuery_PartitionSpec(0);
  v113 = *(PartitionSpec - 8);
  v114 = PartitionSpec;
  v12 = *(v113 + 64);
  MEMORY[0x28223BE20](PartitionSpec);
  v105 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v110 = &v103 - v16;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionSpecVSg_ADtMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSg_ADtMR);
  v17 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v115 = &v103 - v18;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v118 = *(PartitionBoundSpec - 8);
  v119 = PartitionBoundSpec;
  v20 = *(v118 + 64);
  MEMORY[0x28223BE20](PartitionBoundSpec);
  v111 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v116 = &v103 - v24;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMR);
  v25 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v120 = &v103 - v26;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v28 = *(RangeVar - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v31 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v103 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = &v103 - v39;
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v42 = *(v38 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v103 - v39, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v43 = v121 + v41;
  v44 = v121;
  outlined init with copy of PgQuery_Alias?(v43, &v40[v42], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v45 = *(v28 + 48);
  if (v45(v40, 1, RangeVar) == 1)
  {
    v46 = v45(&v40[v42], 1, RangeVar);

    v47 = a1;
    if (v46 == 1)
    {
      outlined destroy of URL?(v40, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v48 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v49 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v50 = v40;
LABEL_7:
    outlined destroy of URL?(v50, v48, v49);
    goto LABEL_64;
  }

  outlined init with copy of PgQuery_Alias?(v40, v35, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v45(&v40[v42], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v40[v42], v31, type metadata accessor for PgQuery_RangeVar);
  v47 = a1;

  v51 = specialized static PgQuery_RangeVar.== infix(_:_:)(v35, v31);
  outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v40, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v51 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_9:
  v52 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts);
  v53 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v52, v53);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_64;
  }

  v55 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations);
  v56 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations);

  v57 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v55, v56);

  if ((v57 & 1) == 0)
  {
    goto LABEL_64;
  }

  v58 = v44;
  v59 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound;
  v60 = *(v117 + 48);
  v61 = v120;
  outlined init with copy of PgQuery_Alias?(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound, v120, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v62 = v58 + v59;
  v63 = v58;
  outlined init with copy of PgQuery_Alias?(v62, v61 + v60, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v64 = v119;
  v65 = *(v118 + 48);
  if (v65(v61, 1, v119) == 1)
  {
    if (v65(v61 + v60, 1, v64) == 1)
    {
      outlined destroy of URL?(v61, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v66 = v116;
  outlined init with copy of PgQuery_Alias?(v61, v116, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if (v65(v61 + v60, 1, v64) == 1)
  {
    outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_PartitionBoundSpec);
LABEL_16:
    v48 = &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMd;
    v49 = &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMR;
    v50 = v61;
    goto LABEL_7;
  }

  v67 = v61 + v60;
  v68 = v111;
  outlined init with take of PgQuery_OidList(v67, v111, type metadata accessor for PgQuery_PartitionBoundSpec);
  v69 = specialized static PgQuery_PartitionBoundSpec.== infix(_:_:)(v66, v68);
  outlined destroy of PgQuery_OidList(v68, type metadata accessor for PgQuery_PartitionBoundSpec);
  outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_PartitionBoundSpec);
  outlined destroy of URL?(v61, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if ((v69 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_18:
  v70 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec;
  v71 = *(v112 + 48);
  v72 = v115;
  outlined init with copy of PgQuery_Alias?(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec, v115, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  v73 = v63 + v70;
  v74 = v72;
  outlined init with copy of PgQuery_Alias?(v73, v72 + v71, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  v75 = v114;
  v76 = *(v113 + 48);
  if (v76(v72, 1, v114) == 1)
  {
    if (v76(v72 + v71, 1, v75) == 1)
    {
      outlined destroy of URL?(v72, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v83 = v110;
  outlined init with copy of PgQuery_Alias?(v74, v110, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  if (v76(v74 + v71, 1, v75) == 1)
  {
    outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_PartitionSpec);
LABEL_26:
    v48 = &_s14BiomeSQLParser21PgQuery_PartitionSpecVSg_ADtMd;
    v49 = &_s14BiomeSQLParser21PgQuery_PartitionSpecVSg_ADtMR;
LABEL_38:
    v50 = v74;
    goto LABEL_7;
  }

  v84 = v74 + v71;
  v85 = v105;
  outlined init with take of PgQuery_OidList(v84, v105, type metadata accessor for PgQuery_PartitionSpec);
  if ((*v83 != *v85 || *(v83 + 8) != *(v85 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v83 + 16), *(v85 + 16)) & 1) == 0 || *(v83 + 24) != *(v85 + 24))
  {
    outlined destroy of PgQuery_OidList(v85, type metadata accessor for PgQuery_PartitionSpec);
    outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_PartitionSpec);
    v48 = &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd;
    v49 = &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR;
    goto LABEL_38;
  }

  v86 = *(v75 + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  LOBYTE(v86) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v85, type metadata accessor for PgQuery_PartitionSpec);
  outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_PartitionSpec);
  outlined destroy of URL?(v74, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  if ((v86 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_21:
  v77 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename;
  v78 = *(v106 + 48);
  v79 = v109;
  outlined init with copy of PgQuery_Alias?(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename, v109, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v80 = v63 + v77;
  v74 = v79;
  outlined init with copy of PgQuery_Alias?(v80, v79 + v78, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v81 = v108;
  v82 = *(v107 + 48);
  if (v82(v79, 1, v108) == 1)
  {
    if (v82(v79 + v78, 1, v81) == 1)
    {
      outlined destroy of URL?(v79, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  v87 = v104;
  outlined init with copy of PgQuery_Alias?(v74, v104, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v82(v74 + v78, 1, v81) == 1)
  {
    outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_TypeName);
LABEL_37:
    v48 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v49 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    goto LABEL_38;
  }

  v88 = v74 + v78;
  v89 = v103;
  outlined init with take of PgQuery_OidList(v88, v103, type metadata accessor for PgQuery_TypeName);
  v90 = specialized static PgQuery_TypeName.== infix(_:_:)(v87, v89);
  outlined destroy of PgQuery_OidList(v89, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_TypeName);
  outlined destroy of URL?(v74, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((v90 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_40:
  v91 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);
  v92 = *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

  v93 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v91, v92);

  if ((v93 & 1) == 0)
  {
    goto LABEL_64;
  }

  v94 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
  v95 = *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v96 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v94, v95);

  if ((v96 & 1) == 0)
  {
    goto LABEL_64;
  }

  v97 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit);
  v98 = *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit);
  if (*(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit + 8) == 1)
  {
    if (v98 > 1)
    {
      if (v98 == 2)
      {
        if (v97 == 2)
        {
          goto LABEL_49;
        }
      }

      else if (v98 == 3)
      {
        if (v97 == 3)
        {
          goto LABEL_49;
        }
      }

      else if (v97 == 4)
      {
        goto LABEL_49;
      }

LABEL_64:

      v101 = 0;
      return v101 & 1;
    }

    if (!v98)
    {
      if (!v97)
      {
        goto LABEL_49;
      }

      goto LABEL_64;
    }

    if (v97 != 1)
    {
      goto LABEL_64;
    }
  }

  else if (v97 != v98)
  {
    goto LABEL_64;
  }

LABEL_49:
  if ((*(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename) != *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename) || *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename + 8) != *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) != *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) || *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8) != *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_64;
  }

  v99 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);

  v100 = *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);

  v101 = v99 ^ v100 ^ 1;
  return v101 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DefineStmt.decodeMessage<A>(decoder:)()
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
            lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
LABEL_18:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            goto LABEL_4;
        }
      }

      else
      {
        if (result <= 5)
        {
          v3 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_4:
          v0 = v3;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 6 || result == 7)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_DefineStmt.traverse<A>(visitor:)()
{
  ResultSetCursor.columns.modify(*v0, *(v0 + 8));
  if (!v2 || (lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    if (*(v0 + 9) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      v4 = v1;
      if (*(*(v0 + 16) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        v4 = 0;
      }

      if (*(*(v0 + 24) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        v4 = 0;
      }

      if (*(*(v0 + 32) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        v5 = v4;
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }
      }

      else
      {
        v5 = v4;
      }

      if (*(v0 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
      {
        if (*(v0 + 41) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
        {
          v6 = v0 + *(type metadata accessor for PgQuery_DefineStmt(0) + 44);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DefineStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 1;
  *(a2 + 16) = v2;
  *(a2 + 24) = v2;
  *(a2 + 32) = v2;
  *(a2 + 40) = 0;
  v3 = a2 + *(a1 + 44);
  return UnknownStorage.init()();
}

double (*protocol witness for Message.unknownFields.modify in conformance PgQuery_DefineStmt(uint64_t a1, uint64_t a2))(void, void)
{
  result = ResultSetCursor.columns.modify;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DefineStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefineStmt and conformance PgQuery_DefineStmt, type metadata accessor for PgQuery_DefineStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DefineStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefineStmt and conformance PgQuery_DefineStmt, type metadata accessor for PgQuery_DefineStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DefineStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefineStmt and conformance PgQuery_DefineStmt, type metadata accessor for PgQuery_DefineStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropStmt.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
LABEL_16:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 3)
        {
          v3 = v0;
          lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
          goto LABEL_16;
        }

        if (result == 4 || result == 5)
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

uint64_t PgQuery_DropStmt.traverse<A>(visitor:)()
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

  ResultSetCursor.columns.modify(*(v0 + 8), *(v0 + 16));
  if (v4)
  {
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0 + 24))
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
    v5 = v2;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v5 = v2;
  }

  if (*(v0 + 33) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
  {
    if (*(v0 + 34) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
    {
      v6 = v0 + *(type metadata accessor for PgQuery_DropStmt(0) + 36);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DropStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 33) = 0;
  v2 = a2 + *(a1 + 36);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropStmt and conformance PgQuery_DropStmt, type metadata accessor for PgQuery_DropStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropStmt and conformance PgQuery_DropStmt, type metadata accessor for PgQuery_DropStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropStmt and conformance PgQuery_DropStmt, type metadata accessor for PgQuery_DropStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_TruncateStmt.decodeMessage<A>(decoder:)()
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

uint64_t PgQuery_TruncateStmt.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    if (*(v0 + 8) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 16) || (v4 = *(v0 + 16), v5 = *(v0 + 24), lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
      {
        v3 = v0 + *(type metadata accessor for PgQuery_TruncateStmt(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_TruncateStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TruncateStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TruncateStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TruncateStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CurrentOfExpr._StorageClass.__deallocating_deinit(void *a1, void *a2)
{
  outlined destroy of URL?(v2 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(v2 + *a2 + 8);

  v5 = *(*v2 + 48);
  v6 = *(*v2 + 52);

  return MEMORY[0x2821FE8D8](v2, v5, v6);
}

void type metadata completion function for PgQuery_CommentStmt._StorageClass()
{
  type metadata completion function for PgQuery_CommentStmt._StorageClass();
}

{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_CommentStmt.decodeMessage<A>(decoder:)()
{
  v2 = v1;
  v3 = *(type metadata accessor for PgQuery_CommentStmt(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  v7 = &type metadata for PgQuery_AlterFdwStmt;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    Comment = type metadata accessor for PgQuery_CommentStmt._StorageClass(0);
    v9 = *(Comment + 48);
    v10 = *(Comment + 52);
    v23 = v1;
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v11 + v12, 1, 1, Node);
    v14 = (v11 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment);
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v15 = *(v6 + 24);
    *(v11 + 16) = *(v6 + 16);
    *(v11 + 24) = v15;
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;

    outlined assign with copy of PgQuery_Node?(v6 + v16, v11 + v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v17 = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment + 8);
    v22 = *(v6 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment);

    v18 = v14[1];
    *v14 = v22;
    v14[1] = v17;
    v7 = &type metadata for PgQuery_AlterFdwStmt;

    *(v0 + v3) = v11;
    v2 = v23;
  }

  Description = v7[201].Description;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v2)
  {
    while ((v21 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 3:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CommentStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(Node - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](Node);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = a1;
  v12 = *(a1 + 24);
  ResultSetCursor.columns.modify(v10, v12);
  if (v13)
  {
    v22 = v10;
    v23 = v12;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v14 = v24;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v14)
    {
      return result;
    }

    v24 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v11 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v6 + 48))(v5, 1, Node) == 1)
  {
    result = outlined destroy of URL?(v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v5, v9, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v16 = v24;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
    if (v16)
    {
      return result;
    }
  }

  v17 = *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment + 8);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment) & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment + 8);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_CommentStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](Node);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  ResultSetCursor.columns.modify(*(a1 + 16), *(a1 + 24));
  v19 = v18;
  ResultSetCursor.columns.modify(v16, v17);
  if (v19 != v20)
  {
    return 0;
  }

  v21 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v22 = *(v12 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v21, &v15[v22], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v23 = *(v5 + 48);
  if (v23(v15, 1, Node) == 1)
  {
    v24 = v23(&v15[v22], 1, Node);

    if (v24 == 1)
    {
      outlined destroy of URL?(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v15, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v23(&v15[v22], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_7:
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
    outlined destroy of URL?(v15, v25, v26);
LABEL_9:

    return 0;
  }

  v28 = v36;
  outlined init with take of PgQuery_OidList(&v15[v22], v36, type metadata accessor for PgQuery_Node);
  v29 = *(Node + 20);
  v30 = *&v11[v29];
  v31 = *(v28 + v29);

  if (v30 != v31)
  {

    v32 = closure #1 in static PgQuery_Node.== infix(_:_:)(v30, v31);

    if ((v32 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_8;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v33 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment + 8))
  {

    return 1;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return (v34 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CommentStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommentStmt and conformance PgQuery_CommentStmt, type metadata accessor for PgQuery_CommentStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CommentStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommentStmt and conformance PgQuery_CommentStmt, type metadata accessor for PgQuery_CommentStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CommentStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommentStmt and conformance PgQuery_CommentStmt, type metadata accessor for PgQuery_CommentStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_FetchStmt.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_FetchStmt.traverse<A>(visitor:)()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), lazy protocol witness table accessor for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0[4];
      v4 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v4 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        if (*(v0 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
        {
          v5 = v0 + *(type metadata accessor for PgQuery_FetchStmt(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_FetchStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

double (*protocol witness for Message.unknownFields.modify in conformance PgQuery_FetchStmt(uint64_t a1, uint64_t a2))(void, void)
{
  result = ResultSetCursor.columns.modify;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FetchStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FetchStmt and conformance PgQuery_FetchStmt, type metadata accessor for PgQuery_FetchStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FetchStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FetchStmt and conformance PgQuery_FetchStmt, type metadata accessor for PgQuery_FetchStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FetchStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FetchStmt and conformance PgQuery_FetchStmt, type metadata accessor for PgQuery_FetchStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_IndexStmt._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v5;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v6, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames) = v5;
  v8 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) = 0;
  return v0;
}

uint64_t PgQuery_IndexStmt._StorageClass.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams);

  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams);

  v6 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames);

  v8 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment + 8);

  return v0;
}

void type metadata completion function for PgQuery_IndexStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_IndexStmt.decodeMessage<A>(decoder:)()
{
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent;
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
          goto LABEL_17;
        case 2:
          v7 = v0;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
          goto LABEL_20;
        case 3:
          v5 = v4;
          v6 = v3;
          goto LABEL_17;
        case 4:
          v5 = v4;
          v6 = v3;
          goto LABEL_17;
        case 5:
        case 6:
        case 7:
        case 9:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_28;
        case 8:
          v7 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_20:
          v0 = v7;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_28:
          v6 = v9;
          v5 = v8;
          break;
        case 10:
          v5 = v4;
          v6 = v3;
LABEL_17:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 11:
          v5 = v4;
          v6 = v3;
          goto LABEL_5;
        case 12:
          v5 = v4;
          v6 = v3;
          goto LABEL_5;
        case 13:
          v5 = v4;
          v6 = v3;
          goto LABEL_5;
        case 14:
          v5 = v4;
          v6 = v3;
LABEL_5:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 15:
          v5 = v4;
          v6 = v3;
          goto LABEL_31;
        case 16:
          v5 = v4;
          v6 = v3;
          goto LABEL_31;
        case 17:
          v5 = v4;
          v6 = v3;
          goto LABEL_31;
        case 18:
          v5 = v4;
          v6 = v3;
          goto LABEL_31;
        case 19:
          v5 = v4;
          v6 = v3;
          goto LABEL_31;
        case 20:
          v5 = v4;
          v6 = v3;
          goto LABEL_31;
        case 21:
          v6 = v3;
          v5 = v4;
          goto LABEL_31;
        case 22:
          v5 = v4;
          v6 = v3;
          goto LABEL_31;
        case 23:
          v5 = v4;
          v6 = v3;
LABEL_31:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
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

uint64_t closure #1 in PgQuery_IndexStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v36 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v36 = *(Node - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](Node);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v14 = *(RangeVar - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v2)
    {
    }
  }

  outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v12, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v14 + 48))(v12, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v17, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      return outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_RangeVar);
    }

    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_RangeVar);
  }

  v22 = v40;
  v23 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) & 0xFFFFFFFFFFFFLL;
  }

  v26 = v38;
  v25 = Node;
  if (v24)
  {
    v27 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v2)
    {
    }
  }

  v28 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace + 8);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace) & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v30 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace + 8);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v2)
    {
    }
  }

  if (*(*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
    }
  }

  if (*(*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
    }
  }

  if (!*(*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16))
  {
    goto LABEL_30;
  }

  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (v2)
  {
  }

LABEL_30:
  outlined init with copy of PgQuery_Alias?(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = (*(v36 + 48))(v26, 1, v25);
  v32 = v37;
  if (v31 == 1)
  {
    outlined destroy of URL?(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v26, v37, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      return outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
  }

  if (*(*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
    }
  }

  v33 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment + 8);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment) & 0xFFFFFFFFFFFFLL;
  }

  if (!v34 || (v35 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v2))
  {
    if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v2))
    {
      if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v2))
      {
        if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v2))
        {
          result = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid);
          if (!result || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v2))
          {
            if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v2))
            {
              if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v2))
              {
                if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v2))
                {
                  if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v2))
                  {
                    if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v2))
                    {
                      if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v2))
                      {
                        if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent) == 1)
                        {
                          result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
                          if (v2)
                          {
                            return result;
                          }

                          v22 = v40;
                        }

                        if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v2))
                        {
                          if (*(v40 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) == 1)
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
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_IndexStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v74 = *(Node - 8);
  v75 = Node;
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](Node);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v69 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v13 = &v69 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v15 = *(RangeVar - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v69 - v25;
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (v27 = _stringCompareWithSmolCheck(_:_:expecting:)(), v28 = 0, (v27 & 1) != 0))
  {
    v70 = v7;
    v71 = v13;
    v76 = a2;
    v29 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
    v30 = *(v23 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v26, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v31 = v76 + v29;
    v32 = v76;
    outlined init with copy of PgQuery_Alias?(v31, &v26[v30], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v33 = *(v15 + 48);
    if (v33(v26, 1, RangeVar) == 1)
    {
      v34 = v33(&v26[v30], 1, RangeVar);

      if (v34 == 1)
      {
        outlined destroy of URL?(v26, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
        goto LABEL_14;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v26, v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if (v33(&v26[v30], 1, RangeVar) != 1)
      {
        outlined init with take of PgQuery_OidList(&v26[v30], v18, type metadata accessor for PgQuery_RangeVar);

        v39 = specialized static PgQuery_RangeVar.== infix(_:_:)(v22, v18);
        outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
        outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_RangeVar);
        outlined destroy of URL?(v26, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
        if ((v39 & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_14:
        if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) != *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8) != *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_11;
        }

        if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace) != *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace + 8) != *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_11;
        }

        v40 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams);
        v41 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams);

        NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v40, v41);

        if ((NodeV_Tt1g5 & 1) == 0)
        {
          goto LABEL_11;
        }

        v43 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams);
        v44 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams);

        v45 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v43, v44);

        if ((v45 & 1) == 0)
        {
          goto LABEL_11;
        }

        v46 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
        v47 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

        v48 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v46, v47);

        if ((v48 & 1) == 0)
        {
          goto LABEL_11;
        }

        v49 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
        v50 = *(v73 + 48);
        v51 = v71;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v71, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v52 = v76 + v49;
        v53 = v76;
        outlined init with copy of PgQuery_Alias?(v52, v51 + v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v54 = v75;
        v55 = *(v74 + 48);
        if (v55(v51, 1, v75) == 1)
        {
          if (v55(v51 + v50, 1, v54) == 1)
          {
            outlined destroy of URL?(v51, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            goto LABEL_33;
          }
        }

        else
        {
          v56 = v72;
          outlined init with copy of PgQuery_Alias?(v51, v72, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v55(v51 + v50, 1, v54) != 1)
          {
            v57 = v70;
            outlined init with take of PgQuery_OidList(v51 + v50, v70, type metadata accessor for PgQuery_Node);
            v58 = *(v54 + 20);
            v59 = *(v56 + v58);
            v60 = *(v57 + v58);
            if (v59 == v60 || (v61 = *(v56 + v58), , , v62 = closure #1 in static PgQuery_Node.== infix(_:_:)(v59, v60), , , (v62 & 1) != 0))
            {
              type metadata accessor for UnknownStorage();
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
              v63 = dispatch thunk of static Equatable.== infix(_:_:)();
              outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
              outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
              outlined destroy of URL?(v51, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
              if (v63)
              {
LABEL_33:
                v64 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames);
                v65 = *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames);

                v66 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v64, v65);

                if (v66 & 1) != 0 && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment + 8) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) == *(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) == *(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed) == *(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent) == *(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) == *(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists))
                {
                  v67 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc);

                  v68 = *(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc);

                  v28 = v67 ^ v68 ^ 1;
                  return v28 & 1;
                }
              }

LABEL_11:

              v28 = 0;
              return v28 & 1;
            }

            outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
            outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
            v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
            v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
            goto LABEL_29;
          }

          outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
        }

        v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
        v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_29:
        v37 = v51;
        goto LABEL_10;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_RangeVar);
    }

    v35 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v36 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v37 = v26;
LABEL_10:
    outlined destroy of URL?(v37, v35, v36);
    goto LABEL_11;
  }

  return v28 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_IndexStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexStmt and conformance PgQuery_IndexStmt, type metadata accessor for PgQuery_IndexStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_IndexStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexStmt and conformance PgQuery_IndexStmt, type metadata accessor for PgQuery_IndexStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_IndexStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexStmt and conformance PgQuery_IndexStmt, type metadata accessor for PgQuery_IndexStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateFunctionStmt.decodeMessage<A>(decoder:)()
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
            v3 = *(type metadata accessor for PgQuery_CreateFunctionStmt(0) + 40);
            type metadata accessor for PgQuery_TypeName(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 6:
LABEL_4:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
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

uint64_t PgQuery_CreateFunctionStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v19 - v7;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v10 = *(TypeName - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](TypeName);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v2))
  {
    if (*(v3 + 1) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v2))
    {
      v19[1] = a1;
      v20 = v2;
      if (*(*(v3 + 8) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        v15 = v20;
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v15)
        {
          return result;
        }

        v20 = 0;
      }

      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        v16 = v20;
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v16)
        {
          return result;
        }

        v20 = 0;
      }

      v19[0] = type metadata accessor for PgQuery_CreateFunctionStmt(0);
      outlined init with copy of PgQuery_Alias?(v3 + *(v19[0] + 40), v8, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if ((*(v10 + 48))(v8, 1, TypeName) == 1)
      {
        outlined destroy of URL?(v8, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
        v17 = v20;
      }

      else
      {
        outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_TypeName);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
        v17 = v20;
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_TypeName);
        if (v17)
        {
          return result;
        }
      }

      if (!*(*(v3 + 24) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v17))
      {
        v18 = v3 + *(v19[0] + 36);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateFunctionStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = v4;
  *(a2 + 24) = v4;
  v5 = a2 + *(a1 + 36);
  UnknownStorage.init()();
  v6 = *(a1 + 40);
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v8 = *(*(TypeName - 8) + 56);

  return v8(a2 + v6, 1, 1, TypeName);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateFunctionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFunctionStmt and conformance PgQuery_CreateFunctionStmt, type metadata accessor for PgQuery_CreateFunctionStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateFunctionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFunctionStmt and conformance PgQuery_CreateFunctionStmt, type metadata accessor for PgQuery_CreateFunctionStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateFunctionStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFunctionStmt and conformance PgQuery_CreateFunctionStmt, type metadata accessor for PgQuery_CreateFunctionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterFunctionStmt.decodeMessage<A>(decoder:)()
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
          v3 = *(type metadata accessor for PgQuery_AlterFunctionStmt(0) + 28);
          type metadata accessor for PgQuery_ObjectWithArgs(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterFunctionStmt.traverse<A>(visitor:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v5 = *(ObjectWithArgs - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](ObjectWithArgs);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = v0;
  v10 = *(v0 + 8);
  ResultSetCursor.columns.modify(*v0, v10);
  if (v11)
  {
    v23 = v8;
    v24 = v10;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v12 = v25;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v12)
    {
      return result;
    }

    v25 = 0;
  }

  AlterFunctionStmt = type metadata accessor for PgQuery_AlterFunctionStmt(0);
  v15 = v9;
  outlined init with copy of PgQuery_Alias?(v9 + *(AlterFunctionStmt + 28), v4, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v5 + 48))(v4, 1, ObjectWithArgs) == 1)
  {
    outlined destroy of URL?(v4, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v16 = v25;
  }

  else
  {
    v20 = AlterFunctionStmt;
    v17 = v21;
    outlined init with take of PgQuery_OidList(v4, v21, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);
    v16 = v25;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v16)
    {
      return result;
    }

    AlterFunctionStmt = v20;
  }

  if (!*(v15[2] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v16))
  {
    v18 = v15 + *(AlterFunctionStmt + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterFunctionStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v7 = *(*(ObjectWithArgs - 8) + 56);

  return v7(a2 + v5, 1, 1, ObjectWithArgs);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterFunctionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterFunctionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterFunctionStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DoStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DoStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DoStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_RenameStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void type metadata completion function for PgQuery_RenameStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_RenameStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          }

          else if (result == 8)
          {
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          }
        }

        else
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
        }

        else
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        }

        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1 || result == 2)
      {
        lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RenameStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = &v37 - v4;
  Node = type metadata accessor for PgQuery_Node(0);
  v39 = *(Node - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](Node);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v11 = *(RangeVar - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = a1;
  v17 = *(a1 + 24);
  ResultSetCursor.columns.modify(v15, v17);
  if (v18)
  {
    v43 = v15;
    v44 = v17;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v19 = v45;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v19)
    {
      return result;
    }

    v45 = 0;
  }

  v21 = *(v16 + 32);
  v22 = *(v16 + 40);
  ResultSetCursor.columns.modify(v21, v22);
  if (v23)
  {
    v43 = v21;
    v44 = v22;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v24 = v45;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v24)
    {
      return result;
    }

    v45 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v10, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v11 + 48))(v10, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v14, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v25 = v45;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RangeVar);
    if (v25)
    {
      return result;
    }

    v45 = 0;
  }

  v26 = v40;
  outlined init with copy of PgQuery_Alias?(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v39 + 48))(v26, 1, Node) == 1)
  {
    result = outlined destroy of URL?(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v27 = v45;
  }

  else
  {
    v28 = v26;
    v29 = v38;
    outlined init with take of PgQuery_OidList(v28, v38, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v27 = v45;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
    if (v27)
    {
      return result;
    }
  }

  v30 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname + 8);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname) & 0xFFFFFFFFFFFFLL;
  }

  if (!v31 || (v32 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v27))
  {
    v33 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname + 8);
    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname) & 0xFFFFFFFFFFFFLL;
    }

    if (!v34 || (v35 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v27))
    {
      if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior) || (v36 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8), v43 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior), v44 = v36, lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v27))
      {
        if (*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) == 1)
        {
          return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_RenameStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v69 = *(Node - 8);
  v70 = Node;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](Node);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v64 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v71 = &v64 - v11;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v13 = *(RangeVar - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v67 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v64 - v22;
  v24 = *(a2 + 16);
  v25 = *(a2 + 24);
  ResultSetCursor.columns.modify(*(a1 + 16), *(a1 + 24));
  v27 = v26;
  ResultSetCursor.columns.modify(v24, v25);
  if (v27 != v28)
  {
    goto LABEL_18;
  }

  v29 = *(a2 + 32);
  v30 = *(a2 + 40);
  ResultSetCursor.columns.modify(*(a1 + 32), *(a1 + 40));
  v32 = v31;
  ResultSetCursor.columns.modify(v29, v30);
  if (v32 != v33)
  {
    goto LABEL_18;
  }

  v34 = a2;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v36 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v37 = v34 + v35;
  v38 = v34;
  outlined init with copy of PgQuery_Alias?(v37, &v23[v36], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v39 = *(v13 + 48);
  if (v39(v23, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v23, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v39(&v23[v36], 1, RangeVar) != 1)
    {
      v43 = v67;
      outlined init with take of PgQuery_OidList(&v23[v36], v67, type metadata accessor for PgQuery_RangeVar);

      v44 = specialized static PgQuery_RangeVar.== infix(_:_:)(v19, v43);
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v44 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
LABEL_8:
    v41 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v42 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_16:
    outlined destroy of URL?(v23, v41, v42);
    goto LABEL_17;
  }

  v40 = v39(&v23[v36], 1, RangeVar);

  if (v40 != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_10:
  v45 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v46 = *(v68 + 48);
  v23 = v71;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v71, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v38 + v45, &v23[v46], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v47 = v70;
  v48 = *(v69 + 48);
  if (v48(v23, 1, v70) == 1)
  {
    if (v48(&v23[v46], 1, v47) == 1)
    {
      outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_23:
      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname) == *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname + 8) == *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname) == *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname + 8) == *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        v60 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
        v61 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
        if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8) == 1)
        {
          if (v61)
          {
            if (v61 == 1)
            {
              if (v60 == 1)
              {
                goto LABEL_40;
              }
            }

            else if (v60 == 2)
            {
LABEL_40:
              v62 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

              v63 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

              v50 = v62 ^ v63 ^ 1;
              return v50 & 1;
            }
          }

          else if (!v60)
          {
            goto LABEL_40;
          }
        }

        else if (v60 == v61)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v49 = v66;
  outlined init with copy of PgQuery_Alias?(v23, v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v48(&v23[v46], 1, v47) == 1)
  {
    outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
LABEL_15:
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

  v52 = &v23[v46];
  v53 = v65;
  outlined init with take of PgQuery_OidList(v52, v65, type metadata accessor for PgQuery_Node);
  v54 = *(v47 + 20);
  v55 = *(v49 + v54);
  v56 = *(v53 + v54);
  if (v55 != v56)
  {
    v57 = *(v49 + v54);

    v58 = closure #1 in static PgQuery_Node.== infix(_:_:)(v55, v56);

    if ((v58 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v59)
  {
    goto LABEL_23;
  }

LABEL_17:

LABEL_18:
  v50 = 0;
  return v50 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RenameStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RenameStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RenameStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_RuleStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename + 8);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void type metadata completion function for PgQuery_RuleStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_RuleStmt.decodeMessage<A>(decoder:)()
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
            type metadata accessor for PgQuery_RangeVar(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
            goto LABEL_19;
          case 2:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_19:
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
LABEL_17:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result != 4)
        {
          goto LABEL_17;
        }

        lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RuleStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v37 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v30 = *(Node - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](Node);
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v15 = *(RangeVar - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v15 + 48))(v13, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v19 = v33;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v18, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v20 = v33;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v19 = v20;
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    if (v20)
    {
      return result;
    }
  }

  v22 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename + 8);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename) & 0xFFFFFFFFFFFFLL;
  }

  if (!v23 || (v24 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v19))
  {
    v25 = v31;
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v30 + 48))(v25, 1, Node) == 1)
    {
      result = outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v26 = v25;
      v27 = v29;
      outlined init with take of PgQuery_OidList(v26, v29, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      if (v19)
      {
        return result;
      }
    }

    if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event) || (v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event + 8), v35 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event), v36 = v28, lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v19))
    {
      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v19))
      {
        if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
        {
          if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) == 1)
          {
            return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_RuleStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  Node = type metadata accessor for PgQuery_Node(0);
  v60 = *(Node - 8);
  v61 = Node;
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](Node);
  v56 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v56 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v9 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = &v56 - v10;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v56 - v22;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v25 = *(v21 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v56 - v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v26 = v63 + v24;
  v27 = v63;
  outlined init with copy of PgQuery_Alias?(v26, &v23[v25], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v28 = *(v12 + 48);
  if (v28(v23, 1, RangeVar) == 1)
  {
    v29 = v28(&v23[v25], 1, RangeVar);

    if (v29 == 1)
    {
      outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v30 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v31 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    goto LABEL_17;
  }

  outlined init with copy of PgQuery_Alias?(v23, v18, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v28(&v23[v25], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  v32 = v58;
  outlined init with take of PgQuery_OidList(&v23[v25], v58, type metadata accessor for PgQuery_RangeVar);

  v33 = specialized static PgQuery_RangeVar.== infix(_:_:)(v18, v32);
  outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v33 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename) != *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename + 8) != *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v35 = *(v59 + 48);
  v23 = v62;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v62, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v34, &v23[v35], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = v61;
  v37 = *(v60 + 48);
  if (v37(v23, 1, v61) != 1)
  {
    v38 = v57;
    outlined init with copy of PgQuery_Alias?(v23, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v37(&v23[v35], 1, v36) == 1)
    {
      outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
      goto LABEL_16;
    }

    v41 = &v23[v35];
    v42 = v56;
    outlined init with take of PgQuery_OidList(v41, v56, type metadata accessor for PgQuery_Node);
    v43 = *(v36 + 20);
    v44 = *(v38 + v43);
    v45 = *(v42 + v43);
    if (v44 == v45 || (v46 = *(v38 + v43), , , v47 = closure #1 in static PgQuery_Node.== infix(_:_:)(v44, v45), , , (v47 & 1) != 0))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((v48 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
    v30 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_17:
    outlined destroy of URL?(v23, v30, v31);
    goto LABEL_18;
  }

  if (v37(&v23[v35], 1, v36) != 1)
  {
LABEL_16:
    v30 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_17;
  }

  outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_23:
  v49 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event + 8);
  if (specialized == infix<A>(_:_:)(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event), *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event + 8), *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event)) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead) == *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead))
  {
    v50 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions);
    v51 = v27;
    v52 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions);

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v50, v52);

    if (NodeV_Tt1g5)
    {
      v54 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace);

      v55 = *(v51 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace);

      v39 = v54 ^ v55 ^ 1;
      return v39 & 1;
    }
  }

LABEL_18:

  v39 = 0;
  return v39 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RuleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RuleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RuleStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_NotifyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_NotifyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_NotifyStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ListenStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ListenStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ListenStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_UnlistenStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_UnlistenStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_UnlistenStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_TransactionStmt.decodeMessage<A>(decoder:)()
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
          lazy protocol witness table accessor for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind();
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
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 5)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_TransactionStmt.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*v0)
  {
    v10 = *v0;
    v11 = *(v0 + 8);
    lazy protocol witness table accessor for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind();
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
  }

  else
  {
    v4 = v2;
  }

  v5 = v0[4];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v0[3] & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v7 = v0[6];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v0[5] & 0xFFFFFFFFFFFFLL;
    }

    if (!v8 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (*(v0 + 56) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
      {
        v9 = v0 + *(type metadata accessor for PgQuery_TransactionStmt(0) + 36);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_TransactionStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  v2 = a2 + *(a1 + 36);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TransactionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TransactionStmt and conformance PgQuery_TransactionStmt, type metadata accessor for PgQuery_TransactionStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TransactionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TransactionStmt and conformance PgQuery_TransactionStmt, type metadata accessor for PgQuery_TransactionStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TransactionStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TransactionStmt and conformance PgQuery_TransactionStmt, type metadata accessor for PgQuery_TransactionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_ViewStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void type metadata completion function for PgQuery_ViewStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_ViewStmt.decodeMessage<A>(decoder:)()
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
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 5:
LABEL_4:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 6:
            lazy protocol witness table accessor for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
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
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_ViewStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v35 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = &v27 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v28 = *(Node - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](Node);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v15 = *(RangeVar - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v15 + 48))(v13, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v19 = v31;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v18, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v20 = v31;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v19 = v20;
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    if (v20)
    {
      return result;
    }
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases) + 16))
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

  v23 = v29;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v28 + 48))(v23, 1, v22) == 1)
  {
    result = outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v24 = v23;
    v25 = v27;
    outlined init with take of PgQuery_OidList(v24, v27, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    if (v19)
    {
      return result;
    }
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v19))
  {
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
    {
      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption))
      {
        v26 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption + 8);
        v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption);
        v34 = v26;
        lazy protocol witness table accessor for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption();
        return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ViewStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  Node = type metadata accessor for PgQuery_Node(0);
  v61 = *(Node - 8);
  v62 = Node;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](Node);
  v58 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v58 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v9 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v63 = &v58 - v10;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v64 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v58 - v22;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view;
  v25 = *(v21 + 56);
  v26 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view, &v58 - v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v27 = v65 + v24;
  v28 = v65;
  outlined init with copy of PgQuery_Alias?(v27, &v23[v25], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v29 = *(v12 + 48);
  if (v29(v23, 1, RangeVar) == 1)
  {
    v30 = v29(&v23[v25], 1, RangeVar);

    if (v30 == 1)
    {
      outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v31 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v32 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v23, v18, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v29(&v23[v25], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  v33 = &v23[v25];
  v34 = v64;
  outlined init with take of PgQuery_OidList(v33, v64, type metadata accessor for PgQuery_RangeVar);

  v35 = specialized static PgQuery_RangeVar.== infix(_:_:)(v18, v34);
  outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases);
  v37 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_26;
  }

  v39 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v40 = *(v60 + 48);
  v23 = v63;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v28 + v39, &v23[v40], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v41 = v62;
  v42 = *(v61 + 48);
  if (v42(v23, 1, v62) != 1)
  {
    v43 = v59;
    outlined init with copy of PgQuery_Alias?(v23, v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v42(&v23[v40], 1, v41) == 1)
    {
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v44 = v58;
    outlined init with take of PgQuery_OidList(&v23[v40], v58, type metadata accessor for PgQuery_Node);
    v45 = *(v41 + 20);
    v46 = *(v43 + v45);
    v47 = *(v44 + v45);
    if (v46 == v47 || (v48 = *(v43 + v45), , , v49 = closure #1 in static PgQuery_Node.== infix(_:_:)(v46, v47), , , (v49 & 1) != 0))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v50)
      {
        goto LABEL_19;
      }

LABEL_26:

      return 0;
    }

    outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
    outlined destroy of URL?(v23, v31, v32);
    goto LABEL_26;
  }

  if (v42(&v23[v40], 1, v41) != 1)
  {
LABEL_15:
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_19:
  if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) != *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace))
  {
    goto LABEL_26;
  }

  v51 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
  v52 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v53 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v51, v52);

  if ((v53 & 1) == 0)
  {
    goto LABEL_26;
  }

  v54 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption);

  v55 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption);
  v56 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption + 8);

  if (v56 == 1)
  {
    if (v55 > 1)
    {
      if (v55 == 2)
      {
        if (v54 == 2)
        {
          return 1;
        }
      }

      else if (v54 == 3)
      {
        return 1;
      }
    }

    else if (v55)
    {
      if (v54 == 1)
      {
        return 1;
      }
    }

    else if (!v54)
    {
      return 1;
    }

    return 0;
  }

  return v54 == v55;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ViewStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ViewStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ViewStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_LoadStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_LoadStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_LoadStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateDomainStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v1 + v4, 1, 1, TypeName);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  (*(*(CollateClause - 8) + 56))(v1 + v6, 1, 1, CollateClause);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) = v3;
  *(v1 + 16) = *(a1 + 16);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;

  outlined assign with copy of PgQuery_Node?(a1 + v9, v1 + v4, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v1 + v6, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

  v11 = *(v1 + v8);
  *(v1 + v8) = v10;

  return v1;
}

uint64_t PgQuery_CreateDomainStmt._StorageClass.__deallocating_deinit()
{
  v1 = v0[2];

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void type metadata completion function for PgQuery_CreateDomainStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_CollateClause?, type metadata accessor for PgQuery_CollateClause, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_CreateDomainStmt.decodeMessage<A>(decoder:)()
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
        type metadata accessor for PgQuery_CollateClause(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause);
LABEL_13:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 4)
      {
LABEL_2:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }
    }

    else
    {
      if (result == 1)
      {
        goto LABEL_2;
      }

      if (result == 2)
      {
        type metadata accessor for PgQuery_TypeName(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
        goto LABEL_13;
      }
    }
  }
}

uint64_t closure #1 in PgQuery_CreateDomainStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v25 = &v21 - v6;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  v24 = *(CollateClause - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](CollateClause);
  v23 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v13 = *(TypeName - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](TypeName);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(a1 + 16) + 16))
  {
    v22 = a1;
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v2 = v1;

    if (v1)
    {
      return result;
    }

    a1 = v22;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v12, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v13 + 48))(v12, 1, TypeName) == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v16, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_TypeName);
    if (v2)
    {
      return result;
    }
  }

  v18 = v25;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v25, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if ((*(v24 + 48))(v18, 1, CollateClause) == 1)
  {
    result = outlined destroy of URL?(v18, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  }

  else
  {
    v19 = v18;
    v20 = v23;
    outlined init with take of PgQuery_OidList(v19, v23, type metadata accessor for PgQuery_CollateClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_CollateClause);
    if (v2)
    {
      return result;
    }
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static PgQuery_CreateDomainStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  v60 = *(CollateClause - 8);
  v61 = CollateClause;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](CollateClause);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v56 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMR);
  v11 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = &v56 - v12;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v14 = *(TypeName - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](TypeName);
  v58 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = &v56 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  v24 = *(a1 + 16);
  v25 = *(a2 + 16);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v24, v25);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_18;
  }

  v56 = v7;
  v27 = a2;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  v29 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v23, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v28, &v23[v29], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v30 = *(v14 + 48);
  v31 = a1;
  if (v30(v23, 1, TypeName) != 1)
  {
    v32 = v63;
    outlined init with copy of PgQuery_Alias?(v23, v63, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if (v30(&v23[v29], 1, TypeName) != 1)
    {
      v36 = v58;
      outlined init with take of PgQuery_OidList(&v23[v29], v58, type metadata accessor for PgQuery_TypeName);
      v37 = specialized static PgQuery_TypeName.== infix(_:_:)(v32, v36);
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_TypeName);
      outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_TypeName);
      outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if ((v37 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_TypeName);
LABEL_8:
    v33 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v34 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v35 = v23;
LABEL_17:
    outlined destroy of URL?(v35, v33, v34);
    goto LABEL_18;
  }

  if (v30(&v23[v29], 1, TypeName) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
LABEL_10:
  v38 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
  v39 = *(v59 + 48);
  v40 = v62;
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v62, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v38, v40 + v39, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v41 = v61;
  v42 = *(v60 + 48);
  if (v42(v40, 1, v61) == 1)
  {
    if (v42(v40 + v39, 1, v41) == 1)
    {
      outlined destroy of URL?(v40, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
LABEL_23:
      v54 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);
      v55 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

      v44 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v54, v55);

      return v44 & 1;
    }

    goto LABEL_15;
  }

  v43 = v57;
  outlined init with copy of PgQuery_Alias?(v40, v57, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if (v42(v40 + v39, 1, v41) == 1)
  {
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_CollateClause);
LABEL_15:
    v33 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMd;
    v34 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMR;
LABEL_16:
    v35 = v40;
    goto LABEL_17;
  }

  v46 = v56;
  outlined init with take of PgQuery_OidList(v40 + v39, v56, type metadata accessor for PgQuery_CollateClause);
  v47 = *(v41 + 20);
  v48 = *(v43 + v47);
  v49 = *(v46 + v47);
  if (v48 != v49)
  {
    v50 = *(v43 + v47);

    v51 = closure #1 in static PgQuery_CollateClause.== infix(_:_:)(v48, v49);

    if (!v51)
    {
      outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_CollateClause);
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_CollateClause);
      v33 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd;
      v34 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v52 = v56;
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_CollateClause);
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_CollateClause);
  outlined destroy of URL?(v40, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if (v53)
  {
    goto LABEL_23;
  }

LABEL_18:

  v44 = 0;
  return v44 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateDomainStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateDomainStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateDomainStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreatedbStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreatedbStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreatedbStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropdbStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropdbStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropdbStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_VacuumStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumStmt and conformance PgQuery_VacuumStmt, type metadata accessor for PgQuery_VacuumStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_VacuumStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumStmt and conformance PgQuery_VacuumStmt, type metadata accessor for PgQuery_VacuumStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_VacuumStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumStmt and conformance PgQuery_VacuumStmt, type metadata accessor for PgQuery_VacuumStmt);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for defaultInstance(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4, uint64_t *a5)
{
  v8 = a2(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = *a3;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v11 + v12, 1, 1, Node);
  *(v11 + *a4) = MEMORY[0x277D84F90];
  *a5 = v11;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ExplainStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ExplainStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ExplainStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_CreateTableAsStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_IntoClause?, type metadata accessor for PgQuery_IntoClause, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_CreateTableAsStmt.decodeMessage<A>(decoder:)()
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for PgQuery_IntoClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause);
        }

        v0 = v3;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 3)
      {
        lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 4 || result == 5)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

void closure #1 in PgQuery_CreateTableAsStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v30 = *(IntoClause - 8);
  v31 = IntoClause;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](IntoClause);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  Node = type metadata accessor for PgQuery_Node(0);
  v17 = *(Node - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](Node);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v17 + 48))(v15, 1, Node) == 1)
  {
    outlined destroy of URL?(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v21 = v37;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v21)
    {
      return;
    }

    v37 = 0;
  }

  v22 = v32;
  outlined init with copy of PgQuery_Alias?(v32 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into, v8, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if ((*(v30 + 48))(v8, 1, v31) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  }

  else
  {
    v23 = v29;
    outlined init with take of PgQuery_OidList(v8, v29, type metadata accessor for PgQuery_IntoClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause);
    v24 = v37;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_IntoClause);
    if (v24)
    {
      return;
    }

    v37 = 0;
  }

  v25 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind);
  v26 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind + 8);
  ResultSetCursor.columns.modify(v25, v26);
  if (v27)
  {
    v35 = v25;
    v36 = v26;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v28 = v37;
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v28)
    {
      return;
    }
  }

  else
  {
    v28 = v37;
  }

  if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto) != 1 || (dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v28))
  {
    if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }
  }
}

uint64_t closure #1 in static PgQuery_CreateTableAsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v69 = *(IntoClause - 8);
  v70 = IntoClause;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](IntoClause);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v64 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMR);
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v71 = &v64 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](Node);
  v67 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v64 - v23;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v26 = *(v22 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, &v64 - v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = a2 + v25;
  v28 = a2;
  outlined init with copy of PgQuery_Alias?(v27, &v24[v26], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v13 + 48);
  if (v29(v24, 1, Node) == 1)
  {
    v30 = v29(&v24[v26], 1, Node);

    v31 = a1;
    if (v30 == 1)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v24, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v29(&v24[v26], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
LABEL_6:
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_7:
    v34 = v24;
LABEL_18:
    outlined destroy of URL?(v34, v32, v33);
    goto LABEL_19;
  }

  v35 = &v24[v26];
  v36 = v67;
  outlined init with take of PgQuery_OidList(v35, v67, type metadata accessor for PgQuery_Node);
  v37 = *(Node + 20);
  v38 = *&v19[v37];
  v39 = *(v36 + v37);
  v31 = a1;

  if (v38 != v39)
  {

    v40 = closure #1 in static PgQuery_Node.== infix(_:_:)(v38, v39);

    if ((v40 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v41 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v42 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into;
  v43 = *(v68 + 48);
  v44 = v71;
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into, v71, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(v28 + v42, v44 + v43, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v45 = v70;
  v46 = *(v69 + 48);
  if (v46(v44, 1, v70) != 1)
  {
    v47 = v66;
    outlined init with copy of PgQuery_Alias?(v44, v66, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    if (v46(v44 + v43, 1, v45) != 1)
    {
      v50 = v65;
      outlined init with take of PgQuery_OidList(v44 + v43, v65, type metadata accessor for PgQuery_IntoClause);
      v51 = *(v45 + 20);
      v52 = *(v47 + v51);
      v53 = *(v50 + v51);
      if (v52 == v53 || (v54 = *(v47 + v51), , , v55 = closure #1 in static PgQuery_IntoClause.== infix(_:_:)(v52, v53), , , (v55 & 1) != 0))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_IntoClause);
        outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_IntoClause);
        outlined destroy of URL?(v44, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
        if ((v56 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }

      outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_IntoClause);
      outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_IntoClause);
      v32 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd;
      v33 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR;
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_IntoClause);
LABEL_16:
    v32 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMd;
    v33 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMR;
LABEL_17:
    v34 = v44;
    goto LABEL_18;
  }

  if (v46(v44 + v43, 1, v45) != 1)
  {
    goto LABEL_16;
  }

  outlined destroy of URL?(v44, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
LABEL_24:
  v57 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind);
  v58 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind + 8);
  ResultSetCursor.columns.modify(*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind), *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind + 8));
  v60 = v59;
  ResultSetCursor.columns.modify(v57, v58);
  if (v60 == v61 && *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto) == *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto))
  {
    v62 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);

    v63 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);

    v48 = v62 ^ v63 ^ 1;
    return v48 & 1;
  }

LABEL_19:

  v48 = 0;
  return v48 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateTableAsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableAsStmt and conformance PgQuery_CreateTableAsStmt, type metadata accessor for PgQuery_CreateTableAsStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateTableAsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableAsStmt and conformance PgQuery_CreateTableAsStmt, type metadata accessor for PgQuery_CreateTableAsStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateTableAsStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableAsStmt and conformance PgQuery_CreateTableAsStmt, type metadata accessor for PgQuery_CreateTableAsStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateSeqStmt.decodeMessage<A>(decoder:)()
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
          v3 = *(type metadata accessor for PgQuery_CreateSeqStmt(0) + 36);
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
      }

      else if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 4 || result == 5)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateSeqStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  SeqStmt = type metadata accessor for PgQuery_CreateSeqStmt(0);
  v19 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(SeqStmt + 36), v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v9 + 48))(v7, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
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
  if (!*(*v19 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v13))
  {
    if (!*(v15 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
    {
      if (*(v15 + 12) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v13))
      {
        if (*(v15 + 13) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v13))
        {
          v16 = v15 + *(SeqStmt + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateSeqStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  v4 = a2 + *(a1 + 32);
  UnknownStorage.init()();
  v5 = *(a1 + 36);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v7 = *(*(RangeVar - 8) + 56);

  return v7(a2 + v5, 1, 1, RangeVar);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateSeqStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSeqStmt and conformance PgQuery_CreateSeqStmt, type metadata accessor for PgQuery_CreateSeqStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateSeqStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSeqStmt and conformance PgQuery_CreateSeqStmt, type metadata accessor for PgQuery_CreateSeqStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateSeqStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSeqStmt and conformance PgQuery_CreateSeqStmt, type metadata accessor for PgQuery_CreateSeqStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterSeqStmt.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1)
      {
        v3 = *(type metadata accessor for PgQuery_AlterSeqStmt(0) + 32);
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

uint64_t PgQuery_AlterSeqStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterSeqStmt = type metadata accessor for PgQuery_AlterSeqStmt(0);
  v19 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterSeqStmt + 32), v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v9 + 48))(v7, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
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
  if (!*(*v19 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v13))
  {
    if (*(v15 + 8) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v13))
    {
      if (*(v15 + 9) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v13))
      {
        v16 = v15 + *(AlterSeqStmt + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterSeqStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  v4 = a2 + *(a1 + 28);
  UnknownStorage.init()();
  v5 = *(a1 + 32);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v7 = *(*(RangeVar - 8) + 56);

  return v7(a2 + v5, 1, 1, RangeVar);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterSeqStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSeqStmt and conformance PgQuery_AlterSeqStmt, type metadata accessor for PgQuery_AlterSeqStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterSeqStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSeqStmt and conformance PgQuery_AlterSeqStmt, type metadata accessor for PgQuery_AlterSeqStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterSeqStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSeqStmt and conformance PgQuery_AlterSeqStmt, type metadata accessor for PgQuery_AlterSeqStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_VariableSetStmt.decodeMessage<A>(decoder:)()
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

      else if (result == 1)
      {
        lazy protocol witness table accessor for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
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

uint64_t PgQuery_VariableSetStmt.traverse<A>(visitor:)()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), lazy protocol witness table accessor for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0[4] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
      {
        if (*(v0 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
        {
          v5 = v0 + *(type metadata accessor for PgQuery_VariableSetStmt(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_VariableSetStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x277D84F90];
  *(a2 + 40) = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_VariableSetStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_VariableSetStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_VariableSetStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_VariableShowStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableShowStmt and conformance PgQuery_VariableShowStmt, type metadata accessor for PgQuery_VariableShowStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_VariableShowStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableShowStmt and conformance PgQuery_VariableShowStmt, type metadata accessor for PgQuery_VariableShowStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_VariableShowStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableShowStmt and conformance PgQuery_VariableShowStmt, type metadata accessor for PgQuery_VariableShowStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DiscardStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_DiscardStmt.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), lazy protocol witness table accessor for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PgQuery_DiscardStmt(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DiscardStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DiscardStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DiscardStmt and conformance PgQuery_DiscardStmt, type metadata accessor for PgQuery_DiscardStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DiscardStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DiscardStmt and conformance PgQuery_DiscardStmt, type metadata accessor for PgQuery_DiscardStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DiscardStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DiscardStmt and conformance PgQuery_DiscardStmt, type metadata accessor for PgQuery_DiscardStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateTrigStmt._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v3 = *(*(RangeVar - 8) + 56);
  v3(v0 + v1, 1, 1, RangeVar);
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) = v4;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v5, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) = 0;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, 1, 1, RangeVar);
  return v0;
}

uint64_t PgQuery_CreateTrigStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v27 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v8 = *(*(RangeVar - 8) + 56);
  v8(v1 + v6, 1, 1, RangeVar);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname;
  v10 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname) = MEMORY[0x277D84F90];
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v10;
  v32 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row) = 0;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing) = 0;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events) = 0;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) = v10;
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v13, 1, 1, Node);
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) = 0;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels) = v10;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) = 0;
  v34 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) = 0;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel;
  v8(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, 1, 1, RangeVar);
  v17 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v17;
  v18 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;

  outlined assign with copy of PgQuery_Node?(a1 + v18, v1 + v28, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname);

  v20 = *(v1 + v11);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v21 = v31;
  *(v1 + v32) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row);
  *(v1 + v21) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing);
  *(v1 + v30) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events);
  v22 = *(v1 + v12);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause, v1 + v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v29) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint);
  v23 = *(v1 + v15);
  *(v1 + v15) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels);

  v24 = v34;
  *(v1 + v35) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable);
  *(v1 + v24) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred);
  v25 = v36;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, v36, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined assign with take of PgQuery_Node?(v25, v1 + v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  return v1;
}

uint64_t PgQuery_CreateTrigStmt._StorageClass.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname);

  v3 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v4 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  return v0;
}

void type metadata completion function for PgQuery_CreateTrigStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_CreateTrigStmt.decodeMessage<A>(decoder:)()
{
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    v3 = v6;
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v5 = v3;
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 2:
          v4 = v0;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
          goto LABEL_5;
        case 3:
        case 4:
        case 8:
        case 11:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_6;
        case 5:
          v5 = v3;
          goto LABEL_15;
        case 6:
          v5 = v3;
          goto LABEL_19;
        case 7:
          v5 = v3;
LABEL_19:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 9:
          v4 = v0;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          goto LABEL_5;
        case 10:
          v5 = v3;
          goto LABEL_15;
        case 12:
          v5 = v3;
          goto LABEL_15;
        case 13:
          v5 = v3;
LABEL_15:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 14:
          v4 = v0;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
LABEL_5:
          v0 = v4;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_6:
          v5 = v6;
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

uint64_t closure #1 in PgQuery_CreateTrigStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v35 - v5;
  Node = type metadata accessor for PgQuery_Node(0);
  v39 = *(Node - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](Node);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v14 = *(RangeVar - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](RangeVar);
  v36 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v20 = *(a1 + 24);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = *(a1 + 24);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  v41 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v23 = *(v14 + 48);
  v35 = v14 + 48;
  v24 = v23;
  if (v23(v13, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v19, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v1)
    {
      return outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
    }

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
  }

  v26 = v41;
  if (*(*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);

    v27 = Node;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  else
  {
    v27 = Node;
  }

  if (!*(*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
  {
    if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      if (!*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
      {
        if (!*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
        {
          if (!*(*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
          {
            v28 = v40;
            outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause, v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if ((*(v39 + 48))(v28, 1, v27) == 1)
            {
              outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            }

            else
            {
              v29 = v28;
              v30 = v38;
              outlined init with take of PgQuery_OidList(v29, v38, type metadata accessor for PgQuery_Node);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
              dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
              result = outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
              if (v1)
              {
                return result;
              }
            }

            if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
            {
              if (!*(*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v1))
              {
                if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
                {
                  if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
                  {
                    v31 = v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel;
                    v32 = v37;
                    outlined init with copy of PgQuery_Alias?(v31, v37, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
                    if (v24(v32, 1, RangeVar) == 1)
                    {
                      return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
                    }

                    else
                    {
                      v33 = v32;
                      v34 = v36;
                      outlined init with take of PgQuery_OidList(v33, v36, type metadata accessor for PgQuery_RangeVar);
                      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
                      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
                      return outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_RangeVar);
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

BOOL closure #1 in static PgQuery_CreateTrigStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v85 = *(Node - 8);
  v86 = Node;
  v5 = *(v85 + 64);
  MEMORY[0x28223BE20](Node);
  v82 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v76 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v10 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v12 = &v76 - v11;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v14 = *(RangeVar - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v76 - v23;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v25 = *(*(v87 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v87);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v76 - v29;
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v80 = v12;
  v81 = v17;
  v78 = v22;
  v79 = v28;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v32 = *(v87 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v30, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v31, &v30[v32], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v33 = *(v14 + 48);
  if (v33(v30, 1, RangeVar) == 1)
  {
    v34 = v33(&v30[v32], 1, RangeVar);

    if (v34 == 1)
    {
      outlined destroy of URL?(v30, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_12;
    }

LABEL_9:
    v35 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v36 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v37 = v30;
LABEL_10:
    outlined destroy of URL?(v37, v35, v36);
    goto LABEL_32;
  }

  outlined init with copy of PgQuery_Alias?(v30, v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v33(&v30[v32], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_9;
  }

  v38 = &v30[v32];
  v39 = v81;
  outlined init with take of PgQuery_OidList(v38, v81, type metadata accessor for PgQuery_RangeVar);

  v40 = specialized static PgQuery_RangeVar.== infix(_:_:)(v24, v39);
  outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v30, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v40 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  v41 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname);
  v42 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v41, v42);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_32;
  }

  v44 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v45 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v46 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v44, v45);

  if ((v46 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row))
  {
    goto LABEL_32;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing))
  {
    goto LABEL_32;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events))
  {
    goto LABEL_32;
  }

  v47 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);
  v48 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);

  v49 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v47, v48);

  if ((v49 & 1) == 0)
  {
    goto LABEL_32;
  }

  v77 = v33;
  v50 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause;
  v51 = *(v84 + 48);
  v52 = v80;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause, v80, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v50, v52 + v51, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v53 = v86;
  v54 = *(v85 + 48);
  if (v54(v52, 1, v86) == 1)
  {
    if (v54(v52 + v51, 1, v53) == 1)
    {
      outlined destroy of URL?(v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_28:
      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint))
      {
        goto LABEL_32;
      }

      v64 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels);
      v65 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels);

      v66 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v64, v65);

      if ((v66 & 1) == 0 || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred))
      {
        goto LABEL_32;
      }

      v68 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel;
      v69 = *(v87 + 48);
      v70 = v79;
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, v79, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      outlined init with copy of PgQuery_Alias?(a2 + v68, v70 + v69, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v71 = v77;
      if (v77(v70, 1, RangeVar) == 1)
      {

        if (v71(v70 + v69, 1, RangeVar) == 1)
        {
          outlined destroy of URL?(v79, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
          return 1;
        }
      }

      else
      {
        outlined init with copy of PgQuery_Alias?(v70, v78, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
        if (v71(v70 + v69, 1, RangeVar) != 1)
        {
          v72 = v79;
          v73 = v81;
          outlined init with take of PgQuery_OidList(&v79[v69], v81, type metadata accessor for PgQuery_RangeVar);
          v74 = v78;
          v75 = specialized static PgQuery_RangeVar.== infix(_:_:)(v78, v73);

          outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_RangeVar);
          outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_RangeVar);
          outlined destroy of URL?(v72, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
          return (v75 & 1) != 0;
        }

        outlined destroy of PgQuery_OidList(v78, type metadata accessor for PgQuery_RangeVar);
      }

      outlined destroy of URL?(v79, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
      return 0;
    }

    goto LABEL_23;
  }

  v55 = v83;
  outlined init with copy of PgQuery_Alias?(v52, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v54(v52 + v51, 1, v53) == 1)
  {
    outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
LABEL_23:
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_24:
    v37 = v52;
    goto LABEL_10;
  }

  v56 = v52 + v51;
  v57 = v82;
  outlined init with take of PgQuery_OidList(v56, v82, type metadata accessor for PgQuery_Node);
  v58 = *(v53 + 20);
  v59 = *(v55 + v58);
  v60 = *(v57 + v58);
  if (v59 != v60)
  {
    v61 = *(v55 + v58);

    v62 = closure #1 in static PgQuery_Node.== infix(_:_:)(v59, v60);

    if ((v62 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_24;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v63 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v63)
  {
    goto LABEL_28;
  }

LABEL_32:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateTrigStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTrigStmt and conformance PgQuery_CreateTrigStmt, type metadata accessor for PgQuery_CreateTrigStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateTrigStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTrigStmt and conformance PgQuery_CreateTrigStmt, type metadata accessor for PgQuery_CreateTrigStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateTrigStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTrigStmt and conformance PgQuery_CreateTrigStmt, type metadata accessor for PgQuery_CreateTrigStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreatePLangStmt.decodeMessage<A>(decoder:)()
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
LABEL_15:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_15;
          case 2:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 3:
            goto LABEL_4;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreatePLangStmt.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    v3 = *(v0 + 16);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v5 = v1;
      if (*(*(v0 + 24) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        v5 = 0;
      }

      if (*(*(v0 + 32) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v5)
        {
          return result;
        }

        v5 = 0;
      }

      if (*(*(v0 + 40) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        v6 = v5;
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v5)
        {
          return result;
        }
      }

      else
      {
        v6 = v5;
      }

      if (*(v0 + 48) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v6))
      {
        v7 = v0 + *(type metadata accessor for PgQuery_CreatePLangStmt(0) + 40);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreatePLangStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = v2;
  *(a2 + 32) = v2;
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  v3 = a2 + *(a1 + 40);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreatePLangStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePLangStmt and conformance PgQuery_CreatePLangStmt, type metadata accessor for PgQuery_CreatePLangStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreatePLangStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePLangStmt and conformance PgQuery_CreatePLangStmt, type metadata accessor for PgQuery_CreatePLangStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreatePLangStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePLangStmt and conformance PgQuery_CreatePLangStmt, type metadata accessor for PgQuery_CreatePLangStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateRoleStmt.decodeMessage<A>(decoder:)()
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
          lazy protocol witness table accessor for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateRoleStmt.traverse<A>(visitor:)()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), lazy protocol witness table accessor for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0[4] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
      {
        v5 = v0 + *(type metadata accessor for PgQuery_CreateRoleStmt(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateRoleStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateRoleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRoleStmt and conformance PgQuery_CreateRoleStmt, type metadata accessor for PgQuery_CreateRoleStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateRoleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRoleStmt and conformance PgQuery_CreateRoleStmt, type metadata accessor for PgQuery_CreateRoleStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateRoleStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRoleStmt and conformance PgQuery_CreateRoleStmt, type metadata accessor for PgQuery_CreateRoleStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterRoleStmt.decodeMessage<A>(decoder:)()
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
          v3 = *(type metadata accessor for PgQuery_AlterRoleStmt(0) + 28);
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

uint64_t PgQuery_AlterRoleStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v18 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v7 = *(RoleSpec - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](RoleSpec);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterRoleStmt = type metadata accessor for PgQuery_AlterRoleStmt(0);
  v17 = v1;
  outlined init with copy of PgQuery_Alias?(v1 + *(AlterRoleStmt + 28), v5, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v7 + 48))(v5, 1, RoleSpec) == 1)
  {
    outlined destroy of URL?(v5, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v11 = v19;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v5, v10, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
    v11 = v19;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RoleSpec);
    if (v11)
    {
      return result;
    }
  }

  v13 = v17;
  if (!*(*v17 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v11))
  {
    if (!*(v13 + 8) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v11))
    {
      v14 = v13 + *(AlterRoleStmt + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterRoleStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  v4 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v7 = *(*(RoleSpec - 8) + 56);

  return v7(a2 + v5, 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterRoleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleStmt and conformance PgQuery_AlterRoleStmt, type metadata accessor for PgQuery_AlterRoleStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterRoleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleStmt and conformance PgQuery_AlterRoleStmt, type metadata accessor for PgQuery_AlterRoleStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterRoleStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleStmt and conformance PgQuery_AlterRoleStmt, type metadata accessor for PgQuery_AlterRoleStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropRoleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropRoleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropRoleStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_LockStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockStmt and conformance PgQuery_LockStmt, type metadata accessor for PgQuery_LockStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_LockStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockStmt and conformance PgQuery_LockStmt, type metadata accessor for PgQuery_LockStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_LockStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockStmt and conformance PgQuery_LockStmt, type metadata accessor for PgQuery_LockStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropRoleStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    if (v4[8] != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
    {
      v8 = &v4[*(a4(0) + 24)];
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ConstraintsSetStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConstraintsSetStmt and conformance PgQuery_ConstraintsSetStmt, type metadata accessor for PgQuery_ConstraintsSetStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ConstraintsSetStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConstraintsSetStmt and conformance PgQuery_ConstraintsSetStmt, type metadata accessor for PgQuery_ConstraintsSetStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ConstraintsSetStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConstraintsSetStmt and conformance PgQuery_ConstraintsSetStmt, type metadata accessor for PgQuery_ConstraintsSetStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_DropRoleStmt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_ReindexStmt.decodeMessage<A>(decoder:)()
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
          lazy protocol witness table accessor for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          v3 = *(type metadata accessor for PgQuery_ReindexStmt(0) + 36);
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 4:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
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

uint64_t PgQuery_ReindexStmt.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v8 = *(RangeVar - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v12 = *(v0 + 8);
    v18 = *v0;
    v19 = v12;
    lazy protocol witness table accessor for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  ReindexStmt = type metadata accessor for PgQuery_ReindexStmt(0);
  outlined init with copy of PgQuery_Alias?(v0 + *(ReindexStmt + 36), v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v8 + 48))(v6, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v14 = v2;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v11, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v14 = v2;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
    if (v2)
    {
      return result;
    }
  }

  v15 = v0[3];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v14))
  {
    if (!*(v0 + 8) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v14))
    {
      if (*(v0 + 36) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v14))
      {
        v17 = v0 + *(ReindexStmt + 32);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_ReindexStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 36) = 0;
  v4 = a2 + *(a1 + 32);
  UnknownStorage.init()();
  v5 = *(a1 + 36);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v7 = *(*(RangeVar - 8) + 56);

  return v7(a2 + v5, 1, 1, RangeVar);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ReindexStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReindexStmt and conformance PgQuery_ReindexStmt, type metadata accessor for PgQuery_ReindexStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ReindexStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReindexStmt and conformance PgQuery_ReindexStmt, type metadata accessor for PgQuery_ReindexStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ReindexStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReindexStmt and conformance PgQuery_ReindexStmt, type metadata accessor for PgQuery_ReindexStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CheckPointStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CheckPointStmt and conformance PgQuery_CheckPointStmt, type metadata accessor for PgQuery_CheckPointStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CheckPointStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CheckPointStmt and conformance PgQuery_CheckPointStmt, type metadata accessor for PgQuery_CheckPointStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CheckPointStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CheckPointStmt and conformance PgQuery_CheckPointStmt, type metadata accessor for PgQuery_CheckPointStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateSchemaStmt.decodeMessage<A>(decoder:)()
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

      else if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for PgQuery_CreateSchemaStmt(0) + 32);
        type metadata accessor for PgQuery_RoleSpec(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateSchemaStmt.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v8 = *(RoleSpec - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](RoleSpec);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = v0[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  SchemaStmt = type metadata accessor for PgQuery_CreateSchemaStmt(0);
  outlined init with copy of PgQuery_Alias?(v0 + *(SchemaStmt + 32), v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v8 + 48))(v6, 1, RoleSpec) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v16 = v2;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v11, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
    v16 = v2;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
    if (v2)
    {
      return result;
    }
  }

  if (!*(v0[2] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v16))
  {
    if (*(v0 + 24) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v16))
    {
      v17 = v0 + *(SchemaStmt + 28);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateSchemaStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  v4 = a2 + *(a1 + 28);
  UnknownStorage.init()();
  v5 = *(a1 + 32);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v7 = *(*(RoleSpec - 8) + 56);

  return v7(a2 + v5, 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateSchemaStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSchemaStmt and conformance PgQuery_CreateSchemaStmt, type metadata accessor for PgQuery_CreateSchemaStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateSchemaStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSchemaStmt and conformance PgQuery_CreateSchemaStmt, type metadata accessor for PgQuery_CreateSchemaStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateSchemaStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSchemaStmt and conformance PgQuery_CreateSchemaStmt, type metadata accessor for PgQuery_CreateSchemaStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterDatabaseStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseStmt and conformance PgQuery_AlterDatabaseStmt, type metadata accessor for PgQuery_AlterDatabaseStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterDatabaseStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseStmt and conformance PgQuery_AlterDatabaseStmt, type metadata accessor for PgQuery_AlterDatabaseStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterDatabaseStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseStmt and conformance PgQuery_AlterDatabaseStmt, type metadata accessor for PgQuery_AlterDatabaseStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterDatabaseSetStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 2)
      {
        v3 = *(type metadata accessor for PgQuery_AlterDatabaseSetStmt(0) + 24);
        type metadata accessor for PgQuery_VariableSetStmt(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
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

uint64_t PgQuery_AlterDatabaseSetStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v11 = *(VariableSetStmt - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](VariableSetStmt);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  v16 = v2[1];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v3)
    {
      return result;
    }

    v22 = a2;
    v4 = 0;
  }

  else
  {
    v22 = a2;
  }

  AlterDatabaseSetStmt = type metadata accessor for PgQuery_AlterDatabaseSetStmt(0);
  outlined init with copy of PgQuery_Alias?(v2 + *(AlterDatabaseSetStmt + 24), v9, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if ((*(v11 + 48))(v9, 1, VariableSetStmt) == 1)
  {
    outlined destroy of URL?(v9, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v9, v14, type metadata accessor for PgQuery_VariableSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_VariableSetStmt);
    if (v4)
    {
      return result;
    }
  }

  v20 = v2 + *(AlterDatabaseSetStmt + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterDatabaseSetStmt@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v7 = *(*(VariableSetStmt - 8) + 56);

  return v7(&a2[v5], 1, 1, VariableSetStmt);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterDatabaseSetStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseSetStmt and conformance PgQuery_AlterDatabaseSetStmt, type metadata accessor for PgQuery_AlterDatabaseSetStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterDatabaseSetStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseSetStmt and conformance PgQuery_AlterDatabaseSetStmt, type metadata accessor for PgQuery_AlterDatabaseSetStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterDatabaseSetStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseSetStmt and conformance PgQuery_AlterDatabaseSetStmt, type metadata accessor for PgQuery_AlterDatabaseSetStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterRoleSetStmt.decodeMessage<A>(decoder:)()
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
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v3 = v0;
        v4 = *(type metadata accessor for PgQuery_AlterRoleSetStmt(0) + 24);
        type metadata accessor for PgQuery_RoleSpec(0);
        v5 = type metadata accessor for PgQuery_RoleSpec;
        v6 = &lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec;
LABEL_12:
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(v6, v5);
        v0 = v3;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v7 = *(type metadata accessor for PgQuery_AlterRoleSetStmt(0) + 28);
    type metadata accessor for PgQuery_VariableSetStmt(0);
    v5 = type metadata accessor for PgQuery_VariableSetStmt;
    v6 = &lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt;
    goto LABEL_12;
  }

  return result;
}

uint64_t PgQuery_AlterRoleSetStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v31 - v7;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v33 = *(VariableSetStmt - 8);
  v34 = VariableSetStmt;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](VariableSetStmt);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - v13;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v16 = *(RoleSpec - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](RoleSpec);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterRoleSetStmt = type metadata accessor for PgQuery_AlterRoleSetStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + AlterRoleSetStmt[6], v14, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v16 + 48))(v14, 1, RoleSpec) == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v21 = v39;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v19, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
    v21 = v39;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RoleSpec);
    if (v21)
    {
      return result;
    }
  }

  v23 = *v4;
  v24 = v4[1];
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    v26 = v35;
    if (v21)
    {
      return result;
    }

    v27 = 0;
  }

  else
  {
    v27 = v21;
    v26 = v35;
  }

  outlined init with copy of PgQuery_Alias?(v4 + AlterRoleSetStmt[7], v26, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if ((*(v33 + 48))(v26, 1, v34) == 1)
  {
    outlined destroy of URL?(v26, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  else
  {
    v28 = v26;
    v29 = v32;
    outlined init with take of PgQuery_OidList(v28, v32, type metadata accessor for PgQuery_VariableSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_VariableSetStmt);
    if (v27)
    {
      return result;
    }
  }

  v30 = v4 + AlterRoleSetStmt[5];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterRoleSetStmt@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[6];
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  (*(*(RoleSpec - 8) + 56))(&a2[v5], 1, 1, RoleSpec);
  v7 = a1[7];
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v9 = *(*(VariableSetStmt - 8) + 56);

  return v9(&a2[v7], 1, 1, VariableSetStmt);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterRoleSetStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleSetStmt and conformance PgQuery_AlterRoleSetStmt, type metadata accessor for PgQuery_AlterRoleSetStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterRoleSetStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleSetStmt and conformance PgQuery_AlterRoleSetStmt, type metadata accessor for PgQuery_AlterRoleSetStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterRoleSetStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleSetStmt and conformance PgQuery_AlterRoleSetStmt, type metadata accessor for PgQuery_AlterRoleSetStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateConversionStmt.decodeMessage<A>(decoder:)()
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
LABEL_4:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_4;
          case 4:
LABEL_15:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
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

uint64_t PgQuery_CreateConversionStmt.traverse<A>(visitor:)()
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
        if (!*(*(v0 + 40) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
        {
          if (*(v0 + 48) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
          {
            v7 = v0 + *(type metadata accessor for PgQuery_CreateConversionStmt(0) + 36);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateConversionStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  v3 = a2 + *(a1 + 36);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateConversionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateConversionStmt and conformance PgQuery_CreateConversionStmt, type metadata accessor for PgQuery_CreateConversionStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateConversionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateConversionStmt and conformance PgQuery_CreateConversionStmt, type metadata accessor for PgQuery_CreateConversionStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateConversionStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateConversionStmt and conformance PgQuery_CreateConversionStmt, type metadata accessor for PgQuery_CreateConversionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateCastStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_CreateCastStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_ObjectWithArgs?, type metadata accessor for PgQuery_ObjectWithArgs, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_CreateCastStmt.decodeMessage<A>(decoder:)()
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
        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_TypeName(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
          goto LABEL_17;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            type metadata accessor for PgQuery_ObjectWithArgs(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_17:
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 4:
            lazy protocol witness table accessor for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
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

uint64_t closure #1 in PgQuery_CreateCastStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = &v33 - v7;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v35 = *(ObjectWithArgs - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](ObjectWithArgs);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v18 = *(TypeName - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](TypeName);
  v34 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v43 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype, v16, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v24 = *(v18 + 48);
  if (v24(v16, 1, TypeName) == 1)
  {
    outlined destroy of URL?(v16, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v25 = v38;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v16, v23, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
    v26 = v38;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v25 = v26;
    result = outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_TypeName);
    if (v26)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v43 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype, v14, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v24(v14, 1, TypeName) == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v28 = v34;
    outlined init with take of PgQuery_OidList(v14, v34, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_TypeName);
    if (v25)
    {
      return result;
    }
  }

  v29 = v36;
  outlined init with copy of PgQuery_Alias?(v43 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func, v36, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v35 + 48))(v29, 1, ObjectWithArgs) == 1)
  {
    result = outlined destroy of URL?(v29, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  }

  else
  {
    v30 = v29;
    v31 = v33;
    outlined init with take of PgQuery_OidList(v30, v33, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v25)
    {
      return result;
    }
  }

  if (!*(v43 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context) || (v32 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context + 8), v41 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context), v42 = v32, lazy protocol witness table accessor for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v25))
  {
    if (*(v43 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout) == 1)
    {
      return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_CreateCastStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v68 = *(ObjectWithArgs - 8);
  v69 = ObjectWithArgs;
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](ObjectWithArgs);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v64 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR);
  v9 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v70 = &v64 - v10;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v12 = *(TypeName - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](TypeName);
  v72 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v71 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v74 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v64 - v26;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype;
  v73 = v25;
  v29 = *(v25 + 48);
  v30 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype, &v64 - v26, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v75 + v28, &v27[v29], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v31 = *(v12 + 48);
  if (v31(v27, 1, TypeName) == 1)
  {
    v32 = v31(&v27[v29], 1, TypeName);

    if (v32 == 1)
    {
      outlined destroy of URL?(v27, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      v33 = a1;
      goto LABEL_8;
    }

LABEL_6:
    outlined destroy of URL?(v27, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
    goto LABEL_33;
  }

  outlined init with copy of PgQuery_Alias?(v27, v20, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v31(&v27[v29], 1, TypeName) == 1)
  {

    outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_TypeName);
    goto LABEL_6;
  }

  v34 = v72;
  outlined init with take of PgQuery_OidList(&v27[v29], v72, type metadata accessor for PgQuery_TypeName);
  v33 = v30;

  v35 = specialized static PgQuery_TypeName.== infix(_:_:)(v20, v34);
  outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_TypeName);
  outlined destroy of URL?(v27, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_8:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype;
  v37 = *(v73 + 48);
  v38 = v33;
  v39 = v33 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype;
  v40 = v74;
  outlined init with copy of PgQuery_Alias?(v39, v74, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v75 + v36, v40 + v37, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v31(v40, 1, TypeName) == 1)
  {
    v41 = v31((v40 + v37), 1, TypeName);
    v42 = v38;
    if (v41 == 1)
    {
      outlined destroy of URL?(v40, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      goto LABEL_16;
    }

LABEL_13:
    v44 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v45 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v46 = v40;
LABEL_32:
    outlined destroy of URL?(v46, v44, v45);
    goto LABEL_33;
  }

  v43 = v71;
  outlined init with copy of PgQuery_Alias?(v40, v71, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v31((v40 + v37), 1, TypeName) == 1)
  {
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_TypeName);
    goto LABEL_13;
  }

  v47 = v72;
  outlined init with take of PgQuery_OidList(v40 + v37, v72, type metadata accessor for PgQuery_TypeName);
  v48 = specialized static PgQuery_TypeName.== infix(_:_:)(v43, v47);
  outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_TypeName);
  outlined destroy of URL?(v40, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v42 = v38;
  if ((v48 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_16:
  v49 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func;
  v50 = *(v67 + 48);
  v51 = v70;
  outlined init with copy of PgQuery_Alias?(v42 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func, v70, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  outlined init with copy of PgQuery_Alias?(v75 + v49, v51 + v50, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v52 = v69;
  v53 = *(v68 + 48);
  if (v53(v51, 1, v69) == 1)
  {
    if (v53(v51 + v50, 1, v52) == 1)
    {
      outlined destroy of URL?(v51, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  v56 = v66;
  outlined init with copy of PgQuery_Alias?(v51, v66, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (v53(v51 + v50, 1, v52) == 1)
  {
    outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_26:
    v44 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd;
    v45 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR;
LABEL_31:
    v46 = v51;
    goto LABEL_32;
  }

  v57 = v51 + v50;
  v58 = v65;
  outlined init with take of PgQuery_OidList(v57, v65, type metadata accessor for PgQuery_ObjectWithArgs);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v56, *v58) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v56 + 8), *(v58 + 8)) & 1) == 0 || *(v56 + 16) != *(v58 + 16))
  {
    outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_ObjectWithArgs);
    outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_ObjectWithArgs);
    v44 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd;
    v45 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR;
    goto LABEL_31;
  }

  v63 = *(v52 + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  LOBYTE(v63) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_ObjectWithArgs);
  outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_ObjectWithArgs);
  outlined destroy of URL?(v51, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((v63 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_19:
  v54 = *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context);
  v55 = *(v75 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context);
  if (*(v75 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context + 8) != 1)
  {
    if (v54 != v55)
    {
      goto LABEL_33;
    }

LABEL_36:
    v61 = *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout);

    v62 = *(v75 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout);

    v59 = v61 ^ v62 ^ 1;
    return v59 & 1;
  }

  if (v55 > 1)
  {
    if (v55 == 2)
    {
      if (v54 != 2)
      {
        goto LABEL_33;
      }
    }

    else if (v54 != 3)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (v55)
  {
    if (v54 != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (!v54)
  {
    goto LABEL_36;
  }

LABEL_33:

  v59 = 0;
  return v59 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateCastStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateCastStmt and conformance PgQuery_CreateCastStmt, type metadata accessor for PgQuery_CreateCastStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateCastStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateCastStmt and conformance PgQuery_CreateCastStmt, type metadata accessor for PgQuery_CreateCastStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateCastStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateCastStmt and conformance PgQuery_CreateCastStmt, type metadata accessor for PgQuery_CreateCastStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateOpClassStmt.decodeMessage<A>(decoder:)()
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
            v3 = *(type metadata accessor for PgQuery_CreateOpClassStmt(0) + 40);
            type metadata accessor for PgQuery_TypeName(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 5:
            goto LABEL_4;
          case 6:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

      else
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 3)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateOpClassStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v19 = *(TypeName - 8);
  v20 = TypeName;
  v10 = *(v19 + 64);
  MEMORY[0x28223BE20](TypeName);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    v21 = a1;
    v3 = 0;
  }

  else
  {
    v21 = a1;
  }

  if (*(*(v1 + 8) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v14 = v3;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v3)
    {
      return result;
    }
  }

  else
  {
    v14 = v3;
  }

  v15 = *(v1 + 24);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *(v1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v14))
  {
    OpClassStmt = type metadata accessor for PgQuery_CreateOpClassStmt(0);
    outlined init with copy of PgQuery_Alias?(v1 + *(OpClassStmt + 40), v8, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if ((*(v19 + 48))(v8, 1, v20) == 1)
    {
      outlined destroy of URL?(v8, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_TypeName);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
      if (v14)
      {
        return result;
      }
    }

    if (!*(*(v1 + 32) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v14))
    {
      if (*(v1 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v14))
      {
        v18 = v1 + *(OpClassStmt + 36);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateOpClassStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  v5 = a2 + *(a1 + 36);
  UnknownStorage.init()();
  v6 = *(a1 + 40);
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v8 = *(*(TypeName - 8) + 56);

  return v8(a2 + v6, 1, 1, TypeName);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateOpClassStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassStmt and conformance PgQuery_CreateOpClassStmt, type metadata accessor for PgQuery_CreateOpClassStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateOpClassStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassStmt and conformance PgQuery_CreateOpClassStmt, type metadata accessor for PgQuery_CreateOpClassStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateOpClassStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassStmt and conformance PgQuery_CreateOpClassStmt, type metadata accessor for PgQuery_CreateOpClassStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateOpFamilyStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
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

uint64_t PgQuery_CreateOpFamilyStmt.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0[2];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v5 = v0 + *(type metadata accessor for PgQuery_CreateOpFamilyStmt(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateOpFamilyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpFamilyStmt and conformance PgQuery_CreateOpFamilyStmt, type metadata accessor for PgQuery_CreateOpFamilyStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateOpFamilyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpFamilyStmt and conformance PgQuery_CreateOpFamilyStmt, type metadata accessor for PgQuery_CreateOpFamilyStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateOpFamilyStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpFamilyStmt and conformance PgQuery_CreateOpFamilyStmt, type metadata accessor for PgQuery_CreateOpFamilyStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_CreateOpFamilyStmt(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_AlterOpFamilyStmt.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
LABEL_13:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_13;
        }

        if (result == 2)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterOpFamilyStmt.traverse<A>(visitor:)()
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
      if (*(v0 + 24) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
      {
        if (!*(*(v0 + 32) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
        {
          v5 = v0 + *(type metadata accessor for PgQuery_AlterOpFamilyStmt(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterOpFamilyStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = v2;
  v3 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterOpFamilyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterOpFamilyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterOpFamilyStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt);

  return Message.hash(into:)();
}

char *PgQuery_PrepareStmt._StorageClass.init(copying:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(&v1[v7], 1, 1, Node);
  v9 = a1[3];
  *(v1 + 2) = a1[2];
  *(v1 + 3) = v9;
  *(v1 + 4) = a1[4];
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;

  outlined init with copy of PgQuery_Alias?(a1 + v10, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v6, &v1[v7], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

void type metadata completion function for PgQuery_PrepareStmt._StorageClass()
{
  type metadata completion function for PgQuery_PrepareStmt._StorageClass();
}

{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_PrepareStmt.decodeMessage<A>(decoder:)()
{
  v2 = *(type metadata accessor for PgQuery_PrepareStmt(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    Prepare = type metadata accessor for PgQuery_PrepareStmt._StorageClass(0);
    v7 = *(Prepare + 48);
    v8 = *(Prepare + 52);
    swift_allocObject();
    *(v0 + v2) = PgQuery_PrepareStmt._StorageClass.init(copying:)(v5);
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
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

uint64_t closure #1 in PgQuery_PrepareStmt.traverse<A>(visitor:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  Node = type metadata accessor for PgQuery_Node(0);
  v8 = *(Node - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](Node);
  v17 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v8 + 48))(v6, 1, Node) == 1)
      {
        return outlined destroy of URL?(v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v15 = v17;
        outlined init with take of PgQuery_OidList(v6, v17, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_PrepareStmt.== infix(_:_:)(void *a1, void *a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](Node);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v34 = v8;
  v17 = a1[4];
  v18 = a2[4];

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v17, v18);

  if (NodeV_Tt1g5)
  {
    v20 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
    v21 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v20, &v16[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v22 = *(v5 + 48);
    if (v22(v16, 1, Node) == 1)
    {

      if (v22(&v16[v21], 1, Node) == 1)
      {
        outlined destroy of URL?(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
      outlined destroy of URL?(v16, v23, v24);
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

      if ((v31 & 1) == 0)
      {

        outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_12;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PrepareStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PrepareStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PrepareStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ExecuteStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ExecuteStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ExecuteStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DeallocateStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeallocateStmt and conformance PgQuery_DeallocateStmt, type metadata accessor for PgQuery_DeallocateStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DeallocateStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeallocateStmt and conformance PgQuery_DeallocateStmt, type metadata accessor for PgQuery_DeallocateStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DeallocateStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeallocateStmt and conformance PgQuery_DeallocateStmt, type metadata accessor for PgQuery_DeallocateStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_Float(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_DeclareCursorStmt.decodeMessage<A>(decoder:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = *(type metadata accessor for PgQuery_DeclareCursorStmt(0) + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  v9 = &unk_280DBB000;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    DeclareCursor = type metadata accessor for PgQuery_DeclareCursorStmt._StorageClass(0);
    v11 = *(DeclareCursor + 48);
    v12 = *(DeclareCursor + 52);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xE000000000000000;
    *(v13 + 32) = 0;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
    v22 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v13 + v14, 1, 1, Node);
    v16 = *(v8 + 24);
    *(v13 + 16) = *(v8 + 16);
    *(v13 + 24) = v16;
    *(v13 + 32) = *(v8 + 32);
    outlined init with copy of PgQuery_Alias?(v8 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v4, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

    outlined assign with take of PgQuery_Node?(v4, v13 + v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v9 = &unk_280DBB000;
    *(v0 + v5) = v13;
  }

  v17 = v9[468];
  v18 = v23;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v18)
  {
    while ((v20 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
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

uint64_t closure #1 in PgQuery_DeclareCursorStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  Node = type metadata accessor for PgQuery_Node(0);
  v7 = *(Node - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](Node);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (v13 = *(a1 + 24), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v1))
  {
    if (!*(a1 + 32) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v7 + 48))(v6, 1, Node) == 1)
      {
        return outlined destroy of URL?(v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        outlined init with take of PgQuery_OidList(v6, v10, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_DeclareCursorStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](Node);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v31 = v8;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, Node) == 1)
  {
    if (v19(&v16[v18], 1, Node) == 1)
    {
      outlined destroy of URL?(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      return 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v19(&v16[v18], 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_10:
    v20 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_11:
    outlined destroy of URL?(v16, v20, v21);
    return 0;
  }

  v23 = v31;
  outlined init with take of PgQuery_OidList(&v16[v18], v31, type metadata accessor for PgQuery_Node);
  v24 = *(Node + 20);
  v25 = *&v12[v24];
  v26 = *(v23 + v24);
  if (v25 != v26)
  {
    v27 = *&v12[v24];

    v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v25, v26);

    if ((v28 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_11;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return (v29 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DeclareCursorStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeclareCursorStmt and conformance PgQuery_DeclareCursorStmt, type metadata accessor for PgQuery_DeclareCursorStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DeclareCursorStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeclareCursorStmt and conformance PgQuery_DeclareCursorStmt, type metadata accessor for PgQuery_DeclareCursorStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DeclareCursorStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeclareCursorStmt and conformance PgQuery_DeclareCursorStmt, type metadata accessor for PgQuery_DeclareCursorStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateTableSpaceStmt.decodeMessage<A>(decoder:)()
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
LABEL_4:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          v3 = *(type metadata accessor for PgQuery_CreateTableSpaceStmt(0) + 32);
          type metadata accessor for PgQuery_RoleSpec(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateTableSpaceStmt.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v8 = *(RoleSpec - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](RoleSpec);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = v0[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  TableSpaceStmt = type metadata accessor for PgQuery_CreateTableSpaceStmt(0);
  outlined init with copy of PgQuery_Alias?(v0 + *(TableSpaceStmt + 32), v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v8 + 48))(v6, 1, RoleSpec) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v16 = v2;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v11, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
    v16 = v2;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
    if (v2)
    {
      return result;
    }
  }

  v17 = v0[3];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v16))
  {
    if (!*(v0[4] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v16))
    {
      v19 = v0 + *(TableSpaceStmt + 28);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateTableSpaceStmt@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = MEMORY[0x277D84F90];
  v4 = &a2[*(a1 + 28)];
  UnknownStorage.init()();
  v5 = *(a1 + 32);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v7 = *(*(RoleSpec - 8) + 56);

  return v7(&a2[v5], 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateTableSpaceStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableSpaceStmt and conformance PgQuery_CreateTableSpaceStmt, type metadata accessor for PgQuery_CreateTableSpaceStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateTableSpaceStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableSpaceStmt and conformance PgQuery_CreateTableSpaceStmt, type metadata accessor for PgQuery_CreateTableSpaceStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateTableSpaceStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableSpaceStmt and conformance PgQuery_CreateTableSpaceStmt, type metadata accessor for PgQuery_CreateTableSpaceStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropTableSpaceStmt.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
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

uint64_t PgQuery_DropTableSpaceStmt.traverse<A>(visitor:)()
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
      v6 = v0 + *(type metadata accessor for PgQuery_DropTableSpaceStmt(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DropTableSpaceStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropTableSpaceStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropTableSpaceStmt and conformance PgQuery_DropTableSpaceStmt, type metadata accessor for PgQuery_DropTableSpaceStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropTableSpaceStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropTableSpaceStmt and conformance PgQuery_DropTableSpaceStmt, type metadata accessor for PgQuery_DropTableSpaceStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropTableSpaceStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropTableSpaceStmt and conformance PgQuery_DropTableSpaceStmt, type metadata accessor for PgQuery_DropTableSpaceStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_DropTableSpaceStmt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v8 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_AlterObjectDependsStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterObjectDependsStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_AlterObjectDependsStmt.decodeMessage<A>(decoder:)()
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
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
LABEL_16:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 3 || result == 4)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
          goto LABEL_16;
        }

        if (result == 5)
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

uint64_t closure #1 in PgQuery_AlterObjectDependsStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v43 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  v48 = Node;
  v49 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](Node);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v43 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v21 = *(RangeVar - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v26 = a1;
  v27 = *(a1 + 24);
  ResultSetCursor.columns.modify(v25, v27);
  if (v28)
  {
    v51 = v25;
    v52 = v27;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v29 = v53;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v29)
    {
      return result;
    }

    v53 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v21 + 48))(v19, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v31 = v49;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v19, v24, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v32 = v53;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
    v31 = v49;
    if (v32)
    {
      return result;
    }

    v53 = 0;
  }

  v33 = v46;
  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v34 = *(v31 + 48);
  v35 = v48;
  v36 = v34(v33, 1, v48);
  v37 = v47;
  if (v36 == 1)
  {
    outlined destroy of URL?(v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v50 = v26;
    v38 = v33;
    v39 = v45;
    outlined init with take of PgQuery_OidList(v38, v45, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v40 = v53;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
    if (v40)
    {
      return result;
    }

    v53 = 0;
    v26 = v50;
  }

  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v34(v37, 1, v35) == 1)
  {
    result = outlined destroy of URL?(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v41 = v44;
    outlined init with take of PgQuery_OidList(v37, v44, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v42 = v53;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
    if (v42)
    {
      return result;
    }
  }

  if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove) == 1)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlterObjectDependsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v87 = *(Node - 8);
  v88 = Node;
  v5 = *(v87 + 64);
  v6 = MEMORY[0x28223BE20](Node);
  v80 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v81 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v80 - v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = *(*(v86 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v86);
  v83 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v80 - v17;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v19 = *(RangeVar - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v84 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v80 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v80 - v28;
  v30 = *(a2 + 16);
  v31 = *(a2 + 24);
  ResultSetCursor.columns.modify(*(a1 + 16), *(a1 + 24));
  v33 = v32;
  ResultSetCursor.columns.modify(v30, v31);
  if (v33 != v34)
  {
    goto LABEL_27;
  }

  v35 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v36 = *(v26 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v29, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v35, &v29[v36], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v37 = *(v19 + 48);
  if (v37(v29, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v29, v25, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v37(&v29[v36], 1, RangeVar) != 1)
    {
      v43 = v84;
      outlined init with take of PgQuery_OidList(&v29[v36], v84, type metadata accessor for PgQuery_RangeVar);
      v39 = a1;

      v44 = specialized static PgQuery_RangeVar.== infix(_:_:)(v25, v43);
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of URL?(v29, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v44 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_9;
    }

    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RangeVar);
LABEL_7:
    v40 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v41 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v42 = v29;
LABEL_25:
    outlined destroy of URL?(v42, v40, v41);
    goto LABEL_26;
  }

  v38 = v37(&v29[v36], 1, RangeVar);

  v39 = a1;
  if (v38 != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of URL?(v29, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_9:
  v45 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v46 = v86;
  v47 = *(v86 + 48);
  v48 = v89;
  outlined init with copy of PgQuery_Alias?(v39 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v45, v48 + v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v49 = v88;
  v50 = *(v87 + 48);
  if (v50(v48, 1, v88) == 1)
  {
    if (v50(v48 + v47, 1, v49) != 1)
    {
LABEL_23:
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_24:
      v42 = v48;
      goto LABEL_25;
    }

    outlined destroy of URL?(v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_17;
  }

  v51 = v85;
  outlined init with copy of PgQuery_Alias?(v48, v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v50(v48 + v47, 1, v49) == 1)
  {
    v52 = v51;
LABEL_22:
    outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
    goto LABEL_23;
  }

  v53 = v48 + v47;
  v54 = v82;
  outlined init with take of PgQuery_OidList(v53, v82, type metadata accessor for PgQuery_Node);
  v55 = *(v49 + 20);
  v56 = *(v51 + v55);
  v57 = *(v54 + v55);
  if (v56 != v57)
  {
    v58 = *(v51 + v55);

    v59 = closure #1 in static PgQuery_Node.== infix(_:_:)(v56, v57);

    if ((v59 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v85, type metadata accessor for PgQuery_Node);
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v42 = v89;
      goto LABEL_25;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v60 = v85;
  v61 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v61)
  {
LABEL_17:
    v62 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname;
    v63 = *(v46 + 48);
    v64 = v83;
    outlined init with copy of PgQuery_Alias?(v39 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v65 = a2 + v62;
    v48 = v64;
    outlined init with copy of PgQuery_Alias?(v65, v64 + v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v50(v64, 1, v49) == 1)
    {
      if (v50(v64 + v63, 1, v49) == 1)
      {
        outlined destroy of URL?(v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_32:
        v78 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove);

        v79 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove);

        v68 = v78 ^ v79 ^ 1;
        return v68 & 1;
      }

      goto LABEL_23;
    }

    v66 = v64;
    v67 = v81;
    outlined init with copy of PgQuery_Alias?(v66, v81, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v50(v48 + v63, 1, v49) != 1)
    {
      v70 = v48 + v63;
      v71 = v80;
      outlined init with take of PgQuery_OidList(v70, v80, type metadata accessor for PgQuery_Node);
      v72 = *(v49 + 20);
      v73 = *(v67 + v72);
      v74 = *(v71 + v72);
      if (v73 == v74 || (v75 = *(v67 + v72), , , v76 = closure #1 in static PgQuery_Node.== infix(_:_:)(v73, v74), , , (v76 & 1) != 0))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v77 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v77)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_24;
    }

    v52 = v67;
    goto LABEL_22;
  }

LABEL_26:

LABEL_27:
  v68 = 0;
  return v68 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterObjectDependsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterObjectDependsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterObjectDependsStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterObjectSchemaStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

void type metadata completion function for PgQuery_AlterObjectSchemaStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_AlterObjectSchemaStmt.decodeMessage<A>(decoder:)()
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

          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
          goto LABEL_16;
        }

        lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
LABEL_16:
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 4:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
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

uint64_t closure #1 in PgQuery_AlterObjectSchemaStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = &v33 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v35 = *(Node - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](Node);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v15 = *(RangeVar - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v20 = a1;
  v21 = *(a1 + 24);
  ResultSetCursor.columns.modify(v19, v21);
  if (v22)
  {
    v39 = v19;
    v40 = v21;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v23 = v41;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v23)
    {
      return result;
    }

    v41 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v20 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v15 + 48))(v13, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v18, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    v25 = v41;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    if (v25)
    {
      return result;
    }

    v41 = 0;
  }

  v26 = v36;
  outlined init with copy of PgQuery_Alias?(v20 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v35 + 48))(v26, 1, Node) == 1)
  {
    result = outlined destroy of URL?(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v27 = v41;
  }

  else
  {
    v28 = v26;
    v29 = v34;
    outlined init with take of PgQuery_OidList(v28, v34, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    v27 = v41;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
    if (v27)
    {
      return result;
    }
  }

  v30 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema + 8);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema) & 0xFFFFFFFFFFFFLL;
  }

  if (!v31 || (v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema + 8), , dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v27))
  {
    if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) == 1)
    {
      return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlterObjectSchemaStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v60 = *(Node - 8);
  v61 = Node;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](Node);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v56 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = &v56 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v14 = *(RangeVar - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v58 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = &v56 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  v24 = *(a2 + 16);
  v25 = *(a2 + 24);
  ResultSetCursor.columns.modify(*(a1 + 16), *(a1 + 24));
  v27 = v26;
  ResultSetCursor.columns.modify(v24, v25);
  if (v27 != v28)
  {
    goto LABEL_17;
  }

  v56 = v7;
  v29 = a2;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v31 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(v29 + v30, &v23[v31], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v32 = *(v14 + 48);
  if (v32(v23, 1, RangeVar) != 1)
  {
    v34 = v63;
    outlined init with copy of PgQuery_Alias?(v23, v63, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v32(&v23[v31], 1, RangeVar) != 1)
    {
      v37 = v58;
      outlined init with take of PgQuery_OidList(&v23[v31], v58, type metadata accessor for PgQuery_RangeVar);

      v38 = specialized static PgQuery_RangeVar.== infix(_:_:)(v34, v37);
      outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v38 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_RangeVar);
LABEL_7:
    v35 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v36 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_15:
    outlined destroy of URL?(v23, v35, v36);
    goto LABEL_16;
  }

  v33 = v32(&v23[v31], 1, RangeVar);

  if (v33 != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_9:
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v40 = *(v59 + 48);
  v23 = v62;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v62, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v29 + v39, &v23[v40], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v41 = v61;
  v42 = *(v60 + 48);
  if (v42(v23, 1, v61) == 1)
  {
    if (v42(&v23[v40], 1, v41) == 1)
    {
      outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v43 = v57;
  outlined init with copy of PgQuery_Alias?(v23, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v42(&v23[v40], 1, v41) == 1)
  {
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
LABEL_14:
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_15;
  }

  v46 = v56;
  outlined init with take of PgQuery_OidList(&v23[v40], v56, type metadata accessor for PgQuery_Node);
  v47 = *(v41 + 20);
  v48 = *(v43 + v47);
  v49 = *(v46 + v47);
  if (v48 != v49)
  {
    v50 = *(v43 + v47);

    v51 = closure #1 in static PgQuery_Node.== infix(_:_:)(v48, v49);

    if ((v51 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_15;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v52 = v56;
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v53)
  {
LABEL_22:
    if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema) == *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema + 8) == *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v54 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

      v55 = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

      v44 = v54 ^ v55 ^ 1;
      return v44 & 1;
    }
  }

LABEL_16:

LABEL_17:
  v44 = 0;
  return v44 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterObjectSchemaStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterObjectSchemaStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterObjectSchemaStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterOwnerStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v7, 1, 1, RangeVar);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v9, 1, 1, Node);
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  (*(*(RoleSpec - 8) + 56))(v1 + v11, 1, 1, RoleSpec);
  v13 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v13;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v1 + v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);

  outlined assign with take of PgQuery_Node?(v6, v1 + v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  return v1;
}

uint64_t PgQuery_AlterOwnerStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterOwnerStmt._StorageClass()
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t closure #1 in PgQuery_AlterOwnerStmt.decodeMessage<A>(decoder:)()
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
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
        goto LABEL_13;
      }

      if (result == 4)
      {
        type metadata accessor for PgQuery_RoleSpec(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
LABEL_13:
        v0 = 0;
LABEL_14:
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }
    }

    else if (result == 1)
    {
      lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for PgQuery_RangeVar(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
      goto LABEL_14;
    }
  }
}

uint64_t closure #1 in PgQuery_AlterOwnerStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v39 - v7;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v42 = *(RoleSpec - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](RoleSpec);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v44 = &v39 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v43 = *(Node - 8);
  v14 = *(v43 + 64);
  MEMORY[0x28223BE20](Node);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v39 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v21 = *(RangeVar - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v26 = a1;
  v27 = *(a1 + 24);
  ResultSetCursor.columns.modify(v25, v27);
  if (v28)
  {
    v49 = v25;
    v50 = v27;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v29 = v47;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    v31 = v29;
    if (v29)
    {
      return result;
    }

    v39 = RoleSpec;
  }

  else
  {
    v39 = RoleSpec;
    v31 = v47;
  }

  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v21 + 48))(v19, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v19, v24, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
    if (v31)
    {
      return result;
    }
  }

  v32 = v44;
  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = (*(v43 + 48))(v32, 1, Node);
  v34 = v46;
  if (v33 == 1)
  {
    outlined destroy of URL?(v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v35 = v32;
    v36 = v41;
    outlined init with take of PgQuery_OidList(v35, v41, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
    if (v31)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v34, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v42 + 48))(v34, 1, v39) == 1)
  {
    return outlined destroy of URL?(v34, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  }

  v37 = v34;
  v38 = v40;
  outlined init with take of PgQuery_OidList(v37, v40, type metadata accessor for PgQuery_RoleSpec);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_RoleSpec);
}

BOOL closure #1 in static PgQuery_AlterOwnerStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v81 = *(RoleSpec - 8);
  v82 = RoleSpec;
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](RoleSpec);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = (&v76 - v9);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v10 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v12 = &v76 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v86 = *(Node - 8);
  v87 = Node;
  v14 = *(v86 + 64);
  MEMORY[0x28223BE20](Node);
  v79 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v83 = &v76 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v19 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v88 = &v76 - v20;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v22 = *(RangeVar - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](RangeVar);
  v84 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v89 = &v76 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v76 - v30;
  v32 = *(a1 + 16);
  v33 = a1;
  v34 = *(a1 + 24);
  v35 = *(a2 + 16);
  v36 = *(a2 + 24);
  ResultSetCursor.columns.modify(v32, v34);
  v38 = v37;
  ResultSetCursor.columns.modify(v35, v36);
  if (v38 != v39)
  {
    return 0;
  }

  v76 = v12;
  v40 = a2;
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v42 = *(v28 + 48);
  outlined init with copy of PgQuery_Alias?(v33 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(v40 + v41, &v31[v42], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v43 = *(v22 + 48);
  if (v43(v31, 1, RangeVar) == 1)
  {
    v44 = v43(&v31[v42], 1, RangeVar);

    if (v44 == 1)
    {
      outlined destroy of URL?(v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_10;
    }

LABEL_7:
    outlined destroy of URL?(v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_17;
  }

  v45 = v89;
  outlined init with copy of PgQuery_Alias?(v31, v89, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v43(&v31[v42], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_7;
  }

  v46 = &v31[v42];
  v47 = v84;
  outlined init with take of PgQuery_OidList(v46, v84, type metadata accessor for PgQuery_RangeVar);

  v48 = specialized static PgQuery_RangeVar.== infix(_:_:)(v45, v47);
  outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v48 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v49 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v50 = *(v85 + 48);
  v51 = v33;
  v52 = v88;
  outlined init with copy of PgQuery_Alias?(v33 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v88, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v40 + v49, v52 + v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v53 = v87;
  v54 = *(v86 + 48);
  if (v54(v52, 1, v87) != 1)
  {
    v55 = v83;
    outlined init with copy of PgQuery_Alias?(v52, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v54(v52 + v50, 1, v53) != 1)
    {
      v59 = v52 + v50;
      v60 = v79;
      outlined init with take of PgQuery_OidList(v59, v79, type metadata accessor for PgQuery_Node);
      v61 = *(v53 + 20);
      v62 = *(v55 + v61);
      v63 = *(v60 + v61);
      if (v62 == v63 || (v64 = *(v55 + v61), , , v65 = closure #1 in static PgQuery_Node.== infix(_:_:)(v62, v63), , , (v65 & 1) != 0))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v66 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v66)
        {
          goto LABEL_23;
        }

LABEL_17:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
      v56 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v57 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_16:
      outlined destroy of URL?(v52, v56, v57);
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
LABEL_15:
    v56 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v57 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

  if (v54(v52 + v50, 1, v53) != 1)
  {
    goto LABEL_15;
  }

  outlined destroy of URL?(v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_23:
  v67 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  v68 = *(v80 + 48);
  v69 = v76;
  outlined init with copy of PgQuery_Alias?(v51 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v76, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(v40 + v67, v69 + v68, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v70 = v82;
  v71 = *(v81 + 48);
  if (v71(v69, 1, v82) == 1)
  {

    if (v71(v69 + v68, 1, v70) == 1)
    {
      outlined destroy of URL?(v69, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      return 1;
    }

    goto LABEL_28;
  }

  v72 = v78;
  outlined init with copy of PgQuery_Alias?(v69, v78, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if (v71(v69 + v68, 1, v70) == 1)
  {

    outlined destroy of PgQuery_OidList(v72, type metadata accessor for PgQuery_RoleSpec);
LABEL_28:
    outlined destroy of URL?(v69, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
    return 0;
  }

  v73 = v69 + v68;
  v74 = v77;
  outlined init with take of PgQuery_OidList(v73, v77, type metadata accessor for PgQuery_RoleSpec);
  v75 = specialized static PgQuery_RoleSpec.== infix(_:_:)(v72, v74);

  outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_RoleSpec);
  outlined destroy of PgQuery_OidList(v72, type metadata accessor for PgQuery_RoleSpec);
  outlined destroy of URL?(v69, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  return (v75 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterOwnerStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOwnerStmt and conformance PgQuery_AlterOwnerStmt, type metadata accessor for PgQuery_AlterOwnerStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterOwnerStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOwnerStmt and conformance PgQuery_AlterOwnerStmt, type metadata accessor for PgQuery_AlterOwnerStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterOwnerStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOwnerStmt and conformance PgQuery_AlterOwnerStmt, type metadata accessor for PgQuery_AlterOwnerStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterOperatorStmt.decodeMessage<A>(decoder:)()
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
        v3 = *(type metadata accessor for PgQuery_AlterOperatorStmt(0) + 24);
        type metadata accessor for PgQuery_ObjectWithArgs(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterOperatorStmt.traverse<A>(visitor:)(uint64_t a1)
{
  v18 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v7 = *(ObjectWithArgs - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](ObjectWithArgs);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterOperatorStmt = type metadata accessor for PgQuery_AlterOperatorStmt(0);
  v17 = v1;
  outlined init with copy of PgQuery_Alias?(v1 + *(AlterOperatorStmt + 24), v5, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v7 + 48))(v5, 1, ObjectWithArgs) == 1)
  {
    outlined destroy of URL?(v5, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v11 = v19;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v5, v10, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs);
    v11 = v19;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v11)
    {
      return result;
    }
  }

  v13 = v17;
  if (!*(*v17 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v11))
  {
    v14 = v13 + *(AlterOperatorStmt + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterDefaultPrivilegesStmt@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = MEMORY[0x277D84F90];
  v6 = &a3[*(a1 + 20)];
  UnknownStorage.init()();
  v7 = *(a1 + 24);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterOperatorStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterOperatorStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterOperatorStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTypeStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTypeStmt and conformance PgQuery_AlterTypeStmt, type metadata accessor for PgQuery_AlterTypeStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTypeStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTypeStmt and conformance PgQuery_AlterTypeStmt, type metadata accessor for PgQuery_AlterTypeStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTypeStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTypeStmt and conformance PgQuery_AlterTypeStmt, type metadata accessor for PgQuery_AlterTypeStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropOwnedStmt.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 2)
      {
        lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
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

uint64_t PgQuery_DropOwnedStmt.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 8) || (v4 = *(v0 + 8), v5 = *(v0 + 16), lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for PgQuery_DropOwnedStmt(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DropOwnedStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropOwnedStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropOwnedStmt and conformance PgQuery_DropOwnedStmt, type metadata accessor for PgQuery_DropOwnedStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropOwnedStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropOwnedStmt and conformance PgQuery_DropOwnedStmt, type metadata accessor for PgQuery_DropOwnedStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropOwnedStmt()
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropOwnedStmt and conformance PgQuery_DropOwnedStmt, type metadata accessor for PgQuery_DropOwnedStmt);

  return Message.hash(into:)();
}