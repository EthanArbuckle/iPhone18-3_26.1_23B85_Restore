void protocol witness for RawRepresentable.rawValue.getter in conformance DOCFINodeDragPasteboardType(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000029;
  }

  else
  {
    v2 = 0xD000000000000025;
  }

  if (*v1)
  {
    v3 = "ntManager.FINode.File";
  }

  else
  {
    v3 = "com.apple.icloud.applecorporate";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t DOCDragPasteboardType.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DOCDragPasteboardType();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  v21 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCDragPasteboardType.init(_:), v20);
  if (!v21)
  {
    v22 = 0;
    goto LABEL_5;
  }

  if (v21 == 1)
  {
    v22 = 1;
LABEL_5:

    *v19 = v22;
    goto LABEL_6;
  }

  v30 = v11;

  v25._countAndFlagsBits = a1;
  v25._object = a2;
  v26 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCFPItemDragPasteboardType.init(rawValue:), v25);

  if (v26 >= 3)
  {
    UTType.init(_:)();
    v27 = v30;
    if ((*(v30 + 48))(v9, 1, v10) == 1)
    {
      outlined destroy of CharacterSet?(v9, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
      v23 = 1;
      return (*(v16 + 56))(a3, v23, 1, v15);
    }

    v28 = *(v27 + 32);
    v28(v14, v9, v10);
    v28(v19, v14, v10);
  }

  else
  {

    *v19 = v26;
  }

LABEL_6:
  swift_storeEnumTagMultiPayload();
  outlined init with take of DOCDragPasteboardType(v19, a3);
  v23 = 0;
  return (*(v16 + 56))(a3, v23, 1, v15);
}

Swift::Bool __swiftcall DOCDragPasteboardType.conformsToAnyOf(_:)(Swift::OpaquePointer a1)
{
  v2 = type metadata accessor for DOCDragPasteboardType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a1._rawValue + 2);
  do
  {
    v9 = v7;
    if (v8 == v7)
    {
      break;
    }

    outlined init with copy of DOCDragPasteboardType(a1._rawValue + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7++, v6);
    v10 = DOCDragPasteboardType.conforms(to:)(v6);
    _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(v6, type metadata accessor for DOCDragPasteboardType);
  }

  while ((v10 & 1) == 0);
  return v8 != v9;
}

uint64_t DOCDragPasteboardType.conforms(to:)(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for UTType();
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v50 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for DOCDragPasteboardType();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v50 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v50 - v29;
  outlined init with copy of DOCDragPasteboardType(v2, &v50 - v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v36 = *v30;
    outlined init with copy of DOCDragPasteboardType(v51, v26);
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v36)
      {
        v41 = 0xD000000000000029;
      }

      else
      {
        v41 = 0xD000000000000025;
      }

      if (v36)
      {
        v42 = "ntManager.FINode.File";
      }

      else
      {
        v42 = "com.apple.icloud.applecorporate";
      }

      if (*v26)
      {
        v43 = 0xD000000000000029;
      }

      else
      {
        v43 = 0xD000000000000025;
      }

      if (*v26)
      {
        v44 = "ntManager.FINode.File";
      }

      else
      {
        v44 = "com.apple.icloud.applecorporate";
      }

      if (v41 == v43 && (v42 | 0x8000000000000000) == (v44 | 0x8000000000000000))
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(v26, type metadata accessor for DOCDragPasteboardType);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v32 = *v30;
    outlined init with copy of DOCDragPasteboardType(v51, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = 0xD000000000000029;
      v34 = "ntManager.FINode.Location";
      if (v32)
      {
        if (v32 == 1)
        {
          v35 = "com.apple.DocumentManager.FPItem.Location";
        }

        else
        {
          v35 = "com.apple.DocumentManager.FPItem.Favorite";
        }

        v46 = 0xD000000000000029;
        v47 = (v35 - 32) | 0x8000000000000000;
        if (*v22)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v46 = 0xD000000000000025;
        v47 = 0x8000000249BC5FA0;
        if (*v22)
        {
LABEL_35:
          if (*v22 == 1)
          {
            v48 = "com.apple.DocumentManager.FPItem.Location";
          }

          else
          {
            v48 = "com.apple.DocumentManager.FPItem.Favorite";
          }

          v34 = (v48 - 32);
LABEL_39:
          if (v46 == v33 && v47 == (v34 | 0x8000000000000000))
          {
LABEL_41:

            v39 = 1;
            return v39 & 1;
          }

LABEL_42:
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          return v39 & 1;
        }
      }

      v33 = 0xD000000000000025;
      goto LABEL_39;
    }

    _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(v22, type metadata accessor for DOCDragPasteboardType);
    goto LABEL_13;
  }

  v37 = v50;
  v38 = *(v50 + 32);
  v38(v14, v30, v3);
  outlined init with copy of DOCDragPasteboardType(v51, v18);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(v18, type metadata accessor for DOCDragPasteboardType);
    (*(v37 + 8))(v14, v3);
LABEL_13:
    v39 = 0;
    return v39 & 1;
  }

  v38(v6, v18, v3);
  v38(v10, v6, v3);
  v39 = UTType.conforms(to:)();
  v40 = *(v37 + 8);
  v40(v10, v3);
  v40(v14, v3);
  return v39 & 1;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t type metadata accessor for LSClaimBinding()
{
  result = lazy cache variable for type metadata for LSClaimBinding;
  if (!lazy cache variable for type metadata for LSClaimBinding)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LSClaimBinding);
  }

  return result;
}

uint64_t outlined init with take of DOCDragPasteboardType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCDragPasteboardType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DOCFPItemDragPasteboardType and conformance DOCFPItemDragPasteboardType()
{
  result = lazy protocol witness table cache variable for type DOCFPItemDragPasteboardType and conformance DOCFPItemDragPasteboardType;
  if (!lazy protocol witness table cache variable for type DOCFPItemDragPasteboardType and conformance DOCFPItemDragPasteboardType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCFPItemDragPasteboardType and conformance DOCFPItemDragPasteboardType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCFINodeDragPasteboardType and conformance DOCFINodeDragPasteboardType()
{
  result = lazy protocol witness table cache variable for type DOCFINodeDragPasteboardType and conformance DOCFINodeDragPasteboardType;
  if (!lazy protocol witness table cache variable for type DOCFINodeDragPasteboardType and conformance DOCFINodeDragPasteboardType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCFINodeDragPasteboardType and conformance DOCFINodeDragPasteboardType);
  }

  return result;
}

uint64_t type metadata completion function for DOCDragPasteboardType()
{
  result = type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t specialized ReversedCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = -a2;
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= 1)
  {
    if (v4 < 0 || v4 >= v3)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 <= 0 && v3 < v4)
  {
    return 0;
  }

LABEL_10:
  v5 = __OFADD__(result, v3);
  result -= a2;
  if (v5)
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t DOCExternalDeviceSource.canRename.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static DOCUSBRenaming.shared + 112))() & 1;
}

uint64_t DOCExternalDeviceSource.canErase.getter()
{
  v1 = [v0 identifier];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = (*(*static DOCUSBFormatting.shared + 96))(v1);

  return v2 & 1;
}

id DOCExternalDeviceSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCExternalDeviceSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*DuplicateItemsIntent.sources.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return NavigateHistoryIntent.direction.modify;
}

uint64_t static DuplicateItemsIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables20DuplicateItemsIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables20DuplicateItemsIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type DuplicateItemsIntent and conformance DuplicateItemsIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BFD880;
  v4._countAndFlagsBits = 0xD000000000000025;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables20DuplicateItemsIntentV10AppIntents0H9ParameterCySayAC12FINodeEntityVGGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t static DuplicateItemsIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static DuplicateItemsIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DuplicateItemsIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static DuplicateItemsIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DuplicateItemsIntent.authenticationPolicy.modify())()
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v0, static DuplicateItemsIntent.authenticationPolicy);
  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t key path getter for static DuplicateItemsIntent.authenticationPolicy : DuplicateItemsIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static DuplicateItemsIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static DuplicateItemsIntent.authenticationPolicy : DuplicateItemsIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static DuplicateItemsIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static DuplicateItemsIntent.openAppWhenRun.setter(char a1)
{
  result = swift_beginAccess();
  static DuplicateItemsIntent.openAppWhenRun = a1;
  return result;
}

uint64_t DuplicateItemsIntent.fetchItems()()
{
  v0 = type metadata accessor for FINodeEntity();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntentParameter.wrappedValue.getter();
  v5 = v15;
  v15 = MEMORY[0x277D84F90];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + 32);
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    do
    {
      outlined init with copy of FINodeEntity(v8, v4);
      v10 = *&v4[v7];
      v11 = outlined destroy of FINodeEntity(v4);
      MEMORY[0x24C1FB090](v11);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 += v9;
      --v6;
    }

    while (v6);
    v12 = v15;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v12;
}

uint64_t DuplicateItemsIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v2[6] = *(type metadata accessor for FINodeEntity() - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](DuplicateItemsIntent.perform(), 0, 0);
}

uint64_t DuplicateItemsIntent.perform()()
{
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v1, static Logger.AppIntents);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2493AC000, v2, v3, "[DuplicateFiles] Performing DuplicateFiles intent", v4, 2u);
    MEMORY[0x24C1FE850](v4, -1, -1);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2493AC000, v5, v6, "[DuplicateFiles] Fetching items", v7, 2u);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v8 = DuplicateItemsIntent.fetchItems()();
  v9 = v8;
  v0[9] = v8;
  v10 = v8 >> 62;
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_26:

    v18 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v25))
    {
      v21 = 0;
      goto LABEL_30;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2493AC000, v18, v25, "[DuplicateFiles] Error while fetching items", v20, 2u);
    v21 = 0;
    goto LABEL_28;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_26;
  }

LABEL_9:
  v11 = [objc_allocWithZone(DOCActionManager) init];

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v12 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v12 = v9;
  }

  v13 = specialized DOCActionManager.canDuplicate(nodes:in:)(v12, 0);

  if (v13)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      if (v10)
      {
        v17 = __CocoaSet.count.getter();
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v16 + 4) = v17;

      _os_log_impl(&dword_2493AC000, v14, v15, "[DuplicateFiles] Duplicating %ld items", v16, 0xCu);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    else
    {
    }

    v0[10] = [objc_opt_self() defaultManager];
    v22 = swift_task_alloc();
    v0[11] = v22;
    *v22 = v0;
    v22[1] = DuplicateItemsIntent.perform();
    v23 = MEMORY[0x277D84F90];

    return FPItemManager.duplicateItems(_:desiredFileNames:)(v9, v23);
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2493AC000, v18, v19, "[DuplicateFiles] Error: canDuplicate returned NO", v20, 2u);
    v21 = 1;
LABEL_28:
    MEMORY[0x24C1FE850](v20, -1, -1);
    goto LABEL_30;
  }

  v21 = 1;
LABEL_30:

  lazy protocol witness table accessor for type DuplicateItemsIntent.DuplicateItemsIntentError and conformance DuplicateItemsIntent.DuplicateItemsIntentError();
  swift_allocError();
  *v26 = v21;
  swift_willThrow();

  v27 = v0[1];

  return v27();
}

{
  v1 = *(v0 + 104);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2493AC000, v3, v4, "[DuplicateFiles] Error: Generic error: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  v10 = *(v0 + 104);

  lazy protocol witness table accessor for type DuplicateItemsIntent.DuplicateItemsIntentError and conformance DuplicateItemsIntent.DuplicateItemsIntentError();
  swift_allocError();
  *v11 = 1;
  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t DuplicateItemsIntent.perform()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 80);
  if (v1)
  {

    v6 = DuplicateItemsIntent.perform();
  }

  else
  {

    v6 = DuplicateItemsIntent.perform();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

size_t DuplicateItemsIntent.perform()()
{
  v1 = v0[12];
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[6];
  v6 = v14;
  v7 = v0[12] + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](v4, v0[12]);
    }

    else
    {
      v8 = *(v7 + 8 * v4);
    }

    FINodeEntity.init(item:)(v8, v0[7]);
    v10 = *(v14 + 16);
    v9 = *(v14 + 24);
    if (v10 >= v9 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1);
    }

    v11 = v0[7];
    ++v4;
    *(v14 + 16) = v10 + 1;
    outlined init with take of FINodeEntity(v11, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10);
  }

  while (v2 != v4);

LABEL_14:
  v0[2] = v6;

  v0[3] = specialized RevealItemsIntent.init(targets:)(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd);
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A]();
  lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();
  static IntentResult.result<A, B>(value:opensIntent:)();

  v13 = v0[1];

  return v13();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance DuplicateItemsIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static DuplicateItemsIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance DuplicateItemsIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return DuplicateItemsIntent.perform()(a1, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance DuplicateItemsIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of DuplicateItemsIntent.init(sources:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance DuplicateItemsIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DuplicateItemsIntent and conformance DuplicateItemsIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t DuplicateItemsIntent.DuplicateItemsIntentError.localizedStringResource.getter()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

Swift::Int DuplicateItemsIntent.DuplicateItemsIntentError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t default argument 0 of DuplicateItemsIntent.init(sources:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v35 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v33 = &v30 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v19 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v31 = type metadata accessor for LocalizedStringResource();
  v21 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v22);
  v32 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v13 + 104);
  v25(v16, v24, v12);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v16, v24, v12);
  v26 = v33;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v21 + 56))(v26, 0, 1, v31);
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  v27 = type metadata accessor for IntentDialog();
  v28 = *(*(v27 - 8) + 56);
  v28(v35, 1, 1, v27);
  v28(v36, 1, 1, v27);
  (*(v38 + 104))(v37, *MEMORY[0x277CBA308], v39);
  _s26DocumentManagerExecutables12FINodeEntityVAC10AppIntents12_IntentValueAAWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity);
  return IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t lazy protocol witness table accessor for type DuplicateItemsIntent.DuplicateItemsIntentError and conformance DuplicateItemsIntent.DuplicateItemsIntentError()
{
  result = lazy protocol witness table cache variable for type DuplicateItemsIntent.DuplicateItemsIntentError and conformance DuplicateItemsIntent.DuplicateItemsIntentError;
  if (!lazy protocol witness table cache variable for type DuplicateItemsIntent.DuplicateItemsIntentError and conformance DuplicateItemsIntent.DuplicateItemsIntentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DuplicateItemsIntent.DuplicateItemsIntentError and conformance DuplicateItemsIntent.DuplicateItemsIntentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DuplicateItemsIntent.DuplicateItemsIntentError and conformance DuplicateItemsIntent.DuplicateItemsIntentError;
  if (!lazy protocol witness table cache variable for type DuplicateItemsIntent.DuplicateItemsIntentError and conformance DuplicateItemsIntent.DuplicateItemsIntentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DuplicateItemsIntent.DuplicateItemsIntentError and conformance DuplicateItemsIntent.DuplicateItemsIntentError);
  }

  return result;
}

uint64_t static DOCProgressProvidingOperationIconType.multipleFiles.getter@<X0>(void *a1@<X8>)
{
  *a1 = 0xD000000000000012;
  a1[1] = 0x8000000249BD1F60;
  type metadata accessor for DOCProgressProvidingOperationIconType();

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for DOCProgressProvidingOperationIconType()
{
  result = type metadata singleton initialization cache for DOCProgressProvidingOperationIconType;
  if (!type metadata singleton initialization cache for DOCProgressProvidingOperationIconType)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DOCProgressProvidingOperationIconType.singleFile.getter()
{
  type metadata accessor for DOCProgressProvidingOperationIconType();

  return swift_storeEnumTagMultiPayload();
}

uint64_t DOCProgressProvidingOperationIconType.hash(into:)()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DOCProgressProvidingOperationIconType();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCProgressProvidingOperationIconType(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x24C1FCBD0](2);
      String.hash(into:)();
    }

    else
    {
      return MEMORY[0x24C1FCBD0](0);
    }
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x24C1FCBD0](1);
    lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v2 + 8))(v5, v1);
  }
}

Swift::Int DOCProgressProvidingOperationIconType.hashValue.getter()
{
  Hasher.init(_seed:)();
  DOCProgressProvidingOperationIconType.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCProgressProvidingOperationIconType()
{
  Hasher.init(_seed:)();
  DOCProgressProvidingOperationIconType.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCProgressProvidingOperationIconType()
{
  Hasher.init(_seed:)();
  DOCProgressProvidingOperationIconType.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static DOCProgressProvidingOperationIconType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DOCProgressProvidingOperationIconType();
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables37DOCProgressProvidingOperationIconTypeO_ACtMd);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v31 - v19;
  v22 = (&v31 + *(v21 + 56) - v19);
  outlined init with copy of DOCProgressProvidingOperationIconType(a1, &v31 - v19);
  outlined init with copy of DOCProgressProvidingOperationIconType(a2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of DOCProgressProvidingOperationIconType(v20, v16);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v5 + 32))(v8, v22, v4);
      v28 = static UTType.== infix(_:_:)();
      v29 = *(v5 + 8);
      v29(v8, v4);
      v29(v16, v4);
      outlined destroy of DOCProgressProvidingOperationIconType(v20);
      return v28 & 1;
    }

    (*(v5 + 8))(v16, v4);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_19;
    }

LABEL_15:
    outlined destroy of (DOCProgressProvidingOperationIconType, DOCProgressProvidingOperationIconType)(v20);
    goto LABEL_16;
  }

  outlined init with copy of DOCProgressProvidingOperationIconType(v20, v12);
  v25 = *v12;
  v24 = v12[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_15;
  }

  if (v25 == *v22 && v24 == v22[1])
  {

    goto LABEL_19;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
LABEL_19:
    outlined destroy of DOCProgressProvidingOperationIconType(v20);
    v28 = 1;
    return v28 & 1;
  }

  outlined destroy of DOCProgressProvidingOperationIconType(v20);
LABEL_16:
  v28 = 0;
  return v28 & 1;
}

uint64_t type metadata completion function for DOCProgressProvidingOperationIconType()
{
  result = type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined destroy of (DOCProgressProvidingOperationIconType, DOCProgressProvidingOperationIconType)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables37DOCProgressProvidingOperationIconTypeO_ACtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of DOCProgressProvidingOperationIconType(uint64_t a1)
{
  v2 = type metadata accessor for DOCProgressProvidingOperationIconType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path getter for FavoriteFoldersIntent.entities : FavoriteFoldersIntent@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

DocumentManagerExecutables::FavoriteFolderOperation_optional __swiftcall FavoriteFolderOperation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FavoriteFolderOperation.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t FavoriteFolderOperation.rawValue.getter()
{
  v1 = 0x69726F7661666E75;
  if (*v0 != 1)
  {
    v1 = 0x656C67676F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657469726F766166;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FavoriteFolderOperation(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69726F7661666E75;
  v4 = 0xEA00000000006574;
  if (v2 != 1)
  {
    v3 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x657469726F766166;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x69726F7661666E75;
  v8 = 0xEA00000000006574;
  if (*a2 != 1)
  {
    v7 = 0x656C67676F74;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x657469726F766166;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FavoriteFolderOperation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FavoriteFolderOperation()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FavoriteFolderOperation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FavoriteFolderOperation(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000006574;
  v5 = 0x69726F7661666E75;
  if (v2 != 1)
  {
    v5 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657469726F766166;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance FavoriteFolderOperation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FavoriteFolderOperation and conformance FavoriteFolderOperation();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance FavoriteFolderOperation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FavoriteFolderOperation and conformance FavoriteFolderOperation();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t static FavoriteFoldersIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables21FavoriteFoldersIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables21FavoriteFoldersIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BFDBD0;
  v4._countAndFlagsBits = 0xD000000000000025;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables21FavoriteFoldersIntentV10AppIntents0H9ParameterCyAC0F15FolderOperationOGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables21FavoriteFoldersIntentV10AppIntents0H9ParameterCySayAC12FINodeEntityVGGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*FavoriteFoldersIntent.operation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return RenameItemIntent.newName.modify;
}

uint64_t (*FavoriteFoldersIntent.entities.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return protocol witness for ShowInAppSearchResultsIntent.criteria.modify in conformance SearchInBrowserIntent;
}

uint64_t one-time initialization function for needsValueDialog()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = type metadata accessor for IntentDialog();
  __swift_allocate_value_buffer(v11, static FavoriteFoldersIntent.needsValueDialog);
  __swift_project_value_buffer(v11, static FavoriteFoldersIntent.needsValueDialog);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  return IntentDialog.init(_:)();
}

{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = type metadata accessor for IntentDialog();
  __swift_allocate_value_buffer(v11, static CompressItemsIntent.needsValueDialog);
  __swift_project_value_buffer(v11, static CompressItemsIntent.needsValueDialog);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  return IntentDialog.init(_:)();
}

uint64_t FavoriteFoldersIntent.title.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t FavoriteFoldersIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a2;
  v3[52] = a3;
  v3[50] = a1;
  v4 = type metadata accessor for FINodeEntity();
  v3[53] = v4;
  v3[54] = *(v4 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtMd);
  v3[58] = v5;
  v3[59] = *(v5 - 8);
  v3[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtSgMd);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](FavoriteFoldersIntent.perform(), 0, 0);
}

uint64_t FavoriteFoldersIntent.perform()()
{
  v1 = (v0 + 408);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  IntentParameter.wrappedValue.getter();
  v4 = *(*(v0 + 368) + 16);
  *(v0 + 536) = v4;

  *(v0 + 272) = v2;
  *(v0 + 280) = v3;
  *(v0 + 544) = lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();
  v5 = ProgressReportingIntent.progress.getter();
  [v5 setTotalUnitCount_];

  if (!v4)
  {
    *(v0 + 288) = *v1;
    goto LABEL_20;
  }

  IntentParameter.wrappedValue.getter();
  if (!*(v0 + 744))
  {
    IntentParameter.wrappedValue.getter();
    v14 = *(v0 + 392);
    *(v0 + 552) = v14;
    v15 = *(v14 + 16);
    *(v0 + 560) = v15;
    if (v15)
    {
      v16 = *(v0 + 520);
      v17 = *(v0 + 480);
      v18 = *(*(v0 + 432) + 80);
      v19 = *(*(v0 + 464) + 48);
      *v17 = 0;
      outlined init with copy of FINodeEntity(v14 + ((v18 + 32) & ~v18), v17 + v19);
      outlined init with take of (key: URL, value: FPItem)(v17, v16, &_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtMd);
      v20 = 0;
      v21 = 1;
    }

    else
    {
      v21 = 0;
      v20 = 1;
    }

    *(v0 + 568) = v21;
    v37 = *(v0 + 528);
    v38 = *(v0 + 520);
    v39 = *(v0 + 464);
    v40 = *(v0 + 472);
    (*(v40 + 56))(v38, v20, 1, v39);
    outlined init with take of (key: URL, value: FPItem)(v38, v37, &_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtSgMd);
    if ((*(v40 + 48))(v37, 1, v39) != 1)
    {
      v41 = *(v0 + 528);
      v42 = *(v0 + 456);
      v43 = *(v0 + 464);
      *(v0 + 576) = *v41;
      outlined init with take of FINodeEntity(v41 + *(v43 + 48), v42);
      static Task<>.checkCancellation()();
      *(v0 + 584) = 0;
      type metadata accessor for MainActor();
      *(v0 + 592) = static MainActor.shared.getter();
      v54 = dispatch thunk of Actor.unownedExecutor.getter();
      v56 = v58;
      *(v0 + 600) = v54;
      *(v0 + 608) = v58;
      v57 = FavoriteFoldersIntent.perform();
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (*(v0 + 744) == 1)
  {
    IntentParameter.wrappedValue.getter();
    v6 = *(v0 + 384);
    *(v0 + 624) = v6;
    v7 = *(v6 + 16);
    *(v0 + 632) = v7;
    if (v7)
    {
      v8 = *(v0 + 504);
      v9 = *(v0 + 480);
      v10 = *(*(v0 + 432) + 80);
      v11 = *(*(v0 + 464) + 48);
      *v9 = 0;
      outlined init with copy of FINodeEntity(v6 + ((v10 + 32) & ~v10), v9 + v11);
      outlined init with take of (key: URL, value: FPItem)(v9, v8, &_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtMd);
      v12 = 0;
      v13 = 1;
    }

    else
    {
      v13 = 0;
      v12 = 1;
    }

    *(v0 + 640) = v13;
    v30 = *(v0 + 504);
    v31 = *(v0 + 512);
    v32 = *(v0 + 464);
    v33 = *(v0 + 472);
    (*(v33 + 56))(v30, v12, 1, v32);
    outlined init with take of (key: URL, value: FPItem)(v30, v31, &_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtSgMd);
    if ((*(v33 + 48))(v31, 1, v32) != 1)
    {
      v34 = *(v0 + 512);
      v35 = *(v0 + 464);
      v36 = *(v0 + 448);
      *(v0 + 648) = *v34;
      outlined init with take of FINodeEntity(v34 + *(v35 + 48), v36);
      static Task<>.checkCancellation()();
      *(v0 + 656) = 0;
      type metadata accessor for MainActor();
      *(v0 + 664) = static MainActor.shared.getter();
      v54 = dispatch thunk of Actor.unownedExecutor.getter();
      v56 = v55;
      *(v0 + 672) = v54;
      *(v0 + 680) = v55;
      v57 = FavoriteFoldersIntent.perform();
LABEL_25:

      return MEMORY[0x2822009F8](v57, v54, v56);
    }

    goto LABEL_19;
  }

  IntentParameter.wrappedValue.getter();
  v22 = *(v0 + 376);
  *(v0 + 696) = v22;
  v23 = *(v22 + 16);
  *(v0 + 704) = v23;
  if (v23)
  {
    v24 = *(v0 + 480);
    v25 = *(v0 + 488);
    v26 = *(*(v0 + 432) + 80);
    v27 = *(*(v0 + 464) + 48);
    *v24 = 0;
    outlined init with copy of FINodeEntity(v22 + ((v26 + 32) & ~v26), v24 + v27);
    outlined init with take of (key: URL, value: FPItem)(v24, v25, &_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtMd);
    v28 = 0;
    v29 = 1;
  }

  else
  {
    v29 = 0;
    v28 = 1;
  }

  *(v0 + 712) = v29;
  v44 = *(v0 + 488);
  v45 = *(v0 + 496);
  v46 = *(v0 + 464);
  v47 = *(v0 + 472);
  (*(v47 + 56))(v44, v28, 1, v46);
  outlined init with take of (key: URL, value: FPItem)(v44, v45, &_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtSgMd);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
LABEL_19:
    v61 = *v1;

    *(v0 + 304) = v61;
LABEL_20:
    v48 = ProgressReportingIntent.progress.getter();
    [v48 setTotalUnitCount_];

    static IntentResult.result<>()();

    v49 = *(v0 + 8);

    return v49();
  }

  v50 = *(v0 + 496);
  v51 = *(v0 + 464);
  v52 = *(v0 + 440);
  *(v0 + 720) = *v50;
  outlined init with take of FINodeEntity(v50 + *(v51 + 48), v52);
  static Task<>.checkCancellation()();
  *(v0 + 728) = 0;
  v59 = swift_task_alloc();
  *(v0 + 736) = v59;
  *v59 = v0;
  v59[1] = FavoriteFoldersIntent.perform();
  v60 = *(v0 + 440);

  return toggleFavorite(_:)(v60);
}

{
  v1 = v0[57];
  v2 = v0[53];
  v3 = [objc_opt_self() sharedManager];
  v0[77] = v3;
  v4 = *(v1 + *(v2 + 32));
  v0[10] = v0;
  v0[15] = v0 + 746;
  v0[11] = FavoriteFoldersIntent.perform();
  v5 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[29] = &block_descriptor_9_10;
  v0[30] = v5;
  [v3 addFavorite:v4 completion:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 600);

  return MEMORY[0x2822009F8](FavoriteFoldersIntent.perform(), v2, v1);
}

{
  v1 = *(v0 + 616);

  return MEMORY[0x2822009F8](FavoriteFoldersIntent.perform(), 0, 0);
}

{
  v1 = *(v0 + 576);
  *(v0 + 352) = *(v0 + 408);
  v2 = ProgressReportingIntent.progress.getter();
  v5 = 100 * v1;
  if ((v1 * 100) >> 64 != (100 * v1) >> 63)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v2;
  v7 = *(v0 + 456);
  [v2 setTotalUnitCount_];

  v2 = outlined destroy of FINodeEntity(v7);
  v8 = *(v0 + 584);
  v9 = *(v0 + 568);
  if (v9 == *(v0 + 560))
  {
    v10 = 1;
    goto LABEL_7;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v11 = *(v0 + 552);
  if (v9 >= *(v11 + 16))
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  v12 = *(v0 + 520);
  v13 = *(v0 + 480);
  v14 = v9 + 1;
  v15 = v11 + ((*(*(v0 + 432) + 80) + 32) & ~*(*(v0 + 432) + 80)) + *(*(v0 + 432) + 72) * v9;
  v16 = *(*(v0 + 464) + 48);
  *v13 = v9;
  outlined init with copy of FINodeEntity(v15, v13 + v16);
  outlined init with take of (key: URL, value: FPItem)(v13, v12, &_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtMd);
  v10 = 0;
  v9 = v14;
LABEL_7:
  *(v0 + 568) = v9;
  v17 = *(v0 + 528);
  v18 = *(v0 + 520);
  v19 = *(v0 + 464);
  v20 = *(v0 + 472);
  (*(v20 + 56))(v18, v10, 1, v19);
  outlined init with take of (key: URL, value: FPItem)(v18, v17, &_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtSgMd);
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    v23 = *(v0 + 528);
    v24 = *(v0 + 456);
    v25 = *(v0 + 464);
    *(v0 + 576) = *v23;
    outlined init with take of FINodeEntity(v23 + *(v25 + 48), v24);
    static Task<>.checkCancellation()();
    *(v0 + 584) = v8;
    if (v8)
    {
      outlined destroy of FINodeEntity(*(v0 + 456));

      v22 = *(v0 + 8);
      goto LABEL_11;
    }

    type metadata accessor for MainActor();
    *(v0 + 592) = static MainActor.shared.getter();
    v27 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v28;
    *(v0 + 600) = v27;
    *(v0 + 608) = v28;
    v2 = FavoriteFoldersIntent.perform();
    v3 = v27;

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  v29 = *(v0 + 408);

  *(v0 + 304) = v29;
  v21 = ProgressReportingIntent.progress.getter();
  [v21 setTotalUnitCount_];

  static IntentResult.result<>()();

  v22 = *(v0 + 8);
LABEL_11:

  return v22();
}

{
  v1 = v0[56];
  v2 = v0[53];
  v3 = [objc_opt_self() sharedManager];
  v0[86] = v3;
  v4 = *(v1 + *(v2 + 32));
  v0[2] = v0;
  v0[7] = v0 + 745;
  v0[3] = FavoriteFoldersIntent.perform();
  v5 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[21] = &block_descriptor_163;
  v0[22] = v5;
  [v3 removeFavorite:v4 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 680);
  v2 = *(*v0 + 672);

  return MEMORY[0x2822009F8](FavoriteFoldersIntent.perform(), v2, v1);
}

{
  v1 = *(v0 + 688);

  return MEMORY[0x2822009F8](FavoriteFoldersIntent.perform(), 0, 0);
}

{
  v1 = *(v0 + 648);
  *(v0 + 336) = *(v0 + 408);
  v2 = ProgressReportingIntent.progress.getter();
  v5 = 100 * v1;
  if ((v1 * 100) >> 64 != (100 * v1) >> 63)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v2;
  v7 = *(v0 + 448);
  [v2 setTotalUnitCount_];

  v2 = outlined destroy of FINodeEntity(v7);
  v8 = *(v0 + 656);
  v9 = *(v0 + 640);
  if (v9 == *(v0 + 632))
  {
    v10 = 1;
    goto LABEL_7;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v11 = *(v0 + 624);
  if (v9 >= *(v11 + 16))
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  v12 = *(v0 + 504);
  v13 = *(v0 + 480);
  v14 = v9 + 1;
  v15 = v11 + ((*(*(v0 + 432) + 80) + 32) & ~*(*(v0 + 432) + 80)) + *(*(v0 + 432) + 72) * v9;
  v16 = *(*(v0 + 464) + 48);
  *v13 = v9;
  outlined init with copy of FINodeEntity(v15, v13 + v16);
  outlined init with take of (key: URL, value: FPItem)(v13, v12, &_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtMd);
  v10 = 0;
  v9 = v14;
LABEL_7:
  *(v0 + 640) = v9;
  v17 = *(v0 + 504);
  v18 = *(v0 + 512);
  v19 = *(v0 + 464);
  v20 = *(v0 + 472);
  (*(v20 + 56))(v17, v10, 1, v19);
  outlined init with take of (key: URL, value: FPItem)(v17, v18, &_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtSgMd);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v23 = *(v0 + 512);
    v24 = *(v0 + 464);
    v25 = *(v0 + 448);
    *(v0 + 648) = *v23;
    outlined init with take of FINodeEntity(v23 + *(v24 + 48), v25);
    static Task<>.checkCancellation()();
    *(v0 + 656) = v8;
    if (v8)
    {
      outlined destroy of FINodeEntity(*(v0 + 448));

      v22 = *(v0 + 8);
      goto LABEL_11;
    }

    type metadata accessor for MainActor();
    *(v0 + 664) = static MainActor.shared.getter();
    v27 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v28;
    *(v0 + 672) = v27;
    *(v0 + 680) = v28;
    v2 = FavoriteFoldersIntent.perform();
    v3 = v27;

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  v29 = *(v0 + 408);

  *(v0 + 304) = v29;
  v21 = ProgressReportingIntent.progress.getter();
  [v21 setTotalUnitCount_];

  static IntentResult.result<>()();

  v22 = *(v0 + 8);
LABEL_11:

  return v22();
}

{

  return MEMORY[0x2822009F8](FavoriteFoldersIntent.perform(), 0, 0);
}

void *FavoriteFoldersIntent.perform()()
{
  v1 = *(v0 + 720);
  *(v0 + 320) = *(v0 + 408);
  result = ProgressReportingIntent.progress.getter();
  v3 = 100 * v1;
  if ((v1 * 100) >> 64 != (100 * v1) >> 63)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = result;
  v5 = *(v0 + 440);
  [result setTotalUnitCount_];

  result = outlined destroy of FINodeEntity(v5);
  v6 = *(v0 + 728);
  v7 = *(v0 + 712);
  if (v7 == *(v0 + 704))
  {
    v8 = 1;
    goto LABEL_7;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v9 = *(v0 + 696);
  if (v7 >= *(v9 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v10 = *(v0 + 480);
  v11 = *(v0 + 488);
  v12 = v7 + 1;
  v13 = v9 + ((*(*(v0 + 432) + 80) + 32) & ~*(*(v0 + 432) + 80)) + *(*(v0 + 432) + 72) * v7;
  v14 = *(*(v0 + 464) + 48);
  *v10 = v7;
  outlined init with copy of FINodeEntity(v13, v10 + v14);
  outlined init with take of (key: URL, value: FPItem)(v10, v11, &_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtMd);
  v8 = 0;
  v7 = v12;
LABEL_7:
  *(v0 + 712) = v7;
  v15 = *(v0 + 488);
  v16 = *(v0 + 496);
  v17 = *(v0 + 464);
  v18 = *(v0 + 472);
  (*(v18 + 56))(v15, v8, 1, v17);
  outlined init with take of (key: URL, value: FPItem)(v15, v16, &_sSi6offset_26DocumentManagerExecutables12FINodeEntityV7elementtSgMd);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v26 = *(v0 + 408);

    *(v0 + 304) = v26;
    v19 = ProgressReportingIntent.progress.getter();
    [v19 setTotalUnitCount_];

    static IntentResult.result<>()();

    v20 = *(v0 + 8);
LABEL_11:

    return v20();
  }

  v21 = *(v0 + 496);
  v22 = *(v0 + 464);
  v23 = *(v0 + 440);
  *(v0 + 720) = *v21;
  outlined init with take of FINodeEntity(v21 + *(v22 + 48), v23);
  static Task<>.checkCancellation()();
  *(v0 + 728) = v6;
  if (v6)
  {
    outlined destroy of FINodeEntity(*(v0 + 440));

    v20 = *(v0 + 8);
    goto LABEL_11;
  }

  v24 = swift_task_alloc();
  *(v0 + 736) = v24;
  *v24 = v0;
  v24[1] = FavoriteFoldersIntent.perform();
  v25 = *(v0 + 440);

  return toggleFavorite(_:)(v25);
}

uint64_t addFavorite(_:)(uint64_t a1)
{
  v1[18] = a1;
  type metadata accessor for MainActor();
  v1[19] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x2822009F8](addFavorite(_:), v3, v2);
}

uint64_t addFavorite(_:)()
{
  v1 = v0[18];
  v2 = [objc_opt_self() sharedManager];
  v0[22] = v2;
  v3 = *(v1 + *(type metadata accessor for FINodeEntity() + 32));
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = addFavorite(_:);
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[13] = &block_descriptor_12_6;
  v0[14] = v4;
  [v2 addFavorite:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return MEMORY[0x2822009F8](addFavorite(_:), v2, v1);
}

{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t removeFavorite(_:)(uint64_t a1)
{
  v1[18] = a1;
  type metadata accessor for MainActor();
  v1[19] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x2822009F8](removeFavorite(_:), v3, v2);
}

uint64_t removeFavorite(_:)()
{
  v1 = v0[18];
  v2 = [objc_opt_self() sharedManager];
  v0[22] = v2;
  v3 = *(v1 + *(type metadata accessor for FINodeEntity() + 32));
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = removeFavorite(_:);
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[13] = &block_descriptor_15_7;
  v0[14] = v4;
  [v2 removeFavorite:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return MEMORY[0x2822009F8](removeFavorite(_:), v2, v1);
}

uint64_t toggleFavorite(_:)(uint64_t a1)
{
  v1[26] = a1;
  type metadata accessor for MainActor();
  v1[27] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[28] = v3;
  v1[29] = v2;

  return MEMORY[0x2822009F8](toggleFavorite(_:), v3, v2);
}

uint64_t toggleFavorite(_:)()
{
  v1 = v0[26];
  v2 = objc_opt_self();
  v3 = [v2 sharedManager];
  v4 = [v3 favoritedLocations];

  type metadata accessor for FPItem();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = *(v1 + *(type metadata accessor for FINodeEntity() + 32));
  v0[18] = v6;
  v7 = v0 + 32;
  v8 = swift_task_alloc();
  *(v8 + 16) = v0 + 18;
  LOBYTE(v1) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySo6FPItemCG_TG5TA_0, v8, v5);

  v9 = [v2 sharedManager];
  v10 = v9;
  if (v1)
  {
    v11 = v0 + 10;
    v0[30] = v9;
    v0[10] = v0;
    v0[15] = v7;
    v0[11] = toggleFavorite(_:);
    v12 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
    v0[21] = &block_descriptor_21_8;
    v0[22] = v12;
    [v10 removeFavorite:v6 completion:v0 + 18];
  }

  else
  {
    v11 = v0 + 2;
    v0[31] = v9;
    v0[2] = v0;
    v0[7] = v7;
    v0[3] = toggleFavorite(_:);
    v13 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
    v0[21] = &block_descriptor_18_2;
    v0[22] = v13;
    [v10 addFavorite:v6 completion:v0 + 18];
  }

  return MEMORY[0x282200938](v11);
}

{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x2822009F8](toggleFavorite(_:), v2, v1);
}

{
  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x2822009F8](toggleFavorite(_:), v2, v1);
}

{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t default argument 0 of FavoriteFoldersIntent.init(operation:entities:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v33 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v32 = &v29 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v19 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v30 = type metadata accessor for LocalizedStringResource();
  v21 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v22);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables23FavoriteFolderOperationOGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = *MEMORY[0x277CC9110];
  v24 = *(v13 + 104);
  v24(v16, v23, v12);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24(v16, v23, v12);
  v25 = v32;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v21 + 56))(v25, 0, 1, v30);
  v38 = 0;
  v26 = type metadata accessor for IntentDialog();
  v27 = *(*(v26 - 8) + 56);
  v27(v33, 1, 1, v26);
  v27(v34, 1, 1, v26);
  (*(v36 + 104))(v35, *MEMORY[0x277CBA308], v37);
  lazy protocol witness table accessor for type FavoriteFolderOperation and conformance FavoriteFolderOperation();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t default argument 1 of FavoriteFoldersIntent.init(operation:entities:)()
{
  v42 = type metadata accessor for InputConnectionBehavior();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v0);
  v41 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v38 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v35 = &v33 - v10;
  v11 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v18 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v34 = type metadata accessor for LocalizedStringResource();
  v20 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v12 + 104);
  v25(v15, v24, v11);
  v37 = v23;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v15, v24, v11);
  v26 = v35;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v20 + 56))(v26, 0, 1, v34);
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9A480;
  static UTType.folder.getter();
  if (one-time initialization token for needsValueDialog != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for IntentDialog();
  v28 = __swift_project_value_buffer(v27, static FavoriteFoldersIntent.needsValueDialog);
  v29 = *(v27 - 8);
  v30 = v38;
  (*(v29 + 16))(v38, v28, v27);
  v31 = *(v29 + 56);
  v31(v30, 0, 1, v27);
  v31(v39, 1, 1, v27);
  (*(v40 + 104))(v41, *MEMORY[0x277CBA308], v42);
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
  return IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance FavoriteFoldersIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static FavoriteFoldersIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance FavoriteFoldersIntent(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return FavoriteFoldersIntent.perform()(a1, v5, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance FavoriteFoldersIntent@<X0>(uint64_t *a1@<X8>)
{
  result = specialized FavoriteFoldersIntent.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance FavoriteFoldersIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FavoriteFoldersIntent and conformance FavoriteFoldersIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t specialized FavoriteFoldersIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  v59 = v0;
  v60 = v1;
  MEMORY[0x28223BE20](v0, v2);
  v58 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v57 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v56 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v54 = &v40 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v20 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v53 = type metadata accessor for LocalizedStringResource();
  v22 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v23);
  v55 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables23FavoriteFolderOperationOGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = *MEMORY[0x277CC9110];
  v26 = *(v14 + 104);
  v42 = v13;
  v26(v17, v25, v13);
  v41 = v26;
  v43 = v14 + 104;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26(v17, v25, v13);
  v27 = v54;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v28 = *(v22 + 56);
  v45 = v22 + 56;
  v46 = v28;
  v28(v27, 0, 1, v53);
  v62 = 0;
  v29 = type metadata accessor for IntentDialog();
  v51 = *(v29 - 8);
  v31 = v51 + 56;
  v30 = *(v51 + 56);
  v30(v56, 1, 1, v29);
  v52 = v30;
  v44 = v31;
  v30(v57, 1, 1, v29);
  v32 = *(v60 + 104);
  v50 = *MEMORY[0x277CBA308];
  v60 += 104;
  v49 = v32;
  v32(v58);
  lazy protocol witness table accessor for type FavoriteFolderOperation and conformance FavoriteFolderOperation();
  v48 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = v42;
  v34 = v41;
  v41(v17, v25, v42);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34(v17, v25, v33);
  v35 = v54;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v46(v35, 0, 1, v53);
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9A480;
  static UTType.folder.getter();
  if (one-time initialization token for needsValueDialog != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v29, static FavoriteFoldersIntent.needsValueDialog);
  v37 = v56;
  (*(v51 + 16))(v56, v36, v29);
  v38 = v52;
  v52(v37, 0, 1, v29);
  v38(v57, 1, 1, v29);
  v49(v58, v50, v59);
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
  IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  return v48;
}

unint64_t specialized static FavoriteFolderOperation.caseDisplayRepresentations.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v54 = &v39 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v52 = &v39 - v5;
  v62 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = type metadata accessor for LocalizedStringResource();
  v59 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v50 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables23FavoriteFolderOperationO_10AppIntents21DisplayRepresentationVtGMd);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23FavoriteFolderOperationO_10AppIntents21DisplayRepresentationVtMd);
  v60 = v18;
  v19 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v46 = *(*(v18 - 8) + 72);
  v47 = 2 * v46;
  v20 = swift_allocObject();
  v48 = v20;
  *(v20 + 16) = xmmword_249BA08C0;
  v51 = v20 + v19;
  v45 = *(v18 + 48);
  *(v20 + v19) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v61 = *MEMORY[0x277CC9110];
  v40 = *(v6 + 104);
  v40(v9);
  v49 = v6 + 104;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v58 = *(v15 + 56);
  v21 = v52;
  v58(v52, 1, 1, v14);
  v56 = type metadata accessor for DisplayRepresentation.Image();
  v22 = *(v56 - 8);
  v55 = *(v22 + 56);
  v57 = v22 + 56;
  v55(v54, 1, 1, v56);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd);
  v53 = v15 + 56;
  v24 = *(v15 + 72);
  v43 = v23;
  v44 = v24;
  v42 = *(v15 + 80);
  v39 = (v42 + 32) & ~v42;
  v25 = swift_allocObject();
  v41 = xmmword_249B9A480;
  *(v25 + 16) = xmmword_249B9A480;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = v9;
  v27 = v9;
  v28 = v61;
  v29 = v40;
  (v40)(v27, v61, v62);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v30 = v51;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v31 = *(v60 + 48);
  v45 = (v30 + v46);
  v46 = v31;
  *v45 = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = v62;
  v33 = v29;
  (v29)(v26, v28, v62);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v58(v21, 1, 1, v59);
  v34 = v54;
  v55(v54, 1, 1, v56);
  *(swift_allocObject() + 16) = v41;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v29)(v26, v61, v32);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v35 = v52;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v36 = (v51 + v47);
  v47 = *(v60 + 48);
  *v36 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v33)(v26, v61, v62);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v58(v35, 1, 1, v59);
  v55(v34, 1, 1, v56);
  DisplayRepresentation.init(title:subtitle:image:)();
  v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables23FavoriteFolderOperationO_10AppIntents21DisplayRepresentationVTt0g5Tf4g_n(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v37;
}

id key path getter for DOCProgressCollectionListViewController.ProgressListingView.fittingHeight : DOCProgressCollectionListViewController.ProgressListingView@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fittingHeight];
  *a2 = v4;
  return result;
}

Swift::Int DOCProgressCollectionViewer.Options.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  return Hasher._finalize()();
}

char *DOCProgressCollectionViewer.init(source:configuration:options:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_adaptablePresenter;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for DOCCardPopoverAdaptablePresenter()) init];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer____lazy_storage___dismissButtonItem] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listFittingHeightKVO] = 0;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listFittingHeight] = 0;
  LOBYTE(v30) = v9;
  v12 = objc_allocWithZone(type metadata accessor for DOCProgressCollectionListViewController(0));
  v13 = swift_unknownObjectRetain();
  v14 = DOCProgressCollectionListViewController.init(_:style:)(v13, a2, &v30);
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController] = v14;
  v15 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_configuration];
  *v15 = v8;
  v15[1] = v9;
  v15[2] = v10;
  v16 = type metadata accessor for DOCProgressCollectionViewer();
  v31.receiver = v5;
  v31.super_class = v16;
  v17 = objc_msgSendSuper2(&v31, sel_initWithRootViewController_, v14);
  [v17 setNavigationBarHidden_];
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController;
  v19 = [*&v17[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController] editButtonItem];
  v20 = *(a4 + 16);

  [v19 setHidden_];

  ObjectType = swift_getObjectType();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = *(a2 + 16);

  v23(v17, partial apply for closure #1 in DOCProgressCollectionViewer.init(source:configuration:options:), v22, ObjectType, a2);

  v24 = [*&v17[v18] editButtonItem];
  [v24 setTarget_];
  v25 = [v24 setAction_];
  v26 = (*((*MEMORY[0x277D85000] & **&v17[v18]) + 0x188))(v25);
  v30 = v26;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  swift_unknownObjectRelease();
  v28 = *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listFittingHeightKVO];
  *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listFittingHeightKVO] = v27;

  return v17;
}

void closure #1 in DOCProgressCollectionViewer.init(source:configuration:options:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = *((*(a2 + 8))(ObjectType, a2) + 16);

  if (!v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t DOCProgressCollectionViewer.canPresent.getter()
{
  v1 = *(*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController] + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_source + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 8);
  swift_unknownObjectRetain();
  v4 = *(v3(ObjectType, v1) + 16);

  if (!v4)
  {
    if (one-time initialization token for progressUI != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.progressUI;
    v6 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "progressViwer.canPresent == false: no content";
    goto LABEL_11;
  }

  if (![v0 doc_hasAppearedOrIsAppearing])
  {
    v9 = 1;
    goto LABEL_14;
  }

  if (one-time initialization token for progressUI != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.progressUI;
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "progressViwer.canPresent == false: already presented or presenting";
LABEL_11:
    _os_log_impl(&dword_2493AC000, v5, v6, v8, v7, 2u);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

LABEL_12:
  v9 = 0;
LABEL_14:
  swift_unknownObjectRelease();
  return v9;
}

uint64_t DOCProgressCollectionViewer.present(in:fromBarButtonItem:fromSourceView:popoverArrowDirection:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = MEMORY[0x277D85000];
  v11 = (*((*MEMORY[0x277D85000] & *v4) + 0xB8))();
  if ((v11 & 1) == 0)
  {
    return v11 & 1;
  }

  v53 = a4;
  v12 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController);
  v13 = (*((*v10 & *v12) + 0x140))();
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize;
  if ((*(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize) & 1) == 0)
  {
    *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize) = 1;
    v15 = (*((*v10 & *v12) + 0x188))(v13);
    [v15 fittingHeight];
    v17 = v16;

    DOCProgressCollectionViewer.listFittingHeight.setter(v17);
    *(v5 + v14) = 0;
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v57 = swift_dynamicCastObjCProtocolConditional();
    if (v57)
    {
      v19 = a2;
LABEL_13:

      v59[0] = [v19 _doc_ipi_view];
      goto LABEL_15;
    }
  }

  if (a3 && (v57 = swift_dynamicCastObjCProtocolConditional()) != 0)
  {
    v20 = a3;
  }

  else
  {
    v57 = 0;
  }

  if (a2)
  {
    v19 = a2;
    goto LABEL_13;
  }

  v59[0] = 0;

LABEL_15:
  v59[1] = a3;
  v21 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v51 = a3;
  v22 = 0;
  v54 = a2;
  while (v22 != 2)
  {
    v23 = v59[v22++];
    if (v23)
    {
      MEMORY[0x24C1FB090](v23);
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v58;
    }
  }

  v55 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewCSgMd);
  swift_arrayDestroy();
  v56 = v11;
  v52 = a3;
  if (v21 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v25 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x24C1FC540](v25, v21);
      }

      else
      {
        if (v25 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v26 = *(v21 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29 = [v26 window];
      if (v29)
      {
        v30 = v29;

        v31 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_adaptablePresenter;
        v32 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_adaptablePresenter);
        v33 = swift_allocObject();
        v33[2] = v54;
        v33[3] = v52;
        v33[4] = v53;
        v33[5] = partial apply for closure #1 in DOCProgressCollectionViewer.present(in:fromBarButtonItem:fromSourceView:popoverArrowDirection:);
        v33[6] = v18;
        v34 = MEMORY[0x277D85000];
        v35 = *((*MEMORY[0x277D85000] & *v32) + 0xB0);
        v36 = v54;
        v37 = v51;
        v38 = v32;

        v35(partial apply for closure #4 in DOCProgressCollectionViewer.present(in:fromBarButtonItem:fromSourceView:popoverArrowDirection:), v33);

        v39 = *(v5 + v31);
        v40 = swift_allocObject();
        *(v40 + 16) = partial apply for closure #1 in DOCProgressCollectionViewer.present(in:fromBarButtonItem:fromSourceView:popoverArrowDirection:);
        *(v40 + 24) = v55;
        v41 = *((*v34 & *v39) + 0xC8);

        v42 = v39;
        v41(partial apply for closure #5 in DOCProgressCollectionViewer.present(in:fromBarButtonItem:fromSourceView:popoverArrowDirection:), v40);

        v43 = *(v5 + v31);
        v44 = *((*v34 & *v43) + 0xF0);
        v45 = v43;
        v44(a1, v5, v57);
        v11 = v56;
        goto LABEL_40;
      }

      ++v25;
      if (v28 == i)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v47 = Strong;
    DOCProgressCollectionViewer.updateButtons()();
  }

  else
  {
  }

  v48 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_adaptablePresenter);
  v49 = *((*MEMORY[0x277D85000] & *v48) + 0xF8);
  v45 = v48;
  v49(a1, v5, v57);
LABEL_40:

  swift_unknownObjectRelease();
  return v11 & 1;
}

BOOL closure #1 in DOCProgressCollectionViewer.present(in:fromBarButtonItem:fromSourceView:popoverArrowDirection:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    DOCProgressCollectionViewer.updateButtons()();
  }

  return Strong == 0;
}

uint64_t closure #5 in DOCProgressCollectionViewer.present(in:fromBarButtonItem:fromSourceView:popoverArrowDirection:)(void *a1, uint64_t (*a2)(id))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA1010;
  v5 = objc_opt_self();
  *(v4 + 32) = [v5 mediumDetent];
  *(v4 + 40) = [v5 largeDetent];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setDetents_];

  return a2([a1 setSelectedDetentIdentifier_]);
}

Swift::Void __swiftcall DOCProgressCollectionViewer.viewWillAppear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for DOCProgressCollectionViewer();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in DOCProgressCollectionViewer.viewWillAppear(_:);
  *(v5 + 24) = v4;
  v9[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_164;
  v6 = _Block_copy(v9);
  v7 = v1;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void closure #1 in DOCProgressCollectionViewer.viewWillAppear(_:)(char *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 layoutIfNeeded];

    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize;
    if ((a1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize] & 1) == 0)
    {
      a1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize] = 1;
      v5 = (*((*MEMORY[0x277D85000] & **&a1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController]) + 0x188))();
      [v5 fittingHeight];
      v7 = v6;

      DOCProgressCollectionViewer.listFittingHeight.setter(v7);
      a1[v4] = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCProgressCollectionViewer.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for DOCProgressCollectionViewer();
  v3 = objc_msgSendSuper2(&v9, sel_traitCollectionDidChange_, isa);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize;
  if ((v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize] = 1;
    v5 = v1;
    v6 = (*((*MEMORY[0x277D85000] & **&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController]) + 0x188))(v3);
    [v6 fittingHeight];
    v8 = v7;

    DOCProgressCollectionViewer.listFittingHeight.setter(v8);
    v5[v4] = 0;
  }
}

void DOCProgressCollectionViewer.isEditing.setter(char a1)
{
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController) setEditing:a1 & 1 animated:{objc_msgSend(objc_opt_self(), sel_areAnimationsEnabled)}];

  DOCProgressCollectionViewer.updateButtons()();
}

void DOCProgressCollectionViewer.updateButtons()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  if ([v12 systemItem] == 24)
  {
    v3 = *((*v2 & **&v0[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController]) + 0xE0);
    v4 = v12;
    v3(v12);
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_adaptablePresenter];
    v6 = *((*v2 & *v5) + 0x88);
    v7 = v5;
    v8 = v6();

    if (v8 == 2 || (v8 & 1) != 0)
    {
      v9 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController];
      if ([v1 isEditing])
      {
        v10 = 0;
      }

      else
      {
        v11 = v12;
        v10 = v12;
      }

      (*((*v2 & *v9) + 0xE0))(v10);
    }

    else
    {
      (*((*v2 & **&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController]) + 0xE0))(0);
    }
  }
}

id DOCProgressCollectionViewer.dismissButtonItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer____lazy_storage___dismissButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer____lazy_storage___dismissButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer____lazy_storage___dismissButtonItem);
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v6 = static UIBarButtonItem.doc_adaptableDismissButton(_:primaryAction:)(2, v5);

    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void DOCProgressCollectionViewer.dismissButtonItem.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer____lazy_storage___dismissButtonItem);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer____lazy_storage___dismissButtonItem) = a1;
}

void (*DOCProgressCollectionViewer.dismissButtonItem.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCProgressCollectionViewer.dismissButtonItem.getter();
  return DOCProgressCollectionViewer.dismissButtonItem.modify;
}

void DOCProgressCollectionViewer.dismissButtonItem.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer____lazy_storage___dismissButtonItem);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer____lazy_storage___dismissButtonItem) = v2;
}

Swift::Void __swiftcall DOCProgressCollectionViewer.toggleEditTapped()()
{
  v1 = [v0 isEditing] ^ 1;

  [v0 setEditing_];
}

void closure #1 in DOCProgressCollectionViewer.setupPreferredSizeManagement()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize;
    if ((Strong[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize] & 1) == 0)
    {
      Strong[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_isUpdatingPreferredContentSize] = 1;
      v2 = Strong;
      v3 = (*((*MEMORY[0x277D85000] & **&Strong[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController]) + 0x188))();
      [v3 fittingHeight];
      v5 = v4;

      DOCProgressCollectionViewer.listFittingHeight.setter(v5);
      Strong = v2;
      v2[v1] = 0;
    }
  }
}

void DOCProgressCollectionViewer.listFittingHeight.setter(double a1)
{
  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listFittingHeight];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listFittingHeight] = a1;
  if (v3 != a1)
  {
    swift_beginAccess();
    v4 = fmin(a1, 500.0);
    if (*&static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight > v4)
    {
      v5 = *&static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight;
    }

    else
    {
      v5 = v4;
    }

    if (v1[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_configuration + 2])
    {
      v6 = 0.7;
    }

    else
    {
      v6 = 0.3;
    }

    v7 = [objc_opt_self() mainScreen];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v21.origin.x = v9;
    v21.origin.y = v11;
    v21.size.width = v13;
    v21.size.height = v15;
    v16 = v6 * CGRectGetWidth(v21);
    v17 = [objc_opt_self() defaultMetrics];
    [v17 scaledValueForValue_];
    v19 = v18;

    if (v19 >= v16)
    {
      v19 = v16;
    }

    v20.receiver = v1;
    v20.super_class = type metadata accessor for DOCProgressCollectionViewer();
    objc_msgSendSuper2(&v20, sel_setPreferredContentSize_, v19, v5);
  }
}

void DOCProgressCollectionViewer.present(_:animated:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v9[4] = a3;
    v9[5] = a4;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9[3] = &block_descriptor_11_0;
    v7 = _Block_copy(v9);
  }

  else
  {
    v7 = 0;
  }

  v8 = type metadata accessor for DOCProgressCollectionViewer();
  v10.receiver = v4;
  v10.super_class = v8;
  objc_msgSendSuper2(&v10, sel_presentViewController_animated_completion_, a1, a2 & 1, v7);
  _Block_release(v7);
}

id DOCProgressCollectionViewer.modalPresentationStyle.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCProgressCollectionViewer();
  return objc_msgSendSuper2(&v2, sel_modalPresentationStyle);
}

id DOCProgressCollectionViewer.modalPresentationStyle.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCProgressCollectionViewer();
  return objc_msgSendSuper2(&v4, sel_setModalPresentationStyle_, a1);
}

id DOCProgressCollectionViewer.preferredContentSize.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCProgressCollectionViewer();
  return objc_msgSendSuper2(&v2, sel_preferredContentSize);
}

id DOCProgressCollectionViewer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCProgressCollectionViewer.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

void DOCProgressCollectionViewer.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listFittingHeightKVO);
}

id DOCProgressCollectionViewer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCProgressCollectionViewer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type DOCProgressCollectionViewer.Options and conformance DOCProgressCollectionViewer.Options()
{
  result = lazy protocol witness table cache variable for type DOCProgressCollectionViewer.Options and conformance DOCProgressCollectionViewer.Options;
  if (!lazy protocol witness table cache variable for type DOCProgressCollectionViewer.Options and conformance DOCProgressCollectionViewer.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCProgressCollectionViewer.Options and conformance DOCProgressCollectionViewer.Options);
  }

  return result;
}

uint64_t partial apply for closure #4 in DOCProgressCollectionViewer.present(in:fromBarButtonItem:fromSourceView:popoverArrowDirection:)(void *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  [a1 setBarButtonItem_];
  [a1 setSourceView_];
  return v5([a1 setPermittedArrowDirections_]);
}

id one-time initialization function for itemManager()
{
  result = [objc_opt_self() defaultManager];
  static LocationOptionsProvider.itemManager = result;
  return result;
}

{
  result = [objc_opt_self() defaultManager];
  static CompressItemsIntent.itemManager = result;
  return result;
}

uint64_t LocationOptionsProvider.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  static UTType.folder.getter();
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  return FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(v0, 1);
}

uint64_t LocationOptionsProvider.init(defaultLocation:supportedContentTypes:shouldExcludeTrashedItems:)(uint64_t a1, uint64_t a2, int a3)
{
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  return FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(a2, a3);
}

uint64_t LocationOptionsProvider.results()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CreateFolderTargetProvider.results();

  return specialized LocationOptionsProvider.results()();
}

uint64_t LocationOptionsProvider.getFileEntity(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = LocationOptionsProvider.getFileEntity(for:);

  return specialized LocationOptionsProvider.getItem(for:)(a2);
}

uint64_t LocationOptionsProvider.getFileEntity(for:)(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](LocationOptionsProvider.getFileEntity(for:), 0, 0);
}

uint64_t LocationOptionsProvider.defaultResult()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = CreateFolderTargetProvider.getFileEntity(for:);

  return specialized LocationOptionsProvider.getItem(for:)(a3);
}

uint64_t LocationOptionsProvider.getItem(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static FolderNodeObserver.getChildrenNodes(in:);

  return specialized LocationOptionsProvider.getItem(for:)(a1);
}

void closure #1 in LocationOptionsProvider.getItem(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5Error_pGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - v5;
  if (one-time initialization token for itemManager != -1)
  {
    swift_once();
  }

  v7 = static LocationOptionsProvider.itemManager;
  URL._bridgeToObjectiveC()(&unk_27EEF2000);
  v9 = v8;
  (*(v3 + 16))(v6, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v6, v2);
  aBlock[4] = partial apply for closure #1 in closure #1 in CreateFolderTargetProvider.getItem(for:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_165;
  v12 = _Block_copy(aBlock);

  [v7 fetchItemForURL:v9 completionHandler:v12];
  _Block_release(v12);
}

uint64_t protocol witness for DynamicOptionsProvider.results() in conformance LocationOptionsProvider(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for SearchableDynamicOptionsProvider.results(for:) in conformance CreateFolderTargetProvider;

  return specialized LocationOptionsProvider.results()();
}

uint64_t protocol witness for DynamicOptionsProvider.defaultResult() in conformance LocationOptionsProvider(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *(v1 + 8);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = CreateFolderTargetProvider.getFileEntity(for:);

  return specialized LocationOptionsProvider.getItem(for:)(v3);
}

uint64_t LocationOptionsProvider.results(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for DSFolderIconCustomizationApplicator.fetchFolderIconConfig() in conformance DOCFolderIconCustomizationApplicator;

  return FileEntitySpotlight.Source.fetchEntities(matching:)(a1, a2);
}

uint64_t protocol witness for SearchableDynamicOptionsProvider.results(for:) in conformance LocationOptionsProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);

  return FileEntitySpotlight.Source.fetchEntities(matching:)(a2, a3);
}

uint64_t specialized LocationOptionsProvider.getItem(for:)(uint64_t a1)
{
  v1[8] = a1;
  v3 = type metadata accessor for URL();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v4 = swift_task_alloc();
  v1[11] = v4;
  type metadata accessor for DOCNamedLocationResolver(0);
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = specialized LocationOptionsProvider.getItem(for:);

  return static DOCNamedLocationResolver.resolve(_:)(v4, a1);
}

uint64_t specialized LocationOptionsProvider.getItem(for:)()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = specialized LocationOptionsProvider.getItem(for:);
  }

  else
  {
    v2 = specialized LocationOptionsProvider.getItem(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[14] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
  *v3 = v0;
  v3[1] = specialized LocationOptionsProvider.getItem(for:);

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0x286D657449746567, 0xED0000293A726F66, partial apply for closure #1 in LocationOptionsProvider.getItem(for:), v2, v4);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = specialized LocationOptionsProvider.getItem(for:);
  }

  else
  {

    v2 = specialized LocationOptionsProvider.getItem(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v2 = v0[1];

  return v2(v1);
}

{
  v19 = v0;
  v1 = v0[13];
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.AppIntents);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v4, v5))
  {

LABEL_18:

    v17 = v0[1];

    return v17(0);
  }

  v6 = 0xE900000000000073;
  v7 = v0[8];
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v18 = v9;
  *v8 = 136315394;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v10 = 0x64616F6C6E776F44;
      goto LABEL_17;
    }

    if (v7 == 3)
    {
      v6 = 0xEB00000000657669;
      v10 = 0x724464756F6C4369;
      goto LABEL_17;
    }
  }

  else
  {
    if (!v7)
    {
      v10 = 0x746E656D75636F44;
      goto LABEL_17;
    }

    if (v7 == 1)
    {
      v6 = 0xE700000000000000;
      v10 = 0x706F746B736544;
LABEL_17:
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v6, &v18);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_2493AC000, v4, v5, "Unable to resolve %s with error: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v9, -1, -1);
      MEMORY[0x24C1FE850](v8, -1, -1);

      goto LABEL_18;
    }
  }

  v11 = v0[8];
  type metadata accessor for DOCNamedLocation(0);
  v0[5] = v11;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

{
  v22 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  v4 = v0[16];
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.AppIntents);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v7, v8))
  {

LABEL_18:

    v20 = v0[1];

    return v20(0);
  }

  v9 = 0xE900000000000073;
  v10 = v0[8];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v21 = v12;
  *v11 = 136315394;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v13 = 0x64616F6C6E776F44;
      goto LABEL_17;
    }

    if (v10 == 3)
    {
      v9 = 0xEB00000000657669;
      v13 = 0x724464756F6C4369;
      goto LABEL_17;
    }
  }

  else
  {
    if (!v10)
    {
      v13 = 0x746E656D75636F44;
      goto LABEL_17;
    }

    if (v10 == 1)
    {
      v9 = 0xE700000000000000;
      v13 = 0x706F746B736544;
LABEL_17:
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v9, &v21);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_2493AC000, v7, v8, "Unable to resolve %s with error: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v12, -1, -1);
      MEMORY[0x24C1FE850](v11, -1, -1);

      goto LABEL_18;
    }
  }

  v14 = v0[8];
  type metadata accessor for DOCNamedLocation(0);
  v0[5] = v14;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

uint64_t specialized LocationOptionsProvider.results()()
{
  v1 = type metadata accessor for FINodeEntity();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd) - 8);
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized LocationOptionsProvider.results(), 0, 0);
}

{
  swift_beginAccess();
  v1 = static DOCNamedLocation.allCases;
  v0[12] = static DOCNamedLocation.allCases;
  v2 = v1[2];
  v0[13] = v2;

  if (v2)
  {
    v4 = MEMORY[0x277D84F90];
    v0[14] = 0;
    v0[15] = v4;
    v5 = *(v3 + 32);
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = specialized LocationOptionsProvider.results();

    return specialized LocationOptionsProvider.getItem(for:)(v5);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
    if (v9)
    {
      v10 = v0[8];
      v11 = v0[6];
      v12 = MEMORY[0x277D84F90] + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v13 = *(v10 + 72);
      do
      {
        v14 = v0[11];
        v15 = v0[9];
        v16 = v0[5];
        outlined init with copy of FINodeEntity?(v12, v14);
        outlined init with take of FINodeEntity?(v14, v15);
        v17 = (*(v11 + 48))(v15, 1, v16);
        v18 = v0[9];
        if (v17 == 1)
        {
          outlined destroy of FINodeEntity?(v18);
        }

        else
        {
          outlined init with take of FINodeEntity(v18, v0[7]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
          }

          v20 = v8[2];
          v19 = v8[3];
          if (v20 >= v19 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v8);
          }

          v21 = v0[7];
          v8[2] = v20 + 1;
          outlined init with take of FINodeEntity(v21, v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20);
        }

        v12 += v13;
        --v9;
      }

      while (v9);
    }

    v22 = v0[1];

    return v22(v8);
  }
}

{
  v1 = v0[17];
  if (v1)
  {
    FINodeEntity.init(item:)(v1, v0[10]);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  (*(v0[6] + 56))(v0[10], v2, 1, v0[5]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v0[15];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v0[15]);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v5 > 1, v6 + 1, 1, v4);
  }

  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[8];
  v10 = v0[14] + 1;
  v4[2] = v6 + 1;
  outlined init with take of FINodeEntity?(v8, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
  if (v10 == v7)
  {

    v11 = v4[2];
    if (v11)
    {
      v12 = v0[8];
      v13 = v0[6];
      v14 = v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v15 = *(v12 + 72);
      v16 = MEMORY[0x277D84F90];
      do
      {
        v17 = v0[11];
        v18 = v0[9];
        v19 = v0[5];
        outlined init with copy of FINodeEntity?(v14, v17);
        outlined init with take of FINodeEntity?(v17, v18);
        v20 = (*(v13 + 48))(v18, 1, v19);
        v21 = v0[9];
        if (v20 == 1)
        {
          outlined destroy of FINodeEntity?(v21);
        }

        else
        {
          outlined init with take of FINodeEntity(v21, v0[7]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
          }

          v23 = v16[2];
          v22 = v16[3];
          if (v23 >= v22 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v16);
          }

          v24 = v0[7];
          v16[2] = v23 + 1;
          outlined init with take of FINodeEntity(v24, v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23);
        }

        v14 += v15;
        --v11;
      }

      while (v11);
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    v29 = v0[1];

    return v29(v16);
  }

  else
  {
    v25 = v0[14] + 1;
    v0[14] = v25;
    v0[15] = v4;
    v26 = *(v0[12] + 8 * v25 + 32);
    v27 = swift_task_alloc();
    v0[16] = v27;
    *v27 = v0;
    v27[1] = specialized LocationOptionsProvider.results();

    return specialized LocationOptionsProvider.getItem(for:)(v26);
  }
}

uint64_t specialized LocationOptionsProvider.results()(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return MEMORY[0x2822009F8](specialized LocationOptionsProvider.results(), 0, 0);
}

uint64_t outlined destroy of FINodeEntity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DOCSidebarItem.== infix(_:_:)()
{
  v0 = DOCSidebarItem.hashComparableValue.getter();
  v2 = v1;
  if (v0 == DOCSidebarItem.hashComparableValue.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

id DOCDocumentSource.representedLocation.getter()
{
  v1 = [v0 identifier];
  v2 = [v0 displayName];
  if (!v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = MEMORY[0x24C1FAD20](v3);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v1 title:v2];

  objc_opt_self();
  [v4 setIsFPV2_];
  v5 = [v0 promptText];
  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x24C1FAD20](v6);
  }

  [v4 setPromptText_];

  return v4;
}

uint64_t DOCDocumentSource.isTrashSource.getter()
{
  return DOCDocumentSource.isTrashSource.getter();
}

{
  v1 = [v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

void specialized DOCDocumentSource.setHidden(hidden:completion:)(char a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a2;
    v7 = [v5 pickerExtension];
    v8 = [v5 providerDomain];
    v9 = [v5 isExtensionOptedIn];
    if (a1)
    {
      [v5 setIsExtensionOptedIn_];
      aBlock = 0;
      v10 = [v7 attemptOptOut_];
      v11 = aBlock;
      if ((v10 & 1) == 0)
      {
LABEL_4:
        v12 = v11;
        v13 = _convertNSErrorToError(_:)();

        swift_willThrow();
        [v5 setIsExtensionOptedIn_];

        return;
      }
    }

    else
    {
      [v5 setIsExtensionOptedIn_];
      aBlock = 0;
      v25 = [v7 attemptOptIn_];
      v11 = aBlock;
      if (!v25)
      {
        goto LABEL_4;
      }
    }

    v26 = v11;
    if (v8)
    {
      v27 = [v5 isExtensionOptedIn];
      v28 = swift_allocObject();
      v28[2] = v8;
      v28[3] = DOCGridLayout.specIconWidth.modify;
      v28[4] = 0;
      v28[5] = v7;
      v39 = closure #1 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
      v40 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v38 = &block_descriptor_133_0;
      v29 = _Block_copy(&aBlock);
      v30 = v8;
      v31 = v7;

      [v30 setEnabled:v27 completionHandler:v29];

      _Block_release(v29);
    }

    else
    {
      [v7 optedIn];
    }
  }

  else
  {
    type metadata accessor for DOCFileProviderSource();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      v16 = *(v14 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v16)
      {
        v17 = a2;
        v18 = v16;
        if ((FPProviderDomain.shouldUseDSEnumeration.getter() & 1) != 0 && [v18 isiCloudDriveProvider])
        {
          v19 = MEMORY[0x277D85000];
          v20 = (*((*MEMORY[0x277D85000] & *v15) + 0xF8))();
          (*((*v19 & *v15) + 0x100))((a1 & 1) == 0);
          v21 = swift_allocObject();
          *(v21 + 16) = v18;
          *(v21 + 24) = v15;
          *(v21 + 32) = v20;
          *(v21 + 40) = DOCGridLayout.specIconWidth.modify;
          *(v21 + 48) = 0;
          v39 = closure #2 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
          v40 = v21;
          aBlock = MEMORY[0x277D85DD0];
          v36 = 1107296256;
          v37 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
          v38 = &block_descriptor_126_0;
          v22 = _Block_copy(&aBlock);
          v23 = v17;
          v24 = v18;

          [v24 setHiddenByUser:a1 & 1 completionHandler:v22];
        }

        else
        {
          v32 = MEMORY[0x277D85000];
          v33 = (*((*MEMORY[0x277D85000] & *v15) + 0xF8))();
          (*((*v32 & *v15) + 0x100))((a1 & 1) == 0);
          v34 = swift_allocObject();
          *(v34 + 16) = v18;
          *(v34 + 24) = v15;
          *(v34 + 32) = v33;
          *(v34 + 40) = DOCGridLayout.specIconWidth.modify;
          *(v34 + 48) = 0;
          v39 = closure #3 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
          v40 = v34;
          aBlock = MEMORY[0x277D85DD0];
          v36 = 1107296256;
          v37 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
          v38 = &block_descriptor_119_1;
          v22 = _Block_copy(&aBlock);
          v23 = v17;
          v24 = v18;

          [v24 setEnabled:(a1 & 1) == 0 completionHandler:v22];
        }

        _Block_release(v22);
      }
    }
  }
}

void DOCDocumentSource.setHidden(hidden:completion:)(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v45 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = v4;
    v11 = [v9 pickerExtension];
    v12 = [v9 providerDomain];
    v13 = [v9 isExtensionOptedIn];
    if (a1)
    {
      [v9 setIsExtensionOptedIn_];
      aBlock = 0;
      v14 = [v11 attemptOptOut_];
      v15 = aBlock;
      if ((v14 & 1) == 0)
      {
LABEL_4:
        v16 = v15;
        v17 = _convertNSErrorToError(_:)();

        swift_willThrow();
        [v9 setIsExtensionOptedIn_];
        a2(0);

        return;
      }
    }

    else
    {
      [v9 setIsExtensionOptedIn_];
      aBlock = 0;
      v29 = [v11 attemptOptIn_];
      v15 = aBlock;
      if (!v29)
      {
        goto LABEL_4;
      }
    }

    v30 = v15;
    if (v12)
    {
      v31 = [v9 isExtensionOptedIn];
      v32 = swift_allocObject();
      v32[2] = v12;
      v32[3] = a2;
      v32[4] = a3;
      v32[5] = v11;
      v43 = partial apply for closure #1 in DOCDocumentSource.setHidden(hidden:completion:);
      v44 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v42 = &block_descriptor_12_7;
      v33 = _Block_copy(&aBlock);
      v34 = v12;

      v35 = v11;

      [v34 setEnabled:v31 completionHandler:v33];

      _Block_release(v33);
    }

    else
    {
      a2([v11 optedIn] ^ 1);
    }
  }

  else
  {
    type metadata accessor for DOCFileProviderSource();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      v20 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v20)
      {
        v21 = v3;
        v22 = v20;
        if ((FPProviderDomain.shouldUseDSEnumeration.getter() & 1) != 0 && [v22 isiCloudDriveProvider])
        {
          v23 = MEMORY[0x277D85000];
          v24 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
          (*((*v23 & *v19) + 0x100))((a1 & 1) == 0);
          v25 = swift_allocObject();
          *(v25 + 16) = v22;
          *(v25 + 24) = v19;
          *(v25 + 32) = v24;
          *(v25 + 40) = a2;
          *(v25 + 48) = a3;
          v43 = partial apply for closure #2 in DOCDocumentSource.setHidden(hidden:completion:);
          v44 = v25;
          aBlock = MEMORY[0x277D85DD0];
          v40 = 1107296256;
          v41 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
          v42 = &block_descriptor_6_8;
          v26 = _Block_copy(&aBlock);
          v27 = v21;

          v28 = v22;

          [v28 setHiddenByUser:a1 & 1 completionHandler:v26];
        }

        else
        {
          v36 = MEMORY[0x277D85000];
          v37 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
          (*((*v36 & *v19) + 0x100))((a1 & 1) == 0);
          v38 = swift_allocObject();
          *(v38 + 16) = v22;
          *(v38 + 24) = v19;
          *(v38 + 32) = v37;
          *(v38 + 40) = a2;
          *(v38 + 48) = a3;
          v43 = partial apply for closure #3 in DOCDocumentSource.setHidden(hidden:completion:);
          v44 = v38;
          aBlock = MEMORY[0x277D85DD0];
          v40 = 1107296256;
          v41 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
          v42 = &block_descriptor_166;
          v26 = _Block_copy(&aBlock);
          v27 = v21;

          v28 = v22;

          [v28 setEnabled:(a1 & 1) == 0 completionHandler:v26];
        }

        _Block_release(v26);
      }
    }
  }
}

id DOCSidebarItem.representedSource.getter()
{
  if (*(v0 + 40) != 1)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id DOCSidebarItem.representedTag.getter()
{
  if (*(v0 + 40) != 2)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id DOCSidebarItem.sidebarStaticIcon.getter()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  if (v2 <= 3)
  {
    if (v2 - 2 >= 2 && v2 != 0)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (v2 == 4)
  {
LABEL_6:
    type metadata accessor for DOCSourceListInterface_Default();
    inited = swift_initStaticObject();
    v9 = [inited iconForSource_];
    [inited iconForSourceRequireHierarchicalColors_];
    return v9;
  }

  if (v2 == 5)
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x24C1FAD20](0x6C616E7265747865, 0xED00006576697264);
    v6 = [v4 _systemImageNamed_withConfiguration_];

    if (!v6)
    {
      return 0;
    }

    return v6;
  }

  else
  {
    if (v0[3] | v0[4] | v1 | v0[2] | v0[1])
    {
      type metadata accessor for DOCSourceListInterface_Default();
      v7 = [swift_initStaticObject() iconForShared];
    }

    else
    {
      type metadata accessor for DOCSourceListInterface_Default();
      v7 = [swift_initStaticObject() iconForRecents];
    }

    return v7;
  }
}

id DOCSidebarItem.representedLocation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;
  v8 = *(v6 + 40);
  if (v8 <= 2)
  {
    if (!*(v6 + 40))
    {
      v12 = [*v6 providerDomainID];
      v9 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v12 node:v7];

      [v9 setIsFPV2_];
      return v9;
    }

    if (v8 == 1)
    {
      return DOCDocumentSource.representedLocation.getter();
    }

    else
    {
      v13 = objc_allocWithZone(MEMORY[0x277D05EA8]);

      return [v13 initWithTaggedItemsSourceRepresentedTag_];
    }
  }

  else
  {
    if (*(v6 + 40) <= 4u)
    {
      if (v8 == 3)
      {
        return DOCSidebarItem.representedLocation.getter(a1, a2, a3, a4, a5, a6);
      }

      v14 = [*v6 identifier];
      v15 = [v7 displayName];
      if (!v15)
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = MEMORY[0x24C1FAD20](v16);
      }

      v9 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v14 title:v15];

      [v9 setIsFPV2_];
      v17 = [v7 promptText];
      if (!v17)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = MEMORY[0x24C1FAD20](v18);
      }

      [v9 setPromptText_];

      return v9;
    }

    if (v8 == 5)
    {
      v11 = [objc_opt_self() emptyLocation];
    }

    else if (*(v6 + 24) | *(v6 + 32) | v7 | *(v6 + 16) | *(v6 + 8))
    {
      v11 = [objc_opt_self() sharedItemsLocation];
    }

    else
    {
      v11 = [objc_opt_self() recentDocumentsLocation];
    }

    return v11;
  }
}

uint64_t DOCSidebarItem.localizedTitle.getter()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  if (v2 <= 2)
  {
    if (v2 != 1)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (*(v0 + 40) <= 4u)
  {
    if (v2 == 3)
    {
LABEL_4:
      v3 = [*v0 displayName];
LABEL_11:
      v4 = v3;
LABEL_12:
      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v1;
    }

LABEL_10:
    v3 = [*v0 providerName];
    goto LABEL_11;
  }

  if (v2 != 5)
  {
    if (*(v0 + 8) | v1 | *(v0 + 32) | *(v0 + 24) | *(v0 + 16))
    {
      v6 = [objc_opt_self() sharedItemsLocation];
    }

    else
    {
      v6 = [objc_opt_self() recentDocumentsLocation];
    }

    v4 = [v6 displayName];

    if (!v4)
    {
      return 0;
    }

    goto LABEL_12;
  }

  return v1;
}

id DOCSidebarItem.localizedSubtitle.getter()
{
  if (*(v0 + 40) != 1)
  {
    return 0;
  }

  result = [*v0 domainName];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  return result;
}

uint64_t DOCSidebarItem.isEnabled(sourceVisibilityController:)()
{
  result = 2;
  if (*(v0 + 40) <= 1u)
  {
    if (*(v0 + 40))
    {
      v2 = *v0;
      result = [*v0 status];
      if (result != 2)
      {
        if (result == 1)
        {
          DOCSourceVisibilityController.visitedSourceIdentifiers.getter();
          v4 = v3;
          v5 = [v2 identifier];
          v6 = specialized Set.contains(_:)(v5, v4);

          if (v6)
          {
            return 0;
          }

          else
          {
            result = [v2 status];
            if (result)
            {
              return [v2 status] != 2;
            }
          }
        }

        else
        {
          return result == 0;
        }
      }
    }
  }

  return result;
}

id DOCSidebarItem.isRepresentingFolder.getter()
{
  v1 = *(v0 + 40);
  if (v1 != 3 && v1 != 0)
  {
    return 0;
  }

  v3 = *v0;
  v4 = [v3 isFolder];

  return v4;
}

BOOL DOCSidebarItem.isRepresentingUSB.getter()
{
  result = 0;
  if (*(v0 + 40) == 1)
  {
    type metadata accessor for DOCExternalDeviceSource();
    if (swift_dynamicCastClass())
    {
      return 1;
    }
  }

  return result;
}

uint64_t DOCSidebarItem.syncStateDomain.getter()
{
  if (*(v0 + 40) != 1)
  {
    return 0;
  }

  type metadata accessor for DOCFileProviderSource();
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    v3 = v2;
    return v2;
  }

  return result;
}

void *DOCSidebarItem.removableMediaStateDomain.getter()
{
  if (*(v0 + 40) != 4)
  {
    return 0;
  }

  v1 = *(*v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  v2 = v1;
  return v1;
}

uint64_t DOCSidebarItem.movable.getter()
{
  if (*(v0 + 40) > 2u)
  {
    if (*(v0 + 40) <= 4u)
    {
      v1 = 0;
      return v1 & 1;
    }

LABEL_9:
    v1 = 0;
    return v1 & 1;
  }

  if (*(v0 + 40))
  {
    v2 = *(v0 + 40) == 1;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    v1 = 1;
    return v1 & 1;
  }

  v4 = *v0;
  v5 = [*v0 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {

    goto LABEL_9;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v1 = 0;
  if ((v11 & 1) == 0)
  {
    v12 = [v4 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {

      v1 = 0;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v1 = v17 ^ 1;
    }
  }

  return v1 & 1;
}

uint64_t DOCSidebarItem.canOpenInNewWindow.getter()
{
  v1 = *(v0 + 40);
  if (v1 > 3)
  {
    if (v1 == 4 || v1 == 5)
    {
      goto LABEL_13;
    }

LABEL_14:
    v10 = 1;
    return v10 & 1;
  }

  if (v1 - 2 < 2 || v1 == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for DOCFileProviderSource();
  v3 = swift_dynamicCastClass();
  if (!v3 || (v4 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) == 0)
  {
LABEL_13:
    v10 = 0;
    return v10 & 1;
  }

  outlined init with copy of DOCSidebarItem(v0, &v12);
  v5 = one-time initialization token for disableWorkaroundFor84499894_and_84500099;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = disableWorkaroundFor84499894_and_84500099;
  v8 = [v6 identifier];
  v9 = DOCProviderDomainIDIsSharedServerDomainID();

  outlined destroy of DOCSidebarItem(v0);
  v10 = v9 ^ 1 | v7;
  return v10 & 1;
}

uint64_t DOCSidebarItem.canRemoveFromSidebar(sourceVisibilityController:)()
{
  v1 = *(v0 + 40);
  if (v1 == 3)
  {
    return 1;
  }

  if (v1 != 1)
  {
    return v1 == 0;
  }

  v3 = *v0;
  v4 = [*v0 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
    goto LABEL_11;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    return 0;
  }

  v4 = [v3 identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
LABEL_11:

    return 0;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    return 0;
  }

  v16 = [v3 status];
  if (!v16)
  {
    return 1;
  }

  if (v16 != 1)
  {
    return 0;
  }

  DOCSourceVisibilityController.visitedSourceIdentifiers.getter();
  v18 = v17;
  v19 = [v3 identifier];
  v20 = specialized Set.contains(_:)(v19, v18);

  if (v20)
  {
    return 0;
  }

  result = [v3 status];
  if (result)
  {
    return [v3 status] != 2;
  }

  return result;
}

id DOCSidebarItem.canEject.getter()
{
  if (*(v0 + 40) != 1)
  {
    return 0;
  }

  type metadata accessor for DOCFileProviderSource();
  result = swift_dynamicCastClass();
  if (result)
  {
    return [result isEjectable];
  }

  return result;
}

uint64_t DOCSidebarItem.canErase.getter()
{
  if (*(v0 + 40) != 1)
  {
    return 0;
  }

  v1 = *v0;
  type metadata accessor for DOCFileProviderSource();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = *((*MEMORY[0x277D85000] & *v2) + 0x130);
  v4 = v1;
  v5 = v0;
  v6 = v3(v4);
  outlined destroy of DOCSidebarItem(v5);
  return v6 & 1;
}

uint64_t DOCSidebarItem.canDeleteAll.getter()
{
  if (*(v0 + 40) == 1)
  {
    v1 = [*v0 identifier];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t DOCSidebarItem.canRename.getter()
{
  result = 0;
  v2 = *v0;
  v3 = *(v0 + 40);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return 1;
    }

    if (v3 != 3)
    {
      return result;
    }

LABEL_8:
    v8 = [objc_opt_self() defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249BA0290;
    *(v9 + 32) = v2;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v10 = v2;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v8 eligibleActionsForItems_];

    type metadata accessor for FPAction(0);
    lazy protocol witness table accessor for type FPAction and conformance FPAction();
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v8) = specialized Set.contains(_:)(*MEMORY[0x277CC6040], v13);

    return v8 & 1;
  }

  if (!*(v0 + 40))
  {
    goto LABEL_8;
  }

  if (v3 == 1)
  {
    type metadata accessor for DOCFileProviderSource();
    result = swift_dynamicCastClass();
    if (result)
    {
      v4 = *((*MEMORY[0x277D85000] & *result) + 0x128);
      v5 = v2;
      v6 = v0;
      v7 = v4(v5);
      outlined destroy of DOCSidebarItem(v6);
      return v7 & 1;
    }
  }

  return result;
}

uint64_t DOCSidebarItem.canGetInfo.getter()
{
  v1 = *(v0 + 40);
  if (v1 == 3)
  {
    v2 = 1;
  }

  else if (v1 == 1)
  {
    v3 = *v0;
    v4 = [*v0 identifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      v2 = 0;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = 0;
      if ((v10 & 1) == 0)
      {
        v11 = [v3 identifier];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
        if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
        {

          v2 = 0;
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v2 = v17 ^ 1;
        }
      }
    }
  }

  else
  {
    v2 = v1 == 0;
  }

  return v2 & 1;
}

void DOCSidebarItem.setHidden(hidden:completion:)(char a1, void (*a2)(void), uint64_t a3)
{
  if (*(v3 + 40) == 1)
  {
    DOCDocumentSource.setHidden(hidden:completion:)(a1 & 1, a2, a3);
  }

  else
  {
    a2(0);
  }
}

void DOCSidebarItem.delete(on:completion:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = *v3;
  v7 = *(v3 + 40);
  if (v7 == 3)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    if (one-time initialization token for sharedManager != -1)
    {
      v13 = *(v3 + 8);
      v14 = v12;
      swift_once();
      v12 = v14;
      v11 = v13;
    }

    DOCSmartFolderManager.delete(hotFolder:for:)(v6, v11, v12);
  }

  else
  {
    if (v7 == 2)
    {
      DOCTag.delete(on:completion:)(a1, a2, a3);
      return;
    }

    if (!*(v3 + 40))
    {
      v8 = [objc_opt_self() sharedManager];
      v9 = swift_allocObject();
      *(v9 + 16) = a2;
      *(v9 + 24) = a3;
      v15[4] = partial apply for closure #1 in FPItem.delete(on:completion:);
      v15[5] = v9;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 1107296256;
      v15[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v15[3] = &block_descriptor_18_3;
      v10 = _Block_copy(v15);

      [v8 removeFavorite:v6 completion:v10];
      _Block_release(v10);

      return;
    }
  }

  a2(1);
}

id DOCSidebarItem.favoritedItem.getter()
{
  if (*(v0 + 40))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id DOCDocumentSource.error.getter()
{
  v1 = [v0 searching_fileProviderDomain];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 error];

  return v3;
}

uint64_t DOCSidebarItem.allowsSpringLoading.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = *(v0 + 40);
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      v7 = [*v0 identifier];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
      if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
      {

        goto LABEL_20;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
LABEL_20:
        v1 = 0;
        return v1 & 1;
      }

      v14 = [v2 identifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {

        v1 = 0;
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v1 = v20 ^ 1;
      }
    }

    else if (v3 != 2)
    {
LABEL_10:
      v1 = 1;
    }
  }

  else if (v3 - 4 >= 2)
  {
    if (v3 != 6)
    {
      goto LABEL_10;
    }

    v5 = *(v0 + 8);
    v4 = *(v0 + 16);
    v6 = *(v0 + 24) | *(v0 + 32);
    if (v6 | v2 | v4 | v5)
    {
      if (v2 != 1 || v6 | v4 | v5)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_20;
  }

  return v1 & 1;
}

unint64_t DOCSidebarItem.debugDescription.getter()
{
  v0 = DOCSidebarItem.localizedTitle.getter();
  MEMORY[0x24C1FAEA0](v0);

  return 0xD000000000000011;
}

unint64_t DOCSidebarItem.hashComparableValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  if (v2 <= 2)
  {
    if (!*(v0 + 40))
    {
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v3 = [v1 identifier];
    }

    else
    {
      v3 = [v1 displayName];
    }

    v21 = v3;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v22;
  }

  else
  {
    if (*(v0 + 40) <= 4u)
    {
      if (v2 != 3)
      {
        v24 = [v1 identifier];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = v25;

        MEMORY[0x24C1FAEA0](3092271, 0xE300000000000000);

        MEMORY[0x24C1FAEA0](0xD000000000000012, 0x8000000249BFE300);
        goto LABEL_14;
      }

LABEL_10:
      v6 = *v0;
      v7 = [v1 itemID];
      v8 = [v7 providerID];

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      MEMORY[0x24C1FAEA0](3092271, 0xE300000000000000);

      v10 = v9;
      v11 = [v6 itemID];
      v12 = [v11 domainIdentifier];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      MEMORY[0x24C1FAEA0](v13, v15);

      MEMORY[0x24C1FAEA0](3092271, 0xE300000000000000);

      v16 = [v6 itemID];
      v17 = [v16 identifier];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v26 = v10;

      MEMORY[0x24C1FAEA0](v18, v20);

LABEL_14:

      return v26;
    }

    v4 = *(v0 + 8);
    if (v2 == 5)
    {
      v5 = *v0;
      _StringGuts.grow(_:)(18);

      v26 = 0xD000000000000010;
      MEMORY[0x24C1FAEA0](v5, v4);
      return v26;
    }

    if (v4 | v1 | *(v0 + 32) | *(v0 + 24) | *(v0 + 16))
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD000000000000011;
    }
  }
}

uint64_t DOCSidebarItem.hash(into:)()
{
  DOCSidebarItem.hashComparableValue.getter();
  String.hash(into:)();
}

uint64_t DOCTag.delete(on:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static DOCTagManager.shared;
  v15 = v4;
  v16 = 0;
  v17 = 0;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a1;
  v11 = *((*MEMORY[0x277D85000] & *v8) + 0x60);
  v12 = v4;

  v13 = a1;
  v11(&v15, partial apply for closure #1 in DOCTag.delete(on:completion:), v10);

  outlined consume of DOCTagManagerAction(v15, v16, v17);
}

Swift::Int DOCSidebarItem.hashValue.getter()
{
  Hasher.init(_seed:)();
  DOCSidebarItem.hashComparableValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCSidebarItem()
{
  Hasher.init(_seed:)();
  DOCSidebarItem.hashComparableValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCSidebarItem()
{
  DOCSidebarItem.hashComparableValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCSidebarItem()
{
  Hasher.init(_seed:)();
  DOCSidebarItem.hashComparableValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DOCSidebarItem()
{
  v0 = DOCSidebarItem.localizedTitle.getter();
  MEMORY[0x24C1FAEA0](v0);

  return 0xD000000000000011;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCSidebarItem()
{
  v0 = DOCSidebarItem.hashComparableValue.getter();
  v2 = v1;
  if (v0 == DOCSidebarItem.hashComparableValue.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t closure #1 in FPItem.delete(on:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in DOCDocumentSource.setHidden(hidden:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v11 = a1;
  v12 = a2;

  v13 = a5;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in DOCDocumentSource.setHidden(hidden:completion:)(id a1, void *a2, uint64_t (*a3)(uint64_t), int a4, id a5)
{
  if (a1)
  {
    v9 = a1;
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.DocumentManager);
    v11 = a1;
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2112;
      v17 = a1;
      v18 = v12;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v19;
      v16[1] = v19;
      _os_log_impl(&dword_2493AC000, v13, v14, "Failed to enable the corresponding provider domain: %@ error: %@", v15, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v16, -1, -1);
      MEMORY[0x24C1FE850](v15, -1, -1);
    }

    else
    {
    }
  }

  v20 = [a5 optedIn] ^ 1;
  if (a1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  return a3(v21);
}

uint64_t closure #1 in closure #2 in DOCDocumentSource.setHidden(hidden:completion:)(id a1, void *a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a1)
  {
    v10 = a1;
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.DocumentManager);
    v12 = a1;
    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v25 = a4;
      v16 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v16 = 138412546;
      *(v16 + 4) = v13;
      *v23 = v13;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v26 = a5;
      v17 = v13;
      v18 = Error.localizedDescription.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v27);

      *(v16 + 14) = v20;
      a5 = v26;
      _os_log_impl(&dword_2493AC000, v14, v15, "Failed to set the provider: %@ hiddenByUserFlag Error: %s", v16, 0x16u);
      outlined destroy of NSObject?(v23);
      MEMORY[0x24C1FE850](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x24C1FE850](v24, -1, -1);
      v21 = v16;
      a4 = v25;
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *a3) + 0x100))(a4);
  }

  return a5(a1 != 0);
}

uint64_t closure #2 in DOCDocumentSource.setHidden(hidden:completion:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  v13 = a1;
  v14 = a2;
  v15 = a3;

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #3 in DOCDocumentSource.setHidden(hidden:completion:)(id a1, void *a2, void *a3, uint64_t a4, uint64_t (*a5)(BOOL))
{
  if (a1)
  {
    v10 = a1;
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.DocumentManager);
    v12 = a1;
    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v13;
      *v17 = v13;
      *(v16 + 12) = 2112;
      v18 = a1;
      v19 = v13;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      v17[1] = v20;
      _os_log_impl(&dword_2493AC000, v14, v15, "Failed to set the provider %@ error: %@", v16, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v17, -1, -1);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *a3) + 0x100))(a4);
  }

  return a5(a1 != 0);
}

void closure #1 in DOCTag.delete(on:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2 >> 62)
    {
      v12 = __CocoaSet.count.getter();
      if (v12 >= 1)
      {
LABEL_4:
        v58 = a6;
        v13 = a4;
        v14 = _DocumentManagerBundle();
        if (v14)
        {
          v15 = v14;
          v16.value._object = 0xEB00000000656C62;
          v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v65._object = 0x8000000249BFE360;
          v17._object = 0x8000000249BFE320;
          v65._countAndFlagsBits = 0xD000000000000020;
          v17._countAndFlagsBits = 0x100000000000003BLL;
          v18._countAndFlagsBits = 0;
          v18._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v65);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_249B9FA70;
          v20 = [v11 displayName];
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          *(v19 + 56) = MEMORY[0x277D837D0];
          v24 = lazy protocol witness table accessor for type String and conformance String();
          *(v19 + 32) = v21;
          *(v19 + 40) = v23;
          v25 = MEMORY[0x277D83C10];
          *(v19 + 96) = MEMORY[0x277D83B88];
          *(v19 + 104) = v25;
          *(v19 + 64) = v24;
          *(v19 + 72) = v12;
          v26 = static String.localizedStringWithFormat(_:_:)();
          v28 = v27;

          v29 = MEMORY[0x24C1FAD20](v26, v28);

          v30 = [objc_opt_self() alertControllerWithTitle:0 message:v29 preferredStyle:1];

          v31 = _DocumentManagerBundle();
          if (v31)
          {
            v32 = v31;
            v66._object = 0x8000000249BD2AF0;
            v33._countAndFlagsBits = 0x6C65636E6143;
            v33._object = 0xE600000000000000;
            v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v34.value._object = 0xEB00000000656C62;
            v35._countAndFlagsBits = 0;
            v35._object = 0xE000000000000000;
            v66._countAndFlagsBits = 0xD00000000000001BLL;
            v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v66);

            v37 = swift_allocObject();
            *(v37 + 16) = v13;
            *(v37 + 24) = a5;

            v38 = MEMORY[0x24C1FAD20](v36._countAndFlagsBits, v36._object);

            v63 = partial apply for closure #1 in closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter;
            v64 = v37;
            aBlock = MEMORY[0x277D85DD0];
            v60 = 1107296256;
            v61 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
            v62 = &block_descriptor_106_0;
            v39 = _Block_copy(&aBlock);

            v40 = objc_opt_self();
            v41 = [v40 actionWithTitle:v38 style:1 handler:v39];
            _Block_release(v39);

            [v30 addAction_];
            v42 = _DocumentManagerBundle();
            if (v42)
            {
              v43 = v42;
              v67._object = 0x8000000249BFE390;
              v44._countAndFlagsBits = 0x54206574656C6544;
              v67._countAndFlagsBits = 0xD000000000000025;
              v44._object = 0xEA00000000006761;
              v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v45.value._object = 0xEB00000000656C62;
              v46._countAndFlagsBits = 0;
              v46._object = 0xE000000000000000;
              v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v67);

              v48 = swift_allocObject();
              v48[2] = v11;
              v48[3] = v13;
              v48[4] = a5;

              v49 = v11;
              v50 = MEMORY[0x24C1FAD20](v47._countAndFlagsBits, v47._object);

              v63 = partial apply for closure #2 in closure #1 in DOCTag.delete(on:completion:);
              v64 = v48;
              aBlock = MEMORY[0x277D85DD0];
              v60 = 1107296256;
              v61 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
              v62 = &block_descriptor_112;
              v51 = _Block_copy(&aBlock);

              v52 = [v40 actionWithTitle:v50 style:2 handler:v51];
              _Block_release(v51);

              [v30 addAction_];
              [v58 presentViewController:v30 animated:1 completion:0];

LABEL_12:
              return;
            }

LABEL_16:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 >= 1)
      {
        goto LABEL_4;
      }
    }

    v53 = [objc_opt_self() sharedInstance];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_249BA0290;
    *(v54 + 32) = v11;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
    v55 = v11;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v53 removeTags_];

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    aBlock = v11;
    v60 = 0;
    LOBYTE(v61) = 1;
    v57 = *((*MEMORY[0x277D85000] & *static DOCTagManager.shared) + 0x60);
    v30 = v55;
    v57(&aBlock, 0, 0);
    outlined consume of DOCTagManagerAction(aBlock, v60, v61);
    a4(1);
    goto LABEL_12;
  }
}

uint64_t closure #2 in closure #1 in DOCTag.delete(on:completion:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v5 = [objc_opt_self() sharedInstance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BA0290;
  *(v6 + 32) = a2;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  v7 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 removeTags_];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = v7;
  v13 = 0;
  v14 = 1;
  v9 = *((*MEMORY[0x277D85000] & *static DOCTagManager.shared) + 0x60);
  v10 = v7;
  v9(&v12, 0, 0);
  outlined consume of DOCTagManagerAction(v12, v13, v14);
  return a3(1);
}

void one-time initialization function for disableWorkaroundFor84499894_and_84500099()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD000000000000029, 0x8000000249BFE3C0);
  v2 = [v0 BOOLForKey_];

  disableWorkaroundFor84499894_and_84500099 = v2;
}

uint64_t partial apply for closure #3 in DOCDocumentSource.setHidden(hidden:completion:)(void *a1)
{
  return partial apply for closure #3 in DOCDocumentSource.setHidden(hidden:completion:)(a1);
}

{
  return closure #2 in DOCDocumentSource.setHidden(hidden:completion:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

unint64_t lazy protocol witness table accessor for type DOCSidebarItem and conformance DOCSidebarItem()
{
  result = lazy protocol witness table cache variable for type DOCSidebarItem and conformance DOCSidebarItem;
  if (!lazy protocol witness table cache variable for type DOCSidebarItem and conformance DOCSidebarItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarItem and conformance DOCSidebarItem);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCSidebarItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 41))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 40);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCSidebarItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for DOCSidebarItem(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 6;
  }

  *(result + 40) = a2;
  return result;
}

void specialized DOCDocumentSource.setHidden(hidden:completion:)(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = *(a4 + 16);
  *(v10 + 24) = *a4;
  *(v10 + 40) = v11;
  *(v10 + 49) = *(a4 + 25);
  *(v10 + 72) = a5;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    type metadata accessor for DOCFileProviderSource();
    v25 = swift_dynamicCastClass();
    if (v25 && (v26 = v25, (v27 = *(v25 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) != 0))
    {

      outlined init with copy of DOCSidebarItem(a4, &aBlock);
      v28 = a5;
      v29 = a2;
      v30 = v27;
      if ((FPProviderDomain.shouldUseDSEnumeration.getter() & 1) != 0 && [v30 isiCloudDriveProvider])
      {
        v31 = MEMORY[0x277D85000];
        v32 = (*((*MEMORY[0x277D85000] & *v26) + 0xF8))();
        (*((*v31 & *v26) + 0x100))((a1 & 1) == 0);
        v33 = swift_allocObject();
        *(v33 + 16) = v30;
        *(v33 + 24) = v26;
        *(v33 + 32) = v32;
        *(v33 + 40) = partial apply for closure #1 in DOCSidebarViewController.sidebarItemCell(_:didUpdateSourceIsEnabledTo:);
        *(v33 + 48) = v10;
        v60 = closure #2 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
        v61 = v33;
        aBlock = MEMORY[0x277D85DD0];
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        v59 = &block_descriptor_36_3;
        v34 = _Block_copy(&aBlock);
        v35 = v29;

        v36 = v30;

        [v36 setHiddenByUser:a1 & 1 completionHandler:v34];
      }

      else
      {
        v52 = MEMORY[0x277D85000];
        v53 = (*((*MEMORY[0x277D85000] & *v26) + 0xF8))();
        (*((*v52 & *v26) + 0x100))((a1 & 1) == 0);
        v54 = swift_allocObject();
        *(v54 + 16) = v30;
        *(v54 + 24) = v26;
        *(v54 + 32) = v53;
        *(v54 + 40) = partial apply for closure #1 in DOCSidebarViewController.sidebarItemCell(_:didUpdateSourceIsEnabledTo:);
        *(v54 + 48) = v10;
        v60 = closure #3 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
        v61 = v54;
        aBlock = MEMORY[0x277D85DD0];
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        v59 = &block_descriptor_29_3;
        v34 = _Block_copy(&aBlock);
        v35 = v29;

        v36 = v30;

        [v36 setEnabled:(a1 & 1) == 0 completionHandler:v34];
      }

      _Block_release(v34);
    }

    else
    {

      outlined init with copy of DOCSidebarItem(a4, &aBlock);
      v45 = a5;
    }

    goto LABEL_29;
  }

  v13 = v12;

  outlined init with copy of DOCSidebarItem(a4, &aBlock);
  a5;
  v55 = a2;
  v14 = [v13 pickerExtension];
  v15 = [v13 providerDomain];
  v16 = [v13 isExtensionOptedIn];
  if (a1)
  {
    [v13 setIsExtensionOptedIn_];
    aBlock = 0;
    v17 = v14;
    v18 = [v14 attemptOptOut_];
    v19 = aBlock;
    if ((v18 & 1) == 0)
    {
LABEL_4:
      v20 = v19;
      v21 = _convertNSErrorToError(_:)();

      swift_willThrow();
      [v13 setIsExtensionOptedIn_];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v23 = Strong;
        if (*(a4 + 40) == 1)
        {
          v24 = *a4;
          outlined init with copy of DOCSidebarItem(a4, &aBlock);

          DOCSourceVisibilityController.addVisitedSource(source:)(v24);

          outlined destroy of DOCSidebarItem(a4);
        }
      }

      else
      {
        v23 = v15;
        v15 = v17;
      }

      goto LABEL_29;
    }
  }

  else
  {
    [v13 setIsExtensionOptedIn_];
    aBlock = 0;
    v17 = v14;
    v37 = [v14 attemptOptIn_];
    v19 = aBlock;
    if (!v37)
    {
      goto LABEL_4;
    }
  }

  v38 = v19;
  if (v15)
  {
    v39 = [v13 isExtensionOptedIn];
    v40 = swift_allocObject();
    v40[2] = v15;
    v40[3] = partial apply for closure #1 in DOCSidebarViewController.sidebarItemCell(_:didUpdateSourceIsEnabledTo:);
    v40[4] = v10;
    v40[5] = v17;
    v41 = v17;
    v60 = closure #1 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
    v61 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v59 = &block_descriptor_43_3;
    v42 = _Block_copy(&aBlock);
    v43 = v15;

    v44 = v41;

    [v43 setEnabled:v39 completionHandler:v42];

    _Block_release(v42);

    return;
  }

  v46 = v17;
  v47 = [v17 optedIn];
  swift_beginAccess();
  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    if (*(a4 + 40) == 1)
    {
      v50 = *a4;
      outlined init with copy of DOCSidebarItem(a4, &aBlock);

      DOCSourceVisibilityController.addVisitedSource(source:)(v50);

      outlined destroy of DOCSidebarItem(a4);
    }

    if ((v47 & 1) == 0)
    {

      v51 = DOCSidebarItem.isEnabled(sourceVisibilityController:)();

      DOCSidebarItemCell.sourceIsEnabled.setter(v51);
    }
  }

  else
  {
    v49 = v46;
    v46 = v55;
  }

LABEL_29:
}

void specialized DOCDocumentSource.setHidden(hidden:completion:)(char a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;

    v43 = a5;
    v45 = a2;
    v13 = [v12 pickerExtension];
    v14 = [v12 providerDomain];
    v15 = [v12 isExtensionOptedIn];
    if (a1)
    {
      [v12 setIsExtensionOptedIn_];
      aBlock = 0;
      v16 = [v13 attemptOptOut_];
      v17 = aBlock;
      if ((v16 & 1) == 0)
      {
LABEL_4:
        v18 = v17;
        v19 = _convertNSErrorToError(_:)();

        swift_willThrow();
        [v12 setIsExtensionOptedIn_];

LABEL_19:

        return;
      }
    }

    else
    {
      [v12 setIsExtensionOptedIn_];
      aBlock = 0;
      v32 = [v13 attemptOptIn_];
      v17 = aBlock;
      if (!v32)
      {
        goto LABEL_4;
      }
    }

    v33 = v17;
    if (v14)
    {
      v34 = [v12 isExtensionOptedIn];
      v35 = swift_allocObject();
      v35[2] = v14;
      v35[3] = partial apply for closure #1 in LocationSectionManager.visibilityDidChange(for:isHidden:);
      v35[4] = v10;
      v35[5] = v13;
      v50 = closure #1 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
      v51 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v49 = &block_descriptor_190_1;
      v36 = _Block_copy(&aBlock);
      v37 = v14;

      v38 = v13;

      [v37 setEnabled:v34 completionHandler:v36];

      _Block_release(v36);
    }

    else
    {
      closure #1 in LocationSectionManager.visibilityDidChange(for:isHidden:)([v13 optedIn] ^ 1, a3, a4 & 1, v44);
    }
  }

  else
  {
    type metadata accessor for DOCFileProviderSource();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = v20;
      v22 = *(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v22)
      {

        v23 = a5;
        v24 = a2;
        v25 = v22;
        if ((FPProviderDomain.shouldUseDSEnumeration.getter() & 1) != 0 && [v25 isiCloudDriveProvider])
        {
          v26 = MEMORY[0x277D85000];
          v27 = (*((*MEMORY[0x277D85000] & *v21) + 0xF8))();
          (*((*v26 & *v21) + 0x100))((a1 & 1) == 0);
          v28 = swift_allocObject();
          *(v28 + 16) = v25;
          *(v28 + 24) = v21;
          *(v28 + 32) = v27;
          *(v28 + 40) = partial apply for closure #1 in LocationSectionManager.visibilityDidChange(for:isHidden:);
          *(v28 + 48) = v10;
          v50 = closure #2 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
          v51 = v28;
          aBlock = MEMORY[0x277D85DD0];
          v47 = 1107296256;
          v48 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
          v49 = &block_descriptor_183_0;
          v29 = _Block_copy(&aBlock);
          v30 = v24;

          v31 = v25;

          [v31 setHiddenByUser:a1 & 1 completionHandler:v29];
        }

        else
        {
          v40 = MEMORY[0x277D85000];
          v41 = (*((*MEMORY[0x277D85000] & *v21) + 0xF8))();
          (*((*v40 & *v21) + 0x100))((a1 & 1) == 0);
          v42 = swift_allocObject();
          *(v42 + 16) = v25;
          *(v42 + 24) = v21;
          *(v42 + 32) = v41;
          *(v42 + 40) = partial apply for closure #1 in LocationSectionManager.visibilityDidChange(for:isHidden:);
          *(v42 + 48) = v10;
          v50 = closure #3 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
          v51 = v42;
          aBlock = MEMORY[0x277D85DD0];
          v47 = 1107296256;
          v48 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
          v49 = &block_descriptor_176_1;
          v29 = _Block_copy(&aBlock);
          v30 = v24;

          v31 = v25;

          [v31 setEnabled:(a1 & 1) == 0 completionHandler:v29];
        }

        _Block_release(v29);
        goto LABEL_19;
      }
    }

    v39 = a5;
  }
}

void specialized DOCDocumentSource.setHidden(hidden:completion:)(char a1, void *a2, uint64_t a3, void *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;

    source = a4;
    v11 = a2;
    v12 = [v10 pickerExtension];
    v13 = [v10 providerDomain];
    v14 = [v10 isExtensionOptedIn];
    if (a1)
    {
      [v10 setIsExtensionOptedIn_];
      aBlock = 0;
      v15 = [v12 attemptOptOut_];
      v16 = aBlock;
      if ((v15 & 1) == 0)
      {
LABEL_4:
        v42 = v11;
        v17 = v16;
        v18 = _convertNSErrorToError(_:)();

        swift_willThrow();
        [v10 setIsExtensionOptedIn_];
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {

          DOCSourceVisibilityController.addVisitedSource(source:)(source);
        }

        else
        {
        }

LABEL_24:

        return;
      }
    }

    else
    {
      [v10 setIsExtensionOptedIn_];
      aBlock = 0;
      v31 = [v12 attemptOptIn_];
      v16 = aBlock;
      if (!v31)
      {
        goto LABEL_4;
      }
    }

    v32 = v16;
    if (v13)
    {
      v33 = [v10 isExtensionOptedIn];
      v34 = swift_allocObject();
      v34[2] = v13;
      v34[3] = partial apply for closure #1 in closure #7 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:);
      v34[4] = v8;
      v34[5] = v12;
      v48 = closure #1 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
      v49 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v47 = &block_descriptor_157_1;
      v35 = _Block_copy(&aBlock);
      v36 = v13;

      v37 = v12;

      [v36 setEnabled:v33 completionHandler:v35];

      _Block_release(v35);

      return;
    }

    [v12 optedIn];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      DOCSourceVisibilityController.addVisitedSource(source:)(source);
    }

    else
    {
    }

    goto LABEL_24;
  }

  type metadata accessor for DOCFileProviderSource();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v21 = *(v19 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (v21)
    {

      v22 = a4;
      v23 = a2;
      v24 = v21;
      if ((FPProviderDomain.shouldUseDSEnumeration.getter() & 1) != 0 && [v24 isiCloudDriveProvider])
      {
        v25 = MEMORY[0x277D85000];
        v26 = (*((*MEMORY[0x277D85000] & *v20) + 0xF8))();
        (*((*v25 & *v20) + 0x100))((a1 & 1) == 0);
        v27 = swift_allocObject();
        *(v27 + 16) = v24;
        *(v27 + 24) = v20;
        *(v27 + 32) = v26;
        *(v27 + 40) = partial apply for closure #1 in closure #7 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:);
        *(v27 + 48) = v8;
        v48 = closure #2 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
        v49 = v27;
        aBlock = MEMORY[0x277D85DD0];
        v45 = 1107296256;
        v46 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        v47 = &block_descriptor_150_0;
        v28 = _Block_copy(&aBlock);
        v29 = v23;

        v30 = v24;

        [v30 setHiddenByUser:a1 & 1 completionHandler:v28];
      }

      else
      {
        v39 = MEMORY[0x277D85000];
        v40 = (*((*MEMORY[0x277D85000] & *v20) + 0xF8))();
        (*((*v39 & *v20) + 0x100))((a1 & 1) == 0);
        v41 = swift_allocObject();
        *(v41 + 16) = v24;
        *(v41 + 24) = v20;
        *(v41 + 32) = v40;
        *(v41 + 40) = partial apply for closure #1 in closure #7 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:);
        *(v41 + 48) = v8;
        v48 = closure #3 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
        v49 = v41;
        aBlock = MEMORY[0x277D85DD0];
        v45 = 1107296256;
        v46 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        v47 = &block_descriptor_143_0;
        v28 = _Block_copy(&aBlock);
        v29 = v23;

        v30 = v24;

        [v30 setEnabled:(a1 & 1) == 0 completionHandler:v28];
      }

      _Block_release(v28);
      goto LABEL_24;
    }
  }

  v38 = a4;
}

void specialized DOCDocumentSource.setHidden(hidden:completion:)(char a1, void *a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v55 = *MEMORY[0x277D85DE8];
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;

    source = a4;

    v15 = a2;
    v16 = [v14 pickerExtension];
    v17 = [v14 providerDomain];
    v47 = [v14 isExtensionOptedIn];
    if (a1)
    {
      [v14 setIsExtensionOptedIn_];
      aBlock = 0;
      v18 = [v16 attemptOptOut_];
      v19 = aBlock;
      if ((v18 & 1) == 0)
      {
LABEL_4:
        v46 = v17;
        v20 = v15;
        v21 = v19;
        v22 = _convertNSErrorToError(_:)();

        swift_willThrow();
        [v14 setIsExtensionOptedIn_];
        DOCSourceVisibilityController.addVisitedSource(source:)(source);
        a5(1);

LABEL_19:

        return;
      }
    }

    else
    {
      [v14 setIsExtensionOptedIn_];
      aBlock = 0;
      v35 = [v16 attemptOptIn_];
      v19 = aBlock;
      if (!v35)
      {
        goto LABEL_4;
      }
    }

    v36 = v19;
    if (v17)
    {
      v37 = [v14 isExtensionOptedIn];
      v38 = swift_allocObject();
      v38[2] = v17;
      v38[3] = partial apply for closure #1 in closure #1 in ServersSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:);
      v38[4] = v12;
      v38[5] = v16;
      v53 = closure #1 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
      v54 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v50 = 1107296256;
      v51 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v52 = &block_descriptor_91_4;
      v39 = _Block_copy(&aBlock);
      v40 = v17;

      v41 = v16;

      [v40 setEnabled:v37 completionHandler:v39];

      _Block_release(v39);
    }

    else
    {
      [v16 optedIn];
      DOCSourceVisibilityController.addVisitedSource(source:)(source);
      a5(1);
    }
  }

  else
  {
    type metadata accessor for DOCFileProviderSource();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = v23;
      v25 = *(v23 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v25)
      {

        v26 = a4;

        v27 = a2;
        v28 = v25;
        if ((FPProviderDomain.shouldUseDSEnumeration.getter() & 1) != 0 && [v28 isiCloudDriveProvider])
        {
          v29 = MEMORY[0x277D85000];
          v30 = (*((*MEMORY[0x277D85000] & *v24) + 0xF8))();
          (*((*v29 & *v24) + 0x100))((a1 & 1) == 0);
          v31 = swift_allocObject();
          *(v31 + 16) = v28;
          *(v31 + 24) = v24;
          *(v31 + 32) = v30;
          *(v31 + 40) = partial apply for closure #1 in closure #1 in ServersSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:);
          *(v31 + 48) = v12;
          v53 = closure #2 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
          v54 = v31;
          aBlock = MEMORY[0x277D85DD0];
          v50 = 1107296256;
          v51 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
          v52 = &block_descriptor_84_1;
          v32 = _Block_copy(&aBlock);
          v33 = v27;

          v34 = v28;

          [v34 setHiddenByUser:a1 & 1 completionHandler:v32];
        }

        else
        {
          v43 = MEMORY[0x277D85000];
          v44 = (*((*MEMORY[0x277D85000] & *v24) + 0xF8))();
          (*((*v43 & *v24) + 0x100))((a1 & 1) == 0);
          v45 = swift_allocObject();
          *(v45 + 16) = v28;
          *(v45 + 24) = v24;
          *(v45 + 32) = v44;
          *(v45 + 40) = partial apply for closure #1 in closure #1 in ServersSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:);
          *(v45 + 48) = v12;
          v53 = closure #3 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
          v54 = v45;
          aBlock = MEMORY[0x277D85DD0];
          v50 = 1107296256;
          v51 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
          v52 = &block_descriptor_77_5;
          v32 = _Block_copy(&aBlock);
          v33 = v27;

          v34 = v28;

          [v34 setEnabled:(a1 & 1) == 0 completionHandler:v32];
        }

        _Block_release(v32);
        goto LABEL_19;
      }
    }

    v42 = a4;
  }
}

void specialized DOCDocumentSource.setHidden(hidden:completion:)(char a1, void *a2, void *a3, void *a4, _OWORD *a5)
{
  v73 = *MEMORY[0x277D85DE8];
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = a5[1];
  *(v10 + 32) = *a5;
  *(v10 + 48) = v11;
  *(v10 + 57) = *(a5 + 25);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    type metadata accessor for DOCFileProviderSource();
    v30 = swift_dynamicCastClass();
    if (v30 && (v31 = v30, (v32 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) != 0))
    {
      v33 = a3;
      v34 = a4;
      outlined init with copy of DOCSidebarItem(a5, &aBlock);
      v35 = a2;
      v36 = v32;
      if ((FPProviderDomain.shouldUseDSEnumeration.getter() & 1) != 0 && [v36 isiCloudDriveProvider])
      {
        v37 = MEMORY[0x277D85000];
        v38 = (*((*MEMORY[0x277D85000] & *v31) + 0xF8))();
        (*((*v37 & *v31) + 0x100))((a1 & 1) == 0);
        v39 = swift_allocObject();
        *(v39 + 16) = v36;
        *(v39 + 24) = v31;
        *(v39 + 32) = v38;
        *(v39 + 40) = partial apply for closure #1 in closure #2 in DOCSidebarViewController.presentAlertToEnableProviderExtension(item:);
        *(v39 + 48) = v10;
        v71 = closure #2 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
        v72 = v39;
        aBlock = MEMORY[0x277D85DD0];
        v68 = 1107296256;
        v69 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        v70 = &block_descriptor_60_1;
        v40 = _Block_copy(&aBlock);
        v41 = v35;

        v42 = v36;

        [v42 setHiddenByUser:a1 & 1 completionHandler:v40];
      }

      else
      {
        v61 = MEMORY[0x277D85000];
        v62 = (*((*MEMORY[0x277D85000] & *v31) + 0xF8))();
        (*((*v61 & *v31) + 0x100))((a1 & 1) == 0);
        v63 = swift_allocObject();
        *(v63 + 16) = v36;
        *(v63 + 24) = v31;
        *(v63 + 32) = v62;
        *(v63 + 40) = partial apply for closure #1 in closure #2 in DOCSidebarViewController.presentAlertToEnableProviderExtension(item:);
        *(v63 + 48) = v10;
        v71 = closure #3 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
        v72 = v63;
        aBlock = MEMORY[0x277D85DD0];
        v68 = 1107296256;
        v69 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        v70 = &block_descriptor_53_4;
        v40 = _Block_copy(&aBlock);
        v41 = v35;

        v42 = v36;

        [v42 setEnabled:(a1 & 1) == 0 completionHandler:v40];
      }

      _Block_release(v40);
    }

    else
    {
      v50 = a3;
      v51 = a4;
      outlined init with copy of DOCSidebarItem(a5, &aBlock);
    }

    goto LABEL_23;
  }

  v13 = v12;
  v14 = a3;
  source = a4;
  outlined init with copy of DOCSidebarItem(a5, &aBlock);
  v66 = a2;
  v15 = [v13 pickerExtension];
  v65 = [v13 providerDomain];
  v16 = [v13 isExtensionOptedIn];
  if (a1)
  {
    [v13 setIsExtensionOptedIn_];
    aBlock = 0;
    v17 = v15;
    v18 = [v15 attemptOptOut_];
    v19 = aBlock;
    if ((v18 & 1) == 0)
    {
LABEL_4:
      v20 = v19;
      v21 = _convertNSErrorToError(_:)();

      swift_willThrow();
      [v13 setIsExtensionOptedIn_];
      DOCSourceVisibilityController.addVisitedSource(source:)(source);
      v22 = (*((*MEMORY[0x277D85000] & *v14) + 0x1E8))();
      if (v22)
      {
        v28 = v22;
        v29 = DOCSidebarItem.representedLocation.getter(v22, v23, v24, v25, v26, v27);
        [v28 sidebarViewController:v14 didSelect:v29];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      goto LABEL_23;
    }
  }

  else
  {
    [v13 setIsExtensionOptedIn_];
    aBlock = 0;
    v17 = v15;
    v43 = [v15 attemptOptIn_];
    v19 = aBlock;
    if (!v43)
    {
      goto LABEL_4;
    }
  }

  v44 = v19;
  if (v65)
  {
    v45 = [v13 isExtensionOptedIn];
    v46 = swift_allocObject();
    v46[2] = v65;
    v46[3] = partial apply for closure #1 in closure #2 in DOCSidebarViewController.presentAlertToEnableProviderExtension(item:);
    v46[4] = v10;
    v46[5] = v17;
    v71 = closure #1 in DOCDocumentSource.setHidden(hidden:completion:)partial apply;
    v72 = v46;
    aBlock = MEMORY[0x277D85DD0];
    v68 = 1107296256;
    v69 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v70 = &block_descriptor_67_0;
    v47 = _Block_copy(&aBlock);
    v48 = v65;

    v49 = v17;

    [v48 setEnabled:v45 completionHandler:v47];

    _Block_release(v47);

    return;
  }

  v52 = [v17 optedIn];
  DOCSourceVisibilityController.addVisitedSource(source:)(source);
  if (v52)
  {
    v53 = (*((*MEMORY[0x277D85000] & *v14) + 0x1E8))();
    if (v53)
    {
      v59 = v53;
      v60 = DOCSidebarItem.representedLocation.getter(v53, v54, v55, v56, v57, v58);
      [v59 sidebarViewController:v14 didSelect:v60];

      swift_unknownObjectRelease();
      return;
    }
  }

LABEL_23:
}

uint64_t objectdestroy_162Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroyTm_16()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_8Tm_2()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t String.wrappedInDirectionalIsolation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    if (one-time initialization token for bidiIsolateBeginRLI != -1)
    {
      swift_once();
    }

    v5 = &static DOCUnicode.bidiIsolateBeginRLI;
  }

  else if (a1 == 1)
  {
    if (one-time initialization token for bidiIsolateBeginLRI != -1)
    {
      swift_once();
    }

    v5 = &static DOCUnicode.bidiIsolateBeginLRI;
  }

  else
  {
    if (a1)
    {
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    if (one-time initialization token for bidiIsolateBeginFSI != -1)
    {
      swift_once();
    }

    v5 = &static DOCUnicode.bidiIsolateBeginFSI;
  }

  v6 = *v5;
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v6) + 0x58);
  v9 = v6;
  v10 = v8();

  MEMORY[0x24C1FAEA0](a2, a3);

  v11 = v10;
  if (one-time initialization token for bidiIsolateEnd != -1)
  {
    swift_once();
  }

  v12 = (*((*v7 & *static DOCUnicode.bidiIsolateEnd) + 0x58))();
  v14 = v13;

  MEMORY[0x24C1FAEA0](v12, v14);

  return v11;
}

uint64_t BidiDirectionalIsolationUpdating.wrapInDirectionalIsolation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 1)
  {
    return (*(a3 + 8))(2);
  }

  else
  {
    return (*(a3 + 8))(1);
  }
}

uint64_t BidiDirectionalIsolationReturning.wrappedInDirectionalIsolation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 1)
  {
    return (*(a3 + 16))(2);
  }

  else
  {
    return (*(a3 + 16))(1);
  }
}

uint64_t DOCUnicode.DOCUnicodeLayoutDirection.init(_:)(uint64_t a1)
{
  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t DOCUnicode.DOCUnicodeLayoutDirection.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t static DOCUnicode.layoutDirection(forUIDirection:)(uint64_t a1)
{
  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t String.wrapInDirectionalIsolation(_:)(uint64_t a1)
{
  if (a1 == 2)
  {
    if (one-time initialization token for bidiIsolateBeginRLI != -1)
    {
      swift_once();
    }

    v1 = &static DOCUnicode.bidiIsolateBeginRLI;
  }

  else if (a1 == 1)
  {
    if (one-time initialization token for bidiIsolateBeginLRI != -1)
    {
      swift_once();
    }

    v1 = &static DOCUnicode.bidiIsolateBeginLRI;
  }

  else
  {
    if (a1)
    {
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    if (one-time initialization token for bidiIsolateBeginFSI != -1)
    {
      swift_once();
    }

    v1 = &static DOCUnicode.bidiIsolateBeginFSI;
  }

  v2 = *v1;
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v5 = v2;
  v4();
  String.init<A>(_:)();
  lazy protocol witness table accessor for type String and conformance String();
  String.insert<A>(contentsOf:at:)();

  if (one-time initialization token for bidiIsolateEnd != -1)
  {
    v6 = swift_once();
  }

  (*((*v3 & *static DOCUnicode.bidiIsolateEnd) + 0x58))(v6, v7);
  v8 = String.init<A>(_:)();
  MEMORY[0x24C1FAEA0](v8);
}

uint64_t protocol witness for BidiDirectionalIsolationReturning.wrappedInDirectionalIsolation(_:) in conformance String@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = String.wrappedInDirectionalIsolation(_:)(a1, *v2, v2[1]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t NSString.wrappedInDirectionalIsolation(_:)(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String.wrappedInDirectionalIsolation(_:)(a1, v2, v3);
  v6 = v5;

  v7 = MEMORY[0x24C1FAD20](v4, v6);

  return v7;
}

id @objc NSString.wrappedInDirectionalIsolation(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = a1;
  v9 = String.wrappedInDirectionalIsolation(_:)(a3, v5, v7);
  v11 = v10;

  v12 = MEMORY[0x24C1FAD20](v9, v11);

  return v12;
}

uint64_t NSAttributedString.wrappedInDirectionalIsolation(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  if (a1 == 2)
  {
    if (one-time initialization token for bidiIsolateBeginRLI != -1)
    {
      swift_once();
    }

    v5 = &static DOCUnicode.bidiIsolateBeginRLI;
  }

  else if (a1 == 1)
  {
    if (one-time initialization token for bidiIsolateBeginLRI != -1)
    {
      swift_once();
    }

    v5 = &static DOCUnicode.bidiIsolateBeginLRI;
  }

  else
  {
    if (a1)
    {
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    if (one-time initialization token for bidiIsolateBeginFSI != -1)
    {
      swift_once();
    }

    v5 = &static DOCUnicode.bidiIsolateBeginFSI;
  }

  v6 = *v5;
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v6) + 0x58);
  v10 = v6;
  v11 = v9();
  v12 = MEMORY[0x24C1FAD20](v11);

  v13 = [v7 initWithString_];

  [v4 appendAttributedString_];
  [v4 appendAttributedString_];
  if (one-time initialization token for bidiIsolateEnd != -1)
  {
    swift_once();
  }

  v14 = static DOCUnicode.bidiIsolateEnd;
  v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v16 = (*((*v8 & *v14) + 0x58))();
  v17 = MEMORY[0x24C1FAD20](v16);

  v18 = [v15 initWithString_];

  [v4 appendAttributedString_];
  return v4;
}

id @objc NSAttributedString.wrappedInDirectionalIsolation(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = NSAttributedString.wrappedInDirectionalIsolation(_:)(a3);

  return v5;
}

void NSMutableAttributedString.wrapInDirectionalIsolation(_:)(uint64_t a1)
{
  v2 = v1;
  if (a1 == 2)
  {
    if (one-time initialization token for bidiIsolateBeginRLI != -1)
    {
      swift_once();
    }

    v3 = &static DOCUnicode.bidiIsolateBeginRLI;
  }

  else if (a1 == 1)
  {
    if (one-time initialization token for bidiIsolateBeginLRI != -1)
    {
      swift_once();
    }

    v3 = &static DOCUnicode.bidiIsolateBeginLRI;
  }

  else
  {
    if (a1)
    {
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    if (one-time initialization token for bidiIsolateBeginFSI != -1)
    {
      swift_once();
    }

    v3 = &static DOCUnicode.bidiIsolateBeginFSI;
  }

  v4 = *v3;
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v8 = v4;
  v9 = v7();
  v10 = MEMORY[0x24C1FAD20](v9);

  v11 = [v5 initWithString_];

  [v2 insertAttributedString:v11 atIndex:0];
  if (one-time initialization token for bidiIsolateEnd != -1)
  {
    swift_once();
  }

  v12 = static DOCUnicode.bidiIsolateEnd;
  v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v14 = (*((*v6 & *v12) + 0x58))();
  v15 = MEMORY[0x24C1FAD20](v14);

  v16 = [v13 initWithString_];

  [v2 appendAttributedString_];
}

unint64_t lazy protocol witness table accessor for type DOCUnicode.DOCUnicodeLayoutDirection and conformance DOCUnicode.DOCUnicodeLayoutDirection()
{
  result = lazy protocol witness table cache variable for type DOCUnicode.DOCUnicodeLayoutDirection and conformance DOCUnicode.DOCUnicodeLayoutDirection;
  if (!lazy protocol witness table cache variable for type DOCUnicode.DOCUnicodeLayoutDirection and conformance DOCUnicode.DOCUnicodeLayoutDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCUnicode.DOCUnicodeLayoutDirection and conformance DOCUnicode.DOCUnicodeLayoutDirection);
  }

  return result;
}

void @objc NSMutableAttributedString.wrapInDirectionalIsolation(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  NSMutableAttributedString.wrapInDirectionalIsolation(_:)(a3);
}

id DOCTagSuggester.__allocating_init(configuration:dataSource:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();
  v9 = specialized DOCTagSuggester.init(configuration:dataSource:)(a1, a2, v7, ObjectType, a3);

  swift_unknownObjectRelease();
  return v9;
}

id DOCDateSuggester.__allocating_init(configuration:dateParser:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for DOCSuggester();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id DOCPersonSuggester.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCPersonSuggester_currentQuery] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for DOCSuggester();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t DOCQueryFragmentSuggestion.queryStringFragment.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCQueryFragmentSuggestion_queryStringFragment);

  return v1;
}

id DOCQueryFragmentSuggestion.__allocating_init(inputString:queryStringFragment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCQueryFragmentSuggestion_queryStringFragment];
  *v10 = a3;
  v10[1] = a4;
  v9[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
  v11 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
  *v11 = a1;
  v11[1] = a2;
  v13.receiver = v9;
  v13.super_class = type metadata accessor for DOCSearchSuggestion();
  return objc_msgSendSuper2(&v13, sel_init);
}

id DOCQueryFragmentSuggestion.init(inputString:queryStringFragment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCQueryFragmentSuggestion_queryStringFragment];
  *v5 = a3;
  v5[1] = a4;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
  v6 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for DOCSearchSuggestion();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t DOCQueryFragmentSuggestion.apply(on:)()
{
  MEMORY[0x24C1FAEA0](*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCQueryFragmentSuggestion_queryStringFragment), *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCQueryFragmentSuggestion_queryStringFragment + 8));
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v1._countAndFlagsBits = 40;
  v1._object = 0xE100000000000000;
  NSFileProviderSearchQuery.appendClauseToScopeFragment(_:)(v1);
}

Swift::Bool __swiftcall String.doc_kindOfBeginsWith(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (String.count.getter() < 4)
  {
    v15 = countAndFlagsBits;
    v16 = object;

    return String.hasPrefix(_:)(*&v15);
  }

  else
  {
    v3 = String.count.getter();
    if (String.count.getter() >= v3 && (, v4 = String.count.getter(), v5 = specialized Collection.prefix(_:)(v4), v7 = v6, v9 = v8, v11 = v10, , MEMORY[0x24C1FAE00](v5, v7, v9, v11), , v12._countAndFlagsBits = countAndFlagsBits, v12._object = object, v13 = String.doc_editDistance(from:)(v12), , v13 <= 3))
    {
      v17 = 100.0 - v13 * 100.0 / String.count.getter();
      if (v17 <= 0.0)
      {
        v17 = 0.0;
      }

      return v17 * 0.98 >= 70.0;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t String.doc_tokens()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = (v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd);
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>, &_sSnySS5IndexVGMd);
  StringProtocol.enumerateSubstrings<A>(in:options:_:)();

  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t closure #1 in String.doc_tokens()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(a8 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      *(a8 + 16) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = a2;
    *(a8 + 16) = v11;
    return swift_endAccess();
  }

  return result;
}

void DOCDateSuggester.dateParser.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCDateSuggester.dateParser.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCDateSuggester_dateParser;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

id DOCDateSuggester.init(configuration:dateParser:)(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for DOCSuggester();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

uint64_t one-time initialization function for dateQueryAttributes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249BA08C0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 64) = result;
  *(v0 + 72) = v4;
  static DOCDateSuggester.dateQueryAttributes = v0;
  return result;
}

uint64_t *DOCDateSuggester.dateQueryAttributes.unsafeMutableAddressor()
{
  if (one-time initialization token for dateQueryAttributes != -1)
  {
    swift_once();
  }

  return &static DOCDateSuggester.dateQueryAttributes;
}

uint64_t static DOCDateSuggester.dateQueryAttributes.getter()
{
  if (one-time initialization token for dateQueryAttributes != -1)
  {
    swift_once();
  }
}

Swift::Void __swiftcall DOCDateSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(Swift::String a1, Swift::Int forSearchId, Swift::OpaquePointer confirmedSuggestions)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7 = MEMORY[0x277D85000];
  v23 = (*((*MEMORY[0x277D85000] & *v3) + 0xA0))(a1._countAndFlagsBits, a1._object, forSearchId, confirmedSuggestions._rawValue);
  if (!v23)
  {
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if ((*((*v7 & *v3) + 0x60))())
  {
    v22 = v8;
    v9 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D84F90];
    v10 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);
    v11 = [v23 parse_];

    if (!v11)
    {
      v15 = object;
      v16 = countAndFlagsBits;
      v17 = forSearchId;
      v21 = 0;
      goto LABEL_10;
    }

    v20 = [v11 length];
    v12 = swift_allocObject();
    v12[2] = countAndFlagsBits;
    v12[3] = object;
    v12[4] = &v25;
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for closure #1 in DOCDateSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:);
    *(v13 + 24) = v12;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[3] = &block_descriptor_167;
    v14 = _Block_copy(aBlock);

    [v11 enumerateAttributesInRange:0 options:v20 usingBlock:{2, v14}];

    _Block_release(v14);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      v15 = object;
      v16 = countAndFlagsBits;
      v17 = forSearchId;
      v21 = partial apply for closure #1 in DOCDateSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:);
      v9 = v25;
LABEL_10:
      ObjectType = swift_getObjectType();
      v19 = *(v22 + 8);

      v19(v3, v9, v17, v16, v15, ObjectType, v22);

      swift_unknownObjectRelease();

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v21);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

void closure #1 in DOCDateSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v12 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BFE9B0);
  v13 = v12;
  if (!*(a1 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v15 & 1) == 0))
  {

    return;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v14, v52);

  outlined init with take of Any(v52, v53);
  v16 = MEMORY[0x24C1FAD20](0xD000000000000016, 0x8000000249BFE9D0);
  v17 = v16;
  if (*(a1 + 16))
  {
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
    if (v19)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v18, v51);

      v20 = outlined init with take of Any(v51, v52);
      if (one-time initialization token for dateQueryAttributes != -1)
      {
        v20 = swift_once();
      }

      MEMORY[0x28223BE20](v20, v21);
      v49[2] = v53;
      v49[3] = v52;
      *&v51[0] = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(partial apply for closure #1 in closure #1 in DOCDateSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:), v49, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      v23 = BidirectionalCollection<>.joined(separator:)();
      v25 = v24;

      v26 = objc_allocWithZone(type metadata accessor for DOCQueryFragmentSuggestion());
      v27 = &v26[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCQueryFragmentSuggestion_queryStringFragment];
      *v27 = v23;
      v27[1] = v25;
      v26[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
      v28 = &v26[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
      *v28 = a5;
      v28[1] = a6;
      v29 = type metadata accessor for DOCSearchSuggestion();
      v50.receiver = v26;
      v50.super_class = v29;

      v30 = objc_msgSendSuper2(&v50, sel_init);
      v31 = *((*MEMORY[0x277D85000] & *v30) + 0x1C0);
      v32 = v30;
      v31(1);
      v33 = MEMORY[0x24C1FAD20](0xD000000000000013, 0x8000000249BFE9F0);
      v34 = v33;
      if (*(a1 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v36 & 1) != 0))
      {
        outlined init with copy of Any(*(a1 + 56) + 32 * v35, v51);

        if (swift_dynamicCast())
        {
          v37 = v49[5];
          v38 = v49[6];
          v39 = MEMORY[0x277D85000];
          v40 = *((*MEMORY[0x277D85000] & *v32) + 0xB8);

          v40(v37, v38);
          v41 = *((*v39 & *v32) + 0xE8);
          v42 = v32;
          v41(v37, v38);
LABEL_15:

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_249BA0290;
          *(v48 + 32) = v32;
          *a7 = v48;

          *a4 = 1;

          __swift_destroy_boxed_opaque_existential_0(v52);
          goto LABEL_16;
        }
      }

      else
      {
      }

      v43 = MEMORY[0x277D85000];
      v44 = *((*MEMORY[0x277D85000] & *v32) + 0xB8);

      v44(a5, a6);
      v45 = *((*v43 & *v32) + 0xB0);
      v46 = v32;
      v47 = v45();
      (*((*v43 & *v46) + 0xE8))(v47);
      goto LABEL_15;
    }
  }

LABEL_16:
  __swift_destroy_boxed_opaque_existential_0(v53);
}

uint64_t closure #1 in closure #1 in DOCDateSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  _StringGuts.grow(_:)(19);
  MEMORY[0x24C1FAEA0](0x2865676E61526E49, 0xE800000000000000);
  MEMORY[0x24C1FAEA0](v3, v4);
  MEMORY[0x24C1FAEA0](8236, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](8236, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

Swift::Void __swiftcall DOCHasTraitSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(Swift::String a1, Swift::Int forSearchId, Swift::OpaquePointer confirmedSuggestions)
{
  v4 = v3;
  v42 = forSearchId;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v42 - v9;
  v43 = object;
  v44 = countAndFlagsBits;
  v45 = object;
  v11 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  lazy protocol witness table accessor for type String and conformance String();
  v13 = StringProtocol.folding(options:locale:)();
  v15 = v14;
  v16 = outlined destroy of CharacterSet?(v10, &_s10Foundation6LocaleVSgMd);
  v17 = MEMORY[0x277D85000];
  v18 = *((*MEMORY[0x277D85000] & *v4) + 0x98);
  v19 = v18(v16);
  v21 = String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(v19, v20);

  v23 = v18(v22);
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v27 = v21 + 40;
    v28 = -*(v21 + 16);
    v29 = -1;
    while (1)
    {
      if (v28 + v29 == -1)
      {

        v33 = 0;
        goto LABEL_11;
      }

      if (++v29 >= *(v21 + 16))
      {
        break;
      }

      v30 = v27 + 16;

      v31._countAndFlagsBits = v13;
      v31._object = v15;
      v32 = String.hasPrefix(_:)(v31);

      v27 = v30;
      if (v32)
      {

        v33 = 1;
LABEL_11:
        v17 = MEMORY[0x277D85000];
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v33 = 1;
LABEL_12:
    v34 = v43;
    v35 = String.count.getter();
    if (v35 >= (*((*v17 & *v4) + 0x88))() && v33)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_249BA0290;
      v37 = (*((*v17 & *v4) + 0xA0))(v13, v15, countAndFlagsBits, v34);

      *(v36 + 32) = v37;
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    if ((*((*v17 & *v4) + 0x60))(v38))
    {
      v40 = v39;
      ObjectType = swift_getObjectType();
      (*(v40 + 8))(v4, v36, v42, countAndFlagsBits, v34, ObjectType, v40);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id DOCIsSharedSuggester.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for DOCSuggester();
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCIsSharedSuggester.searchPhrases.getter()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v6._object = 0x8000000249BFE5B0;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._countAndFlagsBits = 0xD000000000000013;
    v3._object = 0x8000000249BFE570;
    v4._object = 0x8000000249BFE590;
    v6._countAndFlagsBits = 0xD000000000000069;
    v4._countAndFlagsBits = 0xD000000000000010;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v6)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DOCIsSharedSuggester.newSuggestion(_:originalInput:)(uint64_t a1, uint64_t a2)
{
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v4;
  MEMORY[0x24C1FAEA0](0x31203D3D20, 0xE500000000000000);
  v5 = v25;
  v6 = objc_allocWithZone(type metadata accessor for DOCQueryFragmentSuggestion());
  v7 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCQueryFragmentSuggestion_queryStringFragment];
  *v7 = v24;
  v7[1] = v5;
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
  v8 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
  *v8 = a1;
  v8[1] = a2;
  v23.receiver = v6;
  v23.super_class = type metadata accessor for DOCSearchSuggestion();

  v9 = objc_msgSendSuper2(&v23, sel_init);
  result = _DocumentManagerBundle();
  if (result)
  {
    v11 = result;
    v26._object = 0x8000000249BFE640;
    v12._object = 0x8000000249BFE620;
    v13._object = 0x8000000249BFE620;
    v26._countAndFlagsBits = 0xD000000000000033;
    v12._countAndFlagsBits = 0xD000000000000015;
    v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v14.value._object = 0xEB00000000656C62;
    v13._countAndFlagsBits = 0xD000000000000015;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v14, v11, v13, v26);

    v16 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v9) + 0xB8))(v15._countAndFlagsBits, v15._object);
    v17 = v9;
    result = _DocumentManagerBundle();
    if (result)
    {
      v18 = result;
      v27._object = 0x8000000249BFE680;
      v19._countAndFlagsBits = 0x6572616853207349;
      v27._countAndFlagsBits = 0xD000000000000040;
      v19._object = 0xE900000000000064;
      v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v20.value._object = 0xEB00000000656C62;
      v21._countAndFlagsBits = 0x6572616853207349;
      v21._object = 0xE900000000000064;
      v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v27);

      (*((*v16 & *v17) + 0xE8))(v22._countAndFlagsBits, v22._object);
      (*((*v16 & *v17) + 0x1C0))(6);

      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *DOCFilenameSuggester.newSuggestion(_:originalInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v13;
  MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
  v46 = 10786;
  v47 = 0xE200000000000000;
  v14 = String.doc_searchEscapedString.getter(a1, a2);
  MEMORY[0x24C1FAEA0](v14);

  MEMORY[0x24C1FAEA0](8746, 0xE200000000000000);
  v44 = a1;
  v45 = a2;
  CharacterSet.init()();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  v15 = MEMORY[0x277D837D0];
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v17 = v16;
  (*(v9 + 8))(v12, v8);
  if (v17)
  {
    v18 = 1952741219;
  }

  else
  {
    v18 = 0x7473647763;
  }

  if (v17)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v18, v19);

  MEMORY[0x24C1FAEA0](v46, v47);

  v20 = v48;
  v21 = v49;
  v22 = objc_allocWithZone(type metadata accessor for DOCQueryFragmentSuggestion());
  v23 = &v22[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCQueryFragmentSuggestion_queryStringFragment];
  *v23 = v20;
  v23[1] = v21;
  v22[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
  v24 = &v22[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
  *v24 = a1;
  v24[1] = a2;
  v25 = type metadata accessor for DOCSearchSuggestion();
  v43.receiver = v22;
  v43.super_class = v25;

  v26 = objc_msgSendSuper2(&v43, sel_init);
  result = _DocumentManagerBundle();
  if (result)
  {
    v28 = result;
    v50._object = 0x8000000249BFE6F0;
    v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v29.value._object = 0xEB00000000656C62;
    v30._object = 0x8000000249BFE6D0;
    v31._object = 0x8000000249BFE6D0;
    v50._countAndFlagsBits = 0xD000000000000037;
    v30._countAndFlagsBits = 0xD000000000000010;
    v31._countAndFlagsBits = 0xD000000000000010;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v29, v28, v31, v50);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_249B9A480;
    v33 = v26;
    v34 = String.doc_localizedQuotedString.getter(a3, a4);
    v36 = v35;
    *(v32 + 56) = v15;
    *(v32 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    v37 = String.init(format:_:)();
    v39 = v38;

    v40 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v33) + 0xB8))(v37, v39);
    v41 = *((*v40 & *v33) + 0xE8);
    v42 = v33;

    v41(a3, a4);

    (*((*v40 & *v42) + 0x1C0))(4);
    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DOCHasTraitSuggester.init(configuration:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCSuggester();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t DOCTagSuggester.dataSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCTagSuggester_dataSource;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCTagSuggester.dataSource.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCTagSuggester_dataSource;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

id DOCTagSuggester.init(configuration:dataSource:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = specialized DOCTagSuggester.init(configuration:dataSource:)(a1, a2, v3, ObjectType, a3);

  swift_unknownObjectRelease();
  return v8;
}

Swift::Void __swiftcall DOCTagSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(Swift::String a1, Swift::Int forSearchId, Swift::OpaquePointer confirmedSuggestions)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xA0))(a1._countAndFlagsBits, a1._object, forSearchId, confirmedSuggestions._rawValue);
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    v55 = countAndFlagsBits;
    v56 = object;
    lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.localizedLowercase.getter();
    v51 = v11;
    v52 = v10;
    v12 = MEMORY[0x277D84F90];
    v54 = MEMORY[0x277D84F90];
    ObjectType = swift_getObjectType();
    v14 = (*(v9 + 16))(ObjectType, v9);
    v15 = v14;
    v53 = v12;
    if (v14 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v12 = 0;
      v49 = v15 & 0xFFFFFFFFFFFFFF8;
      v50 = v15 & 0xC000000000000001;
      v45 = v9;
      v46 = v8;
      v47 = i;
      v48 = v15;
      while (1)
      {
        if (v50)
        {
          v18 = MEMORY[0x24C1FC540](v12, v15);
        }

        else
        {
          if (v12 >= *(v49 + 16))
          {
            goto LABEL_29;
          }

          v18 = *(v15 + 8 * v12 + 32);
        }

        v19 = v18;
        v20 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v21 = [v18 displayName];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v55 = v22;
        v56 = v24;
        StringProtocol.localizedLowercase.getter();

        if (String.count.getter() < 4)
        {
          v26._countAndFlagsBits = v52;
          v26._object = v51;
          v27 = String.hasPrefix(_:)(v26);

          v17 = v47;
          v15 = v48;
          if (v27)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v25 = String.count.getter();
          if (String.count.getter() < v25)
          {

            v17 = v47;
            v15 = v48;
            goto LABEL_7;
          }

          v28 = String.count.getter();
          v29 = specialized Collection.prefix(_:)(v28);
          v31 = v30;
          v33 = v32;
          v35 = v34;

          MEMORY[0x24C1FAE00](v29, v31, v33, v35);

          v36._countAndFlagsBits = v52;
          v36._object = v51;
          v37 = String.doc_editDistance(from:)(v36);

          if (v37 > 3)
          {
            v9 = v45;
            v8 = v46;
            v17 = v47;
            v15 = v48;
          }

          else
          {
            v38 = 100.0 - v37 * 100.0 / String.count.getter();
            if (v38 <= 0.0)
            {
              v38 = 0.0;
            }

            v9 = v45;
            v8 = v46;
            v17 = v47;
            v15 = v48;
            if (v38 * 0.98 >= 70.0)
            {
LABEL_16:
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              goto LABEL_7;
            }
          }
        }

LABEL_7:
        ++v12;
        if (v20 == v17)
        {
          v12 = v53;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

LABEL_24:

    swift_unknownObjectRetain();
    specialized Sequence.forEach(_:)(v12, v52, v51, v8, v9, &v54);

    v39 = swift_unknownObjectRelease();
    if ((*((*MEMORY[0x277D85000] & *v44) + 0x60))(v39))
    {
      v41 = v40;
      v42 = swift_getObjectType();
      (*(v41 + 8))(v44, v54, forSearchId, v52, v51, v42, v41);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id closure #2 in DOCTagSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *a1;
  result = [objc_opt_self() defaultFontForTextStyle_];
  if (result)
  {
    v11 = result;
    [result pointSize];
    v13 = v12;

    v40 = swift_allocObject();
    *(v40 + 16) = v13 + -2.0;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v14;
    MEMORY[0x24C1FAEA0](0x22203D3D20, 0xE500000000000000);
    v15 = [v9 displayName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    MEMORY[0x24C1FAEA0](v16, v18);

    MEMORY[0x24C1FAEA0](34, 0xE100000000000000);
    v19 = v45;
    v20 = objc_allocWithZone(type metadata accessor for DOCQueryFragmentSuggestion());
    v21 = &v20[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCQueryFragmentSuggestion_queryStringFragment];
    *v21 = v44;
    v21[1] = v19;
    v20[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
    v22 = &v20[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
    *v22 = a2;
    v22[1] = a3;
    v43.receiver = v20;
    v43.super_class = type metadata accessor for DOCSearchSuggestion();

    v23 = objc_msgSendSuper2(&v43, sel_init);
    v24 = [v9 &selRef_containsObject_];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v23) + 0xB8))(v25, v27);
    v29 = v23;
    v30 = [v9 &selRef_containsObject_];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    (*((*v28 & *v29) + 0xE8))(v31, v33);
    (*((*v28 & *v29) + 0x1C0))(7);
    v34 = swift_allocObject();
    v34[2] = a4;
    v34[3] = a5;
    v34[4] = v9;
    v34[5] = partial apply for closure #1 in closure #2 in DOCTagSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:);
    v34[6] = v40;
    v35 = *((*v28 & *v29) + 0x130);
    swift_unknownObjectRetain();
    v36 = v9;

    v35(partial apply for closure #2 in closure #2 in DOCTagSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:), v34);
    v37 = swift_allocObject();
    v37[2] = a4;
    v37[3] = a5;
    v37[4] = v36;
    v37[5] = partial apply for closure #1 in closure #2 in DOCTagSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:);
    v37[6] = v40;
    v38 = *((*MEMORY[0x277D85000] & *v29) + 0x160);
    swift_unknownObjectRetain();
    v39 = v36;

    v38(partial apply for closure #3 in closure #2 in DOCTagSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:), v37);

    MEMORY[0x24C1FB090]();
    if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double closure #1 in closure #2 in DOCTagSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(double a1)
{
  v2 = [objc_opt_self() defaultMetrics];
  [v2 scaledValueForValue_];
  v4 = v3;

  return v4;
}

uint64_t closure #2 in closure #2 in DOCTagSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  ObjectType = swift_getObjectType();
  v8 = [objc_opt_self() tertiarySystemBackgroundColor];
  a4();
  v9 = (*(a2 + 8))(a3, v8, 0, ObjectType, a2);

  return v9;
}

uint64_t closure #3 in closure #2 in DOCTagSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  ObjectType = swift_getObjectType();
  v10 = [v7 systemBackgroundColor];
  a4();
  v11 = (*(a2 + 8))(a3, v10, v8, ObjectType, a2);

  return v11;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCPersonSuggester.DOCPerson()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  v3 = MEMORY[0x24C1FAF70](v1, v2);
  MEMORY[0x24C1FCBD0](v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCPersonSuggester.DOCPerson()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  v3 = MEMORY[0x24C1FAF70](v1, v2);
  MEMORY[0x24C1FCBD0](v3);
  return Hasher._finalize()();
}

void DOCPersonSuggester.gatherAvailablePersons(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCPersonSuggester_currentQuery;
  [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCPersonSuggester_currentQuery) cancel];
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84FA0];
  _StringGuts.grow(_:)(33);

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x24C1FAEA0](v7);

  MEMORY[0x24C1FAEA0](0x2620292A203D3D20, 0xEB00000000282026);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x24C1FAEA0](v8);

  MEMORY[0x24C1FAEA0](0x7C7C202A203D3D20, 0xE900000000000020);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x24C1FAEA0](v9);

  MEMORY[0x24C1FAEA0](0x292A203D3D20, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249B9FA70;
  *(v10 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v10 + 40) = v11;
  *(v10 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v10 + 56) = v12;
  v13 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v13 setFetchAttributes_];

  v15 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v16 = v13;
  v17 = MEMORY[0x24C1FAD20](40, 0xE100000000000000);

  v18 = [v15 initWithQueryString:v17 queryContext:v16];

  v28 = partial apply for closure #1 in DOCPersonSuggester.gatherAvailablePersons(with:);
  v29 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed (@guaranteed [CSSearchableItem]) -> ();
  v27 = &block_descriptor_80_1;
  v19 = _Block_copy(&aBlock);

  [v18 setFoundItemsHandler_];
  _Block_release(v19);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v6;
  v28 = partial apply for closure #2 in DOCPersonSuggester.gatherAvailablePersons(with:);
  v29 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v27 = &block_descriptor_86_4;
  v21 = _Block_copy(&aBlock);

  [v18 setCompletionHandler_];
  _Block_release(v21);
  [v18 start];
  v22 = *(v3 + v5);
  *(v3 + v5) = v18;
}

uint64_t closure #1 in closure #1 in DOCPersonSuggester.gatherAvailablePersons(with:)(id *a1)
{
  v1 = *a1;
  v2 = [*a1 attributeSet];
  v3 = [v2 lastEditorName];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v21[0] = v5;
  v6 = [v1 attributeSet];
  v7 = [v6 ownerName];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = 0;
  v21[1] = v8;
  v21[2] = v10;
  v12 = MEMORY[0x277D84F90];
LABEL_8:
  v13 = &v21[2 * v11];
  while (++v11 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  swift_arrayDestroy();
  specialized Sequence.forEach(_:)(v12);
}

uint64_t closure #2 in DOCPersonSuggester.gatherAvailablePersons(with:)(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();

  a2(v4, a1);
}

Swift::Void __swiftcall DOCPersonSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(Swift::String a1, Swift::Int forSearchId, Swift::OpaquePointer confirmedSuggestions)
{
  v4 = v3;
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0x60))(a1._countAndFlagsBits, a1._object, forSearchId, confirmedSuggestions._rawValue);
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.localizedLowercase.getter();
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = MEMORY[0x277D84F90];
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = v9;
    v14[4] = v4;
    v14[5] = forSearchId;
    v14[6] = v10;
    v14[7] = v12;
    v14[8] = v13;
    swift_unknownObjectRetain();
    v15 = v4;

    DOCPersonSuggester.gatherAvailablePersons(with:)(partial apply for closure #1 in DOCPersonSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:), v14);
    swift_unknownObjectRelease();
  }
}

uint64_t closure #1 in DOCPersonSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(int a1, id a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a6;
  if (a2)
  {
    v15 = a2;
    v16 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    type metadata accessor for related decl 'e' for CSSearchQueryErrorCode(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v11 = a6;
LABEL_12:
      ObjectType = swift_getObjectType();
      (*(a4 + 8))(a5, MEMORY[0x277D84F90], v11, a7, a8, ObjectType, a4);

      goto LABEL_13;
    }

    v34 = a5;
    v17 = v36;
    lazy protocol witness table accessor for type related decl 'e' for CSSearchQueryErrorCode and conformance related decl 'e' for CSSearchQueryErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for CSSearchQueryErrorCode and conformance related decl 'e' for CSSearchQueryErrorCode, type metadata accessor for related decl 'e' for CSSearchQueryErrorCode);
    _BridgedStoredNSError.code.getter();
    if (v36 != -2003)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.UI);
      v19 = v36;
      v17 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v20))
      {
        v32 = v17;
        v21 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v21 = 138412290;
        v33 = v19;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v22;
        *v31 = v22;
        _os_log_impl(&dword_2493AC000, v32, v20, "An error occurred while querying for all available persons: %@", v21, 0xCu);
        outlined destroy of CharacterSet?(v31, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v31, -1, -1);
        MEMORY[0x24C1FE850](v21, -1, -1);

LABEL_11:
        a5 = v34;
        v11 = a6;
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

LABEL_13:

  v25 = specialized _NativeSet.filter(_:)(v24, a7, a8);

  specialized Sequence.forEach(_:)(v25, a7, a8, (a9 + 16));

  v26 = swift_getObjectType();
  swift_beginAccess();
  v27 = *(a9 + 16);
  v28 = a5;
  v29 = *(a4 + 8);

  v29(v28, v27, v11, a7, a8, v26, a4);
}

void closure #2 in closure #1 in DOCPersonSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v53 = a4;
  v63 = a3;
  v55 = a2;
  v5 = type metadata accessor for CharacterSet();
  v54 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v56 = v12;
  v57 = v14;
  MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
  v61 = 10786;
  v62 = 0xE200000000000000;
  v15 = String.doc_searchEscapedString.getter(v10, v11);
  MEMORY[0x24C1FAEA0](v15);

  MEMORY[0x24C1FAEA0](8746, 0xE200000000000000);
  v59 = v10;
  v60 = v11;
  CharacterSet.init()();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  v16 = MEMORY[0x277D837D0];
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v18 = v17;
  v19 = *(v6 + 8);
  v19(v9, v5);
  if (v18)
  {
    v20 = 1952741219;
  }

  else
  {
    v20 = 0x7473647763;
  }

  if (v18)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v20, v21);

  MEMORY[0x24C1FAEA0](v61, v62);

  MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x24C1FAEA0](v22);

  MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
  v61 = 10786;
  v62 = 0xE200000000000000;
  v23 = String.doc_searchEscapedString.getter(v10, v11);
  MEMORY[0x24C1FAEA0](v23);
  v24 = v16;

  MEMORY[0x24C1FAEA0](8746, 0xE200000000000000);
  v59 = v10;
  v60 = v11;
  CharacterSet.init()();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v26 = v25;
  v19(v9, v54);
  if (v26)
  {
    v27 = 1952741219;
  }

  else
  {
    v27 = 0x7473647763;
  }

  if (v26)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v27, v28);

  MEMORY[0x24C1FAEA0](v61, v62);

  v29 = v56;
  v30 = v57;
  v31 = objc_allocWithZone(type metadata accessor for DOCQueryFragmentSuggestion());
  v32 = &v31[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCQueryFragmentSuggestion_queryStringFragment];
  *v32 = v29;
  v32[1] = v30;
  v31[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
  v33 = &v31[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
  v34 = v63;
  *v33 = v55;
  v33[1] = v34;
  v35 = type metadata accessor for DOCSearchSuggestion();
  v58.receiver = v31;
  v58.super_class = v35;

  v36 = objc_msgSendSuper2(&v58, sel_init);
  v37 = _DocumentManagerBundle();
  if (v37)
  {
    v38 = v37;
    v64._object = 0x8000000249BFE970;
    v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v39.value._object = 0xEB00000000656C62;
    v40._countAndFlagsBits = 0x6220646572616853;
    v40._object = 0xEC00000040252079;
    v41._countAndFlagsBits = 0x6220646572616853;
    v41._object = 0xEC00000040252079;
    v64._countAndFlagsBits = 0xD00000000000003BLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v39, v38, v41, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_249B9A480;
    *(v42 + 56) = v24;
    *(v42 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v42 + 32) = v10;
    *(v42 + 40) = v11;
    v43 = v36;

    v44 = String.init(format:_:)();
    v46 = v45;

    v47 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v43) + 0xB8))(v44, v46);
    v48 = *((*v47 & *v43) + 0xE8);
    v49 = v43;

    v48(v10, v11);

    (*((*v47 & *v49) + 0x1C0))(8);
    v50 = v53;
    v51 = swift_beginAccess();
    MEMORY[0x24C1FB090](v51);
    if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

id DOCPersonSuggester.init(configuration:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCPersonSuggester_currentQuery] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCSuggester();
  return objc_msgSendSuper2(&v4, sel_init);
}

id DOCQueryFragmentSuggestion.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy26DocumentManagerExecutables18DOCPersonSuggesterC0L033_4B0919F08E5F790AA08A839C1D7CB05FLLVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_26ij13Executables18lm8C0I033_4nopqrstuV8FLLV_TG5ANxSbs5Error_pRi_zRi0_zlyAMIsgndzo_Tf1nc_n04_s26ij13Executables18lm98C18deliverSuggestions3for0H8SearchId09confirmedG0ySS_SiSayAA19DOCSearchSuggestionCGtFyShyAC0D033_4nopqrstuV31FLLVG_s5Error_pSgtcfU_SbAMXEfU_SSTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v10 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](v10, a1);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v18 = v11;
      closure #2 in DOCTagSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(&v18, a2, a3, a4, a5, a6);

      if (!v6)
      {
        ++v10;
        if (v13 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a4;
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a1 + 48) + 24 * (__clz(__rbit64(v10)) | (v14 << 6)));
      v16 = v15[1];
      v17 = v15[2];
      v19[0] = *v15;
      v19[1] = v16;
      v19[2] = v17;

      closure #2 in closure #1 in DOCPersonSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(v19, a2, a3, v20);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

id specialized DOCTagSuggester.init(configuration:dataSource:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v8 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCTagSuggester_dataSource];
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCTagSuggester_dataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v8 + 1) = a5;
  swift_unknownObjectWeakAssign();
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v11.receiver = a3;
  v11.super_class = type metadata accessor for DOCSuggester();
  v9 = a1;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t specialized DOCPersonSuggester.DOCPerson.matches(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.localizedLowercase.getter();
  v6 = v5;
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = v4;
    v9 = 0;
    v10 = a3 + 40;
    while (1)
    {
      if (v9)
      {
        v9 = 1;
      }

      else
      {

        if (String.count.getter() < 4)
        {
          v22._countAndFlagsBits = v8;
          v22._object = v6;
          v9 = String.hasPrefix(_:)(v22);
        }

        else
        {
          v11 = String.count.getter();
          if (String.count.getter() < v11)
          {
            goto LABEL_10;
          }

          result = String.count.getter();
          if (result < 0)
          {
            __break(1u);
            return result;
          }

          String.index(_:offsetBy:limitedBy:)();
          v13 = String.subscript.getter();
          v15 = v14;
          v17 = v16;
          v19 = v18;

          MEMORY[0x24C1FAE00](v13, v15, v17, v19);

          v20._countAndFlagsBits = v8;
          v20._object = v6;
          v21 = String.doc_editDistance(from:)(v20);

          if (v21 < 4)
          {
            v23 = v21 * 100.0;
            v24 = String.count.getter();

            v25 = 100.0 - v23 / v24;
            if (v25 <= 0.0)
            {
              v25 = 0.0;
            }

            v9 = v25 * 0.98 >= 70.0;
          }

          else
          {
LABEL_10:

            v9 = 0;
          }
        }
      }

      v10 += 16;
      if (!--v7)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = 0;
LABEL_16:

  return v9;
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = 0;
  v20 = result;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 24 * v15 + 16);

    v17 = specialized DOCPersonSuggester.DOCPerson.matches(_:)(a4, a5, v16);

    if (v17)
    {
      *(v20 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:

        return specialized _NativeSet.extractSubset(using:count:)(v20, a2, v21, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v32 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v31 = a3;

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = v8;
    v27 = v4;
    v25 = &v25;
    MEMORY[0x28223BE20](v10, v11);
    v28 = &v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v9);
    v29 = 0;
    v9 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v8 = (v12 + 63) >> 6;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v4 = v15 | (v9 << 6);
      v18 = *(*(a1 + 48) + 24 * v4 + 16);

      v19 = specialized DOCPersonSuggester.DOCPerson.matches(_:)(v30, v31, v18);

      if (v19)
      {
        *&v28[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v21 = specialized _NativeSet.extractSubset(using:count:)(v28, v26, v29, a1);

          return v21;
        }
      }
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        goto LABEL_16;
      }

      v17 = *(a1 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = v31;

  v21 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy26DocumentManagerExecutables18DOCPersonSuggesterC0L033_4B0919F08E5F790AA08A839C1D7CB05FLLVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_26ij13Executables18lm8C0I033_4nopqrstuV8FLLV_TG5ANxSbs5Error_pRi_zRi0_zlyAMIsgndzo_Tf1nc_n04_s26ij13Executables18lm98C18deliverSuggestions3for0H8SearchId09confirmedG0ySS_SiSayAA19DOCSearchSuggestionCGtFyShyAC0D033_4nopqrstuV31FLLVG_s5Error_pSgtcfU_SbAMXEfU_SSTf1nnc_n(v23, v8, a1, v30, v24);

  MEMORY[0x24C1FE850](v23, -1, -1);

  return v21;
}

uint64_t objectdestroy_92Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t lazy protocol witness table accessor for type related decl e for CSSearchQueryErrorCode and conformance related decl e for CSSearchQueryErrorCode(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type DOCPersonSuggester.DOCPerson and conformance DOCPersonSuggester.DOCPerson()
{
  result = lazy protocol witness table cache variable for type DOCPersonSuggester.DOCPerson and conformance DOCPersonSuggester.DOCPerson;
  if (!lazy protocol witness table cache variable for type DOCPersonSuggester.DOCPerson and conformance DOCPersonSuggester.DOCPerson)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCPersonSuggester.DOCPerson and conformance DOCPersonSuggester.DOCPerson);
  }

  return result;
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t DOCTabbedBrowserViewController.canPerformKeyCommandAction(_:with:)()
{
  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    return [v0 isShowingMovePanel] ^ 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v2 = [v0 configuration];
    LOBYTE(v0) = specialized static DOCTabbedBrowserViewController.connectToServerAllowed(for:)(v2);
LABEL_7:

    return v0 & 1;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    return 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
    v3 = *MEMORY[0x277D06140];
    v4 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v3, 3);

    if (v4)
    {
      v9 = [v4 isEnabled];

      return v9;
    }

    return 0;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      v2 = [v0 effectiveFullBrowser];
      v7 = [v2 effectiveBrowserViewController];
      v0 = v7;
      if (!v7)
      {
        goto LABEL_7;
      }

      v8 = (*((*MEMORY[0x277D85000] & *v7) + 0xE8))();

      if (v8)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        if (swift_dynamicCastClass())
        {
          LOBYTE(v0) = DOCItemCollectionViewController.canPerformSelectAll.getter();
        }

        else
        {
          LOBYTE(v0) = 0;
        }

        v2 = v8;
        goto LABEL_7;
      }
    }

    else
    {
      if ((static Selector.== infix(_:_:)() & 1) == 0)
      {
        if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
        {
          return 1;
        }

        if ((static Selector.== infix(_:_:)() & 1) == 0)
        {
          return 2;
        }

        if (specialized static DOCDocumentScannerUtil.canPresentScanner.getter())
        {
          v21 = [v0 configuration];
          v22 = [v21 isPickerUI];

          return v22 ^ 1;
        }

        return 0;
      }

      v10 = [v0 effectiveFullBrowser];
      v11 = [v10 effectiveBrowserViewController];
      if (v11)
      {
        v12 = v11;
        v13 = MEMORY[0x277D85000];
        v14 = (*((*MEMORY[0x277D85000] & *v11) + 0xE8))();

        if (v14)
        {
          type metadata accessor for DOCItemCollectionViewController(0);
          v15 = swift_dynamicCastClass();
          if (v15)
          {
            v16 = v15;
            v17 = (*((*v13 & *v15) + 0x1338))();
            v18 = v17 >> 62 ? __CocoaSet.count.getter() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (v18 >= 1)
            {
              v20 = (*((*MEMORY[0x277D85000] & *v16) + 0x1448))(v19);

              return (v20 ^ 1) & 1;
            }
          }
        }
      }

      else
      {
      }
    }

    return 0;
  }

  result = [v0 canRevealSidebar];
  if (result)
  {
    v5 = [v0 splitBrowserViewController];
    v6 = [v5 fullDocumentManagerViewController];

    LODWORD(v5) = [v6 canGoToEnclosingFolder];
    return v5 ^ 1;
  }

  return result;
}

void DOCTabbedBrowserViewController.selectAll(_:)(uint64_t a1)
{
  v3 = [v1 splitBrowserViewController];
  v4 = [v3 fullDocumentManagerViewController];

  DOCFullDocumentManagerViewController.performSelectAll(_:enteringEditMode:)(a1, 0);
}

void DOCTabbedBrowserViewController.performDeselectAll(_:)()
{
  v1 = [v0 splitBrowserViewController];
  v8 = [v1 fullDocumentManagerViewController];

  v2 = [v8 effectiveBrowserViewController];
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *v2) + 0xE8))();

    if (!v5)
    {
      return;
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      (*((*v4 & *v6) + 0x1308))();
    }

    v7 = v5;
  }

  else
  {
    v7 = v8;
  }
}

Swift::Void __swiftcall DOCTabbedBrowserViewController.performGoToEnclosingFolder(_:)(UIKeyCommand *a1)
{
  v2 = [v1 splitBrowserViewController];
  [v2 showSidebar];
}

void DOCTabbedBrowserViewController.performGoToNamedLocation(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 namedLocationResolver];
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v12[4] = closure #1 in DOCTabbedBrowserViewController.performGoToNamedLocation(_:completion:)partial apply;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?) -> ();
  v12[3] = &block_descriptor_7;
  v10 = _Block_copy(v12);
  v11 = v4;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);

  [v8 resolveNamedLocation:a1 completion:v10];
  _Block_release(v10);
}

void DOCTabbedBrowserViewController.performGoToDocuments(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  v10 = [v5 namedLocationResolver];
  v11 = swift_allocObject();
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v9;
  v14[4] = a3;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?) -> ();
  v14[3] = a4;
  v12 = _Block_copy(v14);
  v13 = v9;

  [v10 resolveNamedLocation:a5 completion:v12];
  _Block_release(v12);
}

void @objc DOCTabbedBrowserViewController.performGoToDocuments(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a1;
  v11 = [v10 namedLocationResolver];
  v12 = swift_allocObject();
  v12[3] = 0;
  v12[4] = 0;
  v12[2] = v10;
  v15[4] = a5;
  v15[5] = v12;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?) -> ();
  v15[3] = a6;
  v13 = _Block_copy(v15);
  v14 = v10;

  [v11 resolveNamedLocation:a7 completion:v13];

  _Block_release(v13);
}

Swift::Void __swiftcall DOCTabbedBrowserViewController.performGoToOnMyDevice(_:)(UIKeyCommand *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:*MEMORY[0x277D060F0] node:0];
  [v1 switchToLocation_];
}

Swift::Void __swiftcall DOCTabbedBrowserViewController.performGoToShared(_:)(UIKeyCommand *a1)
{
  v2 = [objc_opt_self() sharedItemsLocation];
  [v1 switchToLocation_];
}

Swift::Void __swiftcall DOCTabbedBrowserViewController.runEmptyTrash(skipConfirmation:_:)(Swift::Bool skipConfirmation, UIKeyCommand *_)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = _;
  *(v5 + 32) = skipConfirmation;
  v6 = v2;
  v7 = _;
  _s26DocumentManagerExecutables24DOCSidebarViewControllerC15fetchTrashItems4from17completionHandleryAA0H8Observer_p_ySaySo6FPItemCGctFZTf4enn_nSo016DOCTabbedBrowsereF0C_Tt1g5Tm(v6, closure #1 in DOCTabbedBrowserViewController.runEmptyTrash(skipConfirmation:_:)partial apply, v5, &unk_285CB2F70, partial apply for closure #1 in static DOCSidebarViewController.fetchTrashItems(from:completionHandler:), _s26DocumentManagerExecutables24DOCSidebarViewControllerC15fetchTrashItems4from17completionHandleryAA0H8Observer_p_ySaySo6FPItemCGctFZyAJcfU0_TA_0, &block_descriptor_84_2);
}

uint64_t DOCTabbedBrowserViewController.performEmptyTrash(_:)(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a3;
  v9 = v4;
  v10 = a1;
  _s26DocumentManagerExecutables24DOCSidebarViewControllerC15fetchTrashItems4from17completionHandleryAA0H8Observer_p_ySaySo6FPItemCGctFZTf4enn_nSo016DOCTabbedBrowsereF0C_Tt1g5Tm(v9, a4, v8, &unk_285CB2F70, partial apply for closure #1 in static DOCSidebarViewController.fetchTrashItems(from:completionHandler:), _s26DocumentManagerExecutables24DOCSidebarViewControllerC15fetchTrashItems4from17completionHandleryAA0H8Observer_p_ySaySo6FPItemCGctFZyAJcfU0_TA_0, &block_descriptor_84_2);
}

void @objc DOCTabbedBrowserViewController.performEmptyTrash(_:)(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a3;
  *(v10 + 32) = a5;
  v11 = a3;
  v13 = a1;
  v12 = v11;
  _s26DocumentManagerExecutables24DOCSidebarViewControllerC15fetchTrashItems4from17completionHandleryAA0H8Observer_p_ySaySo6FPItemCGctFZTf4enn_nSo016DOCTabbedBrowsereF0C_Tt1g5Tm(v13, a6, v10, &unk_285CB2F70, partial apply for closure #1 in static DOCSidebarViewController.fetchTrashItems(from:completionHandler:), _s26DocumentManagerExecutables24DOCSidebarViewControllerC15fetchTrashItems4from17completionHandleryAA0H8Observer_p_ySaySo6FPItemCGctFZyAJcfU0_TA_0, &block_descriptor_84_2);
}

void closure #1 in DOCTabbedBrowserViewController.runEmptyTrash(skipConfirmation:_:)(unint64_t a1, void *a2, uint64_t a3, char a4)
{
  v6 = a1;
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v32 = v7;
  v8 = *MEMORY[0x277D05F90];
  v9 = _DocumentManagerBundle();
  if (v9)
  {
    v10 = v9;
    v35._object = 0x8000000249BD4280;
    v11._countAndFlagsBits = 0x41206574656C6544;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v11._object = 0xEA00000000006C6CLL;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v35._countAndFlagsBits = 0xD00000000000002FLL;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v35);

    v15 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v16 = MEMORY[0x24C1FAD20](v14._countAndFlagsBits, v14._object);

    aBlock[4] = closure #1 in static UIDocumentBrowserAction.deleteAllAction();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    aBlock[3] = &block_descriptor_87_4;
    v17 = _Block_copy(aBlock);
    v18 = [v15 initWithIdentifier:v8 localizedTitle:v16 unresolvedHandler:v17];

    _Block_release(v17);

    v19 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
    v20 = [objc_opt_self() systemImageNamed_];

    [v18 setImage_];
    [v18 setAvailability_];
    [v18 setNavigationSide_];
    [v18 setMenuSortOrder_];
    [v18 setActionStyle_];
    [v18 setRequiresFullyFormedItems_];
    v31 = [objc_allocWithZone(DOCActionManager) init];
    v21 = [a2 effectiveAppearance];
    v22 = [a2 configuration];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 32) = 0xD000000000000044;
    v24 = inited + 32;
    *(inited + 40) = 0x8000000249BDC970;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = a4 & 1;
    v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(v24, &_sSS_yptMd);
    v26 = type metadata accessor for DOCActionContext();
    v27 = objc_allocWithZone(v26);
    swift_unknownObjectWeakInit();
    *&v27[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
    *&v27[OBJC_IVAR___DOCActionContext_appearance] = v21;
    *&v27[OBJC_IVAR___DOCActionContext_configuration] = v22;
    *&v27[OBJC_IVAR___DOCActionContext_presentingViewController] = a2;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v27[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
    *&v27[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
    *&v27[OBJC_IVAR___DOCActionContext_userInfo] = v25;
    v33.receiver = v27;
    v33.super_class = v26;
    v28 = a2;
    v29 = objc_msgSendSuper2(&v33, sel_init);

    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v30 = _bridgeCocoaArray<A>(_:)();

      v6 = v30;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    specialized DOCActionManager.perform(_:on:actionContext:)(v18, v6, v29);
  }

  else
  {

    __break(1u);
  }
}

uint64_t closure #1 in DOCTabbedBrowserViewController.performGoToNamedLocation(_:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v32 - v16;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_249B9A480;
  outlined init with copy of URL?(a1, v17);
  v19 = String.init<A>(describing:)();
  v21 = v20;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  os_log(_:dso:log:type:_:)();

  outlined init with copy of URL?(a1, v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    return outlined destroy of CharacterSet?(v13, &_s10Foundation3URLVSgMd);
  }

  v23 = v5;
  (*(v6 + 32))(v9, v13, v5);
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  v27 = swift_allocObject();
  v28 = v33;
  v29 = v34;
  v27[2] = v33;
  v27[3] = v29;
  v27[4] = v35;
  aBlock[4] = partial apply for closure #1 in closure #1 in DOCTabbedBrowserViewController.performGoToNamedLocation(_:completion:);
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_93;
  v30 = _Block_copy(aBlock);
  v31 = v28;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v29);

  [v31 revealDocumentAtURL:v26 importIfNeeded:0 openDocument:0 revealContents:1 updateLastUsedDate:1 completion:v30];
  _Block_release(v30);

  return (*(v6 + 8))(v9, v23);
}