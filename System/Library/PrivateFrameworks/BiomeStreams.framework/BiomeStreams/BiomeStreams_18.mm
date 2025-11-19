uint64_t specialized static PgQuery_CompositeTypeStmt.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  CompositeTypeStmt = type metadata accessor for PgQuery_CompositeTypeStmt(0);
  v17 = *(CompositeTypeStmt + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) == 1)
  {
    if (v19(&v16[v18], 1, RangeVar) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v19(&v16[v18], 1, RangeVar) == 1)
  {
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  outlined init with take of PgQuery_OidList(&v16[v18], v27, type metadata accessor for PgQuery_RangeVar);
  v21 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v20);
  outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(CompositeTypeStmt + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static PgQuery_AlterOperatorStmt.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v5 = *(ObjectWithArgs - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](ObjectWithArgs);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  AlterOperatorStmt = type metadata accessor for PgQuery_AlterOperatorStmt(0);
  v17 = *(AlterOperatorStmt + 24);
  v18 = *(v13 + 56);
  v31 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, ObjectWithArgs) == 1)
  {
    if (v19(&v16[v18], 1, ObjectWithArgs) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (v19(&v16[v18], 1, ObjectWithArgs) == 1)
  {
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_7:
    v22 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd;
    v23 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR;
LABEL_13:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v22, v23);
    goto LABEL_14;
  }

  v24 = v30;
  outlined init with take of PgQuery_OidList(&v16[v18], v30, type metadata accessor for PgQuery_ObjectWithArgs);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v11, *v24) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v11 + 1), *(v24 + 8)) & 1) == 0 || v11[16] != *(v24 + 16))
  {
    outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_12:
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_ObjectWithArgs);
    v22 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd;
    v23 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR;
    goto LABEL_13;
  }

  v26 = *(ObjectWithArgs + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_ObjectWithArgs);
  if ((v27 & 1) == 0)
  {
    goto LABEL_12;
  }

  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_3:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v31, *a2) & 1) == 0)
  {
LABEL_14:
    v21 = 0;
    return v21 & 1;
  }

  v20 = *(AlterOperatorStmt + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static PgQuery_AlterOpFamilyStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 24) != *(a2 + 24) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for PgQuery_AlterOpFamilyStmt(0) + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterFunctionStmt.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v5 = *(ObjectWithArgs - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](ObjectWithArgs);
  v31 = &AlterFunctionStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &AlterFunctionStmt - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &AlterFunctionStmt - v14;
  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = destructiveProjectEnumData for StorableValue(*a1, *(a1 + 8));
  if (v18 != destructiveProjectEnumData for StorableValue(v16, v17))
  {
    goto LABEL_15;
  }

  AlterFunctionStmt = type metadata accessor for PgQuery_AlterFunctionStmt(0);
  v19 = *(AlterFunctionStmt + 28);
  v20 = *(v12 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v19, v15, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v19, &v15[v20], &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v21 = *(v5 + 48);
  if (v21(v15, 1, ObjectWithArgs) == 1)
  {
    if (v21(&v15[v20], 1, ObjectWithArgs) == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  outlined init with copy of PgQuery_Alias?(v15, v11, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (v21(&v15[v20], 1, ObjectWithArgs) == 1)
  {
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_8:
    v24 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd;
    v25 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR;
LABEL_14:
    _s10Foundation4UUIDVSgWOhTm_0(v15, v24, v25);
    goto LABEL_15;
  }

  v26 = v31;
  outlined init with take of PgQuery_OidList(&v15[v20], v31, type metadata accessor for PgQuery_ObjectWithArgs);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v11, *v26) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v11 + 1), *(v26 + 8)) & 1) == 0 || v11[16] != *(v26 + 16))
  {
    outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_13:
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_ObjectWithArgs);
    v24 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd;
    v25 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR;
    goto LABEL_14;
  }

  v28 = *(ObjectWithArgs + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_ObjectWithArgs);
  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_4:
  _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), a2[2]) & 1) == 0)
  {
LABEL_15:
    v23 = 0;
    return v23 & 1;
  }

  v22 = *(AlterFunctionStmt + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static PgQuery_CreateSchemaStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](RoleSpec);
  v8 = &SchemaStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &SchemaStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &SchemaStmt - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_38;
  }

  v33 = v8;
  SchemaStmt = type metadata accessor for PgQuery_CreateSchemaStmt(0);
  v17 = *(SchemaStmt + 32);
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
      goto LABEL_11;
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

    v28 = *(v12 + 2) == *(v25 + 16) && *(v12 + 3) == *(v25 + 24);
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v12 + 8) == *(v25 + 32))
    {
      v29 = *(RoleSpec + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RoleSpec);
      if (v30)
      {
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_6;
      }

      goto LABEL_36;
    }

LABEL_35:
    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RoleSpec);
LABEL_36:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_37;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_11:
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_37:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v22, v23);
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_6:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_38;
  }

  v20 = *(SchemaStmt + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static PgQuery_AlterRoleSetStmt.== infix(_:_:)(void *a1, void *a2)
{
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v56 = *(VariableSetStmt - 8);
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](VariableSetStmt);
  v53 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v53 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMR);
  v9 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v53 - v10;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v12 = *(RoleSpec - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](RoleSpec);
  v60 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  AlterRoleSetStmt = type metadata accessor for PgQuery_AlterRoleSetStmt(0);
  v24 = *(AlterRoleSetStmt + 24);
  v25 = *(v20 + 56);
  v61 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v24, v23, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v62 = a2;
  outlined init with copy of PgQuery_Alias?(a2 + v24, &v23[v25], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v26 = *(v12 + 48);
  if (v26(v23, 1, RoleSpec) == 1)
  {
    if (v26(&v23[v25], 1, RoleSpec) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  outlined init with copy of PgQuery_Alias?(v23, v18, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if (v26(&v23[v25], 1, RoleSpec) == 1)
  {
    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RoleSpec);
LABEL_11:
    v38 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v39 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_52:
    v46 = v23;
    goto LABEL_53;
  }

  v40 = &v23[v25];
  v41 = v60;
  outlined init with take of PgQuery_OidList(v40, v60, type metadata accessor for PgQuery_RoleSpec);
  v42 = *v18;
  v43 = *v41;
  if (*(v41 + 8) != 1)
  {
    if (v42 == v43)
    {
      goto LABEL_19;
    }

LABEL_50:
    outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_RoleSpec);
    goto LABEL_51;
  }

  if (v43 <= 1)
  {
    if (v43)
    {
      if (v42 == 1)
      {
        goto LABEL_19;
      }
    }

    else if (!v42)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

  if (v43 == 2)
  {
    if (v42 != 2)
    {
      goto LABEL_50;
    }
  }

  else if (v43 == 3)
  {
    if (v42 != 3)
    {
      goto LABEL_50;
    }
  }

  else if (v42 != 4)
  {
    goto LABEL_50;
  }

LABEL_19:
  if ((*(v18 + 2) != *(v41 + 16) || *(v18 + 3) != *(v41 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v18 + 8) != *(v41 + 32))
  {
    goto LABEL_50;
  }

  v44 = *(RoleSpec + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  LOBYTE(v44) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_RoleSpec);
  if ((v44 & 1) == 0)
  {
LABEL_51:
    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RoleSpec);
    v38 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v39 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_52;
  }

  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RoleSpec);
LABEL_3:
  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v28 = v61;
  v27 = v62;
  if (*v61 == *v62 && v61[1] == v62[1] || (v29 = _stringCompareWithSmolCheck(_:_:expecting:)(), v30 = 0, (v29 & 1) != 0))
  {
    v31 = AlterRoleSetStmt;
    v32 = *(AlterRoleSetStmt + 28);
    v33 = *(v55 + 48);
    v34 = v59;
    outlined init with copy of PgQuery_Alias?(v28 + v32, v59, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    outlined init with copy of PgQuery_Alias?(v27 + v32, v34 + v33, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    v35 = *(v56 + 48);
    v36 = VariableSetStmt;
    if (v35(v34, 1, VariableSetStmt) == 1)
    {
      if (v35(v34 + v33, 1, v36) == 1)
      {
LABEL_8:
        _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
        v37 = *(v31 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v30 & 1;
      }

      goto LABEL_27;
    }

    v45 = v54;
    outlined init with copy of PgQuery_Alias?(v34, v54, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    if (v35(v34 + v33, 1, v36) == 1)
    {
      outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_VariableSetStmt);
LABEL_27:
      v38 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMd;
      v39 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMR;
      v46 = v34;
LABEL_53:
      _s10Foundation4UUIDVSgWOhTm_0(v46, v38, v39);
      v30 = 0;
      return v30 & 1;
    }

    v47 = v34 + v33;
    v48 = v53;
    outlined init with take of PgQuery_OidList(v47, v53, type metadata accessor for PgQuery_VariableSetStmt);
    v49 = *v45;
    v50 = *v48;
    if (*(v48 + 8) == 1)
    {
      if (v50 <= 2)
      {
        if (v50)
        {
          if (v50 == 1)
          {
            if (v49 != 1)
            {
              goto LABEL_69;
            }
          }

          else if (v49 != 2)
          {
            goto LABEL_69;
          }
        }

        else if (v49)
        {
          goto LABEL_69;
        }
      }

      else if (v50 > 4)
      {
        if (v50 == 5)
        {
          if (v49 != 5)
          {
            goto LABEL_69;
          }
        }

        else if (v49 != 6)
        {
          goto LABEL_69;
        }
      }

      else if (v50 == 3)
      {
        if (v49 != 3)
        {
          goto LABEL_69;
        }
      }

      else if (v49 != 4)
      {
        goto LABEL_69;
      }
    }

    else if (v49 != v50)
    {
      goto LABEL_69;
    }

    if (*(v45 + 16) == *(v48 + 16) && *(v45 + 24) == *(v48 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v45 + 32), *(v48 + 32)) & 1) != 0 && *(v45 + 40) == *(v48 + 40))
    {
      v51 = *(v36 + 32);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      LOBYTE(v51) = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_VariableSetStmt);
      if (v51)
      {
        outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_VariableSetStmt);
        goto LABEL_8;
      }

      goto LABEL_70;
    }

LABEL_69:
    outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_VariableSetStmt);
LABEL_70:
    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_VariableSetStmt);
    v38 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd;
    v39 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR;
    v46 = v34;
    goto LABEL_53;
  }

  return v30 & 1;
}

uint64_t specialized static PgQuery_TransactionStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 <= 4)
    {
      if (v5 <= 1)
      {
        if (v5)
        {
          if (v4 != 1)
          {
            return 0;
          }
        }

        else if (v4)
        {
          return 0;
        }
      }

      else if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v4 != 4)
      {
        return 0;
      }
    }

    else if (v5 > 7)
    {
      if (v5 == 8)
      {
        if (v4 != 8)
        {
          return 0;
        }
      }

      else if (v5 == 9)
      {
        if (v4 != 9)
        {
          return 0;
        }
      }

      else if (v4 != 10)
      {
        return 0;
      }
    }

    else if (v5 == 5)
    {
      if (v4 != 5)
      {
        return 0;
      }
    }

    else if (v5 == 6)
    {
      if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v4 != 7)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], *(a2 + 16)) & 1) != 0 && (a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 56) == *(a2 + 56))
  {
    v6 = *(type metadata accessor for PgQuery_TransactionStmt(0) + 36);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_TableLikeClause.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  TableLikeClause = type metadata accessor for PgQuery_TableLikeClause(0);
  v17 = *(TableLikeClause + 28);
  v18 = *(v13 + 56);
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v19(&v16[v18], 1, RangeVar) != 1)
    {
      v20 = v27;
      outlined init with take of PgQuery_OidList(&v16[v18], v27, type metadata accessor for PgQuery_RangeVar);
      v21 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v20);
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_11:
      v23 = 0;
      return v23 & 1;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, RangeVar) != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_8:
  if (*v28 != *a2 || v28[1] != a2[1])
  {
    goto LABEL_11;
  }

  v22 = *(TableLikeClause + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static PgQuery_SortGroupClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13))
  {
    return 0;
  }

  v3 = *(type metadata accessor for PgQuery_SortGroupClause(0) + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_InlineCodeBlock.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 21) != *(a2 + 21))
  {
    return 0;
  }

  v6 = *(type metadata accessor for PgQuery_InlineCodeBlock(0) + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateStatsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 24), *(a2 + 24)) & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v5 = *(type metadata accessor for PgQuery_CreateStatsStmt(0) + 40);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreatePLangStmt.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 3), *(a2 + 3)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 4), *(a2 + 4)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 5), *(a2 + 5)) & 1) == 0 || a1[48] != a2[48])
  {
    return 0;
  }

  v6 = *(type metadata accessor for PgQuery_CreatePLangStmt(0) + 40);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_VariableSetStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 <= 2)
    {
      if (v5)
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

    else if (v5 > 4)
    {
      if (v5 == 5)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], *(a2 + 32)) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    v7 = *(type metadata accessor for PgQuery_VariableSetStmt(0) + 32);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_AlterSystemStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v5 = *(VariableSetStmt - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](VariableSetStmt);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (v24 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for PgQuery_AlterSystemStmt(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, VariableSetStmt) == 1)
  {
    if (v19(&v16[v18], 1, VariableSetStmt) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if (v19(&v16[v18], 1, VariableSetStmt) == 1)
  {
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_VariableSetStmt);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMR);
    goto LABEL_7;
  }

  v21 = v24[0];
  outlined init with take of PgQuery_OidList(&v16[v18], v24[0], type metadata accessor for PgQuery_VariableSetStmt);
  v22 = specialized static PgQuery_VariableSetStmt.== infix(_:_:)(v11, v21);
  outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_VariableSetStmt);
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_VariableSetStmt);
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static PgQuery_VacuumRelation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  VacuumRelation = type metadata accessor for PgQuery_VacuumRelation(0);
  v17 = *(VacuumRelation + 28);
  v18 = *(v13 + 56);
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v19(&v16[v18], 1, RangeVar) != 1)
    {
      v20 = v27;
      outlined init with take of PgQuery_OidList(&v16[v18], v27, type metadata accessor for PgQuery_RangeVar);
      v21 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v20);
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_11:
      v23 = 0;
      return v23 & 1;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, RangeVar) != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_8:
  if (*v28 != *a2 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v28 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_11;
  }

  v22 = *(VacuumRelation + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static PgQuery_RawStmt.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, void *a5, void *a6)
{
  v11 = *(a3(0) + 20);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 != v13)
  {
    v14 = *(a1 + v11);

    v15 = closure #1 in static PgQuery_NextValueExpr.== infix(_:_:)(v12, v13, a4, a5, a6);

    if (!v15)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateRoleStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
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
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], *(a2 + 32)))
  {
    v7 = *(type metadata accessor for PgQuery_CreateRoleStmt(0) + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_AlterTableStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  AlterTableStmt = type metadata accessor for PgQuery_AlterTableStmt(0);
  v17 = *(AlterTableStmt + 32);
  v18 = *(v13 + 56);
  v32 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) == 1)
  {
    if (v19(&v16[v18], 1, RangeVar) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v19(&v16[v18], 1, RangeVar) != 1)
    {
      v21 = v31;
      outlined init with take of PgQuery_OidList(&v16[v18], v31, type metadata accessor for PgQuery_RangeVar);
      v22 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v21);
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v22 & 1) == 0)
      {
LABEL_11:
        v20 = 0;
        return v20 & 1;
      }

LABEL_8:
      v23 = v32;
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v32, *a2))
      {
        v24 = *(a2 + 8);
        v25 = *(a2 + 16);
        v26 = destructiveProjectEnumData for StorableValue(v23[1], *(v23 + 16));
        if (v26 == destructiveProjectEnumData for StorableValue(v24, v25) && *(v23 + 17) == *(a2 + 17))
        {
          v28 = *(AlterTableStmt + 28);
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
          v20 = dispatch thunk of static Equatable.== infix(_:_:)();
          return v20 & 1;
        }
      }

      goto LABEL_11;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static PgQuery_RowMarkClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        if (v2 != 3)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (v2 != 4)
        {
          return 0;
        }
      }

      else if (v2 != 5)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (*(a2 + 32) == 1)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
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

  if (*(a1 + 33) == *(a2 + 33))
  {
    v6 = *(type metadata accessor for PgQuery_RowMarkClause(0) + 32);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_RangeFunction.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v5 = *(Alias - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Alias);
  v8 = (&RangeFunction - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&RangeFunction - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &RangeFunction - v16;
  if (*a1 != *a2)
  {
    goto LABEL_23;
  }

  if (a1[1] != a2[1])
  {
    goto LABEL_23;
  }

  if (a1[2] != a2[2])
  {
    goto LABEL_23;
  }

  v18 = v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    goto LABEL_23;
  }

  RangeFunction = type metadata accessor for PgQuery_RangeFunction(0);
  v19 = *(RangeFunction + 40);
  v20 = *(v18 + 48);
  outlined init with copy of PgQuery_Alias?(&a1[v19], v17, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v32 = v20;
  outlined init with copy of PgQuery_Alias?(&a2[v19], &v17[v20], &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v21 = *(v5 + 48);
  if (v21(v17, 1, Alias) == 1)
  {
    if (v21(&v17[v32], 1, Alias) == 1)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  outlined init with copy of PgQuery_Alias?(v17, v12, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v24 = v32;
  if (v21(&v17[v32], 1, Alias) == 1)
  {
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
LABEL_11:
    v25 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
    v26 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
LABEL_22:
    _s10Foundation4UUIDVSgWOhTm_0(v17, v25, v26);
    goto LABEL_23;
  }

  outlined init with take of PgQuery_OidList(&v17[v24], v8, type metadata accessor for PgQuery_Alias);
  v27 = *v12 == *v8 && v12[1] == v8[1];
  if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v12[2], v8[2]) & 1) == 0)
  {
    outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Alias);
    goto LABEL_21;
  }

  v28 = *(Alias + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Alias);
  if ((v29 & 1) == 0)
  {
LABEL_21:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
    v25 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
    v26 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
    goto LABEL_22;
  }

  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
LABEL_7:
  _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 2), *(a2 + 2)) & 1) == 0)
  {
LABEL_23:
    v23 = 0;
    return v23 & 1;
  }

  v22 = *(RangeFunction + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static PgQuery_PartitionSpec.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(type metadata accessor for PgQuery_PartitionSpec(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_LockingClause.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (*(a2 + 16) == 1)
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

  v6 = a1[3];
  v7 = *(a2 + 24);
  if (*(a2 + 32) != 1)
  {
    if (v6 != v7)
    {
      return 0;
    }

LABEL_19:
    v8 = *(type metadata accessor for PgQuery_LockingClause(0) + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

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

    goto LABEL_19;
  }

  if (v7)
  {
    if (v6 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t specialized static PgQuery_InferenceElem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PgQuery_InferenceElem(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static PgQuery_CollateExpr.== infix(_:_:)(v5, v6, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_GrantRoleStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](RoleSpec);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    goto LABEL_45;
  }

  GrantRoleStmt = type metadata accessor for PgQuery_GrantRoleStmt(0);
  v17 = *(GrantRoleStmt + 40);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = a2 + v17;
  v20 = v18;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, RoleSpec) == 1)
  {
    if (v21(&v16[v20], 1, RoleSpec) == 1)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if (v21(&v16[v20], 1, RoleSpec) == 1)
  {
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
LABEL_14:
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v25 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_44:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v24, v25);
    goto LABEL_45;
  }

  outlined init with take of PgQuery_OidList(&v16[v20], v8, type metadata accessor for PgQuery_RoleSpec);
  v26 = *v12;
  v27 = *v8;
  if (v8[8] != 1)
  {
    if (v26 == v27)
    {
      goto LABEL_24;
    }

LABEL_42:
    outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_RoleSpec);
    goto LABEL_43;
  }

  if (v27 <= 1)
  {
    if (v27)
    {
      if (v26 == 1)
      {
        goto LABEL_24;
      }
    }

    else if (!v26)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

  if (v27 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_42;
    }
  }

  else if (v27 == 3)
  {
    if (v26 != 3)
    {
      goto LABEL_42;
    }
  }

  else if (v26 != 4)
  {
    goto LABEL_42;
  }

LABEL_24:
  if ((*(v12 + 2) != *(v8 + 2) || *(v12 + 3) != *(v8 + 3)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v12 + 8) != *(v8 + 8))
  {
    goto LABEL_42;
  }

  v28 = *(RoleSpec + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_RoleSpec);
  if ((v29 & 1) == 0)
  {
LABEL_43:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v25 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_44;
  }

  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
LABEL_7:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v22 = *(a1 + 24);
  v23 = *(a2 + 24);
  if (*(a2 + 32) != 1)
  {
    if (v22 == v23)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  if (!v23)
  {
    if (!v22)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  if (v23 == 1)
  {
    if (v22 == 1)
    {
      goto LABEL_36;
    }

LABEL_45:
    v31 = 0;
    return v31 & 1;
  }

  if (v22 != 2)
  {
    goto LABEL_45;
  }

LABEL_36:
  v30 = *(GrantRoleStmt + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v31 & 1;
}

uint64_t specialized static PgQuery_DropOwnedStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v5)
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

LABEL_8:
      v6 = *(type metadata accessor for PgQuery_DropOwnedStmt(0) + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4 == v5)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t specialized static PgQuery_CreateSeqStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  SeqStmt = type metadata accessor for PgQuery_CreateSeqStmt(0);
  v17 = *(SeqStmt + 36);
  v18 = *(v13 + 56);
  v29 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v19(&v16[v18], 1, RangeVar) != 1)
    {
      v20 = v28;
      outlined init with take of PgQuery_OidList(&v16[v18], v28, type metadata accessor for PgQuery_RangeVar);
      v21 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v20);
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v21 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_12;
  }

  if (v19(&v16[v18], 1, RangeVar) != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_8:
  v22 = v29;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v29, *a2) & 1) != 0 && *(v22 + 2) == *(a2 + 8) && *(v22 + 12) == *(a2 + 12) && *(v22 + 13) == *(a2 + 13))
  {
    v25 = *(SeqStmt + 32);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v23 & 1;
  }

LABEL_12:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static PgQuery_AlterRoleStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](RoleSpec);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  AlterRoleStmt = type metadata accessor for PgQuery_AlterRoleStmt(0);
  v17 = *(AlterRoleStmt + 28);
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
      goto LABEL_8;
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
            goto LABEL_32;
          }
        }

        else if (v26)
        {
          goto LABEL_32;
        }
      }

      else if (v27 == 2)
      {
        if (v26 != 2)
        {
          goto LABEL_32;
        }
      }

      else if (v27 == 3)
      {
        if (v26 != 3)
        {
          goto LABEL_32;
        }
      }

      else if (v26 != 4)
      {
        goto LABEL_32;
      }
    }

    else if (v26 != v27)
    {
      goto LABEL_32;
    }

    v28 = *(v11 + 2) == *(v25 + 16) && *(v11 + 3) == *(v25 + 24);
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v11 + 8) == *(v25 + 32))
    {
      v29 = *(RoleSpec + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RoleSpec);
      if (v30)
      {
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_3;
      }

      goto LABEL_33;
    }

LABEL_32:
    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RoleSpec);
LABEL_33:
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_34;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_8:
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_34:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
LABEL_35:
    v22 = 0;
    return v22 & 1;
  }

LABEL_3:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v20 = v35;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v35, *a2) & 1) == 0 || *(v20 + 2) != *(a2 + 8))
  {
    goto LABEL_35;
  }

  v21 = *(AlterRoleStmt + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t specialized static PgQuery_AlterEnumStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56) || *(a1 + 57) != *(a2 + 57))
  {
    return 0;
  }

  v7 = *(type metadata accessor for PgQuery_AlterEnumStmt(0) + 40);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_TruncateStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v5 == v6)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v6)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v5 == 1)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v5 != 2)
  {
    return 0;
  }

LABEL_14:
  v7 = *(type metadata accessor for PgQuery_TruncateStmt(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_PartitionCmd.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v48 = *(PartitionBoundSpec - 8);
  v49 = PartitionBoundSpec;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](PartitionBoundSpec);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMR);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v43 - v10;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  PartitionCmd = type metadata accessor for PgQuery_PartitionCmd(0);
  v25 = *(PartitionCmd + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v25, v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(v52 + v25, &v24[v26], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v27 = *(v12 + 48);
  if (v27(v24, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v24, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v27(&v24[v26], 1, RangeVar) != 1)
    {
      outlined init with take of PgQuery_OidList(&v24[v26], v15, type metadata accessor for PgQuery_RangeVar);
      v31 = specialized static PgQuery_RangeVar.== infix(_:_:)(v19, v15);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
LABEL_6:
    v28 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v29 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v30 = v24;
LABEL_14:
    _s10Foundation4UUIDVSgWOhTm_0(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, RangeVar) != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_8:
  v32 = *(PartitionCmd + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  outlined init with copy of PgQuery_Alias?(v51 + v32, v50, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(v52 + v32, v34 + v33, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  outlined init with copy of PgQuery_Alias?(v34, v45, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_PartitionBoundSpec);
LABEL_13:
    v28 = &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMd;
    v29 = &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMR;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  outlined init with take of PgQuery_OidList(v40, v44, type metadata accessor for PgQuery_PartitionBoundSpec);
  v42 = specialized static PgQuery_PartitionBoundSpec.== infix(_:_:)(v37, v41);
  outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_PartitionBoundSpec);
  outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_PartitionBoundSpec);
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t specialized static PgQuery_CreateAmStmt.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for PgQuery_CreateAmStmt(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterSeqStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  AlterSeqStmt = type metadata accessor for PgQuery_AlterSeqStmt(0);
  v17 = *(AlterSeqStmt + 32);
  v18 = *(v13 + 56);
  v29 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) == 1)
  {
    if (v19(&v16[v18], 1, RangeVar) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v19(&v16[v18], 1, RangeVar) != 1)
    {
      v21 = v28;
      outlined init with take of PgQuery_OidList(&v16[v18], v28, type metadata accessor for PgQuery_RangeVar);
      v22 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v21);
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v22 & 1) == 0)
      {
LABEL_11:
        v20 = 0;
        return v20 & 1;
      }

LABEL_8:
      v23 = v29;
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v29, *a2) & 1) != 0 && *(v23 + 8) == *(a2 + 8) && *(v23 + 9) == *(a2 + 9))
      {
        v25 = *(AlterSeqStmt + 28);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v20 & 1;
      }

      goto LABEL_11;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static PgQuery_CreateFdwStmt.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], a2[2]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_ReindexStmt.== infix(_:_:)(void *a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        if (v17 != 3)
        {
          goto LABEL_32;
        }
      }

      else if (v18 == 4)
      {
        if (v17 != 4)
        {
          goto LABEL_32;
        }
      }

      else if (v17 != 5)
      {
        goto LABEL_32;
      }
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        if (v17 != 1)
        {
          goto LABEL_32;
        }
      }

      else if (v17 != 2)
      {
        goto LABEL_32;
      }
    }

    else if (v17)
    {
      goto LABEL_32;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_32;
  }

  ReindexStmt = type metadata accessor for PgQuery_ReindexStmt(0);
  v20 = *(ReindexStmt + 36);
  v21 = a1;
  v22 = *(v13 + 48);
  v29 = ReindexStmt;
  v30 = v21;
  outlined init with copy of PgQuery_Alias?(v21 + v20, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v16[v22], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v23 = *(v5 + 48);
  if (v23(v16, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v23(&v16[v22], 1, RangeVar) == 1)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
      goto LABEL_17;
    }

    outlined init with take of PgQuery_OidList(&v16[v22], v8, type metadata accessor for PgQuery_RangeVar);
    v24 = specialized static PgQuery_RangeVar.== infix(_:_:)(v12, v8);
    outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_RangeVar);
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_32:
    v27 = 0;
    return v27 & 1;
  }

  if (v23(&v16[v22], 1, RangeVar) != 1)
  {
LABEL_17:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_32;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_19:
  v25 = v30;
  if ((v30[2] != *(a2 + 16) || v30[3] != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v25 + 8) != *(a2 + 32) || *(v25 + 36) != *(a2 + 36))
  {
    goto LABEL_32;
  }

  v26 = *(v29 + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v27 & 1;
}

uint64_t specialized static PgQuery_GroupingSet.== infix(_:_:)(uint64_t *a1, uint64_t a2)
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

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], *(a2 + 16)) & 1) != 0 && *(a1 + 6) == *(a2 + 24))
  {
    v6 = *(type metadata accessor for PgQuery_GroupingSet(0) + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_DiscardStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v3 == 3)
      {
        if (v2 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 4)
      {
        return 0;
      }

LABEL_8:
      v4 = *(type metadata accessor for PgQuery_DiscardStmt(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t specialized static PgQuery_CollateExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PgQuery_CollateExpr(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static PgQuery_CollateExpr.== infix(_:_:)(v5, v6, &OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, &OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid, &OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_ClusterStmt.== infix(_:_:)(void *a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](RangeVar);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  ClusterStmt = type metadata accessor for PgQuery_ClusterStmt(0);
  v17 = *(ClusterStmt + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v19(&v16[v18], 1, RangeVar) != 1)
    {
      v20 = v28;
      outlined init with take of PgQuery_OidList(&v16[v18], v28, type metadata accessor for PgQuery_RangeVar);
      v21 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v20);
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, RangeVar) != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_8:
  v22 = v29;
  if ((*v29 != *a2 || v29[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v22 + 4) != *(a2 + 16))
  {
    goto LABEL_13;
  }

  v23 = *(ClusterStmt + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v24 & 1;
}

uint64_t specialized static PgQuery_WithClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v4 = *(type metadata accessor for PgQuery_WithClause(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_ObjectWithArgs.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = *(a3(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateExtensionStmt.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_DefineStmt.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = destructiveProjectEnumData for StorableValue(*a1, *(a1 + 8));
  if (v6 != destructiveProjectEnumData for StorableValue(v4, v5) || *(a1 + 9) != *(a2 + 9) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), a2[2]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 24), a2[3]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 32), a2[4]) & 1) == 0 || *(a1 + 40) != *(a2 + 40) || *(a1 + 41) != *(a2 + 41))
  {
    return 0;
  }

  v8 = *(type metadata accessor for PgQuery_DefineStmt(0) + 44);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_PartitionBoundSpec.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 40), *(a2 + 40)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 48), *(a2 + 48)) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v5 = *(type metadata accessor for PgQuery_PartitionBoundSpec(0) + 48);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_ScanToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v6 = PgQuery_Token.rawValue.getter(*(a1 + 8), *(a1 + 16));
  if (v6 != PgQuery_Token.rawValue.getter(v2, v3))
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (*(a2 + 32) == 1)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v8 == 3)
      {
        if (v7 != 3)
        {
          return 0;
        }
      }

      else if (v7 != 4)
      {
        return 0;
      }

LABEL_11:
      v9 = *(type metadata accessor for PgQuery_ScanToken(0) + 32);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (v8)
    {
      if (v7 != 1)
      {
        return 0;
      }

      goto LABEL_11;
    }

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else if (v7 == v8)
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t specialized static PgQuery_GrantStmt.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1);
  v6 = *(a2 + 1);
  if (a2[16] == 1)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (v5 != 2)
        {
          return 0;
        }
      }

      else if (v5 != 3)
      {
        return 0;
      }
    }

    else if (v6)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  v7 = *(a2 + 3);
  v8 = a2[32];
  v9 = destructiveProjectEnumData for StorableValue(*(a1 + 3), a1[32]);
  if (v9 != destructiveProjectEnumData for StorableValue(v7, v8) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 5), *(a2 + 5)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 6), *(a2 + 6)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 7), *(a2 + 7)) & 1) == 0 || a1[64] != a2[64])
  {
    return 0;
  }

  v10 = *(a1 + 9);
  v11 = *(a2 + 9);
  if (a2[80] != 1)
  {
    if (v10 == v11)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (!v11)
  {
    if (!v10)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v11 == 1)
  {
    if (v10 == 1)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v10 != 2)
  {
    return 0;
  }

LABEL_31:
  v12 = *(type metadata accessor for PgQuery_GrantStmt(0) + 48);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_FetchStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2)
      {
        return 0;
      }
    }

    else if (v3 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v3 == 3)
    {
      if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v2 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (a1[2] == *(a2 + 16))
  {
    v4 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
    if (v4 || (v5 = a1, v6 = a1[3], v7 = a2, v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v7, v9 = v8, a1 = v5, (v9 & 1) != 0))
    {
      if (*(a1 + 40) == *(a2 + 40))
      {
        v10 = *(type metadata accessor for PgQuery_FetchStmt(0) + 32);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
      }
    }
  }

  return 0;
}

uint64_t specialized static PgQuery_TypeName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v4 = *(type metadata accessor for PgQuery_TypeName(0) + 48);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_RoleSpec.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 8) == *(a2 + 32))
  {
    v7 = *(type metadata accessor for PgQuery_RoleSpec(0) + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_AlterStatsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v7 = *(a3(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_DropStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = destructiveProjectEnumData for StorableValue(*(a1 + 8), *(a1 + 16));
  if (v6 != destructiveProjectEnumData for StorableValue(v4, v5))
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (*(a2 + 32) != 1)
  {
    if (v7 != v8)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (!v8)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v8 != 1)
  {
    if (v7 == 2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v7 != 1)
  {
    return 0;
  }

LABEL_13:
  if (*(a1 + 33) != *(a2 + 33) || *(a1 + 34) != *(a2 + 34))
  {
    return 0;
  }

  v10 = *(type metadata accessor for PgQuery_DropStmt(0) + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_RangeVar.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v5 = *(Alias - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Alias);
  v8 = &RangeVar - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&RangeVar - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &RangeVar - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48) || (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  v29 = v8;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v17 = *(RangeVar + 44);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, Alias) == 1)
  {
    if (v19(&v16[v18], 1, Alias) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if (v19(&v16[v18], 1, Alias) == 1)
  {
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
LABEL_20:
    v22 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
    v23 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
LABEL_29:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v22, v23);
    goto LABEL_30;
  }

  v24 = v29;
  outlined init with take of PgQuery_OidList(&v16[v18], v29, type metadata accessor for PgQuery_Alias);
  if ((*v12 != *v24 || v12[1] != v24[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v12[2], v24[2]) & 1) == 0)
  {
    outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Alias);
    goto LABEL_28;
  }

  v25 = *(Alias + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Alias);
  if ((v26 & 1) == 0)
  {
LABEL_28:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
    v22 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
    v23 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
    goto LABEL_29;
  }

  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
LABEL_16:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if (*(a1 + 72) != *(a2 + 72))
  {
LABEL_30:
    v21 = 0;
    return v21 & 1;
  }

  v20 = *(RangeVar + 40);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static PgQuery_AccessPriv.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined init with copy of PgQuery_Node.OneOf_Node(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PgQuery_OidList(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of PgQuery_OidList(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized PgQuery_TableFunc._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = v3;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr;
  v21 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v1 + v4, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr;
  v6(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, 1, 1, Node);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames) = v3;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes) = v3;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods) = v3;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations) = v3;
  v22 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexprs;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexprs) = v3;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexprs;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexprs) = v3;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__notnulls;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__notnulls) = v3;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordinalitycol;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordinalitycol) = 0;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = *(a1 + 24);
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr;

  outlined assign with copy of PgQuery_Node?(a1 + v12, v1 + v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, v1 + v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(v1 + v8);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames);

  v14 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes);

  v15 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods);

  v16 = *(v1 + v11);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations);

  v17 = *(v1 + v22);
  *(v1 + v22) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexprs);

  v18 = *(v1 + v23);
  *(v1 + v23) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexprs);

  v19 = *(v1 + v24);
  *(v1 + v24) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__notnulls);

  *(v1 + v26) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordinalitycol);
  *(v1 + v25) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_Var._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varno;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varno) = 0;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattno;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattno) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartype) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartypmod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartypmod) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varcollid) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varlevelsup;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varlevelsup) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varnosyn;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varnosyn) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattnosyn;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattnosyn) = 0;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v14) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varno);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattno);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartype);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartypmod);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varcollid);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varlevelsup);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varnosyn);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattnosyn);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_Param._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramkind;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramid) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtype) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtypmod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtypmod) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramcollid) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramkind + 8);
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramkind);
  *(v5 + 8) = v11;
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramid);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtype);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtypmod);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramcollid);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_Aggref._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v27 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggfnoid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggfnoid) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggtype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggtype) = 0;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggcollid) = 0;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggtranstype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggtranstype) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggargtypes;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggargtypes) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggdirectargs;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggdirectargs) = v8;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v8;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggorder;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggorder) = v8;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggdistinct;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggdistinct) = v8;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggfilter;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggfilter, 1, 1, Node);
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggstar;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggstar) = 0;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggvariadic;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggvariadic) = 0;
  v13 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggkind);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v32 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__agglevelsup;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__agglevelsup) = 0;
  v14 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggsplit;
  *v14 = 0;
  *(v14 + 8) = 1;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v27) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggfnoid);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggtype);
  *(v1 + v26) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggcollid);
  *(v1 + v25) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid);
  *(v1 + v24) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggtranstype);
  v15 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggargtypes);

  v16 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggdirectargs);

  v17 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v18 = *(v1 + v11);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggorder);

  v19 = *(v1 + v29);
  *(v1 + v29) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggdistinct);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggfilter, v1 + v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggstar);
  *(v1 + v30) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggvariadic);
  v20 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggkind + 8);
  v21 = v13[1];
  *v13 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggkind);
  v13[1] = v20;

  *(v1 + v32) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__agglevelsup);
  v22 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggsplit + 8);
  *v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggsplit);
  *(v14 + 8) = v22;
  *(v1 + v33) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_AggrefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_GroupingFunc._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refs;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refs) = v6;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols) = v6;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__agglevelsup;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__agglevelsup) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(v1 + v5);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v12 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refs);

  v13 = *(v1 + v8);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols);

  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__agglevelsup);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_WindowFunc._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winfnoid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winfnoid) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__wintype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__wintype) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__wincollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__wincollid) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x1E69E7CC0];
  v18 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggfilter;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggfilter, 1, 1, Node);
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref) = 0;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winstar;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winstar) = 0;
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winagg;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winagg) = 0;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winfnoid);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__wintype);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__wincollid);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid);
  v14 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggfilter, v1 + v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winstar);
  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winagg);
  *(v1 + v17) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_WindowFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_FuncExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcid) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcresulttype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcresulttype) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcretset;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcretset) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcvariadic;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcvariadic) = 0;
  v9 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcformat;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccollid) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x1E69E7CC0];
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcid);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcresulttype);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcretset);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcvariadic);
  v13 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcformat + 8);
  *v9 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcformat);
  *(v9 + 8) = v13;
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccollid);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid);
  v14 = *(v1 + v12);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  *(v1 + v17) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_NamedArgExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v7 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argnumber;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argnumber) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8);
  v11 = v7[1];
  *v7 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name);
  v7[1] = v10;

  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argnumber);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_OpExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid);
  v13 = *(v1 + v11);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_DistinctExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid);
  v13 = *(v1 + v11);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_NullIfExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid);
  v13 = *(v1 + v11);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_ScalarArrayOpExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOr;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOr) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOr);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid);
  v11 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_BoolExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop + 8);
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop);
  *(v5 + 8) = v8;
  v9 = *(v1 + v6);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_SubLink._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkID;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkID) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr, 1, 1, Node);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__operName;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__operName) = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subselect;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subselect, 1, 1, Node);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType + 8);
  *v6 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType);
  *(v6 + 8) = v11;
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkID);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr, v1 + v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__operName);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subselect, v1 + v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_SubPlan._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v22 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType;
  *v6 = 0;
  *(v6 + 8) = 1;
  v21 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramIds;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramIds) = MEMORY[0x1E69E7CC0];
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planID;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planID) = 0;
  v9 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColType;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColType) = 0;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColTypmod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColTypmod) = 0;
  v27 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColCollation;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColCollation) = 0;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useHashTable;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useHashTable) = 0;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unknownEqFalse;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unknownEqFalse) = 0;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parallelSafe;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parallelSafe) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setParam;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setParam) = v8;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parParam;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parParam) = v8;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v8;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startupCost;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startupCost) = 0;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__perCallCost;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__perCallCost) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType + 8);
  *v6 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType);
  *(v6 + 8) = v13;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr, v1 + v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v14 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramIds);

  *(v1 + v23) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planID);
  v15 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planName + 8);
  v16 = v9[1];
  *v9 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__planName);
  v9[1] = v15;

  *(v1 + v29) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColType);
  *(v1 + v28) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColTypmod);
  *(v1 + v27) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__firstColCollation);
  *(v1 + v26) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useHashTable);
  *(v1 + v25) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unknownEqFalse);
  *(v1 + v24) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parallelSafe);
  v17 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setParam);

  v18 = *(v1 + v11);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__parParam);

  v19 = *(v1 + v12);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  *(v1 + v31) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startupCost);
  *(v1 + v30) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubPlanP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__perCallCost);
  return v1;
}

uint64_t specialized PgQuery_FieldSelect._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnum;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnum) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnum);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid);
  return v1;
}

uint64_t specialized PgQuery_FieldStore._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums) = v8;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals);

  v12 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums);

  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);
  return v1;
}

uint64_t specialized PgQuery_RelabelType._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  v10 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid);
  v12 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat + 8);
  *v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat);
  *(v10 + 8) = v12;
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_CoerceViaIO._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  v9 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid);
  v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8);
  *v9 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  *(v9 + 8) = v11;
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_ArrayCoerceExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  v10 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v1 + v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid);
  v12 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8);
  *v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  *(v10 + 8) = v12;
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_ConvertRowtypeExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  v8 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);
  v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat + 8);
  *v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat);
  *(v8 + 8) = v10;
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_CaseExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult, 1, 1, Node);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v1 + v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult, v1 + v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_ArrayExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid);
  v11 = *(v1 + v8);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements);

  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_RowExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid) = 0;
  v8 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames) = v6;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(v1 + v5);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid);
  v12 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat + 8);
  *v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat);
  *(v8 + 8) = v12;
  v13 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames);

  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_CoalesceExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid);
  v9 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_MinMaxExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  v8 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid);
  v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8);
  *v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  *(v8 + 8) = v11;
  v12 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_SQLValueFunction._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8);
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  *(v5 + 8) = v9;
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_XmlExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames) = v8;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v8;
  v11 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption;
  *v11 = 0;
  *(v11 + 8) = 1;
  v22 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) = 0;
  v21 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) = 0;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8);
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  *(v5 + 8) = v13;
  v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8);
  v15 = v6[1];
  *v6 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name);
  v6[1] = v14;

  v16 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs);

  v17 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames);

  v18 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v19 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption + 8);
  *v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption);
  *(v11 + 8) = v19;
  *(v1 + v22) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type);
  *(v1 + v21) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_NullTest._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v7 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype + 8);
  *v7 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype);
  *(v7 + 8) = v10;
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_CoerceToDomain._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  v10 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid);
  v12 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat + 8);
  *v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat);
  *(v10 + 8) = v12;
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_CoerceToDomainValue._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_SetToDefault._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_CurrentOfExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno) = 0;
  v6 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno);
  v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName + 8);
  v9 = v6[1];
  *v6 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName);
  v6[1] = v8;

  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam);
  return v1;
}

uint64_t specialized PgQuery_TargetEntry._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno) = 0;
  v8 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol) = 0;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno);
  v12 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname + 8);
  v13 = v8[1];
  *v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname);
  v8[1] = v12;

  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol);
  *(v1 + v16) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk);
  return v1;
}

uint64_t specialized PgQuery_JoinExpr._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, 1, 1, Node);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  Alias = type metadata accessor for PgQuery_Alias(0);
  (*(*(Alias - 8) + 56))(v1 + v9, 1, 1, Alias);
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex) = 0;
  v12 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v12;
  *(v1 + 25) = *(a1 + 25);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v1 + v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v1 + v9, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex);
  return v1;
}

uint64_t specialized PgQuery_IntoClause._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v3, 1, 1, RangeVar);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames) = MEMORY[0x1E69E7CC0];
  v7 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v6;
  v9 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v11, 1, 1, Node);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, v1 + v3, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v14 = *(v1 + v5);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames);

  v15 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v16 = v7[1];
  *v7 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  v7[1] = v15;

  v17 = *(v1 + v8);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v18 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit + 8);
  *v9 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit);
  *(v9 + 8) = v18;
  v19 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName + 8);
  v20 = v10[1];
  *v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName);
  v10[1] = v19;

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery, v1 + v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData);
  return v1;
}

uint64_t specialized PgQuery_Query._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt;
  v44 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation) = 0;
  v42 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p) = 0;
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p) = 0;
  v40 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p) = 0;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p) = 0;
  v38 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p) = 0;
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p) = 0;
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p) = 0;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p) = 0;
  v34 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList) = MEMORY[0x1E69E7CC0];
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable) = v7;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree;
  v48 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree;
  v9 = type metadata accessor for PgQuery_FromExpr(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = v7;
  v11 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict;
  v47 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict;
  v13 = type metadata accessor for PgQuery_OnConflictExpr(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v45 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v7;
  v49 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) = v7;
  v50 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets) = v7;
  v52 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, 1, 1, Node);
  v51 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) = v7;
  v53 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause) = v7;
  v54 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) = v7;
  v57 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, 1, 1, Node);
  v56 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, 1, 1, Node);
  v14 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption;
  *v14 = 0;
  *(v14 + 8) = 1;
  v55 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks) = v7;
  v58 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, 1, 1, Node);
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps) = v7;
  v59 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions) = v7;
  v60 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) = 0;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen) = 0;
  v17 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v17;
  v18 = *(a1 + 40);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = v18;
  *(v1 + 41) = *(a1 + 41);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt, v1 + v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v43) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation);
  *(v1 + v42) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p);
  *(v1 + v41) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p);
  *(v1 + v40) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p);
  *(v1 + v39) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p);
  *(v1 + v38) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p);
  *(v1 + v37) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p);
  *(v1 + v36) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p);
  *(v1 + v35) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p);
  *(v1 + v34) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p);
  v19 = *(v1 + v6);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList);

  v20 = *(v1 + v46);
  *(v1 + v46) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree, v1 + v48, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  v21 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  v22 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8);
  *v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
  *(v11 + 8) = v22;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict, v1 + v47, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  v23 = *(v1 + v45);
  *(v1 + v45) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v24 = *(v1 + v49);
  *(v1 + v49) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);

  v25 = *(v1 + v50);
  *(v1 + v50) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, v1 + v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v26 = *(v1 + v51);
  *(v1 + v51) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);

  v27 = *(v1 + v53);
  *(v1 + v53) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause);

  v28 = *(v1 + v54);
  *(v1 + v54) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v1 + v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v1 + v56, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8);
  *v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  *(v14 + 8) = v29;
  v30 = *(v1 + v55);
  *(v1 + v55) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, v1 + v58, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = *(v1 + v15);
  *(v1 + v15) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps);

  v32 = *(v1 + v59);
  *(v1 + v59) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions);

  *(v1 + v60) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation);
  *(v1 + v16) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);
  return v1;
}

uint64_t specialized PgQuery_InsertStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v3, 1, 1, RangeVar);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v7, 1, 1, Node);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause;
  v10 = type metadata accessor for PgQuery_OnConflictClause(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v6;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v13 = type metadata accessor for PgQuery_WithClause(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override;
  *v14 = 0;
  *(v14 + 8) = 1;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v3, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v15 = *(v1 + v5);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt, v1 + v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause, v1 + v9, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  v16 = *(v1 + v11);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v1 + v12, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8);
  *v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
  *(v14 + 8) = v17;
  return v1;
}

uint64_t specialized PgQuery_AlterTableCmd._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  (*(*(RoleSpec - 8) + 56))(v1 + v3, 1, 1, RoleSpec);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v5, 1, 1, Node);
  v7 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) = 0;
  v9 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v9;
  v10 = *(a1 + 40);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = v10;
  *(v1 + 48) = *(a1 + 48);
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;

  outlined assign with copy of PgQuery_Node?(a1 + v11, v1 + v3, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, v1 + v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8);
  *v7 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
  *(v7 + 8) = v12;
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);
  return v1;
}

char *specialized PgQuery_AlterDomainStmt._StorageClass.init(copying:)(void *a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = v3;
  *(v1 + 5) = 0;
  *(v1 + 6) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(&v1[v4], 1, 1, Node);
  v6 = &v1[OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior];
  *v6 = 0;
  v6[8] = 1;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk;
  v1[OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk] = 0;
  v8 = a1[3];
  *(v1 + 2) = a1[2];
  *(v1 + 3) = v8;
  *(v1 + 4) = a1[4];
  v9 = a1[6];
  *(v1 + 5) = a1[5];
  *(v1 + 6) = v9;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;

  outlined assign with copy of PgQuery_Node?(a1 + v10, &v1[v4], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8);
  *v6 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
  v6[8] = v11;
  v1[v7] = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);
  return v1;
}

uint64_t specialized PgQuery_CreateStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v3, 1, 1, RangeVar);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations) = v6;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  (*(*(PartitionBoundSpec - 8) + 56))(v1 + v8, 1, 1, PartitionBoundSpec);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec;
  PartitionSpec = type metadata accessor for PgQuery_PartitionSpec(0);
  (*(*(PartitionSpec - 8) + 56))(v1 + v10, 1, 1, PartitionSpec);
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v1 + v12, 1, 1, TypeName);
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) = v6;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v6;
  v16 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v32 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v3, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v1 + v5);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts);

  v20 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound, v1 + v31, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec, v1 + v30, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename, v1 + v29, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v21 = *(v1 + v14);
  *(v1 + v14) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

  v22 = *(v1 + v15);
  *(v1 + v15) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v23 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit + 8);
  *v16 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit);
  *(v16 + 8) = v23;
  v24 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename + 8);
  v25 = v17[1];
  *v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename);
  v17[1] = v24;

  v26 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v27 = v18[1];
  *v18 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  v18[1] = v26;

  *(v1 + v32) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);
  return v1;
}

uint64_t specialized PgQuery_IndexStmt._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v3, 1, 1, RangeVar);
  v5 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams) = v8;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v8;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v11, 1, 1, Node);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames) = v8;
  v14 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v42 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid) = 0;
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode) = 0;
  v40 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid) = 0;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid) = 0;
  v38 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique) = 0;
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary) = 0;
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) = 0;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) = 0;
  v34 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) = 0;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed) = 0;
  v32 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent) = 0;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) = 0;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) = 0;
  v15 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v15;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;

  outlined assign with copy of PgQuery_Node?(a1 + v16, v1 + v28, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v18 = v5[1];
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  v5[1] = v17;

  v19 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace + 8);
  v20 = v6[1];
  *v6 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace);
  v6[1] = v19;

  v21 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams);

  v22 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams);

  v23 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v24 = *(v1 + v13);
  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames);

  v25 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment + 8);
  v26 = v14[1];
  *v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment);
  v14[1] = v25;

  *(v1 + v42) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid);
  *(v1 + v41) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode);
  *(v1 + v40) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid);
  *(v1 + v39) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid);
  *(v1 + v38) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique);
  *(v1 + v37) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary);
  *(v1 + v36) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint);
  *(v1 + v35) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable);
  *(v1 + v34) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred);
  *(v1 + v33) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed);
  *(v1 + v32) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent);
  *(v1 + v31) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);
  *(v1 + v30) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc);
  return v1;
}

uint64_t specialized PgQuery_RenameStmt._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v3, 1, 1, RangeVar);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v5, 1, 1, Node);
  v7 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) = 0;
  v11 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v11;
  v12 = *(a1 + 40);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = v12;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v3, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v1 + v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname + 8);
  v14 = v7[1];
  *v7 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname);
  v7[1] = v13;

  v15 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname + 8);
  v16 = v8[1];
  *v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname);
  v8[1] = v15;

  v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8);
  *v9 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
  *(v9 + 8) = v17;
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);
  return v1;
}

uint64_t specialized PgQuery_RuleStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v3, 1, 1, RangeVar);
  v5 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v6, 1, 1, Node);
  v8 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions) = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v3, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v12 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename + 8);
  v13 = v5[1];
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename);
  v5[1] = v12;

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event + 8);
  *v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event);
  *(v8 + 8) = v14;
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead);
  v15 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions);

  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace);
  return v1;
}

uint64_t specialized PgQuery_ViewStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v3, 1, 1, RangeVar);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v7, 1, 1, Node);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v6;
  v11 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption;
  *v11 = 0;
  *(v11 + 8) = 1;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view, v1 + v3, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v12 = *(v1 + v5);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v1 + v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace);
  v13 = *(v1 + v10);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption + 8);
  *v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption);
  *(v11 + 8) = v14;
  return v1;
}

uint64_t specialized PgQuery_CreateTableAsStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  (*(*(IntoClause - 8) + 56))(v1 + v5, 1, 1, IntoClause);
  v7 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into, v1 + v5, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind + 8);
  *v7 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind);
  *(v7 + 8) = v10;
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);
  return v1;
}

uint64_t specialized PgQuery_CreateCastStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v5 = *(*(TypeName - 8) + 56);
  v5(v1 + v3, 1, 1, TypeName);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype, 1, 1, TypeName);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  (*(*(ObjectWithArgs - 8) + 56))(v1 + v7, 1, 1, ObjectWithArgs);
  v9 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype, v1 + v3, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype, v1 + v6, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func, v1 + v7, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context + 8);
  *v9 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context);
  *(v9 + 8) = v11;
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout);
  return v1;
}

uint64_t specialized PgQuery_AlterObjectDependsStmt._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v3, 1, 1, RangeVar);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  v7 = *(*(Node - 8) + 56);
  v7(v1 + v5, 1, 1, Node);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname;
  v7(v1 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, 1, 1, Node);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove) = 0;
  v10 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v10;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v3, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v1 + v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, v1 + v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove);
  return v1;
}

uint64_t specialized PgQuery_AlterObjectSchemaStmt._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v3, 1, 1, RangeVar);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v5, 1, 1, Node);
  v7 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) = 0;
  v9 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v9;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v3, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v1 + v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema + 8);
  v11 = v7[1];
  *v7 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema);
  v7[1] = v10;

  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);
  return v1;
}

uint64_t specialized PgQuery_A_Expr._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  v8 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v8;
  *(v1 + 32) = *(a1 + 32);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr;

  outlined assign with copy of PgQuery_Node?(a1 + v9, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

char *specialized PgQuery_FuncCall._StorageClass.init(copying:)(void *a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 2) = MEMORY[0x1E69E7CC0];
  *(v1 + 3) = v3;
  *(v1 + 4) = v3;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(&v1[v4], 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup;
  v1[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup] = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar;
  v1[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar] = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct;
  v1[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct] = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic;
  v1[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic] = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over;
  WindowDef = type metadata accessor for PgQuery_WindowDef(0);
  (*(*(WindowDef - 8) + 56))(&v1[v10], 1, 1, WindowDef);
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *&v1[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location] = 0;
  *(v1 + 2) = a1[2];
  *(v1 + 3) = a1[3];
  *(v1 + 4) = a1[4];
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter;

  outlined assign with copy of PgQuery_Node?(a1 + v13, &v1[v16], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1[v6] = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup);
  v1[v7] = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar);
  v1[v8] = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct);
  v1[v9] = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over, &v1[v15], &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  *&v1[v12] = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

char *specialized PgQuery_ResTarget._StorageClass.init(copying:)(void *a1)
{
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(&v1[v3], 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *&v1[OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location] = 0;
  v6 = a1[3];
  *(v1 + 2) = a1[2];
  *(v1 + 3) = v6;
  *(v1 + 4) = a1[4];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;

  outlined assign with copy of PgQuery_Node?(a1 + v7, &v1[v3], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *&v1[v5] = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_SortBy._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir + 8);
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir);
  *(v5 + 8) = v9;
  v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls + 8);
  *v6 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls);
  *(v6 + 8) = v10;
  v11 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp);

  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_WindowDef._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = v3;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v1 + v4, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset;
  v6(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, 1, 1, Node);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  v9 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v9;
  v10 = *(a1 + 40);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = v10;
  *(v1 + 48) = *(a1 + 48);
  v11 = *(v1 + 56);
  *(v1 + 56) = *(a1 + 56);

  *(v1 + 64) = *(a1 + 64);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset, v1 + v4, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, v1 + v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t outlined assign with take of PgQuery_Node?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t specialized PgQuery_RangeTableSample._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v7;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, 1, 1, Node);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(v1 + v6);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method);

  v12 = *(v1 + v8);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, v1 + v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_RangeTableFunc._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) = v8;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  Alias = type metadata accessor for PgQuery_Alias(0);
  (*(*(Alias - 8) + 56))(v1 + v10, 1, 1, Alias);
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  *(v1 + 16) = *(a1 + 16);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces);

  v14 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v1 + v10, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_RangeTableFuncCol._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v1 + v3, 1, 1, TypeName);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(*(Node - 8) + 56);
  v9(v1 + v7, 1, 1, Node);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr;
  v9(v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, 1, 1, Node);
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  v12 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v12;
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;

  outlined assign with copy of PgQuery_Node?(a1 + v13, v1 + v3, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr, v1 + v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, v1 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_ColumnDef._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  v38 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v1 + v3, 1, 1, TypeName);
  v34 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount) = 0;
  v32 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal) = 0;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) = 0;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType) = 0;
  v6 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault;
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(*(Node - 8) + 56);
  v9(v1 + v7, 1, 1, Node);
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault;
  v9(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, 1, 1, Node);
  v10 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence;
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v11, 1, 1, RangeVar);
  v13 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  (*(*(CollateClause - 8) + 56))(v1 + v14, 1, 1, CollateClause);
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) = 0;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints;
  v18 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) = MEMORY[0x1E69E7CC0];
  v19 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions) = v18;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  v20 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v20;
  v21 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;

  outlined assign with copy of PgQuery_Node?(a1 + v21, v1 + v38, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  *(v1 + v34) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount);
  *(v1 + v32) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull);
  *(v1 + v31) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType);
  v22 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage + 8);
  v23 = v6[1];
  *v6 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage);
  v6[1] = v22;

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault, v1 + v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, v1 + v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v24 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity + 8);
  v25 = v10[1];
  *v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity);
  v10[1] = v24;

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence, v1 + v36, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v26 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated + 8);
  v27 = v13[1];
  *v13 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated);
  v13[1] = v26;

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v1 + v35, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  *(v1 + v16) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid);
  v28 = *(v1 + v17);
  *(v1 + v17) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

  v29 = *(v1 + v19);
  *(v1 + v19) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions);

  *(v1 + v39) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_IndexElem._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass) = v7;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts) = v7;
  v10 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v12;
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;

  outlined assign with copy of PgQuery_Node?(a1 + v13, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname + 8);
  v15 = v5[1];
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname);
  v5[1] = v14;

  v16 = *(v1 + v6);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

  v17 = *(v1 + v8);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);

  v18 = *(v1 + v9);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts);

  v19 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering + 8);
  *v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering);
  *(v10 + 8) = v19;
  v20 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering + 8);
  *v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering);
  *(v11 + 8) = v20;
  return v1;
}

uint64_t specialized PgQuery_Constraint._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 56) = 0;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr;
  v44 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v45 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys) = MEMORY[0x1E69E7CC0];
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including) = v8;
  v47 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions) = v8;
  v48 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v8;
  v9 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v49 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace);
  *v49 = 0;
  v49[1] = 0xE000000000000000;
  v52 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) = 0;
  v50 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  *v50 = 0;
  v50[1] = 0xE000000000000000;
  v54 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, 1, 1, Node);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable;
  v51 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v10, 1, 1, RangeVar);
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs) = v8;
  v53 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs) = v8;
  v13 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v55 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction);
  *v55 = 0;
  v55[1] = 0xE000000000000000;
  v56 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop) = v8;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldPktableOid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldPktableOid) = 0;
  v58 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipValidation;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipValidation) = 0;
  v57 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid) = 0;
  v16 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v16;
  v17 = *(a1 + 40);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = v17;
  *(v1 + 48) = *(a1 + 48);
  *(v1 + 49) = *(a1 + 49);
  *(v1 + 52) = *(a1 + 52);
  *(v1 + 56) = *(a1 + 56);
  v18 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr;

  outlined assign with copy of PgQuery_Node?(a1 + v18, v1 + v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr + 8);
  v20 = v6[1];
  *v6 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr);
  v6[1] = v19;

  v21 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen + 8);
  v22 = v7[1];
  *v7 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen);
  v7[1] = v21;

  v23 = *(v1 + v45);
  *(v1 + v45) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys);

  v24 = *(v1 + v46);
  *(v1 + v46) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including);

  v25 = *(v1 + v47);
  *(v1 + v47) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions);

  v26 = *(v1 + v48);
  *(v1 + v48) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v27 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname + 8);
  v28 = v9[1];
  *v9 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname);
  v9[1] = v27;

  v29 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace + 8);
  v30 = v49[1];
  *v49 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace);
  v49[1] = v29;

  *(v1 + v52) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc);
  v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v32 = v50[1];
  *v50 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  v50[1] = v31;

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable, v1 + v51, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v33 = v12;
  v34 = *(v1 + v12);
  *(v1 + v33) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs);

  v35 = *(v1 + v53);
  *(v1 + v53) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs);

  v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype + 8);
  v37 = v13[1];
  *v13 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype);
  v13[1] = v36;

  v38 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction + 8);
  v39 = v14[1];
  *v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction);
  v14[1] = v38;

  v40 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction + 8);
  v41 = v55[1];
  *v55 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction);
  v55[1] = v40;

  v42 = *(v1 + v56);
  *(v1 + v56) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop);

  *(v1 + v15) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldPktableOid);
  *(v1 + v58) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipValidation);
  *(v1 + v57) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid);
  return v1;
}

char *specialized PgQuery_DefElem._StorageClass.init(copying:)(void *a1)
{
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = 0;
  *(v1 + 5) = 0xE000000000000000;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(&v1[v3], 1, 1, Node);
  v5 = &v1[OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction];
  *v5 = 0;
  v5[8] = 1;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *&v1[OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location] = 0;
  v7 = a1[3];
  *(v1 + 2) = a1[2];
  *(v1 + 3) = v7;
  v8 = a1[5];
  *(v1 + 4) = a1[4];
  *(v1 + 5) = v8;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;

  outlined assign with copy of PgQuery_Node?(a1 + v9, &v1[v3], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction + 8);
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction);
  v5[8] = v10;
  *&v1[v6] = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_WithCheckOption._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cascaded;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cascaded) = 0;
  v6 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v6;
  v7 = *(a1 + 40);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = v7;
  v8 = *(a1 + 56);
  *(v1 + 48) = *(a1 + 48);
  *(v1 + 56) = v8;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;

  outlined assign with copy of PgQuery_Node?(a1 + v9, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cascaded);
  return v1;
}

uint64_t specialized PgQuery_WindowClause._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = v3;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset;
  v19 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v1 + v4, 1, 1, Node);
  v18 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset;
  v6(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startInRangeFunc;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startInRangeFunc) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endInRangeFunc;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endInRangeFunc) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeColl;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeColl) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeAsc;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeAsc) = 0;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeNullsFirst;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeNullsFirst) = 0;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref) = 0;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder) = 0;
  v11 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v11;
  v12 = *(a1 + 40);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = v12;
  *(v1 + 48) = *(a1 + 48);
  v13 = *(v1 + 56);
  *(v1 + 56) = *(a1 + 56);

  *(v1 + 64) = *(a1 + 64);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset, v1 + v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, v1 + v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startInRangeFunc);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endInRangeFunc);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeColl);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeAsc);
  *(v1 + v17) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeNullsFirst);
  *(v1 + v16) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref);
  *(v1 + v15) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder);
  return v1;
}

uint64_t specialized PgQuery_InferClause._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  *(v1 + 16) = *(a1 + 16);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;

  outlined assign with copy of PgQuery_Node?(a1 + v7, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname + 8);
  v9 = v5[1];
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname);
  v5[1] = v8;

  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_OnConflictClause._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infer;
  InferClause = type metadata accessor for PgQuery_InferClause(0);
  (*(*(InferClause - 8) + 56))(v1 + v3, 1, 1, InferClause);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v6, 1, 1, Node);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  v9 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v9;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infer, v1 + v3, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  v10 = *(v1 + v5);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t outlined assign with copy of PgQuery_Node?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t specialized PgQuery_PartitionElem._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass) = v6;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  v9 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v9;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;

  outlined assign with copy of PgQuery_Node?(a1 + v10, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(v1 + v5);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

  v12 = *(v1 + v7);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);

  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

unint64_t lazy protocol witness table accessor for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode()
{
  result = lazy protocol witness table cache variable for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode;
  if (!lazy protocol witness table cache variable for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode;
  if (!lazy protocol witness table cache variable for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode;
  if (!lazy protocol witness table cache variable for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode;
  if (!lazy protocol witness table cache variable for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy()
{
  result = lazy protocol witness table cache variable for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd()
{
  result = lazy protocol witness table cache variable for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy()
{
  result = lazy protocol witness table cache variable for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy;
  if (!lazy protocol witness table cache variable for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy;
  if (!lazy protocol witness table cache variable for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy;
  if (!lazy protocol witness table cache variable for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy;
  if (!lazy protocol witness table cache variable for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption()
{
  result = lazy protocol witness table cache variable for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption;
  if (!lazy protocol witness table cache variable for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption;
  if (!lazy protocol witness table cache variable for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption;
  if (!lazy protocol witness table cache variable for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption;
  if (!lazy protocol witness table cache variable for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption()
{
  result = lazy protocol witness table cache variable for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption;
  if (!lazy protocol witness table cache variable for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption;
  if (!lazy protocol witness table cache variable for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption;
  if (!lazy protocol witness table cache variable for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption;
  if (!lazy protocol witness table cache variable for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption);
  }

  return result;
}

BiomeSQLParser::SQLFunction_optional __swiftcall SQLFunction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 0;
  v6 = 80;
  switch(v3)
  {
    case 0:
      goto LABEL_95;
    case 1:
      v5 = 1;
      goto LABEL_95;
    case 2:
      v5 = 2;
      goto LABEL_95;
    case 3:
      v5 = 3;
      goto LABEL_95;
    case 4:
      v5 = 4;
      goto LABEL_95;
    case 5:
      v5 = 5;
      goto LABEL_95;
    case 6:
      v5 = 6;
      goto LABEL_95;
    case 7:
      v5 = 7;
      goto LABEL_95;
    case 8:
      v5 = 8;
      goto LABEL_95;
    case 9:
      v5 = 9;
      goto LABEL_95;
    case 10:
      v5 = 10;
      goto LABEL_95;
    case 11:
      v5 = 11;
      goto LABEL_95;
    case 12:
      v5 = 12;
      goto LABEL_95;
    case 13:
      v5 = 13;
      goto LABEL_95;
    case 14:
      v5 = 14;
      goto LABEL_95;
    case 15:
      v5 = 15;
      goto LABEL_95;
    case 16:
      v5 = 16;
      goto LABEL_95;
    case 17:
      v5 = 17;
      goto LABEL_95;
    case 18:
      v5 = 18;
      goto LABEL_95;
    case 19:
      v5 = 19;
      goto LABEL_95;
    case 20:
      v5 = 20;
      goto LABEL_95;
    case 21:
      v5 = 21;
      goto LABEL_95;
    case 22:
      v5 = 22;
      goto LABEL_95;
    case 23:
      v5 = 23;
      goto LABEL_95;
    case 24:
      v5 = 24;
      goto LABEL_95;
    case 25:
      v5 = 25;
      goto LABEL_95;
    case 26:
      v5 = 26;
      goto LABEL_95;
    case 27:
      v5 = 27;
      goto LABEL_95;
    case 28:
      v5 = 28;
      goto LABEL_95;
    case 29:
      v5 = 29;
      goto LABEL_95;
    case 30:
      v5 = 30;
      goto LABEL_95;
    case 31:
      v5 = 31;
      goto LABEL_95;
    case 32:
      v5 = 32;
      goto LABEL_95;
    case 33:
      v5 = 33;
      goto LABEL_95;
    case 34:
      v5 = 34;
      goto LABEL_95;
    case 35:
      v5 = 35;
      goto LABEL_95;
    case 36:
      v5 = 36;
      goto LABEL_95;
    case 37:
      v5 = 37;
      goto LABEL_95;
    case 38:
      v5 = 38;
      goto LABEL_95;
    case 39:
      v5 = 39;
      goto LABEL_95;
    case 40:
      v5 = 40;
      goto LABEL_95;
    case 41:
      v5 = 41;
      goto LABEL_95;
    case 42:
      v5 = 42;
      goto LABEL_95;
    case 43:
      v5 = 43;
      goto LABEL_95;
    case 44:
      v5 = 44;
      goto LABEL_95;
    case 45:
      v5 = 45;
      goto LABEL_95;
    case 46:
      v5 = 46;
      goto LABEL_95;
    case 47:
      v5 = 47;
      goto LABEL_95;
    case 48:
      v5 = 48;
      goto LABEL_95;
    case 49:
      v5 = 49;
      goto LABEL_95;
    case 50:
      v5 = 50;
      goto LABEL_95;
    case 51:
      v5 = 51;
      goto LABEL_95;
    case 52:
      v5 = 52;
      goto LABEL_95;
    case 53:
      v5 = 53;
      goto LABEL_95;
    case 54:
      v5 = 54;
      goto LABEL_95;
    case 55:
      v5 = 55;
      goto LABEL_95;
    case 56:
      v5 = 56;
      goto LABEL_95;
    case 57:
      v5 = 57;
      goto LABEL_95;
    case 58:
      v5 = 58;
      goto LABEL_95;
    case 59:
      v5 = 59;
      goto LABEL_95;
    case 60:
      v5 = 60;
      goto LABEL_95;
    case 61:
      v5 = 61;
      goto LABEL_95;
    case 62:
      v5 = 62;
      goto LABEL_95;
    case 63:
      v5 = 63;
      goto LABEL_95;
    case 64:
      v5 = 64;
      goto LABEL_95;
    case 65:
      v5 = 65;
      goto LABEL_95;
    case 66:
      v5 = 66;
      goto LABEL_95;
    case 67:
      v5 = 67;
      goto LABEL_95;
    case 68:
      v5 = 68;
      goto LABEL_95;
    case 69:
      v5 = 69;
      goto LABEL_95;
    case 70:
      v5 = 70;
      goto LABEL_95;
    case 71:
      v5 = 71;
      goto LABEL_95;
    case 72:
      v5 = 72;
      goto LABEL_95;
    case 73:
      v5 = 73;
      goto LABEL_95;
    case 74:
      v5 = 74;
      goto LABEL_95;
    case 75:
      v5 = 75;
      goto LABEL_95;
    case 76:
      v5 = 76;
      goto LABEL_95;
    case 77:
      v5 = 77;
      goto LABEL_95;
    case 78:
      v5 = 78;
      goto LABEL_95;
    case 79:
      v5 = 79;
LABEL_95:
      v6 = v5;
      break;
    case 80:
      break;
    case 81:
      v6 = 81;
      break;
    case 82:
      v6 = 82;
      break;
    case 83:
      v6 = 83;
      break;
    case 84:
      v6 = 84;
      break;
    case 85:
      v6 = 85;
      break;
    case 86:
      v6 = 86;
      break;
    case 87:
      v6 = 87;
      break;
    case 88:
      v6 = 88;
      break;
    case 89:
      v6 = 89;
      break;
    case 90:
      v6 = 90;
      break;
    case 91:
      v6 = 91;
      break;
    case 92:
      v6 = 92;
      break;
    case 93:
      v6 = 93;
      break;
    case 94:
      v6 = 94;
      break;
    case 95:
      v6 = 95;
      break;
    case 96:
      v6 = 96;
      break;
    case 97:
      v6 = 97;
      break;
    default:
      v6 = 98;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t SQLFunction.rawValue.getter()
{
  result = 7561825;
  switch(*v0)
  {
    case 1:
      return 892497250;
    case 2:
      return 0x7365676E616863;
    case 3:
      return 1918986339;
    case 4:
      return 0x656373656C616F63;
    case 5:
      return 0x7369645F656D7563;
    case 6:
    case 7:
      v3 = 1920103779;
      goto LABEL_62;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 1702125924;
    case 0xA:
      v2 = 1702125924;
      goto LABEL_65;
    case 0xB:
      return 0x61725F65736E6564;
    case 0xC:
      return 0x61765F7473726966;
    case 0xD:
      return 0x726F6F6C66;
    case 0xE:
      return 0x6B6F745F33737466;
    case 0xF:
      return 896758886;
    case 0x10:
      return 0x756F735F35737466;
    case 0x11:
      return 1651469415;
    case 0x12:
      return 7890280;
    case 0x13:
      return 0x6867696C68676968;
    case 0x14:
      return 0x34353765656569;
    case 0x15:
    case 0x17:
    case 0x20:
    case 0x51:
      return 0xD000000000000010;
    case 0x16:
      return 0xD000000000000011;
    case 0x18:
      return 0x5F34353765656569;
    case 0x19:
      return 0x6C6C756E6669;
    case 0x1A:
      return 6711657;
    case 0x1B:
      return 0x7274736E69;
    case 0x1C:
      return 1852797802;
    case 0x1D:
      return 0x7272615F6E6F736ALL;
    case 0x1E:
      return 0xD000000000000011;
    case 0x1F:
      return 0x7478655F6E6F736ALL;
    case 0x21:
      return 0xD000000000000011;
    case 0x22:
      return 0x736E695F6E6F736ALL;
    case 0x23:
      return 0x6A626F5F6E6F736ALL;
    case 0x24:
      return 0x7461705F6E6F736ALL;
    case 0x25:
      return 0x6F75715F6E6F736ALL;
    case 0x26:
      return 0x6D65725F6E6F736ALL;
    case 0x27:
      return 0x7065725F6E6F736ALL;
    case 0x28:
      return 0x7465735F6E6F736ALL;
    case 0x29:
      return 0x7079745F6E6F736ALL;
    case 0x2A:
      v4 = 1852797802;
      goto LABEL_88;
    case 0x2B:
      return 0x61646E61696C756ALL;
    case 0x2C:
      return 6775148;
    case 0x2D:
      return 0xD000000000000011;
    case 0x2E:
      v4 = 1953718636;
LABEL_88:
      result = v4 | 0x6C61765F00000000;
      break;
    case 0x2F:
      result = 1684104556;
      break;
    case 0x30:
      result = 0x6874676E656CLL;
      break;
    case 0x31:
      result = 1701538156;
      break;
    case 0x32:
      result = 0x6F68696C656B696CLL;
      break;
    case 0x33:
      result = 0x796C656B696CLL;
      break;
    case 0x34:
      result = 0x7265776F6CLL;
      break;
    case 0x35:
      result = 0x6D6972746CLL;
      break;
    case 0x36:
      result = 0x686374616DLL;
      break;
    case 0x37:
      result = 0x666E69686374616DLL;
      break;
    case 0x38:
      result = 7889261;
      break;
    case 0x39:
      result = 7235949;
      break;
    case 0x3A:
      result = 0x756C61765F68746ELL;
      break;
    case 0x3B:
      result = 0x656C69746ELL;
      break;
    case 0x3C:
      result = 0x66696C6C756ELL;
      break;
    case 0x3D:
      result = 0x7374657366666FLL;
      break;
    case 0x3E:
      result = 0x657A696D6974706FLL;
      break;
    case 0x3F:
      v3 = 1668441456;
LABEL_62:
      result = v3 | 0x5F746E6500000000;
      break;
    case 0x40:
      result = 0x66746E697270;
      break;
    case 0x41:
      result = 0x65746F7571;
      break;
    case 0x42:
      result = 0x6D6F646E6172;
      break;
    case 0x43:
      result = 0x6C626D6F646E6172;
      break;
    case 0x44:
      result = 1802396018;
      break;
    case 0x45:
      result = 0x6563616C706572;
      break;
    case 0x46:
      result = 0x646E756F72;
      break;
    case 0x47:
      result = 0x626D756E5F776F72;
      break;
    case 0x48:
      result = 0x6568636565727472;
      break;
    case 0x49:
      result = 0x7065646565727472;
      break;
    case 0x4A:
      result = 0x646F6E6565727472;
      break;
    case 0x4B:
      result = 0x6D69727472;
      break;
    case 0x4C:
      result = 1852270963;
      break;
    case 0x4D:
      result = 0x74657070696E73;
      break;
    case 0x4E:
      result = 0xD000000000000018;
      break;
    case 0x4F:
      result = 0xD000000000000019;
      break;
    case 0x50:
      result = 0x6C5F6574696C7173;
      break;
    case 0x52:
      result = 0x765F6574696C7173;
      break;
    case 0x53:
      v2 = 1718776947;
LABEL_65:
      result = v2 | 0x656D697400000000;
      break;
    case 0x54:
      result = 0x727473627573;
      break;
    case 0x55:
      result = 0x6E69727473627573;
      break;
    case 0x56:
      result = 1701669236;
      break;
    case 0x57:
      result = 0x68635F6C61746F74;
      break;
    case 0x58:
      result = 1835627124;
      break;
    case 0x59:
      result = 0x666F65707974;
      break;
    case 0x5A:
      result = 0x65646F63696E75;
      break;
    case 0x5B:
      result = 0x6E776F6E6B6E75;
      break;
    case 0x5C:
      result = 0x796C656B696C6E75;
      break;
    case 0x5D:
      result = 0x7265707075;
      break;
    case 0x5E:
      result = 1684632949;
      break;
    case 0x5F:
      result = 0x6F6C625F64697575;
      break;
    case 0x60:
      result = 0x7274735F64697575;
      break;
    case 0x61:
      result = 0x626F6C626F72657ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SQLFunction(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SQLFunction.rawValue.getter();
  v4 = v3;
  if (v2 == SQLFunction.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SQLFunction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SQLFunction.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SQLFunction()
{
  v2 = *v0;
  SQLFunction.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SQLFunction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SQLFunction.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SQLFunction@<X0>(uint64_t *a1@<X8>)
{
  result = SQLFunction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSg_AFtMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSg_AFtMR);
  v13 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v40 - v14;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(*(Node - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](Node);
  v51 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v40 - v19;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v43 = v12;
  v44 = v4;
  v40 = v8;
  v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v42 = (v5 + 48);
  v45 = *(v18 + 72);
  v24 = v47;
  while (1)
  {
    outlined init with copy of PgQuery_RawStmt(v22, v24, type metadata accessor for PgQuery_Node);
    v25 = v51;
    outlined init with copy of PgQuery_RawStmt(v23, v51, type metadata accessor for PgQuery_Node);
    v26 = *(Node + 20);
    v27 = *(v24 + v26);
    v28 = *(v25 + v26);
    if (v27 == v28)
    {
      goto LABEL_12;
    }

    v29 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
    v30 = *(v46 + 48);
    v31 = v50;
    outlined init with copy of PgQuery_Alias?(v27 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v50, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with copy of PgQuery_Alias?(v28 + v29, v31 + v30, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v32 = *v42;
    v33 = v44;
    v34 = (*v42)(v31, 1, v44);
    v48 = v27;
    if (v34 == 1)
    {
      v35 = v32(v50 + v30, 1, v33);

      if (v35 != 1)
      {
        goto LABEL_16;
      }

      _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
      goto LABEL_11;
    }

    v36 = v50;
    outlined init with copy of PgQuery_Alias?(v50, v43, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    if (v32(v36 + v30, 1, v33) == 1)
    {
      break;
    }

    v37 = v40;
    outlined init with take of PgQuery_Node(v36 + v30, v40, type metadata accessor for PgQuery_Node.OneOf_Node);
    v38 = v43;

    v41 = static PgQuery_Node.OneOf_Node.== infix(_:_:)(v38, v37);
    outlined destroy of PgQuery_RawStmt(v37, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined destroy of PgQuery_RawStmt(v38, type metadata accessor for PgQuery_Node.OneOf_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    if ((v41 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_11:

    v24 = v47;
LABEL_12:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_18;
    }

    outlined destroy of PgQuery_RawStmt(v51, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_RawStmt(v24, type metadata accessor for PgQuery_Node);
    v23 += v45;
    v22 += v45;
    if (!--v20)
    {
      return 1;
    }
  }

  outlined destroy of PgQuery_RawStmt(v43, type metadata accessor for PgQuery_Node.OneOf_Node);
LABEL_16:
  _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSg_AFtMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSg_AFtMR);
LABEL_17:

  v24 = v47;
LABEL_18:
  outlined destroy of PgQuery_RawStmt(v51, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_RawStmt(v24, type metadata accessor for PgQuery_Node);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser15PgQuery_RawStmtV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v78 = &v68 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSg_AFtMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSg_AFtMR);
  v11 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v68 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](Node);
  v86 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v68 - v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v68 - v21;
  RawStmt = type metadata accessor for PgQuery_RawStmt(0);
  v22 = *(*(RawStmt - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](RawStmt);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v68 - v27;
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
    return 0;
  }

  if (!v29 || a1 == a2)
  {
    return 1;
  }

  v69 = v4;
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = a1 + v30;
  v32 = a2 + v30;
  v73 = (v13 + 48);
  v74 = &v68 - v27;
  v80 = v19;
  v82 = *(v26 + 72);
  v75 = v25;
  v68 = (v5 + 48);
  while (1)
  {
    outlined init with copy of PgQuery_RawStmt(v31, v28, type metadata accessor for PgQuery_RawStmt);
    outlined init with copy of PgQuery_RawStmt(v32, v25, type metadata accessor for PgQuery_RawStmt);
    v33 = *(RawStmt + 20);
    v34 = *&v28[v33];
    v35 = *&v25[v33];
    if (v34 == v35)
    {
      goto LABEL_21;
    }

    v83 = v32;
    v84 = v29;
    v85 = v31;
    v36 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmt;
    v37 = *(v87 + 48);
    v38 = v89;
    v39 = v34;
    outlined init with copy of PgQuery_Alias?(v34 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmt, v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v35 + v36, v38 + v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v40 = *v73;
    v41 = Node;
    if ((*v73)(v38, 1, Node) == 1)
    {
      v42 = v40(v38 + v37, 1, v41);

      if (v42 != 1)
      {
        goto LABEL_25;
      }

      _s10Foundation4UUIDVSgWOhTm_0(v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v28 = v74;
      v25 = v75;
      v29 = v84;
      v31 = v85;
      goto LABEL_19;
    }

    v79 = v35;
    v43 = v80;
    outlined init with copy of PgQuery_Alias?(v38, v80, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v40(v38 + v37, 1, v41) == 1)
    {

      outlined destroy of PgQuery_RawStmt(v43, type metadata accessor for PgQuery_Node);
LABEL_25:
      _s10Foundation4UUIDVSgWOhTm_0(v38, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
      v28 = v74;
      v25 = v75;
      goto LABEL_29;
    }

    v44 = v38 + v37;
    v45 = v86;
    outlined init with take of PgQuery_Node(v44, v86, type metadata accessor for PgQuery_Node);
    v46 = *(v41 + 20);
    v47 = *(v43 + v46);
    v48 = *(v45 + v46);
    if (v47 == v48)
    {

      v28 = v74;
      v25 = v75;
      v29 = v84;
      v31 = v85;
      goto LABEL_18;
    }

    v49 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
    v50 = *(v77 + 48);
    v51 = v81;
    outlined init with copy of PgQuery_Alias?(v47 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v81, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v72 = v50;
    outlined init with copy of PgQuery_Alias?(v48 + v49, v51 + v50, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v71 = v47;
    v52 = *v68;
    v53 = v51;
    v54 = v69;
    v55 = (*v68)(v51, 1, v69);
    v28 = v74;
    v25 = v75;
    v56 = v48;
    v29 = v84;
    v31 = v85;
    v70 = v56;
    if (v55 == 1)
    {
      v57 = v52(v53 + v72, 1, v54);

      v58 = v53;
      v59 = v80;
      if (v57 != 1)
      {
        goto LABEL_27;
      }

      _s10Foundation4UUIDVSgWOhTm_0(v58, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
      goto LABEL_17;
    }

    outlined init with copy of PgQuery_Alias?(v53, v78, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    if (v52(v53 + v72, 1, v54) == 1)
    {
      break;
    }

    v60 = v76;
    outlined init with take of PgQuery_Node(v53 + v72, v76, type metadata accessor for PgQuery_Node.OneOf_Node);

    v61 = v78;
    LODWORD(v72) = static PgQuery_Node.OneOf_Node.== infix(_:_:)(v78, v60);
    outlined destroy of PgQuery_RawStmt(v60, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined destroy of PgQuery_RawStmt(v61, type metadata accessor for PgQuery_Node.OneOf_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v81, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v59 = v80;
    if ((v72 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_17:

LABEL_18:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v62 = v86;
    v63 = dispatch thunk of static Equatable.== infix(_:_:)();
    v64 = v80;
    outlined destroy of PgQuery_RawStmt(v62, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_RawStmt(v64, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v35 = v79;
    if ((v63 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_19:
    if (*(v39 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) != *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation))
    {
      goto LABEL_29;
    }

    v65 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);
    v66 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);

    v32 = v83;
    if (v65 != v66)
    {
      goto LABEL_30;
    }

LABEL_21:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_30;
    }

    outlined destroy of PgQuery_RawStmt(v25, type metadata accessor for PgQuery_RawStmt);
    outlined destroy of PgQuery_RawStmt(v28, type metadata accessor for PgQuery_RawStmt);
    v32 += v82;
    v31 += v82;
    if (!--v29)
    {
      return 1;
    }
  }

  outlined destroy of PgQuery_RawStmt(v78, type metadata accessor for PgQuery_Node.OneOf_Node);
  v58 = v53;
  v59 = v80;
LABEL_27:
  _s10Foundation4UUIDVSgWOhTm_0(v58, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSg_AFtMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSg_AFtMR);
LABEL_28:

  outlined destroy of PgQuery_RawStmt(v86, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_RawStmt(v59, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_29:

LABEL_30:
  outlined destroy of PgQuery_RawStmt(v25, type metadata accessor for PgQuery_RawStmt);
  outlined destroy of PgQuery_RawStmt(v28, type metadata accessor for PgQuery_RawStmt);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser19AggregationFunctionV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    v4 = a2 + 32;
    v5 = 0x72656765746E69;
    v6 = 0x676E69727473;
    v7 = 0x656C62756F64;
    while (1)
    {
      outlined init with copy of AggregationFunction(v3, v29);
      outlined init with copy of AggregationFunction(v4, v27);
      if ((specialized static AggregationFunction.AggregationType.== infix(_:_:)(v29, v27) & 1) == 0)
      {
        break;
      }

      if (v30 > 3u)
      {
        if (v30 > 5u)
        {
          v14 = 0xE400000000000000;
          if (v30 == 6)
          {
            v13 = 1684632949;
          }

          else
          {
            v13 = 1819047278;
          }
        }

        else
        {
          if (v30 == 4)
          {
            v13 = 1635017060;
          }

          else
          {
            v13 = 1852797802;
          }

          v14 = 0xE400000000000000;
        }
      }

      else
      {
        if (v30 == 2)
        {
          v9 = v6;
        }

        else
        {
          v9 = 1702125924;
        }

        if (v30 == 2)
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE400000000000000;
        }

        if (v30)
        {
          v11 = v7;
        }

        else
        {
          v11 = v5;
        }

        v12 = 0xE700000000000000;
        if (v30)
        {
          v12 = 0xE600000000000000;
        }

        if (v30 <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }

        if (v30 <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }
      }

      v15 = 1819047278;
      if (v28 == 6)
      {
        v15 = 1684632949;
      }

      v16 = 1852797802;
      if (v28 == 4)
      {
        v16 = 1635017060;
      }

      if (v28 <= 5u)
      {
        v15 = v16;
      }

      if (v28 == 2)
      {
        v17 = v6;
      }

      else
      {
        v17 = 1702125924;
      }

      if (v28 == 2)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xE400000000000000;
      }

      v19 = v5;
      if (v28)
      {
        v20 = v7;
      }

      else
      {
        v20 = v5;
      }

      v21 = 0xE700000000000000;
      if (v28)
      {
        v21 = 0xE600000000000000;
      }

      if (v28 <= 1u)
      {
        v17 = v20;
        v18 = v21;
      }

      if (v28 <= 3u)
      {
        v22 = v17;
      }

      else
      {
        v22 = v15;
      }

      if (v28 <= 3u)
      {
        v23 = v18;
      }

      else
      {
        v23 = 0xE400000000000000;
      }

      v24 = v7;
      v25 = v6;
      if (v13 == v22 && v14 == v23)
      {

        outlined destroy of AggregationFunction(v27);
        outlined destroy of AggregationFunction(v29);
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of AggregationFunction(v27);
        outlined destroy of AggregationFunction(v29);
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      v4 += 200;
      v3 += 200;
      --v2;
      v5 = v19;
      v6 = v25;
      v7 = v24;
      if (!v2)
      {
        return 1;
      }
    }

    outlined destroy of AggregationFunction(v27);
    outlined destroy of AggregationFunction(v29);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser7BindingV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *v4;
      v7 = *v3;
      v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
      if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v4 += 24;
      v9 = 1819047278;
      if (v6 == 6)
      {
        v9 = 1684632949;
      }

      v10 = 1852797802;
      if (v6 == 4)
      {
        v10 = 1635017060;
      }

      if (v6 <= 5)
      {
        v9 = v10;
      }

      v11 = 1702125924;
      if (v6 == 2)
      {
        v11 = 0x676E69727473;
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      v13 = 0x72656765746E69;
      if (v6)
      {
        v13 = 0x656C62756F64;
      }

      v14 = 0xE700000000000000;
      if (v6)
      {
        v14 = 0xE600000000000000;
      }

      if (v6 <= 1)
      {
        v11 = v13;
        v12 = v14;
      }

      if (v6 <= 3)
      {
        v15 = v11;
      }

      else
      {
        v15 = v9;
      }

      if (v6 <= 3)
      {
        v16 = v12;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      if (v7 > 3)
      {
        if (v7 > 5)
        {
          if (v7 == 6)
          {
            v17 = 0xE400000000000000;
            if (v15 != 1684632949)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v17 = 0xE400000000000000;
            if (v15 != 1819047278)
            {
              goto LABEL_5;
            }
          }
        }

        else if (v7 == 4)
        {
          v17 = 0xE400000000000000;
          if (v15 != 1635017060)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v17 = 0xE400000000000000;
          if (v15 != 1852797802)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v7 > 1)
      {
        if (v7 == 2)
        {
          v17 = 0xE600000000000000;
          if (v15 != 0x676E69727473)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v17 = 0xE400000000000000;
          if (v15 != 1702125924)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v7)
      {
        v17 = 0xE600000000000000;
        if (v15 != 0x656C62756F64)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v15 != 0x72656765746E69)
        {
          goto LABEL_5;
        }
      }

      if (v16 != v17)
      {
LABEL_5:
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      v3 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser17PgQuery_ScanTokenV_Tt1g5(uint64_t a1, uint64_t a2)
{
  ScanToken = type metadata accessor for PgQuery_ScanToken(0);
  v5 = *(*(ScanToken - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](ScanToken);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v23 = 1;
      return v23 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of PgQuery_RawStmt(v14, v11, type metadata accessor for PgQuery_ScanToken);
      outlined init with copy of PgQuery_RawStmt(v15, v8, type metadata accessor for PgQuery_ScanToken);
      if (*v11 != *v8)
      {
        break;
      }

      if (*(v11 + 1) != *(v8 + 1))
      {
        break;
      }

      v17 = *(v8 + 1);
      v18 = v8[16];
      v19 = PgQuery_Token.rawValue.getter(*(v11 + 1), v11[16]);
      if (v19 != PgQuery_Token.rawValue.getter(v17, v18))
      {
        break;
      }

      v20 = *(v11 + 3);
      v21 = *(v8 + 3);
      if (v8[32] == 1)
      {
        if (v21 <= 1)
        {
          if (v21)
          {
            if (v20 != 1)
            {
              break;
            }
          }

          else if (v20)
          {
            break;
          }
        }

        else if (v21 == 2)
        {
          if (v20 != 2)
          {
            break;
          }
        }

        else if (v21 == 3)
        {
          if (v20 != 3)
          {
            break;
          }
        }

        else if (v20 != 4)
        {
          break;
        }
      }

      else if (v20 != v21)
      {
        break;
      }

      v22 = *(ScanToken + 32);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_RawStmt(v8, type metadata accessor for PgQuery_ScanToken);
      outlined destroy of PgQuery_RawStmt(v11, type metadata accessor for PgQuery_ScanToken);
      if (v23)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    outlined destroy of PgQuery_RawStmt(v8, type metadata accessor for PgQuery_ScanToken);
    outlined destroy of PgQuery_RawStmt(v11, type metadata accessor for PgQuery_ScanToken);
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser11SQLDataTypeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 1819047278;
      if (v6 == 6)
      {
        v8 = 1684632949;
      }

      v9 = 1852797802;
      if (v6 == 4)
      {
        v9 = 1635017060;
      }

      if (*v3 <= 5u)
      {
        v8 = v9;
      }

      v10 = 1702125924;
      if (v6 == 2)
      {
        v10 = 0x676E69727473;
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      v12 = 0x72656765746E69;
      if (*v3)
      {
        v12 = 0x656C62756F64;
      }

      v13 = 0xE700000000000000;
      if (*v3)
      {
        v13 = 0xE600000000000000;
      }

      if (*v3 <= 1u)
      {
        v10 = v12;
        v11 = v13;
      }

      if (*v3 <= 3u)
      {
        v14 = v10;
      }

      else
      {
        v14 = v8;
      }

      if (*v3 <= 3u)
      {
        v15 = v11;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      if (*v4 > 3u)
      {
        v16 = 0xE400000000000000;
        if (*v4 > 5u)
        {
          if (v7 == 6)
          {
            if (v14 != 1684632949)
            {
              goto LABEL_5;
            }
          }

          else if (v14 != 1819047278)
          {
            goto LABEL_5;
          }
        }

        else if (v7 == 4)
        {
          if (v14 != 1635017060)
          {
            goto LABEL_5;
          }
        }

        else if (v14 != 1852797802)
        {
          goto LABEL_5;
        }
      }

      else if (*v4 > 1u)
      {
        if (v7 == 2)
        {
          v16 = 0xE600000000000000;
          if (v14 != 0x676E69727473)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v16 = 0xE400000000000000;
          if (v14 != 1702125924)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4)
      {
        v16 = 0xE600000000000000;
        if (v14 != 0x656C62756F64)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        if (v14 != 0x72656765746E69)
        {
          goto LABEL_5;
        }
      }

      if (v15 != v16)
      {
LABEL_5:
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ14BiomeSQLParser11SQLDataTypeO_Tt0g5(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v1 = result;
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = v1;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZ14BiomeSQLParser11SQLDataTypeO_Tt1g5(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type SQLFunction and conformance SQLFunction()
{
  result = lazy protocol witness table cache variable for type SQLFunction and conformance SQLFunction;
  if (!lazy protocol witness table cache variable for type SQLFunction and conformance SQLFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLFunction and conformance SQLFunction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SQLFunction] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SQLFunction] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SQLFunction] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14BiomeSQLParser11SQLFunctionOGMd, &_sSay14BiomeSQLParser11SQLFunctionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SQLFunction] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLFunction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x9F)
  {
    goto LABEL_17;
  }

  if (a2 + 97 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 97) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 97;
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

      return (*a1 | (v4 << 8)) - 97;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 97;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x62;
  v8 = v6 - 98;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 97 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 97) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x9F)
  {
    v4 = 0;
  }

  if (a2 > 0x9E)
  {
    v5 = ((a2 - 159) >> 8) + 1;
    *result = a2 + 97;
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
    *result = a2 + 97;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of PgQuery_Node(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PgQuery_RawStmt(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PgQuery_RawStmt(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

uint64_t buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v357 = a1;
  v339 = a3;
  v340 = a5;
  v342 = a4;
  v345 = a2;
  v347 = a6;
  BitString = type metadata accessor for PgQuery_BitString(0);
  v7 = *(*(BitString - 8) + 64);
  MEMORY[0x1EEE9AC00](BitString - 8);
  v320 = &v303[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Float = type metadata accessor for PgQuery_Float(0);
  v10 = *(*(Float - 8) + 64);
  MEMORY[0x1EEE9AC00](Float - 8);
  v319 = &v303[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Integer = type metadata accessor for PgQuery_Integer(0);
  v13 = *(*(Integer - 8) + 64);
  MEMORY[0x1EEE9AC00](Integer - 8);
  v318 = &v303[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v305 = &v303[-v17];
  ColumnRef = type metadata accessor for PgQuery_ColumnRef(0);
  v19 = *(*(ColumnRef - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](ColumnRef - 8);
  v349 = &v303[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v328 = &v303[-v22];
  v317 = type metadata accessor for PgQuery_FuncCall(0);
  v23 = *(*(v317 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v317);
  v330 = &v303[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v329 = &v303[-v26];
  NullTest = type metadata accessor for PgQuery_NullTest(0);
  v27 = *(*(NullTest - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](NullTest);
  v337 = &v303[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v336 = &v303[-v30];
  BoolExpr = type metadata accessor for PgQuery_BoolExpr(0);
  v31 = *(*(BoolExpr - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](BoolExpr);
  v322 = &v303[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v321 = &v303[-v34];
  A_Expr = type metadata accessor for PgQuery_A_Expr(0);
  v36 = *(*(A_Expr - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](A_Expr - 8);
  v312 = &v303[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v37);
  v314 = &v303[-v39];
  String = type metadata accessor for PgQuery_String(0);
  v40 = *(*(String - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](String);
  v351 = &v303[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v325 = &v303[-v43];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v327 = &v303[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = MEMORY[0x1EEE9AC00](v46);
  v308 = &v303[-v49];
  MEMORY[0x1EEE9AC00](v48);
  v326 = &v303[-v50];
  Node = type metadata accessor for PgQuery_Node(0);
  v341 = *(Node - 8);
  v51 = *(v341 + 64);
  v52 = MEMORY[0x1EEE9AC00](Node);
  v355 = &v303[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = MEMORY[0x1EEE9AC00](v52);
  v309 = &v303[-v55];
  v56 = MEMORY[0x1EEE9AC00](v54);
  v324 = &v303[-v57];
  v58 = MEMORY[0x1EEE9AC00](v56);
  v307 = &v303[-v59];
  MEMORY[0x1EEE9AC00](v58);
  v323 = &v303[-v60];
  v61 = type metadata accessor for SQLTokenInformation(0);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x1EEE9AC00](v61 - 8);
  v348 = &v303[-((v64 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = MEMORY[0x1EEE9AC00](v63);
  v331 = &v303[-v66];
  v67 = MEMORY[0x1EEE9AC00](v65);
  v332 = &v303[-v68];
  v69 = MEMORY[0x1EEE9AC00](v67);
  v315 = &v303[-v70];
  v71 = MEMORY[0x1EEE9AC00](v69);
  v311 = &v303[-v72];
  MEMORY[0x1EEE9AC00](v71);
  v333 = &v303[-v73];
  A_Const = type metadata accessor for PgQuery_A_Const(0);
  v74 = *(*(A_Const - 8) + 64);
  v75 = MEMORY[0x1EEE9AC00](A_Const);
  v334 = &v303[-((v76 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v75);
  v335 = &v303[-v77];
  v78 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v79 = *(v78 - 8);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v343 = &v303[-((v81 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSg_AFtMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSg_AFtMR);
  v83 = v82 - 8;
  v84 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v86 = &v303[-v85];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v88 = *(*(v87 - 8) + 64);
  v89 = MEMORY[0x1EEE9AC00](v87 - 8);
  v350 = &v303[-((v90 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = MEMORY[0x1EEE9AC00](v89);
  v306 = &v303[-v92];
  v93 = MEMORY[0x1EEE9AC00](v91);
  v338 = &v303[-v94];
  v95 = MEMORY[0x1EEE9AC00](v93);
  v344 = &v303[-v96];
  v97 = MEMORY[0x1EEE9AC00](v95);
  v354 = &v303[-v98];
  v99 = MEMORY[0x1EEE9AC00](v97);
  v101 = &v303[-v100];
  MEMORY[0x1EEE9AC00](v99);
  v103 = &v303[-v102];
  v104 = *&v357[*(Node + 20)];
  v105 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  (*(v79 + 56))(&v303[-v102], 1, 1, v78);
  v106 = *(v83 + 56);
  v352 = v105;
  v353 = v104;
  outlined init with copy of PgQuery_Alias?(v104 + v105, v86, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  outlined init with copy of PgQuery_Alias?(v103, &v86[v106], &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v108 = v79 + 48;
  v107 = *(v79 + 48);
  if ((v107)(v86, 1, v78) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v103, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    if ((v107)(&v86[v106], 1, v78) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v86, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
LABEL_16:
      type metadata accessor for SQLExpressionError();
      lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v86, v101, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if ((v107)(&v86[v106], 1, v78) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v103, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined destroy of PgQuery_Node.OneOf_Node(v101, type metadata accessor for PgQuery_Node.OneOf_Node);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v86, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSg_AFtMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSg_AFtMR);
    object = v354;
    goto LABEL_7;
  }

  v120 = v343;
  outlined init with take of PgQuery_BitString(&v86[v106], v343, type metadata accessor for PgQuery_Node.OneOf_Node);
  v304 = specialized static PgQuery_Node.OneOf_Node.== infix(_:_:)(v101, v120);
  outlined destroy of PgQuery_Node.OneOf_Node(v120, type metadata accessor for PgQuery_Node.OneOf_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v103, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  outlined destroy of PgQuery_Node.OneOf_Node(v101, type metadata accessor for PgQuery_Node.OneOf_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v86, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  object = v354;
  if (v304)
  {
    goto LABEL_16;
  }

LABEL_7:
  outlined init with copy of PgQuery_Alias?(v353 + v352, object, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  if ((v107)(object, 1, v78) == 1)
  {
LABEL_8:
    type metadata accessor for SQLExpressionError();
    lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError();
    swift_allocError();
    outlined init with copy of PgQuery_Node(v357, v110, type metadata accessor for PgQuery_Node);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_74:
    v220 = object;
    return _s10Foundation4UUIDVSgWOhTm_0(v220, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  }

  v111 = v344;
  outlined init with copy of PgQuery_Alias?(object, v344, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 169)
  {
    v107 = v345;
    if (EnumCaseMultiPayload > 221)
    {
      if (EnumCaseMultiPayload == 222)
      {
        v113 = v325;
        outlined init with take of PgQuery_BitString(v111, v325, type metadata accessor for PgQuery_String);
        v216 = *v113;
        v215 = *(v113 + 1);
        v217 = v347;
        v347[3] = &unk_1EF2A9E18;
        v217[4] = &protocol witness table for SQLExpressionString;
        v218 = swift_allocObject();
        *v217 = v218;
        *(v218 + 32) = 2;
        v219 = MEMORY[0x1E69E7CC0];
        *(v218 + 40) = MEMORY[0x1E69E7CC0];
        *(v218 + 48) = v219;
        *(v218 + 16) = v216;
        *(v218 + 24) = v215;

        v119 = type metadata accessor for PgQuery_String;
        goto LABEL_72;
      }

      if (EnumCaseMultiPayload == 223)
      {
        v113 = v320;
        outlined init with take of PgQuery_BitString(v111, v320, type metadata accessor for PgQuery_BitString);
        v194 = *v113;
        v193 = *(v113 + 1);
        v195 = v347;
        v347[3] = &unk_1EF2A9EA0;
        v195[4] = &protocol witness table for SQLExpressionBitString;
        v196 = swift_allocObject();
        *v195 = v196;
        *(v196 + 32) = 4;
        v197 = MEMORY[0x1E69E7CC0];
        *(v196 + 40) = MEMORY[0x1E69E7CC0];
        *(v196 + 48) = v197;
        *(v196 + 16) = v194;
        *(v196 + 24) = v193;

        v119 = type metadata accessor for PgQuery_BitString;
        goto LABEL_72;
      }

      if (EnumCaseMultiPayload != 224)
      {
LABEL_76:
        outlined destroy of PgQuery_Node.OneOf_Node(v111, type metadata accessor for PgQuery_Node.OneOf_Node);
        goto LABEL_8;
      }

      v135 = v347;
      v347[3] = &unk_1EF2A9F28;
      v135[4] = &protocol witness table for SQLExpressionNull;
      v136 = swift_allocObject();
      *v135 = v136;
      *(v136 + 16) = 1280070990;
      *(v136 + 24) = 0xE400000000000000;
      *(v136 + 32) = 7;
      v137 = MEMORY[0x1E69E7CC0];
      *(v136 + 40) = MEMORY[0x1E69E7CC0];
      *(v136 + 48) = v137;
      v138 = type metadata accessor for PgQuery_Node.OneOf_Node;
      v139 = v111;
LABEL_73:
      outlined destroy of PgQuery_Node.OneOf_Node(v139, v138);
      goto LABEL_74;
    }

    if (EnumCaseMultiPayload != 170)
    {
      if (EnumCaseMultiPayload != 220)
      {
        if (EnumCaseMultiPayload == 221)
        {
          v113 = v319;
          outlined init with take of PgQuery_BitString(v111, v319, type metadata accessor for PgQuery_Float);
          v115 = *v113;
          v114 = *(v113 + 1);
          v116 = v347;
          v347[3] = &unk_1EF2A9D90;
          v116[4] = &protocol witness table for SQLExpressionFloat;
          v117 = swift_allocObject();
          *v116 = v117;
          *(v117 + 32) = 1;
          v118 = MEMORY[0x1E69E7CC0];
          *(v117 + 40) = MEMORY[0x1E69E7CC0];
          *(v117 + 48) = v118;
          *(v117 + 16) = v115;
          *(v117 + 24) = v114;

          v119 = type metadata accessor for PgQuery_Float;
LABEL_72:
          v138 = v119;
          v139 = v113;
          goto LABEL_73;
        }

        goto LABEL_76;
      }

      v189 = v318;
      outlined init with take of PgQuery_BitString(v111, v318, type metadata accessor for PgQuery_Integer);
      v190 = *v189;
      v191 = v347;
      v347[3] = &unk_1EF2A9D08;
      v191[4] = &protocol witness table for SQLExpressionInteger;
      *(v191 + 4) = 0;
      v192 = MEMORY[0x1E69E7CC0];
      v191[1] = MEMORY[0x1E69E7CC0];
      v191[2] = v192;
      *v191 = v190;
      v138 = type metadata accessor for PgQuery_Integer;
      v139 = v189;
      goto LABEL_73;
    }

    v207 = v329;
    outlined init with take of PgQuery_BitString(v111, v329, type metadata accessor for PgQuery_FuncCall);
    v208 = v330;
    outlined init with copy of PgQuery_Node(v207, v330, type metadata accessor for PgQuery_FuncCall);
    v123 = v331;
    outlined init with copy of PgQuery_Node(v340, v331, type metadata accessor for SQLTokenInformation);
    v209 = v347;
    v347[3] = &unk_1EF2A9C00;
    v209[4] = &protocol witness table for SQLExpressionFuncCall;
    Node = swift_allocObject();
    *v209 = Node;
    v144 = *&v208[*(v317 + 20)];
    v210 = *(v144 + 16);
    if (*(v210 + 16))
    {
      v211 = v309;
      outlined init with copy of PgQuery_Node(v210 + ((*(v341 + 80) + 32) & ~*(v341 + 80)), v309, type metadata accessor for PgQuery_Node);
      v212 = v339;
      v213 = v342;
      v214 = v356;
      buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(&v360, v211, v107, v339, v342, v123);
      if (v214)
      {
        outlined destroy of PgQuery_Node.OneOf_Node(v211, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_Node.OneOf_Node(v329, type metadata accessor for PgQuery_FuncCall);
        outlined destroy of PgQuery_Node.OneOf_Node(v330, type metadata accessor for PgQuery_FuncCall);
        outlined destroy of PgQuery_Node.OneOf_Node(v331, type metadata accessor for SQLTokenInformation);
        __swift_deallocate_boxed_opaque_existential_1(v347);
      }

      else
      {
        v252 = v107;
        outlined destroy of PgQuery_Node.OneOf_Node(v211, type metadata accessor for PgQuery_Node);
        v253 = *(&v361 + 1);
        v254 = v362;
        __swift_project_boxed_opaque_existential_1(&v360, *(&v361 + 1));
        v255 = v213;
        v357 = (*(v254 + 8))(v253, v254);
        v257 = v256;
        v258 = __swift_destroy_boxed_opaque_existential_1Tm(&v360._countAndFlagsBits);
        v259 = *(v144 + 24);
        MEMORY[0x1EEE9AC00](v258);
        *&v303[-32] = v252;
        *&v303[-24] = v212;
        v301 = v255;
        v260 = v331;
        v302 = v331;

        NodeVG_AF013SQLExpressionH033_B787555787B9EFBBEFB0C9C5225A4FB7LL_psAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF013SQLExpressionH033_B787555787B9EFBBEFB0C9C5225A4FB7LL_psAE_pTg5(partial apply for closure #1 in SQLExpressionFuncCall.init(function:schemas:columnResolver:tokenInformation:), &v303[-48], v259);

        v287 = v357;
        AggregationFunction.init(functionName:args:)(v357, v257, NodeVG_AF013SQLExpressionH033_B787555787B9EFBBEFB0C9C5225A4FB7LL_psAE_pTg5, v358);
        if (v359 != 0xFF)
        {

          v370 = v358[10];
          v371 = v358[11];
          v372 = v359;
          v366 = v358[6];
          v367 = v358[7];
          v368 = v358[8];
          v369 = v358[9];
          v362 = v358[2];
          v363 = v358[3];
          v364 = v358[4];
          v365 = v358[5];
          v360 = v358[0];
          v361 = v358[1];
          *(&v374 + 1) = &unk_1EF2A9AF8;
          v375 = &protocol witness table for SQLExpressionAggregationFunction;
          v298 = swift_allocObject();
          *&v373 = v298;
          outlined init with copy of AggregationFunction(&v360, v298 + 16);
          *(v298 + 216) = 63;
          *(v298 + 224) = 0xE100000000000000;
          outlined destroy of AggregationFunction(&v360);
          outlined destroy of PgQuery_Node.OneOf_Node(v330, type metadata accessor for PgQuery_FuncCall);
        }

        else
        {
          _s10Foundation4UUIDVSgWOhTm_0(v358, &_s14BiomeSQLParser19AggregationFunctionVSgMd, &_s14BiomeSQLParser19AggregationFunctionVSgMR);
          *(&v361 + 1) = &unk_1EF2A9B78;
          *&v362 = &protocol witness table for SQLExpressionNonAggregationFunction;
          SQLExpressionNonAggregationFunction.init(functionName:argList:)(v287, v257, NodeVG_AF013SQLExpressionH033_B787555787B9EFBBEFB0C9C5225A4FB7LL_psAE_pTg5, &v360);
          outlined destroy of PgQuery_Node.OneOf_Node(v330, type metadata accessor for PgQuery_FuncCall);
          outlined init with take of Aggregation(&v360._countAndFlagsBits, &v373);
        }

        object = v354;
        v299 = v374;
        v300 = Node;
        *(Node + 16) = v373;
        *(v300 + 32) = v299;
        *(v300 + 48) = v375;
        outlined destroy of PgQuery_Node.OneOf_Node(v329, type metadata accessor for PgQuery_FuncCall);
        outlined destroy of PgQuery_Node.OneOf_Node(v260, type metadata accessor for SQLTokenInformation);
      }

      goto LABEL_74;
    }

LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v353 = v78;
  v122 = v342;
  v123 = v345;
  if (EnumCaseMultiPayload <= 165)
  {
    if (EnumCaseMultiPayload != 16)
    {
      if (EnumCaseMultiPayload != 37)
      {
        goto LABEL_76;
      }

      v140 = v336;
      outlined init with take of PgQuery_BitString(v111, v336, type metadata accessor for PgQuery_NullTest);
      v141 = v337;
      outlined init with copy of PgQuery_Node(v140, v337, type metadata accessor for PgQuery_NullTest);
      outlined init with copy of PgQuery_Node(v340, v332, type metadata accessor for SQLTokenInformation);
      v142 = v347;
      v347[3] = &unk_1EF2A9A70;
      v142[4] = &protocol witness table for SQLExpressionNullTest;
      v355 = swift_allocObject();
      *v142 = v355;
      BYTE1(v363) = 0;
      v357 = *&v141[*(NullTest + 20)];
      v143 = v327;
      outlined init with copy of PgQuery_Alias?(&v357[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg], v327, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v107 = *(v341 + 48);
      v108 = Node;
      if ((v107)(v143, 1, Node) != 1)
      {
        object = v324;
        outlined init with take of PgQuery_BitString(v143, v324, type metadata accessor for PgQuery_Node);
LABEL_78:
        v221 = v332;
        v222 = v356;
        buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v358, object, v123, v339, v342, v332);
        if (!v222)
        {
          outlined destroy of PgQuery_Node.OneOf_Node(object, type metadata accessor for PgQuery_Node);
          outlined init with take of Aggregation(v358, &v360);
          v248 = &v357[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype];
          if (v357[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype + 8] == 1)
          {
            v249 = *v248;
            if (*v248)
            {
              outlined destroy of PgQuery_Node.OneOf_Node(v221, type metadata accessor for SQLTokenInformation);
              outlined destroy of PgQuery_Node.OneOf_Node(v337, type metadata accessor for PgQuery_NullTest);
              *(&v362 + 1) = v249;
              LOBYTE(v363) = 1;
              v250 = v361;
              v251 = v355;
              *(v355 + 16) = v360;
              *(v251 + 32) = v250;
              *(v251 + 48) = v362;
              *(v251 + 64) = v363;
              outlined destroy of PgQuery_Node.OneOf_Node(v336, type metadata accessor for PgQuery_NullTest);
              object = v354;
              goto LABEL_74;
            }
          }

          type metadata accessor for SQLExpressionError();
          lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError();
          swift_allocError();
          v261 = v337;
          outlined init with copy of PgQuery_Node(v337, v262, type metadata accessor for PgQuery_NullTest);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          outlined destroy of PgQuery_Node.OneOf_Node(v221, type metadata accessor for SQLTokenInformation);
          outlined destroy of PgQuery_Node.OneOf_Node(v336, type metadata accessor for PgQuery_NullTest);
          outlined destroy of PgQuery_Node.OneOf_Node(v261, type metadata accessor for PgQuery_NullTest);
          __swift_destroy_boxed_opaque_existential_1Tm(&v360._countAndFlagsBits);
LABEL_119:
          __swift_deallocate_boxed_opaque_existential_1(v347);
          v220 = v354;
          return _s10Foundation4UUIDVSgWOhTm_0(v220, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
        }

        outlined destroy of PgQuery_Node.OneOf_Node(object, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_Node.OneOf_Node(v221, type metadata accessor for SQLTokenInformation);
        v223 = type metadata accessor for PgQuery_NullTest;
        outlined destroy of PgQuery_Node.OneOf_Node(v336, type metadata accessor for PgQuery_NullTest);
        v224 = v337;
LABEL_118:
        outlined destroy of PgQuery_Node.OneOf_Node(v224, v223);
        goto LABEL_119;
      }

      object = v324;
      UnknownStorage.init()();
      v144 = *(v108 + 20);
      if (one-time initialization token for defaultInstance == -1)
      {
LABEL_34:
        *&object[v144] = static PgQuery_Node._StorageClass.defaultInstance;
        v145 = v327;
        v146 = (v107)(v327, 1, v108);

        if (v146 != 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v145, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        goto LABEL_78;
      }

LABEL_133:
      swift_once();
      goto LABEL_34;
    }

    v147 = v321;
    outlined init with take of PgQuery_BitString(v111, v321, type metadata accessor for PgQuery_BoolExpr);
    v148 = v322;
    outlined init with copy of PgQuery_Node(v147, v322, type metadata accessor for PgQuery_BoolExpr);
    v149 = v315;
    v150 = outlined init with copy of PgQuery_Node(v340, v315, type metadata accessor for SQLTokenInformation);
    v151 = v347;
    v347[3] = &unk_1EF2A99E8;
    v151[4] = &protocol witness table for SQLExpressioBoolExpr;
    v152 = *&v148[*(BoolExpr + 20)];
    v153 = *(v152 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
    MEMORY[0x1EEE9AC00](v150);
    v154 = v339;
    *&v303[-32] = v123;
    *&v303[-24] = v154;
    v301 = v122;
    v302 = v149;

    v155 = v356;
    v156 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14BiomeSQLParser12PgQuery_NodeVG_AF013SQLExpressionH033_B787555787B9EFBBEFB0C9C5225A4FB7LL_psAE_pTg5(partial apply for closure #1 in SQLExpressioBoolExpr.init(BOOLExpr:schemas:columnResolver:tokenInformation:), &v303[-48], v153);
    if (v155)
    {
      outlined destroy of PgQuery_Node.OneOf_Node(v147, type metadata accessor for PgQuery_BoolExpr);

      outlined destroy of PgQuery_Node.OneOf_Node(v148, type metadata accessor for PgQuery_BoolExpr);
      outlined destroy of PgQuery_Node.OneOf_Node(v149, type metadata accessor for SQLTokenInformation);
LABEL_115:
      v295 = v354;
      __swift_deallocate_boxed_opaque_existential_1(v347);
      v220 = v295;
      return _s10Foundation4UUIDVSgWOhTm_0(v220, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    }

    v244 = v156;

    v245 = (v152 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop);
    if (*(v152 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop + 8) != 1)
    {
      goto LABEL_113;
    }

    v246 = *v245;
    if ((*v245 - 1) < 2)
    {
LABEL_89:
      outlined destroy of PgQuery_Node.OneOf_Node(v148, type metadata accessor for PgQuery_BoolExpr);
      v247 = v347;
      *v347 = v244;
      v247[1] = v246;
      *(v247 + 8) = 1;

      outlined destroy of PgQuery_Node.OneOf_Node(v147, type metadata accessor for PgQuery_BoolExpr);
      outlined destroy of PgQuery_Node.OneOf_Node(v149, type metadata accessor for SQLTokenInformation);

      object = v354;
      goto LABEL_74;
    }

    if (v246)
    {
      if (*(v244 + 16) == 1)
      {
        goto LABEL_89;
      }

      type metadata accessor for SQLExpressionError();
      lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError();
      swift_allocError();
      *v297 = *(v244 + 16);
    }

    else
    {
LABEL_113:
      type metadata accessor for SQLExpressionError();
      lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError();
      swift_allocError();
      outlined init with copy of PgQuery_Node(v148, v294, type metadata accessor for PgQuery_BoolExpr);
    }

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of PgQuery_Node.OneOf_Node(v147, type metadata accessor for PgQuery_BoolExpr);
    outlined destroy of PgQuery_Node.OneOf_Node(v148, type metadata accessor for PgQuery_BoolExpr);
    outlined destroy of PgQuery_Node.OneOf_Node(v149, type metadata accessor for SQLTokenInformation);

    goto LABEL_115;
  }

  if (EnumCaseMultiPayload == 166)
  {
    v198 = v314;
    outlined init with take of PgQuery_BitString(v111, v314, type metadata accessor for PgQuery_A_Expr);
    v199 = v312;
    outlined init with copy of PgQuery_Node(v198, v312, type metadata accessor for PgQuery_A_Expr);
    v200 = v311;
    outlined init with copy of PgQuery_Node(v340, v311, type metadata accessor for SQLTokenInformation);
    v201 = v122;
    v202 = v347;
    v347[3] = &unk_1EF2A9960;
    v202[4] = &protocol witness table for SQLExpressionAExpr;
    v203 = swift_allocObject();
    *v202 = v203;

    v204 = v339;

    v205 = v203 + 16;
    v206 = v356;
    SQLExpressionAExpr.init(expr:schemas:columnResolver:tokenInformation:)(v199, v123, v204, v201, v200, v205);
    outlined destroy of PgQuery_Node.OneOf_Node(v198, type metadata accessor for PgQuery_A_Expr);
    if (v206)
    {
      __swift_deallocate_boxed_opaque_existential_1(v202);
    }

    goto LABEL_74;
  }

  if (EnumCaseMultiPayload == 167)
  {
    v157 = v328;
    outlined init with take of PgQuery_BitString(v111, v328, type metadata accessor for PgQuery_ColumnRef);
    v158 = v349;
    outlined init with copy of PgQuery_Node(v157, v349, type metadata accessor for PgQuery_ColumnRef);
    outlined init with copy of PgQuery_Node(v340, v348, type metadata accessor for SQLTokenInformation);
    v159 = v347;
    v347[3] = &unk_1EF2A9C80;
    v159[4] = &protocol witness table for SQLExpressionColumnRef;
    v345 = swift_allocObject();
    *v159 = v345;
    v160 = *v158;
    object = *(v160 + 16);
    countAndFlagsBits = MEMORY[0x1E69E7CC0];
    if (!object)
    {
LABEL_49:
      v357 = countAndFlagsBits;
      v360._countAndFlagsBits = countAndFlagsBits;
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v350 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v351 = v173;
      v352 = BidirectionalCollection<>.joined(separator:)();
      v353 = v174;
      v175 = v357;
      v108 = 0;
      v123 = (v357 + 40);
      v355 = -*(v357 + 2);
      v144 = MEMORY[0x1E69E7CC0];
      v176 = -1;
      while (v355 + v176 != -1)
      {
        if (++v176 >= *(v175 + 16))
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v177 = *(v349 + 2);
        v178 = v177 + v108;
        if (__OFADD__(v177, v108))
        {
          goto LABEL_127;
        }

        v107 = *(v123 - 1);
        v179 = *v123;

        v180 = SQLTokenInformation.tokenName(location:)(v178);
        v356 = v181;
        if (v181)
        {

          outlined destroy of PgQuery_Node.OneOf_Node(v348, type metadata accessor for SQLTokenInformation);
          outlined destroy of PgQuery_Node.OneOf_Node(v328, type metadata accessor for PgQuery_ColumnRef);
          outlined destroy of PgQuery_Node.OneOf_Node(v349, type metadata accessor for PgQuery_ColumnRef);

          goto LABEL_119;
        }

        object = v180._object;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        LODWORD(Node) = v108;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v186 = *(v144 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v144 = v187;
        }

        v108 = *(v144 + 16);
        v183 = v144;
        if (v108 >= *(v144 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v183 = v188;
        }

        *(v183 + 16) = v108 + 1;
        v144 = v183;
        *(v183 + 16 * v108 + 32) = v180;
        v184 = String.count.getter();

        if (v184 < 0xFFFFFFFF80000000)
        {
          goto LABEL_128;
        }

        if (v184 > 0x7FFFFFFF)
        {
          goto LABEL_129;
        }

        v185 = Node + v184;
        if (__OFADD__(Node, v184))
        {
          goto LABEL_130;
        }

        v123 += 2;
        v108 = (v185 + 1);
        v175 = v357;
        if (__OFADD__(v185, 1))
        {
          goto LABEL_131;
        }
      }

      v360._countAndFlagsBits = v144;
      v235 = BidirectionalCollection<>.joined(separator:)();
      v237 = v236;

      v360 = String.lowercased()();
      v358[0] = String.lowercased()();
      v238 = type metadata accessor for Locale();
      v239 = v305;
      (*(*(v238 - 8) + 56))(v305, 1, 1, v238);
      v301 = lazy protocol witness table accessor for type String and conformance String();
      v302 = v301;
      StringProtocol.range<A>(of:options:range:locale:)();
      v241 = v240;
      _s10Foundation4UUIDVSgWOhTm_0(v239, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

      if (v241)
      {
        type metadata accessor for SQLExpressionError();
        lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError();
        swift_allocError();
        v242 = v353;
        *v243 = v352;
        v243[1] = v242;
        v243[2] = v235;
        v243[3] = v237;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        v274 = String.subscript.getter();
        v276 = v275;
        v278 = v277;
        v280 = v279;

        v281 = MEMORY[0x1865F6210](v274, v276, v278, v280);
        v283 = v282;

        v284 = v352;
        v285 = v353;
        if ((specialized Set.contains(_:)(v352, v353, v342) & 1) == 0)
        {
          v288 = v339;
          if (*(v339 + 16))
          {
            v289 = specialized __RawDictionaryStorage.find<A>(_:)(v284, v285);
            if (v290)
            {
              v291 = *(*(v288 + 56) + v289);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser7BindingVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser7BindingVGMR);
              v292 = swift_allocObject();
              *(v292 + 16) = xmmword_184D29AA0;
              *(v292 + 32) = v281;
              *(v292 + 40) = v283;
              *(v292 + 48) = v291;
              outlined destroy of PgQuery_Node.OneOf_Node(v348, type metadata accessor for SQLTokenInformation);
              outlined destroy of PgQuery_Node.OneOf_Node(v349, type metadata accessor for PgQuery_ColumnRef);
              v293 = v345;
              *(v345 + 16) = 63;
              *(v293 + 24) = 0xE100000000000000;
              *(v293 + 32) = v291;
              *(v293 + 40) = v292;
              *(v293 + 48) = MEMORY[0x1E69E7CC0];
              v273 = v328;
              v272 = type metadata accessor for PgQuery_ColumnRef;
              goto LABEL_107;
            }
          }
        }

        type metadata accessor for SQLExpressionError();
        lazy protocol witness table accessor for type SQLExpressionError and conformance SQLExpressionError();
        swift_allocError();
        *v296 = v284;
        v296[1] = v285;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      outlined destroy of PgQuery_Node.OneOf_Node(v348, type metadata accessor for SQLTokenInformation);
      v223 = type metadata accessor for PgQuery_ColumnRef;
      outlined destroy of PgQuery_Node.OneOf_Node(v328, type metadata accessor for PgQuery_ColumnRef);
      v224 = v349;
      goto LABEL_118;
    }

    v357 = v107;
    v360._countAndFlagsBits = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, object, 0);
    countAndFlagsBits = v360._countAndFlagsBits;
    v162 = v160 + ((*(v341 + 80) + 32) & ~*(v341 + 80));
    v352 = *(v341 + 72);
    while (1)
    {
      v163 = v355;
      outlined init with copy of PgQuery_Node(v162, v355, type metadata accessor for PgQuery_Node);
      v164 = v350;
      outlined init with copy of PgQuery_Alias?(*(v163 + *(Node + 20)) + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v350, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
      if ((v357)(v164, 1, v353) == 1)
      {
        break;
      }

      v166 = swift_getEnumCaseMultiPayload();
      v165 = v351;
      if (v166 != 222)
      {
        outlined destroy of PgQuery_Node.OneOf_Node(v164, type metadata accessor for PgQuery_Node.OneOf_Node);
        goto LABEL_45;
      }

      v107 = v108;
      outlined init with take of PgQuery_BitString(v164, v351, type metadata accessor for PgQuery_String);
LABEL_46:
      outlined destroy of PgQuery_Node.OneOf_Node(v355, type metadata accessor for PgQuery_Node);
      v169 = v165->_countAndFlagsBits;
      v168 = v165->_object;

      outlined destroy of PgQuery_Node.OneOf_Node(v165, type metadata accessor for PgQuery_String);
      v360._countAndFlagsBits = countAndFlagsBits;
      v171 = *(countAndFlagsBits + 16);
      v170 = *(countAndFlagsBits + 24);
      if (v171 >= v170 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v170 > 1, v171 + 1, 1);
        countAndFlagsBits = v360._countAndFlagsBits;
      }

      *(countAndFlagsBits + 16) = v171 + 1;
      v172 = countAndFlagsBits + 16 * v171;
      *(v172 + 32) = v169;
      *(v172 + 40) = v168;
      v162 += v352;
      --object;
      v108 = v107;
      if (!object)
      {
        goto LABEL_49;
      }
    }

    _s10Foundation4UUIDVSgWOhTm_0(v164, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v165 = v351;
LABEL_45:
    v107 = v108;
    v165->_countAndFlagsBits = 0;
    v165->_object = 0xE000000000000000;
    v167 = v165 + *(String + 20);
    UnknownStorage.init()();
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 169)
  {
    goto LABEL_76;
  }

  v357 = v107;
  v124 = v335;
  outlined init with take of PgQuery_BitString(v111, v335, type metadata accessor for PgQuery_A_Const);
  v125 = v334;
  outlined init with copy of PgQuery_Node(v124, v334, type metadata accessor for PgQuery_A_Const);
  outlined init with copy of PgQuery_Node(v340, v333, type metadata accessor for SQLTokenInformation);
  v126 = v347;
  v347[3] = &unk_1EF2A98E0;
  v126[4] = &protocol witness table for SQLExpressionConst;
  v127 = swift_allocObject();
  *v126 = v127;
  v355 = *&v125[*(A_Const + 20)];
  v351 = v127;
  v352 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
  v128 = v326;
  outlined init with copy of PgQuery_Alias?(v355 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v326, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v129 = *(v341 + 48);
  v130 = Node;
  v341 += 48;
  if (v129(v128, 1, Node) == 1)
  {
    v131 = v323;
    UnknownStorage.init()();
    v132 = *(v130 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *&v131[v132] = static PgQuery_Node._StorageClass.defaultInstance;
    v133 = v326;
    v134 = v129(v326, 1, v130);

    if (v134 != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v133, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }
  }

  else
  {
    v131 = v323;
    outlined init with take of PgQuery_BitString(v128, v323, type metadata accessor for PgQuery_Node);
  }

  v225 = v338;
  outlined init with copy of PgQuery_Alias?(*&v131[*(v130 + 20)] + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v338, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  outlined destroy of PgQuery_Node.OneOf_Node(v131, type metadata accessor for PgQuery_Node);
  v226 = (v357)(v225, 1, v353);
  v227 = v130;
  v228 = v342;
  if (v226 != 1)
  {
    v229 = v306;
    outlined init with copy of PgQuery_Alias?(v338, v306, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    if (swift_getEnumCaseMultiPayload() == 222)
    {
      v230 = v325;
      outlined init with take of PgQuery_BitString(v229, v325, type metadata accessor for PgQuery_String);
      v232 = *v230;
      v231 = v230[1];
      *(&v361 + 1) = &unk_1EF2A9858;
      *&v362 = &protocol witness table for SQLExpressionConstString;
      v233 = swift_allocObject();
      v360._countAndFlagsBits = v233;
      *(v233 + 32) = 2;
      v234 = MEMORY[0x1E69E7CC0];
      *(v233 + 40) = MEMORY[0x1E69E7CC0];
      *(v233 + 48) = v234;
      *(v233 + 16) = v232;
      *(v233 + 24) = v231;

      outlined destroy of PgQuery_Node.OneOf_Node(v230, type metadata accessor for PgQuery_String);
      outlined destroy of PgQuery_Node.OneOf_Node(v333, type metadata accessor for SQLTokenInformation);
      outlined destroy of PgQuery_Node.OneOf_Node(v334, type metadata accessor for PgQuery_A_Const);
      goto LABEL_106;
    }

    outlined destroy of PgQuery_Node.OneOf_Node(v229, type metadata accessor for PgQuery_Node.OneOf_Node);
    v227 = Node;
  }

  v263 = v308;
  outlined init with copy of PgQuery_Alias?(v355 + v352, v308, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v129(v263, 1, v227) == 1)
  {
    v264 = v307;
    UnknownStorage.init()();
    v265 = *(v227 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *&v264[v265] = static PgQuery_Node._StorageClass.defaultInstance;
    v266 = v129(v263, 1, v227);

    v228 = v342;
    if (v266 != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v263, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }
  }

  else
  {
    v264 = v307;
    outlined init with take of PgQuery_BitString(v263, v307, type metadata accessor for PgQuery_Node);
  }

  v267 = v228;
  v268 = v333;
  v269 = v356;
  buildSQLExpression(expressionNode:schemas:columnResolver:tokenInformation:)(v358, v264, v123, v339, v267, v333);
  v356 = v269;
  if (!v269)
  {
    outlined destroy of PgQuery_Node.OneOf_Node(v264, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_Node.OneOf_Node(v268, type metadata accessor for SQLTokenInformation);
    outlined destroy of PgQuery_Node.OneOf_Node(v334, type metadata accessor for PgQuery_A_Const);
    outlined init with take of Aggregation(v358, &v360);
LABEL_106:
    _s10Foundation4UUIDVSgWOhTm_0(v338, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v270 = v361;
    v271 = v351;
    v351[1] = v360;
    v271[2] = v270;
    v271[3]._countAndFlagsBits = v362;
    v272 = type metadata accessor for PgQuery_A_Const;
    v273 = v335;
LABEL_107:
    outlined destroy of PgQuery_Node.OneOf_Node(v273, v272);
    object = v354;
    goto LABEL_74;
  }

  outlined destroy of PgQuery_Node.OneOf_Node(v264, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_Node.OneOf_Node(v268, type metadata accessor for SQLTokenInformation);
  outlined destroy of PgQuery_Node.OneOf_Node(v335, type metadata accessor for PgQuery_A_Const);
  outlined destroy of PgQuery_Node.OneOf_Node(v334, type metadata accessor for PgQuery_A_Const);
  _s10Foundation4UUIDVSgWOhTm_0(v338, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  __swift_deallocate_boxed_opaque_existential_1(v347);
  return _s10Foundation4UUIDVSgWOhTm_0(v354, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
}

uint64_t SQLExpression.init(rootNode:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Aggregation(a1, a2);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v4);
  *(a2 + 40) = (*(v5 + 8))(v4, v5);
  *(a2 + 48) = v6;
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 16))(&v19, v7, v8);
  *(a2 + 56) = v19;
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v9);
  *(a2 + 64) = (*(v10 + 24))(v9, v10);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v11);
  *(a2 + 72) = (*(v12 + 32))(v11, v12);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 40))(v13, v14);
  v17 = v16;
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(a2 + 80) = v15;
  *(a2 + 88) = v17;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SQLExpression.CodingKeys()
{
  v1 = *v0;
  v2 = 0x79546E7275746572;
  v3 = 0xD000000000000014;
  v4 = 0x73676E69646E6962;
  if (v1 != 3)
  {
    v4 = 7106931;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SQLExpression.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SQLExpression.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SQLExpression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SQLExpression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SQLExpression.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser13SQLExpressionV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser13SQLExpressionV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 40);
  v12 = *(v3 + 48);
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v16) = *(v3 + 56);
    v17 = 1;
    lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + 64);
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser19AggregationFunctionVGMd, &_sSay14BiomeSQLParser19AggregationFunctionVGMR);
    lazy protocol witness table accessor for type [AggregationFunction] and conformance <A> [A](&lazy protocol witness table cache variable for type [AggregationFunction] and conformance <A> [A], &_sSay14BiomeSQLParser19AggregationFunctionVGMd, &_sSay14BiomeSQLParser19AggregationFunctionVGMR, lazy protocol witness table accessor for type AggregationFunction and conformance AggregationFunction);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + 72);
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14BiomeSQLParser7BindingVGMd, &_sSay14BiomeSQLParser7BindingVGMR);
    lazy protocol witness table accessor for type [AggregationFunction] and conformance <A> [A](&lazy protocol witness table cache variable for type [Binding] and conformance <A> [A], &_sSay14BiomeSQLParser7BindingVGMd, &_sSay14BiomeSQLParser7BindingVGMR, lazy protocol witness table accessor for type Binding and conformance Binding);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + 80);
    v14 = *(v3 + 88);
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLExpression.CodingKeys and conformance SQLExpression.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType()
{
  result = lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType;
  if (!lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType;
  if (!lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType;
  if (!lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType;
  if (!lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLDataType and conformance SQLDataType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AggregationFunction and conformance AggregationFunction()
{
  result = lazy protocol witness table cache variable for type AggregationFunction and conformance AggregationFunction;
  if (!lazy protocol witness table cache variable for type AggregationFunction and conformance AggregationFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AggregationFunction and conformance AggregationFunction);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AggregationFunction] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Binding and conformance Binding()
{
  result = lazy protocol witness table cache variable for type Binding and conformance Binding;
  if (!lazy protocol witness table cache variable for type Binding and conformance Binding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding and conformance Binding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Binding and conformance Binding;
  if (!lazy protocol witness table cache variable for type Binding and conformance Binding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding and conformance Binding);
  }

  return result;
}

uint64_t static SQLExpression.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized == infix<A>(_:_:)(*(a1 + 56), *(a2 + 56)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser19AggregationFunctionV_Tt1g5(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 72);
  v6 = *(a2 + 72);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser7BindingV_Tt1g5(v5, v6);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SQLExpression(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized == infix<A>(_:_:)(*(a1 + 56), *(a2 + 56)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser19AggregationFunctionV_Tt1g5(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 72);
  v6 = *(a2 + 72);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser7BindingV_Tt1g5(v5, v6);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Binding.CodingKeys()
{
  if (*v0)
  {
    result = 0x6570795461746164;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Binding.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Binding.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Binding.CodingKeys and conformance Binding.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Binding.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Binding.CodingKeys and conformance Binding.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Binding.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14BiomeSQLParser7BindingV10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMd, &_ss22KeyedEncodingContainerVy14BiomeSQLParser7BindingV10CodingKeys33_B787555787B9EFBBEFB0C9C5225A4FB7LLOGMR);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Binding.CodingKeys and conformance Binding.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    lazy protocol witness table accessor for type SQLDataType and conformance SQLDataType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v13 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type Binding.CodingKeys and conformance Binding.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys;
  if (!lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys;
  if (!lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys;
  if (!lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys;
  if (!lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding.CodingKeys and conformance Binding.CodingKeys);
  }

  return result;
}

uint64_t Binding.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  String.hash(into:)();
  String.hash(into:)();
}

Swift::Int Binding.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Binding()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  Binding.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Binding()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  Binding.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static Binding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Binding(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}