uint64_t String.isTypeable.getter()
{

  if (!String.Iterator.next()().value._object)
  {
LABEL_10:
    v1 = 1;
    goto LABEL_11;
  }

  while ((Character.isLetter.getter() & 1) != 0 || (Character.isNumber.getter() & 1) != 0 || (Character.isSymbol.getter() & 1) != 0)
  {

LABEL_4:
    if (!String.Iterator.next()().value._object)
    {
      goto LABEL_10;
    }
  }

  v0 = Character.isPunctuation.getter();

  if (v0)
  {
    goto LABEL_4;
  }

  v1 = 0;
LABEL_11:

  return v1;
}

uint64_t specialized RangeReplaceableCollection.removeFirst(_:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = String.index(_:offsetBy:limitedBy:)();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x2821FBD18](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v1);
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSo6FPItemCSg_Tt1g5Tf4gn_nTm(void *result, uint64_t a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v6 = v5;
    *(v5 + 16) = a2;
    *(v5 + 32) = v4;
    v7 = a2 - 1;
    if (v7)
    {
      v8 = (v5 + 40);
      do
      {
        *v8++ = v4;
        v9 = v4;
        --v7;
      }

      while (v7);
    }

    v10 = v4;
    return v6;
  }

  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSS_Tt1g5Tf4gn_n(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result)
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

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_23:
    v10 = result;
    v4 = __CocoaSet.count.getter();
    result = v10;
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_25;
  }

LABEL_4:
  v6 = -result;
  if (v5 > 0 || v5 <= v6)
  {
    v7 = v4 - result;
    if (__OFADD__(v4, v6))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v7 < 0)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!v3)
    {
LABEL_7:
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = __CocoaSet.count.getter();
LABEL_13:
  if (result < v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v2 & 0xC000000000000001) != 0 && v7)
  {
    type metadata accessor for DOCBrowserContainerController();

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v8);
      v8 = v9;
    }

    while (v7 != v9);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return _CocoaArrayWrapper.subscript.getter();
}

uint64_t SetFilenameExtensionVisibilityIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v34 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v32 = v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v31 = v30 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v20 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v30[0] = type metadata accessor for LocalizedStringResource();
  v22 = *(v30[0] - 8);
  MEMORY[0x28223BE20](v30[0], v23);
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables17ShowHideOperationOGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v14 + 104);
  v25(v17, v24, v13);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v17, v24, v13);
  v26 = v31;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v22 + 56))(v26, 0, 1, v30[0]);
  v38 = 2;
  v27 = type metadata accessor for IntentDialog();
  v28 = *(*(v27 - 8) + 56);
  v28(v32, 1, 1, v27);
  v28(v33, 1, 1, v27);
  (*(v35 + 104))(v34, *MEMORY[0x277CBA308], v36);
  lazy protocol witness table accessor for type ShowHideOperation and conformance ShowHideOperation();
  result = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  *v37 = result;
  return result;
}

DocumentManagerExecutables::ShowHideOperation_optional __swiftcall ShowHideOperation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ShowHideOperation.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t ShowHideOperation.rawValue.getter()
{
  v1 = 2003789939;
  if (*v0 != 1)
  {
    v1 = 1701079400;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C67676F74;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ShowHideOperation(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 2003789939;
  if (v2 != 1)
  {
    v3 = 1701079400;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x656C67676F74;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 2003789939;
  if (*a2 != 1)
  {
    v6 = 1701079400;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x656C67676F74;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ShowHideOperation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ShowHideOperation()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ShowHideOperation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ShowHideOperation(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 2003789939;
  if (v2 != 1)
  {
    v4 = 1701079400;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x656C67676F74;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance ShowHideOperation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShowHideOperation and conformance ShowHideOperation();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance ShowHideOperation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShowHideOperation and conformance ShowHideOperation();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier;

  return v0;
}

uint64_t static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier = a1;
  off_27EEEDE20 = a2;
}

uint64_t key path setter for static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier : SetFilenameExtensionVisibilityIntent.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier = v2;
  off_27EEEDE20 = v1;
}

void (*SetFilenameExtensionVisibilityIntent.operation.modify(uint64_t *a1))(void *a1)
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

uint64_t static SetFilenameExtensionVisibilityIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BEBFB0;
  v4._countAndFlagsBits = 0xD00000000000003BLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentV10AppIntents0J9ParameterCyAC17ShowHideOperationOGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance SetFilenameExtensionVisibilityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static SetFilenameExtensionVisibilityIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.parameterSummary.getter in conformance SetFilenameExtensionVisibilityIntent()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BEBFB0;
  v4._countAndFlagsBits = 0xD00000000000003BLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentV10AppIntents0J9ParameterCyAC17ShowHideOperationOGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t specialized static ShowHideOperation.caseDisplayRepresentations.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v56 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v55 = &v40 - v5;
  v54 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v47 = type metadata accessor for LocalizedStringResource();
  v57 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables17ShowHideOperationO_10AppIntents21DisplayRepresentationVtGMd);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17ShowHideOperationO_10AppIntents21DisplayRepresentationVtMd);
  v46 = v17;
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v44 = 2 * v18;
  v20 = swift_allocObject();
  v45 = v20;
  *(v20 + 16) = xmmword_249BA08C0;
  v21 = v20 + v19;
  v42 = *(v17 + 48);
  *(v20 + v19) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  v40 = v13;
  static Locale.current.getter();
  v22 = *MEMORY[0x277CC9110];
  v23 = *(v6 + 104);
  v43 = v6 + 104;
  v50 = v23;
  v24 = v9;
  v25 = v9;
  v26 = v22;
  v41 = v22;
  (v23)(v25);
  v27 = v24;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v28 = *(v57 + 56);
  v57 += 56;
  v53 = v28;
  v29 = v47;
  v28(v55, 1, 1, v47);
  v49 = type metadata accessor for DisplayRepresentation.Image();
  v30 = *(v49 - 8);
  v48 = *(v30 + 56);
  v52 = v30 + 56;
  v48(v56, 1, 1, v49);
  v51 = v21;
  DisplayRepresentation.init(title:subtitle:image:)();
  v31 = v46;
  v42 = *(v46 + 48);
  *(v21 + v18) = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = v26;
  v33 = v54;
  v50(v27, v32, v54);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v34 = v55;
  v53(v55, 1, 1, v29);
  v35 = v56;
  v48(v56, 1, 1, v49);
  v36 = v35;
  DisplayRepresentation.init(title:subtitle:image:)();
  v37 = (v51 + v44);
  v44 = *(v31 + 48);
  *v37 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v50(v27, v41, v33);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v53(v34, 1, 1, v47);
  v48(v36, 1, 1, v49);
  DisplayRepresentation.init(title:subtitle:image:)();
  v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables17ShowHideOperationO_10AppIntents21DisplayRepresentationVTt0g5Tf4g_n(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v38;
}

uint64_t DOCNodeContextMenuConfiguration.nodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCNodeContextMenuConfiguration_nodes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCNodeContextMenuConfiguration.presentingNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCNodeContextMenuConfiguration_presentingNode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id DOCNodeContextMenuConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCNodeContextMenuConfiguration.init()()
{
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCNodeContextMenuConfiguration_nodes] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCNodeContextMenuConfiguration_presentingNode] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCNodeContextMenuConfiguration();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCNodeContextMenuConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCNodeContextMenuConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static DOCPreviewRouter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static DOCPreviewRouter.shared.setter(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCPreviewRouter.shared = a1;
}

uint64_t (*static DOCPreviewRouter.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static DOCPreviewRouter.shared : DOCPreviewRouter.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCPreviewRouter.shared;
}

uint64_t key path setter for static DOCPreviewRouter.shared : DOCPreviewRouter.Type(void **a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCPreviewRouter.shared = v1;
}

void DOCPreviewRouter.present(contentsOf:contextIfPresentingInApp:didPresent:)(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  if (one-time initialization token for Preview != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.Preview);
  v10 = v8;
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21[0] = v16;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x8000000249BEC220, v21);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *(v14 + 22) = 2112;
    *(v14 + 24) = v11;
    *v15 = v10;
    v15[1] = v11;
    v17 = v10;
    v18 = v11;
    _os_log_impl(&dword_2493AC000, v12, v13, "[Interaction] 1. %s Received request to present (on %@): %@", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1FE850](v16, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v21[4] = partial apply for closure #1 in DOCPreviewRouter.present(contentsOf:contextIfPresentingInApp:didPresent:);
  v21[5] = v19;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21[3] = &block_descriptor_107;
  v20 = _Block_copy(v21);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a3);

  [v10 presentViewController:v11 animated:v7 completion:v20];
  _Block_release(v20);
}

void closure #1 in DOCPreviewRouter.present(contentsOf:contextIfPresentingInApp:didPresent:)(void (*a1)(void))
{
  if (one-time initialization token for Preview != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Preview);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x8000000249BEC220, &v7);
    _os_log_impl(&dword_2493AC000, v3, v4, "[Interaction] 2. %s presentation completed. Calling handler", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  if (a1)
  {
    a1();
  }
}

uint64_t DOCFileOperationCombinedProgress.init(operations:observing:)(uint64_t a1, uint64_t a2)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd);
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v6);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v22 = a2;
    v23 = v2;
    v26 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v26;
    v11 = 0;
    v25 = type metadata accessor for DOCFileOperation();
    v12 = *(v25 - 8);
    v13 = *(v12 + 80);
    v21 = a1;
    v14 = a1 + ((v13 + 32) & ~v13);
    v15 = v24;
    do
    {
      v16 = &v8[*(v15 + 28)];
      v16[3] = v25;
      v16[4] = &protocol witness table for DOCFileOperation;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
      outlined init with copy of DOCFileOperation(v14 + *(v12 + 72) * v11, boxed_opaque_existential_1);
      outlined init with copy of DOCFileOperation(boxed_opaque_existential_1, v8);
      v26 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
        v15 = v24;
        v10 = v26;
      }

      ++v11;
      *(v10 + 16) = v19 + 1;
      outlined init with take of DOCOperationProgress<DOCFileOperation>.OperationWithProvider(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19);
    }

    while (v9 != v11);

    a2 = v22;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  return specialized DOCOperationCombinedProgress.init(operationsWithProviders:observing:)(v10, a2, _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables20DOCOperationProgressCyAE16DOCFileOperationVGTt0g5Tf4g_n, partial apply for specialized closure #1 in DOCOperationCombinedProgress.init(operationsWithProviders:observing:));
}

uint64_t specialized DOCOperationCombinedProgress.init(operationsWithProviders:observing:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v33 = a4;
  v6 = v4;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v6 + direct field offset for DOCOperationCombinedProgress.updateHandler);
  *v14 = 0;
  v14[1] = 0;
  *(v6 + direct field offset for DOCOperationCombinedProgress.state) = 4;
  v15 = v6 + direct field offset for DOCOperationCombinedProgress.progressValue;
  *v15 = 0;
  *(v15 + 8) = 256;
  v16 = (v6 + direct field offset for DOCOperationCombinedProgress.debugID);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v10 + 8))(v13, v9);
  v17 = specialized Collection.prefix(_:)(6);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  *v16 = v17;
  v16[1] = v19;
  v16[2] = v21;
  v16[3] = v23;
  v24 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  v25 = MEMORY[0x277D84F90];
  *(v6 + v24) = a3(MEMORY[0x277D84F90]);
  *(v6 + direct field offset for DOCOperationCombinedProgress.clientRequestedEvents) = a2;
  v26 = a3(v25);
  swift_beginAccess();
  *(v6 + v24) = v26;

  *(v6 + 24) = 256;
  *(v6 + 32) = 0;
  v27 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
  v28 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v28 - 8) + 56))(v6 + v27, 1, 1, v28);
  *(v6 + 16) = 0x3FE0000000000000;
  v35 = a1;
  v36 = v6;
  v29 = *(*v6 + 232);

  v29(v33, v34);

  (*(*v6 + 552))(v30);

  return v6;
}

uint64_t DOCFileOperationCombinedProgress.add(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - v5;
  outlined init with copy of DOCFileOperation(a1, &v10 - v5);
  v7 = &v6[*(v3 + 36)];
  v7[3] = type metadata accessor for DOCFileOperation();
  v7[4] = &protocol witness table for DOCFileOperation;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  outlined init with copy of DOCFileOperation(a1, boxed_opaque_existential_1);
  specialized DOCOperationCombinedProgress.startTracking(operation:withProvider:)(v6, v7);
  return outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd);
}

_BYTE *specialized DOCOperationCombinedProgress.deinit(void (*a1)(void, void))
{
  swift_beginAccess();
  v1[25] = 1;
  (*(*v1 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
  swift_dynamicCast();
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v8);

  swift_dynamicCast();
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 40))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v8);
  outlined destroy of CharacterSet?(&v1[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState], &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd);
  a1(*&v1[direct field offset for DOCOperationCombinedProgress.updateHandler], *&v1[direct field offset for DOCOperationCombinedProgress.updateHandler + 8]);

  return v1;
}

_BYTE *DOCOperationCombinedProgress.deinit()
{
  swift_beginAccess();
  v0[25] = 1;
  (*(*v0 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
  swift_dynamicCast();
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v6);

  swift_dynamicCast();
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 40))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  outlined destroy of CharacterSet?(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState], &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*&v0[direct field offset for DOCOperationCombinedProgress.updateHandler]);

  return v0;
}

uint64_t DOCOperationCombinedProgress.updateHandler.getter()
{
  v1 = (v0 + direct field offset for DOCOperationCombinedProgress.updateHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1);
  return v2;
}

uint64_t DOCOperationCombinedProgress.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for DOCOperationCombinedProgress.updateHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

uint64_t DOCOperationCombinedProgress.state.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = direct field offset for DOCOperationCombinedProgress.state;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t DOCOperationCombinedProgress.state.setter(char *a1)
{
  v2 = *a1;
  v3 = direct field offset for DOCOperationCombinedProgress.state;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t DOCOperationCombinedProgress.progressValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for DOCOperationCombinedProgress.progressValue;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  v6 = *(v3 + 9);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 9) = v6;
  return result;
}

uint64_t DOCOperationCombinedProgress.progressValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = v1 + direct field offset for DOCOperationCombinedProgress.progressValue;
  result = swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = v4;
  return result;
}

Swift::Void __swiftcall DOCOperationCombinedProgress.reset()()
{
  v1 = v0;
  v2 = *v0;
  v3 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  v13[0] = *(v1 + v3);
  v12[2] = *(v2 + 296);
  type metadata accessor for DOCOperationProgress();
  v4 = MEMORY[0x277D84030];
  v5 = type metadata accessor for Dictionary();

  WitnessTable = swift_getWitnessTable();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DOCOperationCombinedProgress.reset(), v12, v5, v4, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v8 + 32;
    while (v10 < *(v8 + 16))
    {
      outlined init with copy of AnyHashable(v11, v13);
      DOCOperationCombinedProgress.stopTracking(operationWithIdentifier:)(v13);
      ++v10;
      outlined destroy of AnyHashable(v13);
      v11 += 40;
      if (v9 == v10)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    outlined destroy of AnyHashable(v13);
    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t DOCOperationCombinedProgress.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(32);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x24C1FAEA0](v2);

  MEMORY[0x24C1FAEA0](0x496775626564203ALL, 0xEC000000203D2044);
  v3 = *(v0 + direct field offset for DOCOperationCombinedProgress.debugID);
  v4 = *(v1 + direct field offset for DOCOperationCombinedProgress.debugID + 8);
  v5 = *(v1 + direct field offset for DOCOperationCombinedProgress.debugID + 16);
  v6 = *(v1 + direct field offset for DOCOperationCombinedProgress.debugID + 24);

  v7 = MEMORY[0x24C1FAE00](v3, v4, v5, v6);
  v9 = v8;

  MEMORY[0x24C1FAEA0](v7, v9);

  MEMORY[0x24C1FAEA0](0x20736D657469203BLL, 0xEB0000000028203DLL);
  v10 = DOCOperationCombinedProgress.operationProgressByID_shortDescription.getter();
  MEMORY[0x24C1FAEA0](v10);

  MEMORY[0x24C1FAEA0](15913, 0xE200000000000000);
  return 60;
}

uint64_t DOCOperationCombinedProgress.operationProgressByID_shortDescription.getter()
{
  v1 = *v0;
  v2 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  v10 = *(v0 + v2);
  v9[2] = *(v1 + 296);
  type metadata accessor for DOCOperationProgress();
  v3 = type metadata accessor for Dictionary();

  WitnessTable = swift_getWitnessTable();
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DOCOperationCombinedProgress.operationProgressByID_shortDescription.getter, v9, v3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v7 = BidirectionalCollection<>.joined(separator:)();

  return v7;
}

uint64_t specialized DOCOperationCombinedProgress.unorderedOperationProgress.getter()
{
  v1 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v25 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = v2 + 64;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v19 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_20;
      }

      v10 = *(v2 + 36);
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v6, v23);
      v11 = *(*(v2 + 56) + 8 * v6);
      v20[0] = v23[0];
      v20[1] = v23[1];
      v21 = v24;
      v22 = v11;

      outlined destroy of AnyHashable(v20);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v2 + 32);
      if (v6 >= v8)
      {
        goto LABEL_21;
      }

      v12 = *(v5 + 8 * v9);
      if ((v12 & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v10 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v13 = v12 & (-2 << (v6 & 0x3F));
      if (v13)
      {
        v8 = __clz(__rbit64(v13)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v9 << 6;
        v15 = v9 + 1;
        v16 = (v2 + 72 + 8 * v9);
        while (v15 < (v8 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = outlined consume of Set<UIPress>.Index._Variant(v6, v10, 0);
            v8 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<UIPress>.Index._Variant(v6, v10, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v19)
      {

        return v25;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t DOCOperationCombinedProgress.unorderedOperationProgress.getter()
{
  v1 = *v0;
  v2 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  v9[4] = *(v0 + v2);
  v9[2] = *(v1 + 296);
  v3 = type metadata accessor for DOCOperationProgress();
  v4 = type metadata accessor for Dictionary();

  WitnessTable = swift_getWitnessTable();
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DOCOperationCombinedProgress.unorderedOperationProgress.getter, v9, v4, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  return v7;
}

DocumentManagerExecutables::DOCPacedPropertyUpdaterNotifyType __swiftcall DOCOperationCombinedProgress.updateProperties()()
{
  DOCOperationCombinedProgress.computeNewState()(&v8);
  v1 = LOBYTE(v8);
  v2 = DOCOperationCombinedProgress.computeNewProgressValue()(&v8);
  v3 = v8;
  v4 = v9;
  v5 = v10;
  (*(*v0 + 376))(&v8, v2);
  if (LOBYTE(v8) == 4)
  {
    if (v1 != 4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v1 == 4)
    {
      goto LABEL_22;
    }

    if (LOBYTE(v8) == 2)
    {
      if (v1 != 2)
      {
        goto LABEL_22;
      }
    }

    else if (LOBYTE(v8) == 3)
    {
      if (v1 != 3)
      {
        goto LABEL_22;
      }
    }

    else if (v1 & 0xFE) == 2 || ((LOBYTE(v8) ^ v1))
    {
      goto LABEL_22;
    }
  }

  (*(*v0 + 400))(&v8);
  if ((v10 & 1) == 0)
  {
    if ((v5 & 1) == 0)
    {
      if (v9)
      {
        if ((v4 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if ((v4 & 1) != 0 || v8 != v3)
      {
        goto LABEL_22;
      }

      v6 = DocumentManagerExecutables_DOCPacedPropertyUpdaterNotifyType_doNotNotify;
      goto LABEL_23;
    }

LABEL_22:
    v6 = DocumentManagerExecutables_DOCPacedPropertyUpdaterNotifyType_paced;
    goto LABEL_23;
  }

  v6 = v5 ^ 1;
LABEL_23:
  LOBYTE(v8) = v1;
  (*(*v0 + 384))(&v8);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  (*(*v0 + 408))(&v8);
  return v6;
}

Swift::Void __swiftcall DOCOperationCombinedProgress.forceUpdateCombinedProgressImmediately()()
{
  DOCOperationCombinedProgress.unorderedOperationProgress.getter();
  type metadata accessor for DOCOperationProgress();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();

  (*(*v0 + 552))(v1);
}

Swift::Void __swiftcall DOCOperationCombinedProgress.notifyClient()()
{
  v1 = (*(*v0 + 352))();
  if (v1)
  {
    v2 = v1;
    v1();

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2);
  }
}

uint64_t DOCOperationCombinedProgress.installObservations()()
{
  DOCOperationCombinedProgress.unorderedOperationProgress.getter();
  type metadata accessor for DOCOperationProgress();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();
}

uint64_t specialized DOCOperationCombinedProgress.removeCancelledOperations()(void (*a1)(unint64_t, uint64_t), void (*a2)(void))
{
  v3 = v2;
  v4 = specialized DOCOperationCombinedProgress.unorderedOperationProgress.getter();
  v5 = v4;
  v42[0] = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_17:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x24C1FC540](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v10 = v42[0];
            goto LABEL_19;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_14;
          }
        }

        (*(*v8 + 512))(v39);
        if ((v39[0] & 0xFE) == 2 || (v39[0] & 1) == 0)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v7;
        if (v9 == v6)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_19:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_45;
  }

  v11 = *(v10 + 16);
LABEL_22:
  v12 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  if (v11)
  {
    v13 = 0;
    v14 = v10 & 0xC000000000000001;
    v37 = v11;
    v38 = v10;
    v35 = v12;
    v36 = v10 & 0xC000000000000001;
    do
    {
      if (v14)
      {
        v15 = MEMORY[0x24C1FC540](v13, v10);
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v13 >= *(v10 + 16))
        {
          goto LABEL_44;
        }

        v15 = *(v10 + 8 * v13 + 32);

        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v11 = __CocoaSet.count.getter();
          goto LABEL_22;
        }
      }

      (*(*v15 + 464))(v42);
      v17 = *(v3 + v12);
      if (*(v17 + 16))
      {

        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
        if (v19)
        {
          v20 = *(*(v17 + 56) + 8 * v18);

          swift_beginAccess();
          v20[25] = 1;
          (*(*v20 + 168))(0);
          type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
          swift_dynamicCast();
          v21 = v40;
          v22 = v41;
          __swift_project_boxed_opaque_existential_1(v39, v40);
          (*(v22 + 8))(v21, v22);
          __swift_destroy_boxed_opaque_existential_0(v39);

          v12 = v35;
          swift_dynamicCast();
          v23 = v40;
          v24 = v41;
          __swift_project_boxed_opaque_existential_1(v39, v40);
          (*(v24 + 40))(v23, v24);
          __swift_destroy_boxed_opaque_existential_0(v39);
          swift_beginAccess();
          v25 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
          if (v26)
          {
            v27 = v25;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29 = *(v3 + v35);
            *(v3 + v35) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              a2();
            }

            outlined destroy of AnyHashable(*(v29 + 48) + 40 * v27);
            a1(v27, v29);
            *(v3 + v35) = v29;
          }

          swift_endAccess();
          if (*(v3 + 32) <= 0)
          {
            v39[0] = 0;
            v39[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(37);
            MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD88B0);
            _print_unlocked<A, B>(_:_:)();

            swift_dynamicCast();
            v30 = v40;
            v31 = v41;
            __swift_project_boxed_opaque_existential_1(v39, v40);
            LODWORD(v30) = (*(v31 + 16))(v30, v31);
            __swift_destroy_boxed_opaque_existential_0(v39);
            if (v30)
            {
              DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:)(1);
            }
          }

          v11 = v37;
          v10 = v38;
          v14 = v36;
        }

        else
        {
        }
      }

      outlined destroy of AnyHashable(v42);

      ++v13;
    }

    while (v16 != v11);
  }
}

uint64_t DOCOperationCombinedProgress.stopTracking(operationWithIdentifier:)(uint64_t a1)
{
  v3 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = type metadata accessor for DOCOperationProgress();

  MEMORY[0x24C1FAB50](v13, a1, v4, MEMORY[0x277D84030], v5, MEMORY[0x277D84038]);

  v7 = v13[0];
  if (v13[0])
  {
    swift_beginAccess();
    v7[25] = 1;
    (*(*v7 + 168))(0);
    type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
    swift_dynamicCast();
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v13);

    swift_dynamicCast();
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v11 + 40))(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(v13);
    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    DOCOperationCombinedProgress.didUpdateContentsOfOperationProgressByID()(v12);
  }

  return result;
}

uint64_t specialized DOCOperationCombinedProgress.startTracking(operation:withProvider:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 8))(v24, v6, v7);
  v8 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  if (!*(*(v2 + v8) + 16) || (, specialized __RawDictionaryStorage.find<A>(_:)(v24), v10 = v9, , (v10 & 1) == 0))
  {
    v11 = *(v2 + direct field offset for DOCOperationCombinedProgress.clientRequestedEvents);
    outlined init with copy of Any(a1, v22);
    outlined init with copy of DOCSidebarItemIconProvider(a2, v23);
    outlined init with copy of Any(v22, v21);
    outlined init with copy of DOCSidebarItemIconProvider(v23, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressCyypGMd);
    swift_allocObject();

    v12 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v21, v20, v11);
    outlined destroy of CharacterSet?(v22, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMd);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = *(*v12 + 424);

    v14(partial apply for specialized closure #1 in DOCOperationCombinedProgress.startTracking(operation:withProvider:), v13);

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = *(v3 + v8);
    *(v3 + v8) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v24, isUniquelyReferenced_nonNull_native);
    *(v3 + v8) = v20[0];
    swift_endAccess();
    v16 = *(*v3 + 160);

    v18 = v16(v17);
    (*(*v12 + 168))(v18 & 1);

    specialized DOCOperationCombinedProgress.didUpdateContentsOfOperationProgressByID()();
  }

  return outlined destroy of AnyHashable(v24);
}

{
  v3 = v2;
  v6 = type metadata accessor for DOCFileOperation();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v38[-v12 - 8];
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 8))(v41, v14, v15);
  v16 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  if (!*(*(v2 + v16) + 16) || (, specialized __RawDictionaryStorage.find<A>(_:)(v41), v18 = v17, , (v18 & 1) == 0))
  {
    v19 = *(v2 + direct field offset for DOCOperationCombinedProgress.clientRequestedEvents);
    outlined init with copy of DOCFileOperation(a1, v13);
    v20 = *(v10 + 28);
    outlined init with copy of DOCSidebarItemIconProvider(a2, &v13[v20]);
    outlined init with copy of DOCFileOperation(v13, v9);
    outlined init with copy of DOCSidebarItemIconProvider(&v13[v20], v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressCyAA16DOCFileOperationVGMd);
    v21 = swift_allocObject();
    v22 = v39;
    v23 = v40;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v25 = MEMORY[0x28223BE20](v24, v24);
    v27 = &v38[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v28 + 16))(v27, v25);

    v29 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v9, v27, v19, v21, v22, v23);
    outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = *(*v29 + 424);

    v31(partial apply for specialized closure #1 in DOCOperationCombinedProgress.startTracking(operation:withProvider:), v30);

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v3 + v16);
    *(v3 + v16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v41, isUniquelyReferenced_nonNull_native);
    *(v3 + v16) = v37;
    swift_endAccess();
    v33 = *(*v3 + 160);

    v35 = v33(v34);
    (*(*v29 + 168))(v35 & 1);

    specialized DOCOperationCombinedProgress.didUpdateContentsOfOperationProgressByID()();
  }

  return outlined destroy of AnyHashable(v41);
}

void specialized DOCOperationCombinedProgress.didUpdateContentsOfOperationProgressByID()()
{
  if (*(v0 + 32) <= 0)
  {
    v4[0] = 0;
    v4[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD88B0);
    type metadata accessor for DOCAbstractPacedPropertyUpdater(0);
    _print_unlocked<A, B>(_:_:)();

    v7 = v0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
    swift_dynamicCast();
    v1 = v5;
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v3 = (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
    if (v3)
    {
      DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:)(1);
    }
  }
}

uint64_t DOCOperationCombinedProgress.computeNewState()@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = DOCOperationCombinedProgress.unorderedOperationProgress.getter();
  v5 = *(v3 + 296);
  v6 = type metadata accessor for DOCOperationProgress();
  v7 = MEMORY[0x24C1FB170](v4, v6);

  if (v7 < 1)
  {
    v14 = 0;
    goto LABEL_5;
  }

  v16 = DOCOperationCombinedProgress.unorderedOperationProgress.getter();
  MEMORY[0x28223BE20](v16, v9);
  v15[2] = v5;
  v10 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DOCOperationCombinedProgress.computeNewState(), v15, v10, &type metadata for DOCProgressState, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  v16 = v13;

  specialized MutableCollection<>.sort(by:)(&v16);

  if (*(v16 + 2))
  {
    v14 = v16[32];

LABEL_5:
    *a1 = v14;
    return result;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t DOCOperationCombinedProgress.computeNewProgressValue()@<X0>(uint64_t a1@<X8>)
{
  v2 = DOCOperationCombinedProgress.unorderedOperationProgress.getter();
  v3 = type metadata accessor for DOCOperationProgress();
  v4 = MEMORY[0x24C1FB170](v2, v3);

  if (v4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = DOCOperationCombinedProgress.unorderedOperationProgress.getter();
    MEMORY[0x28223BE20](v8, v6);
    type metadata accessor for Array();
    swift_getWitnessTable();
    Sequence.forEach(_:)();

    v7 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = v7;
  *(a1 + 9) = v4 < 1;
  return result;
}

uint64_t DOCGenericOperationCombinedProgress.init(operations:observing:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v22 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v22;
    v6 = a1 + 32;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v6, &v19);
      v7 = *(&v20 + 1);
      v8 = __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      *(&v18 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
      (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v8, v7);
      v22 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v5 = v22;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 72 * v11;
      *(v12 + 32) = v17;
      v13 = v18;
      v14 = v19;
      v15 = v20;
      *(v12 + 96) = v21;
      *(v12 + 64) = v14;
      *(v12 + 80) = v15;
      *(v12 + 48) = v13;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  return specialized DOCOperationCombinedProgress.init(operationsWithProviders:observing:)(v5, a2, _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables20DOCOperationProgressCyypGTt0g5Tf4g_n, partial apply for specialized closure #1 in DOCOperationCombinedProgress.init(operationsWithProviders:observing:));
}

uint64_t DOCGenericOperationCombinedProgress.add(_:)(void *a1)
{
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v6[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
  outlined init with copy of DOCSidebarItemIconProvider(a1, v7);
  specialized DOCOperationCombinedProgress.startTracking(operation:withProvider:)(v6, v7);
  return outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMd);
}

uint64_t DOCFileOperationCombinedProgress.__deallocating_deinit(void (*a1)(void, void))
{
  specialized DOCOperationCombinedProgress.deinit(a1);

  return swift_deallocClassInstance();
}

void *key path getter for DOCOperationCombinedProgress.updateHandler : <A>DOCOperationCombinedProgress<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  result = (*(**a1 + 352))();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v8;
    result[4] = v9;
    v10 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCOperationProgress<A>) -> ();
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t key path setter for DOCOperationCombinedProgress.updateHandler : <A>DOCOperationCombinedProgress<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 360);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

double closure #1 in DOCOperationCombinedProgress.reset()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DOCOperationProgress();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 16))(v7, a1, TupleTypeMetadata2);

  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t specialized closure #1 in DOCOperationCombinedProgress.init(operationsWithProviders:observing:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      outlined init with copy of DOCGridLayout.Spec?(v2, v3, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMd);
      specialized DOCOperationCombinedProgress.startTracking(operation:withProvider:)(v3, v4);
      result = outlined destroy of CharacterSet?(v3, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMd);
      v2 += 72;
      --v1;
    }

    while (v1);
  }

  return result;
}

void specialized closure #1 in DOCOperationCombinedProgress.init(operationsWithProviders:observing:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd);
  MEMORY[0x28223BE20](v2, v3);
  v6 = &v10 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      outlined init with copy of DOCGridLayout.Spec?(v8, v6, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd);
      specialized DOCOperationCombinedProgress.startTracking(operation:withProvider:)(v6, &v6[*(v2 + 28)]);
      outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd);
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

uint64_t closure #1 in DOCOperationCombinedProgress.operationProgressByID_shortDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DOCOperationProgress();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = *(*(TupleTypeMetadata2 - 8) + 16);
  v5 = v4(&v29, a1, TupleTypeMetadata2);
  v6 = (*(*v31 + 560))(v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  outlined destroy of AnyHashable(&v29);
  v4(&v29, a1, TupleTypeMetadata2);

  AnyHashable.description.getter();
  outlined destroy of AnyHashable(&v29);
  v13 = specialized Collection.prefix(_:)(6);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v29 = 0x444967756265645BLL;
  v30 = 0xEB00000000203D20;
  v20 = MEMORY[0x24C1FAE00](v6, v8, v10, v12);
  v22 = v21;

  MEMORY[0x24C1FAEA0](v20, v22);

  MEMORY[0x24C1FAEA0](0x3D204449706F202CLL, 0xE900000000000020);
  v23 = MEMORY[0x24C1FAE00](v13, v15, v17, v19);
  v25 = v24;

  MEMORY[0x24C1FAEA0](v23, v25);

  result = MEMORY[0x24C1FAEA0](93, 0xE100000000000000);
  v27 = v30;
  *a2 = v29;
  a2[1] = v27;
  return result;
}

uint64_t closure #1 in DOCOperationCombinedProgress.unorderedOperationProgress.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DOCOperationProgress();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 16))(v6, a1, TupleTypeMetadata2);
  *a2 = v6[5];
  return outlined destroy of AnyHashable(v6);
}

uint64_t specialized closure #1 in DOCOperationCombinedProgress.startTracking(operation:withProvider:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(1);
    specialized DOCOperationCombinedProgress.removeCancelledOperations()(specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
  }

  return result;
}

{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DOCAbstractPacedPropertyUpdater.setNeedsUpdateProperties(notifyImmediately:)(0);
    specialized DOCOperationCombinedProgress.removeCancelledOperations()(specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
  }

  return result;
}

void *closure #1 in DOCOperationCombinedProgress.computeNewProgressValue()(uint64_t *a1, double *a2, _BYTE *a3)
{
  v5 = *a1;
  v6 = (*(**a1 + 488))(&v15);
  v7 = v15;
  v8 = v16;
  v9 = *(*v5 + 512);
  result = v9(&v14, v6);
  if ((v14 & 0xFE) == 2 || (v14 & 1) == 0)
  {
    result = v9(&v13, result);
    v11 = *a2;
    if ((v13 & 0xFE) == 2)
    {
      if (v8)
      {
        *a2 = v11 + 0.0;
        return result;
      }

      v12 = v7 + v11;
    }

    else
    {
      v12 = v11 + 1.0;
    }

    *a2 = v12;
    *a3 = 1;
  }

  return result;
}

uint64_t DOCOperationCombinedProgress.__ivar_destroyer()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + direct field offset for DOCOperationCombinedProgress.updateHandler));
}

uint64_t DOCOperationCombinedProgress.__deallocating_deinit()
{
  DOCOperationCombinedProgress.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined init with take of DOCOperationProgress<DOCFileOperation>.OperationWithProvider(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < (a3 - __src))
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        v12 = *v4;
        if (v11)
        {
          v13 = 3;
        }

        else
        {
          v13 = 4;
        }

        if (v11 == 3)
        {
          v13 = 2;
        }

        if (v11 == 2)
        {
          v13 = 1;
        }

        if (v12 != 2)
        {
          if (v12 == 3)
          {
            if (v13 < 2)
            {
              goto LABEL_17;
            }
          }

          else if (v12)
          {
            if (v13 < 3)
            {
              goto LABEL_17;
            }
          }

          else if (v13 <= 3)
          {
LABEL_17:
            v14 = v6 + 1;
            if (v7 >= v6 && v7 < v14)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }
        }

        v15 = v4 + 1;
        LOBYTE(v11) = *v4;
        v14 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v15)
          {
            goto LABEL_29;
          }
        }

LABEL_28:
        *v7 = v11;
LABEL_29:
        ++v7;
        if (v4 < v10)
        {
          v6 = v14;
          if (v14 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_69;
    }

LABEL_68:
    if (v6 >= v10)
    {
      goto LABEL_69;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_67:
    if (v6 != v4)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  do
  {
    v16 = v6 - 1;
    --v5;
    v17 = v10;
    while (1)
    {
      v19 = *--v17;
      v18 = v19;
      v20 = *v16;
      if (v19)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }

      if (v18 == 3)
      {
        v21 = 2;
      }

      if (v18 == 2)
      {
        v21 = 1;
      }

      if (v20 == 2)
      {
        goto LABEL_56;
      }

      if (v20 == 3)
      {
        if (v21 < 2)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }

      if ((v20 & 1) == 0)
      {
        break;
      }

      if (v21 < 3)
      {
        goto LABEL_59;
      }

LABEL_56:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = v18;
      }

      --v5;
      v10 = v17;
      if (v17 <= v4)
      {
        v10 = v17;
        goto LABEL_67;
      }
    }

    if (v21 > 3)
    {
      goto LABEL_56;
    }

LABEL_59:
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = v20;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v16 > v7);
  v6 = v16;
  if (v16 == v4)
  {
    goto LABEL_68;
  }

LABEL_69:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t partial apply for specialized closure #1 in DOCOperationCombinedProgress.startTracking(operation:withProvider:)()
{
  return specialized closure #1 in DOCOperationCombinedProgress.startTracking(operation:withProvider:)();
}

{
  return specialized closure #1 in DOCOperationCombinedProgress.startTracking(operation:withProvider:)();
}

uint64_t DOCNodeDiffableDataSource.__allocating_init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  DOCNodeDiffableDataSource.init(collectionView:cellProvider:)(a1, a2, a3);
  return v6;
}

void DOCNodeDiffableDataSource.flatNodes.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v4 = *(v1 + 88);
  v12[0] = &type metadata for DOCCollectionSection;
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  v5 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v12 - v8;
  v10 = v0[2];
  if (v10)
  {
    v11 = v10;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    (*(v6 + 8))(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    _arrayConditionalCast<A, B>(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t *DOCNodeDiffableDataSource.init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v4[2] = 0;
  v8 = *(v7 + 80);
  lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v9 = *(v7 + 88);
  type metadata accessor for UICollectionViewDiffableDataSource();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v9;
  v10[4] = a2;
  v10[5] = a3;
  v11 = UICollectionViewDiffableDataSource.__allocating_init(collectionView:cellProvider:)();
  v12 = v4[2];
  v4[2] = v11;

  return v4;
}

uint64_t closure #1 in DOCNodeDiffableDataSource.init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  v7 = MEMORY[0x28223BE20](a1, a2);
  (*(v9 + 16))(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v11, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  swift_dynamicCast();
  v12 = a4(a1, a2, v14[1]);
  swift_unknownObjectRelease();
  return v12;
}

void DOCNodeDiffableDataSource.indexPath(for:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCNodeDiffableDataSource.indexPath(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v26 - v14;
  DOCNodeDiffableDataSource.diffableItem(from:)(a1, v10);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.UI);
    swift_unknownObjectRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = a1;
      v27 = v20;
      *v19 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2493AC000, v17, v18, "Conversion of node: %s failed", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1FE850](v20, -1, -1);
      MEMORY[0x24C1FE850](v19, -1, -1);
    }

    v24 = type metadata accessor for IndexPath();
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }

  else
  {
    (*(v11 + 32))(v15, v10, v5);
    DOCNodeDiffableDataSource.indexPath(for:)();
    return (*(v11 + 8))(v15, v5);
  }
}

uint64_t DOCNodeDiffableDataSource.diffableItem(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v23 - v14;
  v24 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v16 = swift_dynamicCast();
  v17 = *(v11 + 56);
  if (v16)
  {
    v17(v10, 0, 1, v5);
    v18 = *(v11 + 32);
    v18(v15, v10, v5);
    v18(a2, v15, v5);
    v19 = a2;
    v20 = 0;
    return v17(v19, v20, 1, v5);
  }

  v17(v10, 1, 1, v5);
  (*(v7 + 8))(v10, v6);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v19 = a2;
    v20 = 1;
    return v17(v19, v20, 1, v5);
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v24 = [v21 fpfs_fpItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
    v20 = swift_dynamicCast() ^ 1;
    v19 = a2;
    return v17(v19, v20, 1, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t key path getter for DOCNodeDiffableDataSource.supplementaryViewProvider : <A>DOCNodeDiffableDataSource<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 168))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UICollectionView, @guaranteed String, @in_guaranteed IndexPath) -> (@owned UICollectionReusableView?);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCNodeDiffableDataSource.supplementaryViewProvider : <A>DOCNodeDiffableDataSource<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UICollectionView, @in_guaranteed String, @in_guaranteed IndexPath) -> (@out UICollectionReusableView?);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 176);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

void DOCNodeDiffableDataSource.supplementaryViewProvider.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.getter();
  }

  else
  {
    __break(1u);
  }
}

void DOCNodeDiffableDataSource.supplementaryViewProvider.setter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
  }

  else
  {
    __break(1u);
  }
}

void (*DOCNodeDiffableDataSource.supplementaryViewProvider.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  DOCNodeDiffableDataSource.supplementaryViewProvider.getter();
  *a1 = v3;
  a1[1] = v4;
  return DOCNodeDiffableDataSource.supplementaryViewProvider.modify;
}

void DOCNodeDiffableDataSource.supplementaryViewProvider.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*a1);
    DOCNodeDiffableDataSource.supplementaryViewProvider.setter();

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2);
  }

  else
  {
    DOCNodeDiffableDataSource.supplementaryViewProvider.setter();
  }
}

void DOCNodeDiffableDataSource.shouldCollapseItem(completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(v3 + 16);
  if (v4)
  {
    v8 = v4;
    v9 = UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify();
    lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();

    v10 = type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
    a3(a1, a2, v10);
    v9(v11, 0);
  }

  else
  {
    __break(1u);
  }
}

void DOCNodeDiffableDataSource.snapshot()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v4 = *(v1 + 88);
  v11[0] = &type metadata for DOCCollectionSection;
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v5 = type metadata accessor for NSDiffableDataSourceSnapshot();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v11 - v7;
  v9 = v0[2];
  if (v9)
  {
    type metadata accessor for DOCNodeDiffableDataSourceSnapshot();
    v10 = v9;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    swift_allocObject();
    DOCNodeDiffableDataSourceSnapshot.init(with:)(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCNodeDiffableDataSource.level(of:)(uint64_t a1)
{
  v2 = v1;
  v58 = a1;
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v51 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for IndexPath();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v54 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v46 - v17;
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v46 - v21;
  v23 = [objc_opt_self() outlineDisclosure];
  v24 = [v23 isEnabled];

  result = 0;
  if (v24)
  {
    v26 = *(v2 + 16);
    if (v26)
    {
      v27 = v26;
      dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

      if (!v60)
      {
        return 0;
      }

      v48 = v15;
      v49 = v22;
      v50 = v60;
      v28 = v59;
      v30 = v61;
      v29 = v62;
      v31 = v63;
      swift_getObjectType();
      DOCNode.diffableItem()(&v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd);
      if ((swift_dynamicCast() & 1) == 0)
      {
        outlined consume of DOCCollectionSection?(v28, v50);
        (*(v57 + 56))(v18, 1, 1, v3);
        (*(v48 + 8))(v18, v14);
        return 0;
      }

      v32 = v28;
      v46 = v30;
      v47 = v29;
      v58 = v31;
      v33 = v57;
      (*(v57 + 56))(v18, 0, 1, v3);
      v34 = v49;
      result = (*(v33 + 32))(v49, v18, v3);
      v35 = *(v2 + 16);
      if (v35)
      {
        v36 = v35;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

        v38 = v55;
        v37 = v56;
        if ((*(v55 + 48))(v10, 1, v56) == 1)
        {
          (*(v33 + 8))(v34, v3);
          outlined consume of DOCCollectionSection?(v32, v50);
          outlined destroy of CharacterSet?(v10, &_s10Foundation9IndexPathVSgMd);
          return 0;
        }

        v39 = v54;
        (*(v38 + 32))();
        result = IndexPath.section.getter();
        if (result)
        {
          outlined consume of DOCCollectionSection?(v32, v50);
          (*(v38 + 8))(v39, v37);
          (*(v33 + 8))(v34, v3);
          return 0;
        }

        v40 = *(v2 + 16);
        if (v40)
        {
          v59 = v32;
          v60 = v50;
          v61 = v46;
          v62 = v47;
          v63 = v58;
          v48 = v32;
          v41 = v40;
          v42 = v51;
          UICollectionViewDiffableDataSource.snapshot(for:)();

          v43 = v49;
          v44 = v53;
          v45 = NSDiffableDataSourceSectionSnapshot.level(of:)();
          outlined consume of DOCCollectionSection?(v48, v50);
          (*(v52 + 8))(v42, v44);
          (*(v38 + 8))(v39, v37);
          (*(v33 + 8))(v43, v3);
          return v45;
        }

LABEL_17:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  return result;
}

unint64_t DOCNode.diffableItem()@<X0>(void *a1@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
    v6 = lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type FINode and conformance NSObject, &lazy cache variable for type metadata for FINode);
    result = swift_unknownObjectRetain();
  }

  else
  {
    v4 = [v1 fpfs_fpItem];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
    result = lazy protocol witness table accessor for type FPItem? and conformance <A> A?();
    v6 = result;
  }

  a1[3] = v5;
  a1[4] = v6;
  *a1 = v4;
  return result;
}

void DOCNodeDiffableDataSource.parent(of:)()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v60 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v58 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v49 - v8;
  v10 = type metadata accessor for Optional();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v59 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v49 - v15;
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v56 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v55 = v49 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = v49 - v26;
  v28 = v0[2];
  if (!v28)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v29 = v28;
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  v30 = v65;
  if (!v65)
  {
    return;
  }

  v54 = v9;
  v63 = v17;
  v57 = v3;
  v31 = v64;
  v33 = v66;
  v32 = v67;
  v34 = v68;
  swift_getObjectType();
  DOCNode.diffableItem()(&v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined consume of DOCCollectionSection?(v31, v30);
    (*(v63 + 56))(v16, 1, 1, v2);
    (*(v61 + 8))(v16, v62);
    return;
  }

  v51 = v31;
  v52 = v32;
  v53 = v33;
  v50 = v34;
  v35 = v63;
  (*(v63 + 56))(v16, 0, 1, v2);
  v49[0] = *(v35 + 32);
  v49[1] = v35 + 32;
  (v49[0])(v27, v16, v2);
  v36 = v1[2];
  if (!v36)
  {
    goto LABEL_14;
  }

  v37 = v51;
  v64 = v51;
  v65 = v30;
  v66 = v53;
  v67 = v52;
  v68 = v50;
  v38 = v36;
  v39 = v54;
  UICollectionViewDiffableDataSource.snapshot(for:)();

  v40 = v57;
  LOBYTE(v38) = NSDiffableDataSourceSectionSnapshot.contains(_:)();
  v60 = *(v60 + 8);
  (v60)(v39, v40);
  if ((v38 & 1) == 0)
  {
    (*(v63 + 8))(v27, v2);
    outlined consume of DOCCollectionSection?(v37, v30);
    return;
  }

  v41 = v1[2];
  if (!v41)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v64 = v51;
  v65 = v30;
  v66 = v53;
  v67 = v52;
  v68 = v50;
  v42 = v41;
  v43 = v58;
  UICollectionViewDiffableDataSource.snapshot(for:)();

  v44 = v59;
  v45 = v57;
  NSDiffableDataSourceSectionSnapshot.parent(of:)();
  outlined consume of DOCCollectionSection?(v51, v30);
  (v60)(v43, v45);
  v46 = v63;
  (*(v63 + 8))(v27, v2);
  if ((*(v46 + 48))(v44, 1, v2) == 1)
  {
    (*(v61 + 8))(v44, v62);
  }

  else
  {
    v47 = v55;
    v48 = v49[0];
    (v49[0])(v55, v44, v2);
    v48(v56, v47, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    swift_dynamicCast();
  }
}

void DOCNodeDiffableDataSource.applySnapshotUsingReloadData(_:disclosureProvider:completion:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v6 = *(v3 + 88);
  v17[0] = &type metadata for DOCCollectionSection;
  v17[1] = v4;
  v17[2] = v5;
  v17[3] = v6;
  v7 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v17 - v11;
  v13 = v1[2];
  if (v13)
  {
    v14 = *(*a1 + 96);
    swift_beginAccess();
    (*(v9 + 16))(v12, a1 + v14, v8);
    v15 = *(v7 - 8);
    if ((*(v15 + 48))(v12, 1, v7) != 1)
    {
      v16 = v13;
      dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();

      (*(v15 + 8))(v12, v7);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *DOCNodeDiffableDataSource.toggleNodeExpansionEmpty(_:)()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v28 - v10;
  v12 = *(v2 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v28 - v15;
  swift_getObjectType();
  DOCNode.diffableItem()(&v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v11, 0, 1, v2);
    (*(v12 + 32))(v16, v11, v2);
    result = (*(*v0 + 320))(&v33, 0);
    v20 = v0[2];
    if (v20)
    {
      v21 = v35;
      v22 = v37;
      v29 = v33;
      v30 = v36;
      v31 = v34;
      v23 = v20;
      UICollectionViewDiffableDataSource.snapshot(for:)();

      getContiguousArrayStorageType<A>(for:)(v2, v2);
      swift_allocObject();
      v24 = static Array._adoptStorage(_:count:)();
      (*(v12 + 16))(v25, v16, v2);
      _finalizeUninitializedArray<A>(_:)();
      NSDiffableDataSourceSectionSnapshot.expand(_:)(v24);

      v26 = v1[2];
      if (v26)
      {
        v33 = v29;
        v34 = v31;
        v35 = v21;
        v36 = v30;
        v37 = v22;
        v27 = v26;
        UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

        (*(v32 + 8))(v6, v3);
        (*(v12 + 8))(v16, v2);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v18(v11, 1, 1, v2);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

unint64_t DOCNodeDiffableDataSource.updateSnapshot(for:using:disclosureProvider:sectionLimiter:animated:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v83 = a6;
  v80 = a5;
  v82 = a3;
  v96 = 0;
  v10 = *v7;
  v11 = *v7;
  v85 = v7;
  v91 = *(v10 + 80);
  MEMORY[0x28223BE20](a1, a2);
  v14 = *v13;
  v84 = *v13;
  v90 = v12;
  if (v84 != 2)
  {
    v29 = v12[3];
    v30 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v29);
    if (((*(v30 + 16))(v29, v30) & 1) == 0)
    {
      goto LABEL_24;
    }

    DOCNodeDiffableDataSource.snapshot()();
    v31 = DOCNodeDiffableDataSourceSnapshot.sectionIdentifiers.getter();

    v32 = *(v31 + 16);

    if (v32 != 1)
    {
      goto LABEL_24;
    }

    v81 = a7;
    v33 = v82[3];
    v34 = v82[4];
    __swift_project_boxed_opaque_existential_1(v82, v33);
    v35 = (*(v34 + 24))(v33, v34);
    v95 = v79;
    *&v99 = v35;
    MEMORY[0x28223BE20](v35, v36);
    v37 = *(v11 + 88);
    *&v79[-16] = v91;
    *&v79[-8] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd);
    v38 = Sequence.compactMap<A>(_:)();

    *&v97[0] = v38;
    if (*(a1 + 16))
    {
      v39 = *(**(a1 + 64) + 112);

      result = v39(v40);
      if (result >> 62)
      {
        v78 = result;
        v41 = __CocoaSet.count.getter();
        result = v78;
      }

      else
      {
        v41 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v81;
      if (!v41)
      {

        v72 = v42;
LABEL_46:
        (*(*v85 + 264))(v38, v82, v14 & 1, (v14 >> 8) & 1, v83, v72);
      }

      if ((result & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](0);
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      if (DOCNode.isCreateDocumentSentinel()())
      {
        DOCNode.diffableItem()(&v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd);
        swift_dynamicCast();
        type metadata accessor for Array();
        Array.insert(_:at:)();

        swift_unknownObjectRelease();
        v38 = *&v97[0];
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    v72 = v81;
    goto LABEL_46;
  }

  v15 = v12[3];
  v16 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v15);
  if ((*(v16 + 16))(v15, v16))
  {
    DOCNodeDiffableDataSource.snapshot()();
    v17 = DOCNodeDiffableDataSourceSnapshot.sectionIdentifiers.getter();

    v18 = *(v17 + 16);

    if (v18 == 1)
    {
      v19 = v82[3];
      v20 = v82[4];
      __swift_project_boxed_opaque_existential_1(v82, v19);
      v21 = (*(v20 + 24))(v19, v20);
      v95 = v79;
      *&v99 = v21;
      MEMORY[0x28223BE20](v21, v22);
      v23 = *(v11 + 88);
      *&v79[-16] = v91;
      *&v79[-8] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd);
      v24 = Sequence.compactMap<A>(_:)();

      *&v97[0] = v24;
      if (!*(a1 + 16))
      {
        goto LABEL_49;
      }

      v27 = *(**(a1 + 64) + 112);

      result = v27(v28);
      if (result >> 62)
      {
        v73 = result;
        v74 = __CocoaSet.count.getter();
        result = v73;
        if (v74)
        {
          goto LABEL_7;
        }
      }

      else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_7:
        if ((result & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](0);
          goto LABEL_10;
        }

        if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          swift_unknownObjectRetain();
LABEL_10:

          swift_getObjectType();
          if (DOCNode.isCreateDocumentSentinel()())
          {
            DOCNode.diffableItem()(&v99);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd);
            swift_dynamicCast();
            type metadata accessor for Array();
            Array.insert(_:at:)();
          }

          result = swift_unknownObjectRelease();
LABEL_49:
          if (v85[2])
          {
            MEMORY[0x28223BE20](result, v26);
            *&v79[-64] = a1;
            *&v79[-56] = v75;
            *&v79[-48] = v97;
            *&v79[-40] = v82;
            v79[-32] = v80 & 1;
            *&v79[-24] = v83;
            *&v79[-16] = a7;
            v77 = v76;
            UICollectionViewDiffableDataSource._performBatchApplyUsingReloadData(_:)();
          }

LABEL_58:
          __break(1u);
          return result;
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      goto LABEL_49;
    }
  }

LABEL_24:
  v81 = a7;
  v89 = *(v11 + 88);
  v43 = specialized DOCNodeDiffableDataSource.createEmptySnapshot()(v91, v89);
  v44 = v43;
  v45 = *(a1 + 16);
  if (v45)
  {
    v47 = (v14 & 0x100) == 0 || v84 == 2;
    v87 = v47;
    v48 = (a1 + 64);
    v86 = xmmword_249B9A480;
    v88 = v43;
    v49 = v91;
    do
    {
      v94 = v48;
      v95 = v45;
      v50 = *(v48 - 4);
      v51 = *(v48 - 3);
      v52 = *(v48 - 1);
      v93 = *(v48 - 2);
      v53 = v93;
      v54 = *v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCCollectionSectionVGMd);
      v55 = swift_allocObject();
      *(v55 + 16) = v86;
      *(v55 + 32) = v50;
      *(v55 + 40) = v51;
      *(v55 + 48) = v53;
      *(v55 + 56) = v52;
      *(v55 + 64) = v54;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      DOCNodeDiffableDataSourceSnapshot.appendSections(_:)(v55);

      v57 = (*(*v54 + 112))(v56);
      v92 = v79;
      *&v99 = v57;
      MEMORY[0x28223BE20](v57, v58);
      v59 = v89;
      *&v79[-16] = v49;
      *&v79[-8] = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
      v60 = v51;
      v61 = v50;
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd);
      v62 = v96;
      v63 = Sequence.compactMap<A>(_:)();
      v96 = v62;

      v64 = v90[3];
      v65 = v90[4];
      __swift_project_boxed_opaque_existential_1(v90, v64);
      *&v99 = v61;
      *(&v99 + 1) = v60;
      v66 = v93;
      *&v100 = v93;
      *(&v100 + 1) = v52;
      v101 = v54;
      v67 = (*(v65 + 8))(&v99, v64, v65);
      if ((v68 & 1) == 0)
      {
        v69 = v67;
        v70 = MEMORY[0x24C1FB170](v63, v49);
        if (v69 >= v70)
        {
          v71 = v70;
        }

        else
        {
          v71 = v69;
        }

        *&v97[0] = v63;
        v98 = v71;
        type metadata accessor for Array();
        swift_getWitnessTable();
        Collection.prefix(upTo:)();
        v97[0] = v99;
        v97[1] = v100;
        type metadata accessor for ArraySlice();
        swift_getWitnessTable();
        v63 = Array.init<A>(_:)();
      }

      *&v99 = v61;
      *(&v99 + 1) = v60;
      *&v100 = v66;
      *(&v100 + 1) = v52;
      v101 = v54;

      v44 = v88;
      DOCNodeDiffableDataSourceSnapshot.appendItems(_:toSection:)(v63);
      outlined consume of DOCCollectionSection?(v99, *(&v99 + 1));
      if (!v87)
      {
        DOCNodeDiffableDataSourceSnapshot.reconfigureItems(_:)(v63);
      }

      v48 = v94 + 5;
      v45 = v95 - 1;
    }

    while (v95 != 1);
  }

  if (v84 == 2)
  {
    outlined init with copy of DOCSidebarItemIconProvider(v82, &v99);
    DOCNodeDiffableDataSource.applySnapshotUsingReloadData(_:disclosureProvider:completion:)(v44);

    return outlined destroy of CharacterSet?(&v99, &_s26DocumentManagerExecutables25DOCNodeDisclosureProvider_pSgMd);
  }

  else
  {
    DOCNodeDiffableDataSource.apply(_:animatingDifferences:completion:)(v44);
  }
}

uint64_t closure #3 in DOCNodeDiffableDataSource.updateSnapshot(for:using:disclosureProvider:sectionLimiter:animated:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v78 = a5;
  v77 = a3;
  v12 = *a2;
  v13 = *(*a2 + 80);
  v14 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v15 = *(v12 + 88);
  v79 = &type metadata for DOCCollectionSection;
  v80 = v13;
  v81 = v14;
  v82 = v15;
  v16 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v17 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v61 - v19;
  MEMORY[0x28223BE20](v21, v22);
  if (!a1[2])
  {
    goto LABEL_11;
  }

  v68 = &v61 - v23;
  *&v69 = v25;
  v70 = v16;
  v71 = v24;
  v75 = a4;
  v76 = a6;
  v27 = a1[4];
  v26 = a1[5];
  v28 = a1[7];
  v67 = a1[6];
  v29 = a1[8];

  DOCNodeDiffableDataSource.snapshot()();
  v30 = DOCNodeDiffableDataSourceSnapshot.sectionIdentifiers.getter();

  if (!v30[2])
  {

LABEL_9:

LABEL_10:
    a4 = v75;
    a6 = v76;
    goto LABEL_11;
  }

  v65 = v17;
  v74 = a7;
  v72 = v28;
  v32 = v30[4];
  v31 = v30[5];
  v33 = v30[7];
  v64 = v30[6];
  v34 = v30[8];

  v73 = v33;
  v35 = v34;

  v66 = v32;
  if (v27 == v32 && v26 == v31)
  {

    a4 = v75;
    a6 = v76;
    a7 = v74;
LABEL_11:
    v39 = *(*a2 + 264);

    v39(v40, a4, v78 & 1, 0, a6, a7);
  }

  v63 = v27;
  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v37 = v31;
  v38 = v29;
  a7 = v74;
  if (v36)
  {

    goto LABEL_9;
  }

  v42 = v37;
  v62 = v26;
  DOCNodeDiffableDataSource.snapshot()();
  v44 = v43;
  v45 = *(*v43 + 96);
  swift_beginAccess();
  v46 = v69;
  v47 = v44 + v45;
  v48 = v65;
  (*(v69 + 16))(v20, v47, v65);

  v50 = v70;
  v49 = v71;
  if ((*(v71 + 48))(v20, 1, v70) == 1)
  {

    (*(v46 + 8))(v20, v48);
    a7 = v74;
    goto LABEL_10;
  }

  v51 = v68;
  (*(v49 + 32))(v68, v20, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCCollectionSectionVGMd);
  v52 = swift_allocObject();
  v69 = xmmword_249B9A480;
  *(v52 + 16) = xmmword_249B9A480;
  *(v52 + 32) = v66;
  *(v52 + 40) = v42;
  v53 = v73;
  *(v52 + 48) = v64;
  *(v52 + 56) = v53;
  *(v52 + 64) = v35;
  v66 = v42;

  NSDiffableDataSourceSnapshot.deleteSections(_:)(v52);

  v54 = swift_allocObject();
  *(v54 + 16) = v69;
  v55 = v62;
  *(v54 + 32) = v63;
  *(v54 + 40) = v55;
  *&v69 = v35;
  v56 = v72;
  *(v54 + 48) = v67;
  *(v54 + 56) = v56;
  *(v54 + 64) = v38;

  NSDiffableDataSourceSnapshot.appendSections(_:)(v54);

  v57 = a2[2];
  if (v57)
  {
    v58 = v57;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    v59 = *(*a2 + 264);

    v59(v60, v75, v78 & 1, 0, v76, v74);

    return (*(v71 + 8))(v51, v50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCNodeDiffableDataSource.apply(with:disclosureProvider:animated:reconfigure:completion:)(uint64_t a1, void *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v59 = a5;
  v58 = a4;
  v61 = a3;
  v9 = *v6;
  v10 = *(*v6 + 80);
  v11 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v69 = v6;
  v12 = *(v9 + 88);
  v73 = &type metadata for DOCCollectionSection;
  v74 = v10;
  v75 = v11;
  v76 = v12;
  v66 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v13 = type metadata accessor for Optional();
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v65 = &v57 - v15;
  v16 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v67 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v71 = &v57 - v18;
  v19 = *(v10 - 8);
  v57 = *(v19 + 64);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v57 - v22;
  v70 = type metadata accessor for Optional();
  v24 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v25);
  v27 = &v57 - v26;
  v72 = swift_allocBox();
  v29 = v28;
  NSDiffableDataSourceSectionSnapshot.init()();
  (*(v19 + 56))(v27, 1, 1, v10);
  v68 = v16;
  v62 = v29;
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  (*(v24 + 8))(v27, v70);
  if (MEMORY[0x24C1FB1B0](a1, v10))
  {
    v30 = 0;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v19 + 16))(v23, a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v30, v10);
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v33 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v57 != 8)
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v73 = v33;
        (*(v19 + 16))(v23, &v73, v10);
        swift_unknownObjectRelease();
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      recurseNode #1 <A>(node:) in DOCNodeDiffableDataSource.apply(with:disclosureProvider:animated:reconfigure:completion:)(v23, a2, v72, v10, v12);
      (*(v19 + 8))(v23, v10);
      ++v30;
    }

    while (v32 != MEMORY[0x24C1FB1B0](a1, v10));
  }

  v34 = v69;
  v35 = v69[2];
  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = v62;
  swift_beginAccess();
  v38 = v67;
  v37 = v68;
  (*(v67 + 16))(v71, v36, v68);
  v39 = v35;
  DOCNodeDiffableDataSource.snapshot()();
  v41 = v40;
  v42 = *(*v40 + 96);
  swift_beginAccess();
  v43 = v41 + v42;
  v44 = v65;
  (*(v63 + 16))(v65, v43, v64);

  v45 = v66;
  v46 = *(v66 - 8);
  if ((*(v46 + 48))(v44, 1, v66) == 1)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v47 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v46 + 8))(v44, v45);
    if (v47[2])
    {
      v49 = v47[4];
      v48 = v47[5];
      v51 = v47[6];
      v50 = v47[7];
      v52 = v47[8];

      v73 = v49;
      v74 = v48;
      v75 = v51;
      v76 = v50;
      v77 = v52;
      v53 = swift_allocObject();
      *(v53 + 16) = v34;
      *(v53 + 24) = v58 & 1;
      v54 = v60;
      *(v53 + 32) = v59;
      *(v53 + 40) = v54;

      v55 = v71;
      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

      (*(v38 + 8))(v55, v37);
    }
  }

  __break(1u);
  return result;
}

uint64_t recurseNode #1 <A>(node:) in DOCNodeDiffableDataSource.apply(with:disclosureProvider:animated:reconfigure:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v9 = type metadata accessor for Optional();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v41 = &v38 - v11;
  v49 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v40 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v12);
  v47 = &v38 - v13;
  v14 = *(a4 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v38 - v21;
  v50 = a3;
  v46 = swift_projectBox();
  v23 = a2[3];
  v24 = a2[4];
  v25 = a2;
  v44 = __swift_project_boxed_opaque_existential_1(a2, v23);
  v26 = *(v14 + 16);
  v48 = a1;
  v51 = v26;
  v26(v22, a1, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  swift_dynamicCast();
  v27 = (*(v24 + 8))(v54[0], v23, v24);
  swift_unknownObjectRelease();
  v54[0] = v27;
  v28 = v45;
  v52 = a4;
  v53 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd);
  v29 = Sequence.compactMap<A>(_:)();

  if (MEMORY[0x24C1FB170](v29, a4) >= 1)
  {
    NSDiffableDataSourceSectionSnapshot.init()();
    v30 = v41;
    (*(v14 + 56))(v41, 1, 1, a4);
    NSDiffableDataSourceSectionSnapshot.append(_:to:)();
    (*(v42 + 8))(v30, v43);
    swift_beginAccess();
    NSDiffableDataSourceSectionSnapshot.replace(childrenOf:using:)();
    swift_endAccess();
    if (!MEMORY[0x24C1FB1B0](v29, a4))
    {
LABEL_12:

      getContiguousArrayStorageType<A>(for:)(a4, a4);
      swift_allocObject();
      v35 = static Array._adoptStorage(_:count:)();
      v51(v36, v48, a4);
      _finalizeUninitializedArray<A>(_:)();
      swift_beginAccess();
      v37 = v49;
      NSDiffableDataSourceSectionSnapshot.expand(_:)(v35);
      swift_endAccess();

      return (*(v40 + 8))(v47, v37);
    }

    v31 = 0;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v51(v18, v29 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v31, a4);
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v39 != 8)
        {
          __break(1u);
          return result;
        }

        v54[0] = result;
        v51(v18, v54, a4);
        swift_unknownObjectRelease();
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_11:
          __break(1u);
          goto LABEL_12;
        }
      }

      recurseNode #1 <A>(node:) in DOCNodeDiffableDataSource.apply(with:disclosureProvider:animated:reconfigure:completion:)(v18, v25, v50, a4, v28);
      (*(v14 + 8))(v18, a4);
      ++v31;
      if (v33 == MEMORY[0x24C1FB1B0](v29, a4))
      {
        goto LABEL_12;
      }
    }
  }
}

void closure #1 in DOCNodeDiffableDataSource.apply(with:disclosureProvider:animated:reconfigure:completion:)(void *a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v10 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v11 = *(v8 + 88);
  v31[0] = &type metadata for DOCCollectionSection;
  v31[1] = v9;
  v31[2] = v10;
  v31[3] = v11;
  v12 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v31 - v15;
  v17 = a1[2];
  if (v17)
  {
    v18 = v17;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    if ((a2 & 1) == 0 || (v23 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter(), v26 = MEMORY[0x24C1FB170](v23, v9, v24, v25), v19 = , v26 < 1))
    {
      a3(v19, v20, v21, v22);
      goto LABEL_7;
    }

    v27 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v27);

    v28 = a1[2];
    if (v28)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = a3;
      *(v29 + 24) = a4;
      v30 = v28;

      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

LABEL_7:
      (*(v13 + 8))(v16, v12);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void DOCNodeDiffableDataSource.apply(_:animatingDifferences:completion:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v6 = *(v3 + 88);
  v17[0] = &type metadata for DOCCollectionSection;
  v17[1] = v4;
  v17[2] = v5;
  v17[3] = v6;
  v7 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v17 - v11;
  v13 = v1[2];
  if (v13)
  {
    v14 = *(*a1 + 96);
    swift_beginAccess();
    (*(v9 + 16))(v12, a1 + v14, v8);
    v15 = *(v7 - 8);
    if ((*(v15 + 48))(v12, 1, v7) != 1)
    {
      v16 = v13;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v15 + 8))(v12, v7);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void DOCNodeDiffableDataSource.insertNodes(_:parentDocNode:section:completion:)(ValueMetadata *a1, ValueMetadata *a2, ValueMetadata **a3, uint64_t a4, uint64_t a5)
{
  v89 = a4;
  v90 = a5;
  v99 = a1;
  v8 = *v5;
  v9 = *(*v5 + 80);
  v10 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v11 = *(v8 + 88);
  v104 = &type metadata for DOCCollectionSection;
  v105 = v9;
  v106 = v10;
  v107 = v11;
  v12 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v94 = v78 - v14;
  v15 = *(v9 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v88 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v18;
  MEMORY[0x28223BE20](v19, v20);
  v103 = v78 - v21;
  v22 = type metadata accessor for Optional();
  v101 = *(v22 - 8);
  v102 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v91 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = v78 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v32 = (v78 - v31);
  v100 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v33);
  v93 = v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v38 = v78 - v37;
  v97 = v5;
  v39 = v5[2];
  if (!v39)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v40 = a3[1];
  v41 = a3[2];
  v42 = a3[3];
  v43 = a3[4];
  v85 = *a3;
  v104 = v85;
  v105 = v40;
  v84 = v40;
  v83 = v41;
  v106 = v41;
  v107 = v42;
  v82 = v42;
  v81 = v43;
  v108 = v43;
  v44 = v39;
  UICollectionViewDiffableDataSource.snapshot(for:)();

  v104 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v45 = swift_dynamicCast();
  v86 = *(v15 + 56);
  v46 = v86(v32, v45 ^ 1u, 1, v9);
  v104 = v99;
  MEMORY[0x28223BE20](v46, v47);
  v78[-2] = v9;
  v78[-1] = v11;
  v92 = v11;
  v99 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
  v48 = v99;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd);
  v49 = Sequence.compactMap<A>(_:)();
  v50 = v101;
  v51 = v102;
  (*(v101 + 16))(v28, v48, v102);
  if ((*(v15 + 48))(v28, 1, v9) == 1)
  {
    (*(v98 + 8))(v38, v100);

    (*(v50 + 8))(v28, v51);
LABEL_12:
    (*(v50 + 8))(v48, v51);
    return;
  }

  v80 = v38;
  v52 = v103;
  v79 = *(v15 + 32);
  v79(v103, v28, v9);
  if (MEMORY[0x24C1FB170](v49, v9) < 1)
  {

    (*(v15 + 8))(v52, v9);
    goto LABEL_9;
  }

  v78[1] = v15 + 32;
  v53 = v97[2];
  if (!v53)
  {
    goto LABEL_14;
  }

  v54 = v53;
  v55 = v94;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v56 = v96;
  NSDiffableDataSourceSnapshot.indexOfItem(_:)();
  LOBYTE(v54) = v57;
  (*(v95 + 8))(v55, v56);
  if (v54)
  {

    (*(v15 + 8))(v103, v9);
LABEL_9:
    (*(v98 + 8))(v80, v100);
    goto LABEL_12;
  }

  NSDiffableDataSourceSectionSnapshot.init()();
  v58 = v91;
  v86(v91, 1, 1, v9);
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  (*(v50 + 8))(v58, v51);
  v59 = v103;
  v60 = v80;
  NSDiffableDataSourceSectionSnapshot.replace(childrenOf:using:)();
  getContiguousArrayStorageType<A>(for:)(v9, v9);
  v61 = *(v15 + 80);
  swift_allocObject();
  v62 = static Array._adoptStorage(_:count:)();
  v95 = *(v15 + 16);
  (v95)(v63, v59, v9);
  _finalizeUninitializedArray<A>(_:)();
  v64 = v97;
  v65 = v60;
  NSDiffableDataSourceSectionSnapshot.expand(_:)(v62);

  v66 = v64[2];
  v96 = v15;
  if (v66)
  {
    v94 = v66;

    v104 = v85;
    v105 = v84;
    v106 = v83;
    v107 = v82;
    v108 = v81;
    v67 = v88;
    v68 = v103;
    (v95)(v88, v103, v9);
    v69 = (v61 + 40) & ~v61;
    v70 = (v87 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    v72 = v92;
    *(v71 + 2) = v9;
    *(v71 + 3) = v72;
    *(v71 + 4) = v64;
    v79(&v71[v69], v67, v9);
    v73 = &v71[v70];
    v74 = v90;
    *v73 = v89;
    *(v73 + 1) = v74;

    v75 = v94;
    UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

    v76 = *(v98 + 8);
    v77 = v100;
    v76(v93, v100);
    (*(v96 + 8))(v68, v9);
    v76(v65, v77);
    v50 = v101;
    v51 = v102;
    v48 = v99;
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

uint64_t closure #1 in DOCNodeDiffableDataSource.updateSnapshot(for:using:disclosureProvider:sectionLimiter:animated:completion:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getObjectType();
  DOCNode.diffableItem()(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd);
  v4 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v4 ^ 1u, 1, a1);
}

void closure #2 in DOCNodeDiffableDataSource.insertNodes(_:parentDocNode:section:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v6 = *a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v11);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v6 + 80);
  v14 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v15 = *(v6 + 88);
  aBlock = &type metadata for DOCCollectionSection;
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v16 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v43 - v23;
  v25 = a1[2];
  if (!v25)
  {
    __break(1u);
    goto LABEL_8;
  }

  v46 = v8;
  v26 = v25;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v27 = a1[2];
  if (!v27)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v28 = v27;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  NSDiffableDataSourceSnapshot.indexOfItem(_:)();
  LOBYTE(v28) = v29;
  v30 = *(v17 + 8);
  v30(v20, v16);
  if (v28)
  {
LABEL_6:
    v30(v24, v16);
    return;
  }

  v44 = v30;
  v45 = v7;
  getContiguousArrayStorageType<A>(for:)(v13, v13);
  v31 = *(v13 - 8);
  swift_allocObject();
  v32 = static Array._adoptStorage(_:count:)();
  (*(v31 + 16))(v33, a2, v13);
  _finalizeUninitializedArray<A>(_:)();
  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v32);

  v34 = a1[2];
  if (v34)
  {
    v35 = v34;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v36 = static OS_dispatch_queue.main.getter();
    v37 = swift_allocObject();
    v38 = v48;
    *(v37 + 16) = v47;
    *(v37 + 24) = v38;
    v57 = partial apply for thunk for @callee_guaranteed () -> ();
    v58 = v37;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v56 = &block_descriptor_108;
    v39 = _Block_copy(&aBlock);

    v40 = v49;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v41 = v51;
    v42 = v45;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v40, v41, v39);
    _Block_release(v39);

    (*(v46 + 8))(v41, v42);
    (*(v50 + 8))(v40, v52);
    v30 = v44;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

void DOCNodeDiffableDataSource.isExpanded(_:section:)(uint64_t a1, __int128 *a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v16 - v6;
  v8 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - v11;
  v13 = v2[2];
  if (v13)
  {
    v14 = *(a2 + 2);
    v17 = *a2;
    v18 = v14;
    v19 = *(a2 + 24);
    v15 = v13;
    UICollectionViewDiffableDataSource.snapshot(for:)();

    swift_getObjectType();
    DOCNode.diffableItem()(&v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd);
    swift_dynamicCast();
    NSDiffableDataSourceSectionSnapshot.isExpanded(_:)();
    (*(v9 + 8))(v12, v8);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

void DOCNodeDiffableDataSource.collapse(_:section:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *(*v3 + 80);
  v6 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v21 - v8;
  v10 = v3[2];
  if (v10)
  {
    v12 = *a2;
    v11 = a2[1];
    v14 = a2[2];
    v13 = a2[3];
    v15 = a2[4];
    v26 = *a2;
    v27 = v11;
    v28 = v14;
    v29 = v13;
    v22 = v15;
    v23 = v13;
    v30 = v15;
    v16 = v10;
    UICollectionViewDiffableDataSource.snapshot(for:)();

    getContiguousArrayStorageType<A>(for:)(v5, v5);
    swift_allocObject();
    v17 = static Array._adoptStorage(_:count:)();
    swift_getObjectType();
    DOCNode.diffableItem()(&v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd);
    swift_dynamicCast();
    _finalizeUninitializedArray<A>(_:)();
    v18 = v25;
    NSDiffableDataSourceSectionSnapshot.collapse(_:)(v17);

    v19 = v3[2];
    if (v19)
    {
      v26 = v12;
      v27 = v11;
      v28 = v14;
      v29 = v23;
      v30 = v22;
      v20 = v19;
      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

      (*(v24 + 8))(v9, v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void DOCNodeDiffableDataSource.itemIdentifier(at:)()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - v5;
  v7 = v0[2];
  if (v7)
  {
    v8 = v7;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(*(v1 - 8) + 48))(v6, 1, v1) == 1)
    {
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      swift_dynamicCast();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCNodeDiffableDataSource.sectionIdentifier(containingItem:)@<X0>(uint64_t a1@<X8>)
{
  DOCNodeDiffableDataSource.snapshot()();
  DOCNodeDiffableDataSourceSnapshot.sectionIdentifier(containingItem:)(a1);
}

uint64_t DOCNodeDiffableDataSource.section(at:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  DOCNodeDiffableDataSource.snapshot()();
  v4 = DOCNodeDiffableDataSourceSnapshot.sectionIdentifiers.getter();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(v4 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = (v4 + 40 * a1);
  v7 = v6[5];
  v8 = v6[6];
  v9 = v6[7];
  v10 = v6[8];
  *a2 = v6[4];
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v10;
}

uint64_t DOCNodeDiffableDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void (*protocol witness for DOCNodeDiffableDataSourceProtocol.supplementaryViewProvider.modify in conformance DOCNodeDiffableDataSource<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 184))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

char *DOCNodeDiffableDataSourceSnapshot.init(with:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v6 = *(v3 + 88);
  v18[0] = &type metadata for DOCCollectionSection;
  v18[1] = v4;
  v18[2] = v5;
  v18[3] = v6;
  v7 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v8, v10);
  v13 = v18 - v12;
  v14 = *(v3 + 96);
  v15 = *(v7 - 8);
  v16 = *(v15 + 56);
  v16(&v1[v14], 1, 1, v7, v11);
  (*(v15 + 32))(v13, a1, v7);
  (v16)(v13, 0, 1, v7);
  swift_beginAccess();
  (*(v9 + 40))(&v1[v14], v13, v8);
  swift_endAccess();
  return v1;
}

uint64_t DOCNodeDiffableDataSourceSnapshot.sectionIdentifiers.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v4 = *(v1 + 88);
  v15[0] = &type metadata for DOCCollectionSection;
  v15[1] = v2;
  v15[2] = v3;
  v15[3] = v4;
  v5 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v15 - v9;
  v11 = *(v1 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v10, v0 + v11, v6);
  v12 = *(v5 - 8);
  result = (*(v12 + 48))(v10, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v12 + 8))(v10, v5);
    return v14;
  }

  return result;
}

uint64_t DOCNodeDiffableDataSourceSnapshot.sectionIdentifier(containingItem:)@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v5 = *(v2 + 88);
  v30[0] = &type metadata for DOCCollectionSection;
  v30[1] = v3;
  v30[2] = v4;
  v30[3] = v5;
  v6 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v7 = type metadata accessor for Optional();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v27 - v14;
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v27 - v19;
  swift_getObjectType();
  DOCNode.diffableItem()(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd);
  v21 = swift_dynamicCast();
  v22 = *(v16 + 56);
  if (v21)
  {
    v22(v15, 0, 1, v3);
    (*(v16 + 32))(v20, v15, v3);
    v23 = *(*v1 + 96);
    swift_beginAccess();
    (*(v27 + 16))(v10, v1 + v23, v28);
    v24 = *(v6 - 8);
    result = (*(v24 + 48))(v10, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      NSDiffableDataSourceSnapshot.sectionIdentifier(containingItem:)();
      (*(v16 + 8))(v20, v3);
      return (*(v24 + 8))(v10, v6);
    }
  }

  else
  {
    v22(v15, 1, 1, v3);
    result = (*(v12 + 8))(v15, v11);
    v26 = v29;
    *(v29 + 32) = 0;
    *v26 = 0u;
    v26[1] = 0u;
  }

  return result;
}

uint64_t DOCNodeDiffableDataSourceSnapshot.appendItems(_:toSection:)(uint64_t a1)
{
  v3 = *v1;
  v4 = [objc_opt_self() tabSidebar];
  v5 = [v4 isEnabled];

  if (v5)
  {
    v6 = *(v3 + 80);
    type metadata accessor for Array();

    swift_getWitnessTable();
    Set.init<A>(_:)();
    type metadata accessor for Set();
    swift_getWitnessTable();
    v7 = Array.init<A>(_:)();
    v8 = MEMORY[0x24C1FB170](a1, v6);
    if (v8 != MEMORY[0x24C1FB170](v7, v6))
    {
      v18 = v1;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.UI);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134218240;
        *(v12 + 4) = MEMORY[0x24C1FB170](a1, v6);

        *(v12 + 12) = 2048;
        *(v12 + 14) = MEMORY[0x24C1FB170](v7, v6);

        _os_log_impl(&dword_2493AC000, v10, v11, "TabSidebar count of ids: %ld, but unique count is only: %ld. De-duping applied.", v12, 0x16u);
        MEMORY[0x24C1FE850](v12, -1, -1);
      }

      else
      {
      }

      v1 = v18;
    }

    v16 = *(*v1 + 96);
    swift_beginAccess();
    lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
    v17 = type metadata accessor for NSDiffableDataSourceSnapshot();
    result = (*(*(v17 - 8) + 48))(v1 + v16, 1, v17);
    if (result != 1)
    {
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
      swift_endAccess();
    }
  }

  else
  {
    v13 = *(*v1 + 96);
    swift_beginAccess();
    lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
    v14 = type metadata accessor for NSDiffableDataSourceSnapshot();
    result = (*(*(v14 - 8) + 48))(v1 + v13, 1, v14);
    if (result != 1)
    {
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
      return swift_endAccess();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DOCNodeDiffableDataSourceSnapshot.appendSections(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = *(*v2 + 96);
  swift_beginAccess();
  lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v6 = type metadata accessor for NSDiffableDataSourceSnapshot();
  result = (*(*(v6 - 8) + 48))(v2 + v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a2(a1, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t DOCNodeDiffableDataSourceSnapshot.deinit()
{
  v1 = *(*v0 + 96);
  lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  type metadata accessor for NSDiffableDataSourceSnapshot();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DOCNodeDiffableDataSourceSnapshot.__deallocating_deinit()
{
  DOCNodeDiffableDataSourceSnapshot.deinit();

  return swift_deallocClassInstance();
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

char *specialized DOCNodeDiffableDataSource.createEmptySnapshot()(uint64_t a1, uint64_t a2)
{
  v8[0] = &type metadata for DOCCollectionSection;
  v8[1] = a1;
  v8[2] = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v8[3] = a2;
  v3 = type metadata accessor for NSDiffableDataSourceSnapshot();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v8 - v5;
  type metadata accessor for DOCNodeDiffableDataSourceSnapshot();
  NSDiffableDataSourceSnapshot.init()();
  swift_allocObject();
  return DOCNodeDiffableDataSourceSnapshot.init(with:)(v6);
}

void partial apply for closure #2 in DOCNodeDiffableDataSource.insertNodes(_:parentDocNode:section:completion:)()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  closure #2 in DOCNodeDiffableDataSource.insertNodes(_:parentDocNode:section:completion:)(*(v0 + 32), v0 + v1, *v2, v2[1]);
}

uint64_t type metadata completion function for DOCNodeDiffableDataSourceSnapshot()
{
  lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  type metadata accessor for NSDiffableDataSourceSnapshot();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UICollectionView, @in_guaranteed String, @in_guaranteed IndexPath) -> (@out UICollectionReusableView?)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[1] = a3;
  v9 = a1;
  v8[0] = a2;
  v5(&v7, &v9, v8, a4);
  return v7;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UICollectionView, @guaranteed String, @in_guaranteed IndexPath) -> (@owned UICollectionReusableView?)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, *a2, a2[1], a3);
  *a4 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type FPItem? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type FPItem? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type FPItem? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo6FPItemCSgMd);
    lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPItem? and conformance <A> A?);
  }

  return result;
}

id DOCSearchAppMenuButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCSearchAppMenuButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCSearchAppMenuButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSearchAppMenuButton_attachedMenu) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCSearchAppMenuButton.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v12 - v3;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSearchAppMenuButton_attachedMenu] = 0;
  v5 = type metadata accessor for DOCSearchAppMenuButton();
  v12.receiver = v0;
  v12.super_class = v5;
  v6 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setPointerInteractionEnabled_];
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration.glass()();
    v7 = type metadata accessor for UIButton.Configuration();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    UIButton.configuration.setter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249B9A480;
  v9 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v10 = MEMORY[0x277D74DB8];
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v6;
}

void closure #1 in DOCSearchAppMenuButton.init()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
    [v1 invalidateIntrinsicContentSize];
  }
}

void DOCSearchAppMenuButton.attachedMenu.didset()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSearchAppMenuButton_attachedMenu;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in DOCSearchAppMenuButton.attachedMenu.didset;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [UIMenuElement]?) -> (@owned UIMenu?);
    aBlock[3] = &block_descriptor_109;
    v4 = _Block_copy(aBlock);
    v5 = v2;

    [v0 _setMenuProvider_];
    _Block_release(v4);
    v6 = v5;
    v7 = [v6 image];
    [v0 setImage:v7 forState:0];

    v8 = [v6 title];
    if (!v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = MEMORY[0x24C1FAD20](v9);
    }

    [v0 setTitle:v8 forState:0];

    [v0 setShowsMenuAsPrimaryAction_];
    [v0 setNeedsUpdateConfiguration];
  }

  else
  {
    [v0 _setMenuProvider_];
  }
}

id thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [UIMenuElement]?) -> (@owned UIMenu?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    outlined init with take of Any(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    type metadata accessor for UIMenuElement();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  outlined destroy of Any?(v10);

  return v6;
}

void *DOCSearchAppMenuButton.attachedMenu.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSearchAppMenuButton_attachedMenu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSearchAppMenuButton.attachedMenu.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSearchAppMenuButton_attachedMenu;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  DOCSearchAppMenuButton.attachedMenu.didset();
}

void (*DOCSearchAppMenuButton.attachedMenu.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSearchAppMenuButton.attachedMenu.modify;
}

void DOCSearchAppMenuButton.attachedMenu.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCSearchAppMenuButton.attachedMenu.didset();
  }
}

id DOCSearchAppMenuButton.menu.getter()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCSearchAppMenuButton();
  v1 = objc_msgSendSuper2(&v3, sel_menu);

  return v1;
}

void DOCSearchAppMenuButton.menu.setter(void *a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCSearchAppMenuButton();
  objc_msgSendSuper2(&v3, sel_setMenu_, a1);
}

CGSize __swiftcall DOCSearchAppMenuButton.sizeThatFits(_:)(CGSize a1)
{
  v2 = [objc_opt_self() defaultMetrics];
  v3 = [v1 traitCollection];
  [v2 scaledValueForValue:v3 compatibleWithTraitCollection:44.0];
  v5 = v4;

  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

id DOCSearchAppMenuButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCSearchAppMenuButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSearchAppMenuButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for UIMenuElement()
{
  result = lazy cache variable for type metadata for UIMenuElement;
  if (!lazy cache variable for type metadata for UIMenuElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIMenuElement);
  }

  return result;
}

id DOCSuggestionsTableViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCSuggestionsTableView.__allocating_init(frame:style:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);

  return [v11 initWithFrame:a1 style:{a2, a3, a4, a5}];
}

id DOCSuggestionsTableView.init(frame:style:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCSuggestionsTableView_cachedIntrinsicSize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for DOCSuggestionsTableView();
  v12 = objc_msgSendSuper2(&v18, sel_initWithFrame_style_, a1, a2, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249B9A480;
  v14 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v15 = MEMORY[0x277D74DB8];
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  v16 = v12;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v16;
}

Swift::Void __swiftcall DOCSuggestionsTableView.reloadData()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DOCSuggestionsTableView();
  objc_msgSendSuper2(&v1, sel_reloadData);
  [v0 invalidateIntrinsicContentSize];
  [v0 layoutIfNeeded];
}

id DOCSuggestionsTableView.invalidateIntrinsicContentSize()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x60))(0, 0, 1);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSuggestionsTableView();
  return objc_msgSendSuper2(&v2, sel_invalidateIntrinsicContentSize);
}

void @objc DOCSuggestionsTableView.invalidateIntrinsicContentSize()(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v2 = a1;
  v1(0, 0, 1);
  v3.receiver = v2;
  v3.super_class = type metadata accessor for DOCSuggestionsTableView();
  objc_msgSendSuper2(&v3, sel_invalidateIntrinsicContentSize);
}

uint64_t DOCSuggestionsTableView.cachedIntrinsicSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCSuggestionsTableView_cachedIntrinsicSize;
  swift_beginAccess();
  return *v1;
}

uint64_t DOCSuggestionsTableView.cachedIntrinsicSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCSuggestionsTableView_cachedIntrinsicSize;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

double DOCSuggestionsTableView.intrinsicContentSize.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  if (v4)
  {
    v5 = *MEMORY[0x277D77260];
    DOCSuggestionsTableView.calculatedHeight()();
    v7 = v6;
  }

  else
  {
    v5 = *&v2;
    v7 = v3;
  }

  (*((*v1 & *v0) + 0x60))(COERCE_DOUBLE(*&v5), v7, 0);
  return v5;
}

uint64_t DOCSuggestionsTableView.calculatedHeight()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 delegate];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  type metadata accessor for DOCSuggestionsTableViewController();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = [v10 numberOfSectionsInTableView_];
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  v29[1] = v9;
  if (v11)
  {
    v13 = 0;
    v14 = (v3 + 8);
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    while (1)
    {
      v19 = [v1 numberOfRowsInSection_];
      if ((v19 & 0x8000000000000000) != 0)
      {
        break;
      }

      v20 = v19;
      if (v19)
      {
        v21 = 0;
        do
        {
          v22 = v21 + 1;
          MEMORY[0x24C1F80E0]();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*v14)(v7, v2);
          [v1 rectForRowAtIndexPath_];
          v15 = v24;
          v16 = v25;
          v17 = v26;
          v18 = v27;

          v21 = v22;
        }

        while (v20 != v22);
      }

      if (++v13 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
LABEL_13:
  v30.origin.x = v15;
  v30.origin.y = v16;
  v30.size.width = v17;
  v30.size.height = v18;
  CGRectGetMaxY(v30);
  return swift_unknownObjectRelease();
}

uint64_t DOCSuggestionsTableViewController.suggestionsTableViewDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestionsTableViewDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCSuggestionsTableViewController.suggestionsTableViewDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestionsTableViewDelegate;
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

uint64_t DOCSuggestionsTableViewController.suggestions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestions;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions) = *(v1 + v3);

  return (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(1);
}

void (*DOCSuggestionsTableViewController.suggestions.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestions;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCSuggestionsTableViewController.suggestions.modify;
}

void DOCSuggestionsTableViewController.suggestions.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions) = *(v4 + v3[4]);

    (*((*MEMORY[0x277D85000] & *v4) + 0xF0))(1);
  }

  free(v3);
}

unint64_t DOCSuggestionsTableViewController.selectedSuggestion.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v18 - v10;
  result = [v1 tableView];
  if (result)
  {
    v13 = result;
    v14 = [result indexPathForSelectedRow];

    if (!v14)
    {
      return 0;
    }

    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v11, v6, v2);
    result = IndexPath.row.getter();
    v15 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions];
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = result;

      v16 = MEMORY[0x24C1FC540](v17, v15);

      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 8 * result + 32);
LABEL_7:
      (*(v3 + 8))(v11, v2);
      return v16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id DOCSuggestionsTableViewController.init()()
{
  swift_getObjectType();
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestionsTableViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestions] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions] = v1;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for DOCSuggestionsTableViewController();
  v2 = objc_msgSendSuper2(&v8, sel_initWithStyle_, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  v4 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v5 = MEMORY[0x277D74DB8];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = v2;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v6;
}

id DOCSuggestionsTableViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCSuggestionsTableViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestionsTableViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestions) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions) = v1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall DOCSuggestionsTableViewController.loadView()()
{
  v1 = [objc_allocWithZone(type metadata accessor for DOCSuggestionsTableView()) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setView_];
}

Swift::Void __swiftcall DOCSuggestionsTableViewController.viewDidLoad()()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for DOCSuggestionsTableViewController();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v1 = [v0 tableView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  [v1 setClipsToBounds_];

  v3 = [v0 tableView];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTableFooterView_];

  v6 = [v0 tableView];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  [v6 setBouncesVertically_];

  v8 = [v0 tableView];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  [v8 setCellLayoutMarginsFollowReadableWidth_];

  v10 = [v0 tableView];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  [v10 setDelegate_];

  v12 = [v0 tableView];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  [v12 setDataSource_];

  v14 = [v0 tableView];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  type metadata accessor for DOCSuggestionsTableViewController.SuggestionsCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BEC590);
  [v15 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v17];

  v18 = [v0 tableView];
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  [v18 setShowsVerticalScrollIndicator_];

  v20 = [v0 tableView];
  if (!v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = v20;
  [v20 setShowsHorizontalScrollIndicator_];

  v22 = [v0 tableView];
  if (v22)
  {
    v23 = v22;
    [v22 setAllowsMultipleSelection_];

    return;
  }

LABEL_21:
  __break(1u);
}

Swift::Bool __swiftcall DOCSuggestionsTableViewController.resignFirstResponder()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DOCSuggestionsTableViewController();
  v19.receiver = v1;
  v19.super_class = v11;
  v12 = objc_msgSendSuper2(&v19, sel_resignFirstResponder);
  v13 = [v1 tableView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = v13;
  v15 = [v13 indexPathForSelectedRow];

  if (v15)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v10, v6, v2);
    v13 = [v1 tableView];
    if (v13)
    {
      v16 = v13;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v16 deselectRowAtIndexPath:isa animated:1];

      (*(v3 + 8))(v10, v2);
      goto LABEL_5;
    }

LABEL_7:
    __break(1u);
    return v13;
  }

LABEL_5:
  LOBYTE(v13) = v12;
  return v13;
}

void DOCSuggestionsTableViewController.keyCommandConfirmSelection()()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v14 - v9;
  v11 = [v0 tableView];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 indexPathForSelectedRow];

    if (v13)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v2 + 32))(v10, v5, v1);
      DOCSuggestionsTableViewController.notiftyDelegateForSelection(at:)();
      (*(v2 + 8))(v10, v1);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(uint64_t a1, char a2, int a3)
{
  v4 = v3;
  v75 = a3;
  v78 = a1;
  v6 = type metadata accessor for IndexPath();
  v79 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v73 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v76 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v74 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v71 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v71 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v71 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v71 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v77 = &v71 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v71 - v36;
  v40 = MEMORY[0x28223BE20](v38, v39);
  v80 = &v71 - v41;
  result = [v4 tableView];
  if (!result)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v43 = result;
  v44 = [result indexPathForSelectedRow];

  if (v44)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = v79;
    v46 = *(v79 + 56);
    v46(v37, 0, 1, v6);
  }

  else
  {
    v45 = v79;
    v46 = *(v79 + 56);
    v46(v37, 1, 1, v6);
  }

  outlined init with take of IndexPath?(v37, v80);
  if (a2)
  {
    if (a2 == 1)
    {
      v47 = *(v45 + 48);
      v48 = v80;
      if (v47(v80, 1, v6) == 1)
      {
        if (v78 >= 1)
        {
          DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(1, 2, v75 & 1);
        }

        return outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd);
      }

      v72 = v4;
      outlined init with copy of IndexPath?(v48, v30);
      result = (v47)(v30, 1, v6);
      if (result == 1)
      {
        goto LABEL_49;
      }

      v50 = IndexPath.row.getter();
      v4 = (v79 + 8);
      v71 = *(v79 + 8);
      v71(v30, v6);
      if (!v50 && v78 < 0)
      {
        v48 = v80;
        deselect #1 (notifyingDelegate:) in DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(1, v80, v72);
        return outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd);
      }

      v48 = v80;
      outlined init with copy of IndexPath?(v80, v22);
      result = (v47)(v22, 1, v6);
      if (result == 1)
      {
        goto LABEL_52;
      }

      v51 = IndexPath.row.getter();
      v71(v22, v6);
      v45 = v79;
      result = v51 + v78;
      if (__OFADD__(v51, v78))
      {
        __break(1u);
        goto LABEL_44;
      }

      MEMORY[0x24C1F80E0](result, 0);
      v46(v26, 0, 1, v6);
      v49 = v77;
      outlined init with take of IndexPath?(v26, v77);
      v4 = v72;
    }

    else
    {
      v48 = v80;
      if (!v78)
      {
        deselect #1 (notifyingDelegate:) in DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(1, v80, v4);
        return outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd);
      }

      v49 = v77;
      MEMORY[0x24C1F80E0](0, 0);
      v46(v49, 0, 1, v6);
    }
  }

  else
  {
    v49 = v77;
    MEMORY[0x24C1F80E0](v78, 0);
    v46(v49, 0, 1, v6);
    v48 = v80;
  }

  outlined init with copy of IndexPath?(v49, v18);
  v52 = *(v45 + 48);
  if (v52(v18, 1, v6) == 1)
  {
    outlined destroy of CharacterSet?(v49, &_s10Foundation9IndexPathVSgMd);
    outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd);
    v48 = v18;
    return outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd);
  }

  v53 = *(v45 + 32);
  v18 = v76;
  v53();
  if (IndexPath.row.getter() < 0)
  {
LABEL_29:
    (*(v79 + 8))(v18, v6);
    outlined destroy of CharacterSet?(v77, &_s10Foundation9IndexPathVSgMd);
    return outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd);
  }

  v54 = IndexPath.row.getter();
  result = [v4 tableView];
  if (!result)
  {
    goto LABEL_48;
  }

  v55 = result;
  v56 = [result numberOfRowsInSection_];

  v57 = v54 < v56;
  v48 = v80;
  if (!v57)
  {
    goto LABEL_29;
  }

  v58 = v74;
  outlined init with copy of IndexPath?(v80, v74);
  if (v52(v58, 1, v6) == 1)
  {
    outlined destroy of CharacterSet?(v58, &_s10Foundation9IndexPathVSgMd);
    v59 = v79;
    v22 = v77;
    v60 = &selRef_numberOfPreviewItems;
    goto LABEL_32;
  }

  v61 = v73;
  (v53)(v73, v58, v6);
  v60 = &selRef_numberOfPreviewItems;
  result = [v4 tableView];
  if (result)
  {
    v62 = result;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v62 deselectRowAtIndexPath:isa animated:0];

    v59 = v79;
    (*(v79 + 8))(v61, v6);
    v22 = v77;
LABEL_32:
    result = [v4 v60[181]];
    if (!result)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v64 = result;
    v65 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v64 selectRowAtIndexPath:v65 animated:0 scrollPosition:0];

    result = [v4 v60[181]];
    if (!result)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v66 = result;
    UITableView.doc_scrollToItemIfNeeded(at:)();

    if ((v75 & 1) == 0 || !(*((*MEMORY[0x277D85000] & *v4) + 0x68))())
    {
      goto LABEL_41;
    }

    v48 = v67;
    result = IndexPath.row.getter();
    v51 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions);
    if ((v51 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v68 = *(v51 + 8 * result + 32);
LABEL_40:
        ObjectType = swift_getObjectType();
        (*(v48 + 8))(v4, v68, ObjectType, v48);
        swift_unknownObjectRelease();

        v59 = v79;
LABEL_41:
        (*(v59 + 8))(v18, v6);
        outlined destroy of CharacterSet?(v22, &_s10Foundation9IndexPathVSgMd);
        v48 = v80;
        return outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd);
      }

      __break(1u);
      goto LABEL_47;
    }

LABEL_44:
    v70 = result;

    v68 = MEMORY[0x24C1FC540](v70, v51);

    goto LABEL_40;
  }

LABEL_53:
  __break(1u);
  return result;
}

id deselect #1 (notifyingDelegate:) in DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(char a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of IndexPath?(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd);
    if ((a1 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  (*(v11 + 32))(v14, v9, v10);
  result = [a3 tableView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = result;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v16 deselectRowAtIndexPath:isa animated:0];

  result = (*(v11 + 8))(v14, v10);
  if (a1)
  {
LABEL_6:
    result = (*((*MEMORY[0x277D85000] & *a3) + 0x68))(result);
    if (result)
    {
      v19 = v18;
      ObjectType = swift_getObjectType();
      (*(v19 + 8))(a3, 0, ObjectType, v19);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall DOCSuggestionsTableViewController.reload(postDidChangeSize:)(Swift::Bool postDidChangeSize)
{
  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 reloadData];

  v5 = [v1 tableView];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 invalidateIntrinsicContentSize];

  if (postDidChangeSize && (*((*MEMORY[0x277D85000] & *v1) + 0x68))())
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(v1, ObjectType, v8);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCSuggestionsTableViewController.reloadSuggestionImages()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      (*((*v2 & *v7) + 0x180))();

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v10 = *((*v2 & *v1) + 0xF0);

  v10(1);
}

void DOCSuggestionsTableViewController.notiftyDelegateForSelection(at:)()
{
  v1 = v0;
  v2 = IndexPath.row.getter();
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v3 + 8 * v2 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_16;
  }

  v10 = v2;

  v11 = MEMORY[0x24C1FC540](v10, v3);

LABEL_5:
  v4 = [v0 tableView];
  if (!v4)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v5 = v4;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v5 deselectRowAtIndexPath:isa animated:1];

  if ((*((*MEMORY[0x277D85000] & *v1) + 0x68))())
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v1, v11, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Int __swiftcall DOCSuggestionsTableViewController.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x80))(_, numberOfRowsInSection);
  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4;
}

void DOCSuggestionsTableViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v3 = type metadata accessor for UIListContentConfiguration();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BEC590, v6);
  v10 = [a1 dequeueReusableCellWithIdentifier_];

  if (!v10)
  {
    goto LABEL_14;
  }

  type metadata accessor for DOCSuggestionsTableViewController.SuggestionsCell();
  v11 = swift_dynamicCastClassUnconditional();
  v12 = IndexPath.row.getter();
  v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions);
  v66 = v3;
  v65 = v4;
  v64 = v11;
  v63 = v10;
  if ((v13 & 0xC000000000000001) != 0)
  {
    v57 = v12;

    v14 = MEMORY[0x24C1FC540](v57, v13);

    goto LABEL_6;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v14 = *(v13 + 8 * v12 + 32);
LABEL_6:
  v15 = MEMORY[0x277D85000];
  v16 = (*MEMORY[0x277D85000] & *v14) + 152;
  v60 = *((*MEMORY[0x277D85000] & *v14) + 0x98);
  v61 = v16;
  v60();
  v18 = v17;
  v19 = objc_opt_self();
  v20 = &selRef_labelColor;
  if ((v18 & 1) == 0)
  {
    v20 = &selRef_secondaryLabelColor;
  }

  v21 = [v19 *v20];
  v22 = *((*v15 & *v14) + 0xB0);
  v23 = v21;
  v24 = v22();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  v58 = xmmword_249B9A480;
  *(inited + 16) = xmmword_249B9A480;
  v28 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v59 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  *(inited + 64) = v59;
  v62 = v23;
  *(inited + 40) = v23;
  v29 = v28;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
  v30 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v31 = MEMORY[0x24C1FAD20](v24, v26);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [v30 initWithString:v31 attributes:isa];

  v34 = (v60)();
  if ((v36 & 1) == 0)
  {
    v37 = v34;
    v61 = v35;
    v38 = swift_initStackObject();
    *(v38 + 16) = v58;
    *(v38 + 32) = v29;
    v39 = objc_opt_self();
    v40 = v29;
    v41 = [v39 labelColor];
    *(v38 + 64) = v59;
    *(v38 + 40) = v41;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v38);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(v38 + 32, &_sSo21NSAttributedStringKeya_yptMd);
    v42 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 setAttributes:v42 range:{v37, v61}];
  }

  v43 = static UIListContentConfiguration.cell()();
  (*((*MEMORY[0x277D85000] & *v14) + 0x170))(v43);
  UIListContentConfiguration.image.setter();
  v44 = objc_opt_self();
  v45 = [v44 labelColor];
  v46 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.tintColor.setter();
  v46(v67, 0);
  v47 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.maximumSize.setter();
  v47(v67, 0);
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  v48 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
  v48(v67, 0);
  v49 = v33;
  UIListContentConfiguration.attributedText.setter();
  v50 = v66;
  v67[3] = v66;
  v67[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  v52 = v65;
  (*(v65 + 16))(boxed_opaque_existential_1, v8, v50);
  v53 = v63;
  v54 = v64;
  MEMORY[0x24C1FB7C0](v67);
  v55 = v53;
  v56 = [v44 clearColor];
  [v54 setBackgroundColor_];

  (*(v52 + 8))(v8, v50);
}

id DOCSuggestionsTableViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle_];
}

id DOCSuggestionsTableViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x24C1FAD20]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DOCSuggestionsTableView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized DOCSuggestionsTableViewController.keyCommands.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D76B68];
  *(v0 + 16) = xmmword_249BA0470;
  v2 = *v1;
  v3 = objc_opt_self();
  *(v0 + 32) = [v3 keyCommandWithInput:v2 modifierFlags:0 action:sel_keyCommandMoveSelectionUp];
  *(v0 + 40) = [v3 keyCommandWithInput:*MEMORY[0x277D76AC0] modifierFlags:0 action:sel_keyCommandMoveSelectionDown];
  v4 = MEMORY[0x24C1FAD20](13, 0xE100000000000000);
  v5 = [v3 keyCommandWithInput:v4 modifierFlags:0 action:sel_keyCommandConfirmSelection];

  *(v0 + 48) = v5;
  *(v0 + 56) = [v3 keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:sel_keyCommandCancelSelection];
  return v0;
}

void *DOCSearchBar.__allocating_init(configuration:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized DOCSearchBar.init(configuration:)(a1);

  return v4;
}

void *DOCSearchBar.init(configuration:)(void *a1)
{
  v2 = specialized DOCSearchBar.init(configuration:)(a1);

  return v2;
}

id DOCSearchBar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCSearchBar.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCSearchBar.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSearchBar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized closure #1 in DOCSearchBar.init(configuration:)(void *a1)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x68))();
  if (result)
  {

    return [a1 _setOverrideInlineInactiveWidth_];
  }

  return result;
}

void *specialized DOCSearchBar.init(configuration:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSearchBar_configuration] = a1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for DOCSearchBar();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  result = _DocumentManagerBundle();
  if (result)
  {
    v7 = result;
    v16._object = 0x8000000249BEC7F0;
    v8._countAndFlagsBits = 0x686372616553;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v8._object = 0xE600000000000000;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0xD000000000000022;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v16);

    v12 = MEMORY[0x24C1FAD20](v11._countAndFlagsBits, v11._object);

    [v5 setPlaceholder_];

    [v5 setWritingToolsBehavior_];
    if ((*((*MEMORY[0x277D85000] & *v5) + 0x68))())
    {
      [v5 _setOverrideInlineInactiveWidth_];
    }

    v13 = 0;
    v14 = 1;
    UIView.registerForUIPDocumentLandingTraitChanges<A>(options:_:)(&v13, specialized closure #1 in DOCSearchBar.init(configuration:), 0, ObjectType);
    swift_unknownObjectRelease();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UIWindowScene.configurationSupportsPreviewInNewWindow(contentType:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  if ([v12 quickLookInSeparateProcess])
  {
    return 1;
  }

  v14 = [v12 quickLookInWindow];
  v15 = [v14 isEnabled];

  if (v15)
  {
    v13 = [v1 _enhancedWindowingEnabled];
  }

  else
  {
    v13 = 0;
  }

  v16 = [v12 quickLookRestrictContentTypesThatOpenInWindow];
  v17 = [v16 isEnabled];

  if (v17)
  {
    outlined init with copy of UTType?(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of UTType?(v6);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
      *(swift_allocObject() + 16) = xmmword_249BA08C0;
      static UTType.movie.getter();
      static UTType.image.getter();
      static UTType.audio.getter();
      isa = UTType._bridgeToObjectiveC()().super.isa;
      v19 = Array._bridgeToObjectiveC()().super.isa;

      v20 = [(objc_class *)isa doc_conformsToAnyInContentTypes:v19];

      (*(v8 + 8))(v11, v7);
      return v13 & (v20 ^ 1);
    }
  }

  return v13;
}

unint64_t lazy protocol witness table accessor for type DOCHorizontalEdge and conformance DOCHorizontalEdge()
{
  result = lazy protocol witness table cache variable for type DOCHorizontalEdge and conformance DOCHorizontalEdge;
  if (!lazy protocol witness table cache variable for type DOCHorizontalEdge and conformance DOCHorizontalEdge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHorizontalEdge and conformance DOCHorizontalEdge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCVerticalEdge and conformance DOCVerticalEdge()
{
  result = lazy protocol witness table cache variable for type DOCVerticalEdge and conformance DOCVerticalEdge;
  if (!lazy protocol witness table cache variable for type DOCVerticalEdge and conformance DOCVerticalEdge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCVerticalEdge and conformance DOCVerticalEdge);
  }

  return result;
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.__allocating_init(hierarchyController:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 24) = MEMORY[0x277D84F90];
  *(v2 + 32) = 1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0;
  *(v2 + 64) = 0;
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.init(hierarchyController:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = MEMORY[0x277D84F90];
  *(v1 + 32) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0;
  *(v1 + 64) = 0;
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.watchedNodes.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return DOCHierarchyController.UserDefaultsObservedContent.updateObservers()();
}

uint64_t (*DOCHierarchyController.UserDefaultsObservedContent.watchedNodes.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCHierarchyController.UserDefaultsObservedContent.watchedNodes.modify;
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.isObservingActive.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  return DOCHierarchyController.UserDefaultsObservedContent.updateObservers()();
}

uint64_t (*DOCHierarchyController.UserDefaultsObservedContent.isObservingActive.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCHierarchyController.UserDefaultsObservedContent.isObservingActive.modify;
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.watchedNodes.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return DOCHierarchyController.UserDefaultsObservedContent.updateObservers()();
  }

  return result;
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.notificationsController.getter()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC012DOCHierarchyF0C27UserDefaultsObservedContentCGMd);
    v1 = swift_allocObject();
    swift_weakInit();
    *(v1 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    swift_weakAssign();
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.updateObservers()()
{
  v1 = v0;
  result = (*(*v0 + 184))();
  if ((result & 1) != 0 && ((v3 = (*(*v0 + 160))(), v3 >> 62) ? (v4 = __CocoaSet.count.getter()) : (v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)), result = , v4 >= 1))
  {
    if (!*(v1 + 56))
    {
      v5 = DOCHierarchyController.UserDefaultsObservedContent.notificationsController.getter();
      if (one-time initialization token for DOCNodeCollectionNodeDisplayNameChanged != -1)
      {
        swift_once();
      }

      v6 = static NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged;
      v7 = [objc_opt_self() mainQueue];
      v8 = (*(*v5 + 144))(v6, &v14, v7, closure #1 in DOCHierarchyController.UserDefaultsObservedContent.updateObservers(), 0);
      v10 = v9;

      outlined destroy of Any?(&v14);
      *(v1 + 48) = v8;
      *(v1 + 56) = v10;
    }
  }

  else
  {
    v11 = *(v1 + 56);
    if (v11)
    {
      v12 = *(v1 + 48);

      v13 = DOCHierarchyController.UserDefaultsObservedContent.notificationsController.getter();
      (*(*v13 + 168))(v12, v11);

      *(v1 + 48) = 0;
      *(v1 + 56) = 0;
    }
  }

  return result;
}

uint64_t closure #1 in DOCHierarchyController.UserDefaultsObservedContent.updateObservers()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (!v21)
  {
    return outlined destroy of Any?(aBlock);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v24;
    v14 = (*(*a1 + 160))();
    swift_getObjectType();
    v15 = specialized Array<A>.contains(node:)(v13, v14);

    if (v15)
    {
      type metadata accessor for OS_dispatch_queue();
      v16 = static OS_dispatch_queue.main.getter();
      v22 = partial apply for closure #1 in closure #1 in DOCHierarchyController.UserDefaultsObservedContent.updateObservers();
      v23 = a1;
      v19 = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v21 = &block_descriptor_17_2;
      v17 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v18 = v19;
      MEMORY[0x24C1FB9A0](0, v11, v6, v17);
      _Block_release(v17);
      swift_unknownObjectRelease();

      (*(v3 + 8))(v6, v2);
      return (*(v8 + 8))(v11, v7);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void DOCHierarchyController.UserDefaultsObservedContent.mt_handleObserveNodeDidUpdate()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v24 - v19;
  if ((v1[64] & 1) == 0)
  {
    v26 = v3;
    if ((*(*v1 + 184))(v18))
    {
      type metadata accessor for OS_dispatch_queue();
      v24 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v25 = *(v12 + 8);
      v25(v15, v11);
      v21 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in DOCHierarchyController.UserDefaultsObservedContent.mt_handleObserveNodeDidUpdate();
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_110;
      v22 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v23 = v24;
      MEMORY[0x24C1FB940](v20, v10, v6, v22);
      _Block_release(v22);

      (*(v26 + 8))(v6, v2);
      (*(v27 + 8))(v10, v7);
      v25(v20, v11);
    }

    else
    {
      v1[64] = 0;
    }
  }
}

uint64_t closure #1 in DOCHierarchyController.UserDefaultsObservedContent.mt_handleObserveNodeDidUpdate()()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = 0;
  }

  return result;
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.deinit()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return v0;
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.__deallocating_deinit()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall DOCBarButtonItemStorage.ItemStorage.clear()()
{
  *v0 = 0;

  v0[1] = 0;
}

id DOCBarButtonItemStorage.ItemStorage.lazyLoadedItem(withLoadHandler:)(uint64_t (*a1)(void))
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v1 + 8);
  }

  else
  {
    v4 = v1;
    v5 = a1();
    *(v4 + 8) = v5;
    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249BA0290;
    *(v6 + 32) = v5;
    v3 = v5;
    v7 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v2 = 0;
    *v4 = v7;
  }

  v8 = v2;
  return v3;
}

id DOCBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCBarButtonItem.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

void DOCBarButtonItemGroup.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_autoHideIfItemsHidden) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_itemObservances) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCBarButtonItemGroup.__allocating_init(barButtonItems:representativeItem:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  type metadata accessor for UIBarButtonItem();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithBarButtonItems:isa representativeItem:a2];

  return v6;
}

unint64_t type metadata accessor for UIBarButtonItem()
{
  result = lazy cache variable for type metadata for UIBarButtonItem;
  if (!lazy cache variable for type metadata for UIBarButtonItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIBarButtonItem);
  }

  return result;
}

void *DOCBarButtonItemGroup.init(barButtonItems:representativeItem:)(uint64_t a1, void *a2)
{
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_autoHideIfItemsHidden] = 1;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting] = 0;
  v4 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_itemObservances] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems] = 0;
  type metadata accessor for UIBarButtonItem();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v27.receiver = v2;
  v27.super_class = type metadata accessor for DOCBarButtonItemGroup();
  v6 = objc_msgSendSuper2(&v27, sel_initWithBarButtonItems_representativeItem_, isa, a2);

  v7 = *((*MEMORY[0x277D85000] & *v6) + 0xA0);
  v26 = v6;
  v8 = v7();
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      dispatch thunk of NSKeyValueObservation.invalidate()();

      ++v11;
      if (v14 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v15 = [v26 barButtonItems];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    goto LABEL_28;
  }

  for (j = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
  {
    v25 = a2;
    v18 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x24C1FC540](v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      a2 = v16;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      MEMORY[0x24C1FB090](v22);
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v18;
      if (v21 == j)
      {
        v23 = v4;
        a2 = v25;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_30:

  (*((*MEMORY[0x277D85000] & *v26) + 0xA8))(v23);
  DOCBarButtonItemGroup.updateHasVisibleItems()();

  return v26;
}

uint64_t DOCBarButtonItemGroup.barButtonItems.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCBarButtonItemGroup();
  v1 = objc_msgSendSuper2(&v4, sel_barButtonItems);
  type metadata accessor for UIBarButtonItem();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t DOCBarButtonItemGroup.barButtonItems.setter()
{
  type metadata accessor for UIBarButtonItem();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21.receiver = v0;
  v21.super_class = type metadata accessor for DOCBarButtonItemGroup();
  objc_msgSendSuper2(&v21, sel_setBarButtonItems_, isa);

  v19 = v0;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xA0))();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      dispatch thunk of NSKeyValueObservation.invalidate()();

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = [v19 barButtonItems];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    goto LABEL_28;
  }

  for (j = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1FC540](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      MEMORY[0x24C1FB090](v16);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v12;
      if (v15 == j)
      {
        v17 = v20;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_30:

  (*((*MEMORY[0x277D85000] & *v19) + 0xA8))(v17);
  return DOCBarButtonItemGroup.updateHasVisibleItems()();
}

uint64_t DOCBarButtonItemGroup.autoHideIfItemsHidden.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_autoHideIfItemsHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCBarButtonItemGroup.autoHideIfItemsHidden.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_autoHideIfItemsHidden;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = type metadata accessor for DOCBarButtonItemGroup();
  v9.receiver = v1;
  v9.super_class = v4;
  result = objc_msgSendSuper2(&v9, sel_isHidden);
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting) == 1)
  {
    if (result)
    {
      return result;
    }

    v6 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems) == 1)
  {
    if ((result & 1) == 0)
    {
      return result;
    }

    v6 = 0;
  }

  else
  {
    v7 = result;
    result = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
    v6 = result;
    if (v7 == (result & 1))
    {
      return result;
    }
  }

  v8.receiver = v1;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, sel_setHidden_, v6 & 1);
}

void (*DOCBarButtonItemGroup.autoHideIfItemsHidden.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  return DOCBarButtonItemGroup.autoHideIfItemsHidden.modify;
}

void DOCBarButtonItemGroup.autoHideIfItemsHidden.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 56);
    v5 = type metadata accessor for DOCBarButtonItemGroup();
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    v6 = objc_msgSendSuper2((v3 + 24), sel_isHidden);
    if (*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting) == 1)
    {
      if (v6)
      {
        goto LABEL_10;
      }

      v7 = 1;
    }

    else
    {
      v8 = *(v3 + 56);
      if (*(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems) == 1)
      {
        if ((v6 & 1) == 0)
        {
          goto LABEL_10;
        }

        v7 = 0;
      }

      else
      {
        v9 = v6;
        v7 = (*((*MEMORY[0x277D85000] & *v8) + 0x70))();
        if (v9 == (v7 & 1))
        {
          goto LABEL_10;
        }
      }
    }

    *(v3 + 40) = *(v3 + 56);
    *(v3 + 48) = v5;
    objc_msgSendSuper2((v3 + 40), sel_setHidden_, v7 & 1);
  }

LABEL_10:

  free(v3);
}

id DOCBarButtonItemGroup.isHidden.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCBarButtonItemGroup();
  return objc_msgSendSuper2(&v2, sel_isHidden);
}

uint64_t DOCBarButtonItemGroup.isHidden.setter(char a1)
{
  v3 = type metadata accessor for DOCBarButtonItemGroup();
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, sel_isHidden);
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, sel_setHidden_, a1 & 1);
  return DOCBarButtonItemGroup.isHidden.didset(v4);
}

uint64_t DOCBarButtonItemGroup.isHidden.didset(char a1)
{
  v2 = a1 & 1;
  result = [v1 isHidden];
  if (result != v2)
  {
    v4 = [v1 isHidden];
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting) = v4;
    v6 = type metadata accessor for DOCBarButtonItemGroup();
    v10.receiver = v1;
    v10.super_class = v6;
    result = objc_msgSendSuper2(&v10, sel_isHidden);
    if (*(v1 + v5) == 1)
    {
      if (result)
      {
        return result;
      }

      v7 = 1;
    }

    else if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems) == 1)
    {
      if ((result & 1) == 0)
      {
        return result;
      }

      v7 = 0;
    }

    else
    {
      v8 = result;
      result = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
      v7 = result;
      if (v8 == (result & 1))
      {
        return result;
      }
    }

    v9.receiver = v1;
    v9.super_class = v6;
    return objc_msgSendSuper2(&v9, sel_setHidden_, v7 & 1);
  }

  return result;
}

uint64_t DOCBarButtonItemGroup.itemObservances.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_itemObservances;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void closure #1 in DOCBarButtonItemGroup.observeHiddenState(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCBarButtonItemGroup.updateHasVisibleItems()();
  }
}

uint64_t DOCBarButtonItemGroup.updateHasVisibleItems()()
{
  v1 = [v0 barButtonItems];
  type metadata accessor for UIBarButtonItem();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1FC540](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 isHidden];

      ++v4;
      if (v8)
      {
        v9 = v7 == i;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = v8 ^ 1;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v10 = 0;
LABEL_19:

  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems) = v10;
  v12 = type metadata accessor for DOCBarButtonItemGroup();
  v17.receiver = v0;
  v17.super_class = v12;
  result = objc_msgSendSuper2(&v17, sel_isHidden);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting) == 1)
  {
    if (result)
    {
      return result;
    }

    v14 = 1;
  }

  else if (*(v0 + v11) == 1)
  {
    if ((result & 1) == 0)
    {
      return result;
    }

    v14 = 0;
  }

  else
  {
    v15 = result;
    result = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
    v14 = result;
    if (v15 == (result & 1))
    {
      return result;
    }
  }

  v16.receiver = v0;
  v16.super_class = v12;
  return objc_msgSendSuper2(&v16, sel_setHidden_, v14 & 1);
}

id DOCBarButtonItem.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata instantiation function for DOCBarButtonItemStorage.ItemStorage()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DOCBarButtonItemStorage.ItemStorage(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCBarButtonItemStorage.ItemStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t DOCItemCollectionViewController.itemsForDrag(session:at:)(void *a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v2) + 0x1448))() & 1) != 0 || !specialized DOCItemCollectionViewController.nodeForDrag(session:at:)(a2))
  {
    return MEMORY[0x277D84F90];
  }

  ObjectType = swift_getObjectType();
  if ((DOCNode.supportsDrag.getter() & 1) == 0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.UI);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BECD50, &v21);
      _os_log_impl(&dword_2493AC000, v13, v14, "%s: Item cannot be dragged because it does not support drag", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1FE850](v16, -1, -1);
      MEMORY[0x24C1FE850](v15, -1, -1);
    }

    goto LABEL_15;
  }

  v7 = (*((*v5 & *v2) + 0xA68))();
  v8 = *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  v9 = v8;

  if (v8)
  {
    v10 = [v9 supportsPickingFolders];
  }

  else
  {
    v10 = 2;
  }

  v17 = DOCNode.dragItemFor(session:supportsPickingFolders:)(a1, v10, ObjectType);
  if (!v17)
  {
LABEL_15:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249BA0290;
  v20 = v19;
  *(v19 + 32) = v18;
LABEL_16:
  swift_unknownObjectRelease();
  return v20;
}

uint64_t DOCItemCollectionViewController.collectionView(_:dragSessionWillBegin:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x8B0);
  v3 = swift_unknownObjectRetain();
  v2(v3);
  v4 = *((*v1 & *v0) + 0x848);

  return v4(1);
}

uint64_t DOCItemCollectionViewController.collectionView(_:dragSessionDidEnd:)()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x8B0))(0);
  (*((*v1 & *v0) + 0x1150))(0);
  v2 = *((*v1 & *v0) + 0x848);

  return v2(0);
}

void *DOCItemCollectionViewController.dropTargetNode(at:collectionView:dropSession:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v63 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v61 - v13;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v61 - v22;
  swift_getObjectType();
  if ([a3 localDragSession])
  {
    swift_unknownObjectRelease();
    if ([*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPickerUI])
    {
      return 0;
    }
  }

  v64 = v23;
  v62 = a3;
  v24 = UIDropSession.uniqueUTIsForDragItems.getter();
  v25 = v24;
  v26 = *(v24 + 16);
  if (v26)
  {
    v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v24 + 16), 0);
    v28 = specialized Sequence._copySequenceContents(initializing:)(&v65, v27 + 4, v26, v25);
    outlined consume of Set<UITouch>.Iterator._Variant();
    if (v28 == v26)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v27 = MEMORY[0x277D84F90];
LABEL_7:
  outlined init with copy of DOCGridLayout.Spec?(a1, v14, &_s10Foundation9IndexPathVSgMd);
  v29 = *(v16 + 48);
  if (v29(v14, 1, v15) != 1)
  {
    v61[0] = v19;
    v61[1] = v27;
    v32 = v4;
    v33 = v15;
    v34 = v16;
    v35 = *(v16 + 32);
    v36 = v64;
    v35(v64, v14, v33);
    v37 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v32) + 0x18A0))(v36);
    if (v29(v10, 1, v33) == 1)
    {
      (*(v16 + 8))(v36, v33);

      outlined destroy of CharacterSet?(v10, &_s10Foundation9IndexPathVSgMd);
      return 0;
    }

    v38 = v61[0];
    v35(v61[0], v10, v33);
    v39 = v32;
    v31 = (*((*v37 & *v32) + 0xD88))(v38, 0);
    if (!v31)
    {

      v57 = *(v34 + 8);
      v57(v38, v33);
      v57(v64, v33);
      return v31;
    }

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v41 = [v63 cellForItemAtIndexPath_];

    if (v41)
    {
      type metadata accessor for DOCItemCollectionCell();
      v42 = swift_dynamicCastClass();
      if (v42)
      {
        v43 = v42;
        v44 = [v62 locationInView_];
        v46 = v45;
        v48 = v47;
        v67.origin.x = (*((*v37 & *v43) + 0x110))(v44);
        v66.x = v46;
        v66.y = v48;
        if (!CGRectContainsPoint(v67, v66))
        {
          v59 = (*((*v37 & *v39) + 0xC70))();

          swift_unknownObjectRelease();
          v60 = *(v34 + 8);
          v60(v38, v33);
          v60(v64, v33);
          v31 = v59;
          if (!v59)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }
    }

    v49 = *(v34 + 8);
    v49(v38, v33);
    v49(v64, v33);
LABEL_18:
    swift_unknownObjectRetain();
    swift_getObjectType();
    v50 = DOCNode.fpfs_syncFetchFPItem()();
    if (v50)
    {
      v51 = v50;
      v52 = [objc_opt_self() defaultManager];
      v53 = Array._bridgeToObjectiveC()().super.isa;

      v54 = [v52 eligibleActionsForDroppingUTIs:v53 underItem:v51];

      type metadata accessor for FPAction(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
      v55 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Set.contains(_:)(*MEMORY[0x277CC6048], v55))
      {

LABEL_23:

        swift_unknownObjectRelease();
        return v31;
      }

      v56 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v55);

      if (v56)
      {
        goto LABEL_23;
      }

      [v31 isFolder];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return 0;
  }

  v30 = outlined destroy of CharacterSet?(v14, &_s10Foundation9IndexPathVSgMd);
  v31 = (*((*MEMORY[0x277D85000] & *v4) + 0xC70))(v30);
  if (v31)
  {
    goto LABEL_18;
  }

LABEL_9:

  return v31;
}

void DOCItemCollectionViewController.collectionView(_:performDropWith:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v127 = &v127 - v7;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v128 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v129 = &v127 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v131 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v127 - v20;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v22 = static DOCLog.UI;
  static os_log_type_t.debug.getter();
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249B9FA70;
  *(v23 + 56) = MEMORY[0x277D837D0];
  v134 = lazy protocol witness table accessor for type String and conformance String();
  v135 = 0x8000000249BECA20;
  *(v23 + 64) = v134;
  *(v23 + 32) = 0xD000000000000022;
  *(v23 + 40) = 0x8000000249BECA20;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClassUnconditional();
  v137 = a2;
  v25 = v24;
  *(v23 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  *(v23 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, &lazy cache variable for type metadata for NSObject);
  *(v23 + 72) = v25;
  v26 = v137;
  swift_unknownObjectRetain();
  v136 = v22;
  os_log(_:dso:log:type:_:)();

  v130 = v9;
  v27 = *(v9 + 56);
  v27(v21, 1, 1, v8);
  DOCItemCollectionViewController.updateDropTargetHighlightedCell(toIndexPath:)(v21);
  outlined destroy of CharacterSet?(v21, &_s10Foundation9IndexPathVSgMd);
  v28 = [v26 items];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24UICollectionViewDropItem_pMd);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v29 >> 62)
  {
    v30 = __CocoaSet.count.getter();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v30)
  {
    static os_log_type_t.debug.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_249B9A480;
    v36 = v134;
    *(v35 + 56) = MEMORY[0x277D837D0];
    *(v35 + 64) = v36;
    *(v35 + 32) = 0xD000000000000022;
    *(v35 + 40) = v135;
    os_log(_:dso:log:type:_:)();
    goto LABEL_35;
  }

  if (!*&v3[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationIdentifier])
  {
    goto LABEL_23;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v33 != v34)
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      goto LABEL_12;
    }

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v137;
    if (v52 == v55 && v54 == v56)
    {

LABEL_22:
      v58 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v59 = [v26 session];
      v60 = swift_allocObject();
      swift_unknownObjectWeakInit();
      specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(v59, v3, v58, v60);
      swift_unknownObjectRelease();

      return;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v57)
    {
      goto LABEL_22;
    }

LABEL_23:
    v61 = [v26 destinationIndexPath];
    if (v61)
    {
      v62 = v131;
      v63 = v61;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = 0;
    }

    else
    {
      v64 = 1;
      v62 = v131;
    }

    v131 = v8;
    v27(v62, v64, 1, v8);
    v65 = [v26 session];
    v66 = v3;
    v67 = DOCItemCollectionViewController.dropTargetNode(at:collectionView:dropSession:)(v62, ObjectType, v65);
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v62, &_s10Foundation9IndexPathVSgMd);
    v68 = swift_allocObject();
    if (!v67 || (swift_getObjectType(), swift_unknownObjectRetain(), v69 = DOCNode.fpfs_syncFetchFPItem()(), swift_unknownObjectRelease(), !v69))
    {
      swift_deallocUninitializedObject();
      static os_log_type_t.debug.getter();
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_249B9A480;
      v77 = v134;
      *(v76 + 56) = MEMORY[0x277D837D0];
      *(v76 + 64) = v77;
      *(v76 + 32) = 0xD000000000000022;
      *(v76 + 40) = v135;
      os_log(_:dso:log:type:_:)();
      swift_unknownObjectRelease();
      goto LABEL_35;
    }

    *(v68 + 16) = v69;
    ObjectType = swift_getObjectType();
    v70 = [swift_unknownObjectRetain() isFolder];
    v71 = MEMORY[0x277D85000];
    if ((v70 & 1) != 0 || (*((*MEMORY[0x277D85000] & *v66) + 0xBD8))() != 2)
    {
      swift_unknownObjectRelease();
      goto LABEL_45;
    }

    (*((*v71 & *v66) + 0x820))(v138);
    v72 = v139;
    if (!v139)
    {
      __break(1u);
      goto LABEL_80;
    }

    v73 = v140;
    __swift_project_boxed_opaque_existential_1(v138, v139);
    if ((*(v73 + 112))(v67, v72, v73))
    {
      swift_getObjectType();
      v74 = DOCNode.fpfs_syncFetchFPItem()();
      swift_unknownObjectRelease();
      v75 = __swift_destroy_boxed_opaque_existential_0(v138);
      if (v74)
      {
        swift_unknownObjectRelease();
LABEL_44:
        v78 = *(v68 + 16);
        *(v68 + 16) = v74;

LABEL_45:
        v79 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
        v80 = v137;
        v81 = [v137 session];
        swift_getObjectType();
        v82 = swift_unknownObjectRetain();
        v83 = specialized static FPItem.sessionContainsDOCNode(_:)(v82, v79);
        swift_unknownObjectRelease_n();
        if (v83)
        {
          static os_log_type_t.debug.getter();
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_249B9A480;
          v85 = v134;
          *(v84 + 56) = MEMORY[0x277D837D0];
          *(v84 + 64) = v85;
          *(v84 + 32) = 0xD000000000000022;
          *(v84 + 40) = v135;
          os_log(_:dso:log:type:_:)();

          v86 = [v80 session];
          v87 = swift_allocObject();
          v88 = v66;
          swift_unknownObjectWeakInit();

          specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(v86, v66, v79, v87, v68);
          swift_unknownObjectRelease();
        }

        else
        {
          v89 = [objc_msgSend(v80 session)];
          swift_unknownObjectRelease();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
          v90 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v91 = *(v68 + 16);
          v92 = v68;
          v93 = swift_allocObject();
          v88 = v66;
          swift_unknownObjectWeakInit();
          v94 = swift_allocObject();
          *(v94 + 16) = v93;
          *(v94 + 24) = v92;

          v95 = v91;

          _sSo6FPItemC26DocumentManagerExecutablesE19performExternalDrop_9underItem15alertPresenting10completionySaySo06UIDragI0CG_So7DOCNode_pSo16UIViewControllerCySaySoAK_pGSgcSgtFZTf4nennn_nAB_Tt3g5(v90, v95, v66, partial apply for closure #3 in DOCItemCollectionViewController.collectionView(_:performDropWith:), v94);

          v68 = v92;
        }

        v97 = *((*v71 & *v88) + 0xBD8);
        if ((v97)(v96) == 2 || !v97())
        {
          v99 = *((*v71 & *v88) + 0xC70);
          v100 = swift_unknownObjectRetain();
          if (v99(v100))
          {
            v98 = DOCNode.isEqualTo(node:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v98 = 0;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v98 = 0;
        }

        swift_beginAccess();
        if (![*(v68 + 16) isFolder] || !_UISolariumEnabled() || (v98 & 1) != 0)
        {

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRetain();
        v101 = [v137 destinationIndexPath];
        if (!v101)
        {
          goto LABEL_74;
        }

        v102 = v128;
        v103 = v101;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v104 = v129;
        v105 = (*(v130 + 32))(v129, v102, v131);
        (*((*v71 & *v66) + 0x820))(v138, v105);
        v106 = v139;
        if (v139)
        {
          v107 = v140;
          __swift_project_boxed_opaque_existential_1(v138, v139);
          v108 = (*(v107 + 64))(v104, v106, v107);
          if (v108)
          {
            v109 = [v108 isFolder];
            swift_unknownObjectRelease();
            v110 = __swift_destroy_boxed_opaque_existential_0(v138);
            if (v109)
            {
              v111 = (*((*v71 & *v66) + 0x1010))(v110);
              v112 = v129;
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              v114 = [v111 cellForItemAtIndexPath_];

              if (v114)
              {
                type metadata accessor for DOCItemCollectionCell();
                v115 = swift_dynamicCastClass();
                if (v115)
                {
                  v116 = [*(v115 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) superview];
                  if (v116)
                  {
                    v117 = v116;
                    type metadata accessor for DOCImageViewContainerView();
                    v118 = swift_dynamicCastClass();
                    if (v118)
                    {
                      v119 = v118;
                      v120 = type metadata accessor for TaskPriority();
                      v121 = v68;
                      v122 = v127;
                      (*(*(v120 - 8) + 56))(v127, 1, 1, v120);
                      type metadata accessor for MainActor();
                      swift_unknownObjectRetain();

                      v123 = v117;
                      v124 = static MainActor.shared.getter();
                      v125 = swift_allocObject();
                      v126 = MEMORY[0x277D85700];
                      v125[2] = v124;
                      v125[3] = v126;
                      v125[4] = v119;
                      v125[5] = v67;
                      v125[6] = v121;
                      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v122, &async function pointer to partial apply for closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:), v125);

                      swift_unknownObjectRelease_n();

                      (*(v130 + 8))(v112, v131);

                      return;
                    }

                    swift_unknownObjectRelease_n();
                    (*(v130 + 8))(v112, v131);
                    goto LABEL_71;
                  }

                  (*(v130 + 8))(v112, v131);

LABEL_75:
                  swift_unknownObjectRelease_n();
                  return;
                }
              }

              (*(v130 + 8))(v112, v131);
LABEL_74:

              goto LABEL_75;
            }

            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease_n();
            __swift_destroy_boxed_opaque_existential_0(v138);
          }

          (*(v130 + 8))(v129, v131);
LABEL_71:

          return;
        }

LABEL_80:
        __break(1u);
        return;
      }
    }

    else
    {
      v75 = __swift_destroy_boxed_opaque_existential_0(v138);
    }

    if ((*((*v71 & *v66) + 0xC70))(v75))
    {
      swift_getObjectType();
      v74 = DOCNode.fpfs_syncFetchFPItem()();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v74)
      {
        goto LABEL_44;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v74 = *(v68 + 16);
    goto LABEL_44;
  }

LABEL_12:
  v38 = v3;
  v39 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationProperties];
  v40 = v137;
  if (v39)
  {
    v41 = [v39 tagIdentifiers];
    if (v41)
    {
      v42 = v41;
      v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v43[2] == 1)
      {
        v44 = v43[4];
        v45 = v43[5];

        v46 = [objc_opt_self() sharedInstance];
        v47 = MEMORY[0x24C1FAD20](v44, v45);

        v48 = [v46 tagForName_];

        if (v48)
        {
          v49 = [v40 session];
          v50 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
          v51 = v48;
          specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(v49, v38, v50, v51);
          swift_unknownObjectRelease();
        }

        return;
      }

LABEL_35:
    }
  }
}

void DOCItemCollectionViewController.updateDropTargetHighlightedCell(toIndexPath:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v7, &_s10Foundation9IndexPathVSgMd);
  v13 = (*(v9 + 48))(v7, 1, v8);
  v14 = MEMORY[0x277D85000];
  if (v13 == 1)
  {
    v15 = outlined destroy of CharacterSet?(v7, &_s10Foundation9IndexPathVSgMd);
    v16 = 0;
  }

  else
  {
    v17 = (*(v9 + 32))(v12, v7, v8);
    v18 = (*((*v14 & *v2) + 0x1010))(v17);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v20 = [v18 cellForItemAtIndexPath_];

    if (v20)
    {
      type metadata accessor for DOCItemCollectionCell();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v21 = v20;
        if (([v16 isHighlighted] & 1) == 0)
        {
          [v16 setHighlighted_];
        }
      }
    }

    else
    {
      v16 = 0;
    }

    v15 = (*(v9 + 8))(v12, v8);
  }

  v22 = (*((*v14 & *v2) + 0x9B0))(v15);
  if (v22)
  {
    if (!v16 || (type metadata accessor for DOCItemCollectionCell(), v22 = v22, v23 = v16, v24 = static NSObject.== infix(_:_:)(), v22, v23, (v24 & 1) == 0))
    {
      v22 = v22;
      if ([v22 isHighlighted])
      {
        [v22 setHighlighted_];
      }
    }
  }

  (*((*v14 & *v2) + 0x9B8))(v16);
}

void closure #1 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(unint64_t a1, void *a2)
{
  v26 = type metadata accessor for DOCOperationItem();
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v25 = [objc_opt_self() defaultManager];
    v29 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
LABEL_32:
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = a2;
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v11 = 0;
      a2 = (a1 & 0xC000000000000001);
      v12 = *MEMORY[0x277CC6058];
      v27 = *MEMORY[0x277CC6058];
      v28 = a1 & 0xC000000000000001;
      while (1)
      {
        if (a2)
        {
          v13 = MEMORY[0x24C1FC540](v11, a1);
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_32;
          }

          v13 = *(a1 + 8 * v11 + 32);
          swift_unknownObjectRetain();
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v15 = v29;
            v10 = MEMORY[0x277D84F90];
            if ((v29 & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_33;
          }
        }

        if ([v13 canPerform_])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v12 = v27;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          a2 = v28;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v11;
        if (v14 == v9)
        {
          goto LABEL_16;
        }
      }
    }

    v15 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

LABEL_19:
    if ((v15 & 0x4000000000000000) != 0)
    {
LABEL_33:
      if (__CocoaSet.count.getter())
      {
        v16 = __CocoaSet.count.getter();
        if (!v16)
        {

          v18 = MEMORY[0x277D84F90];
LABEL_30:
          v22 = v25;
          FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(3u, v18, 0, 0, 0, 1, v24, 0, 0);

LABEL_37:

          return;
        }

LABEL_21:
        v29 = v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          return;
        }

        v17 = 0;
        v18 = v29;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x24C1FC540](v17, v15);
          }

          else
          {
            v19 = swift_unknownObjectRetain();
          }

          *v7 = v19;
          swift_storeEnumTagMultiPayload();
          v29 = v18;
          v21 = *(v18 + 16);
          v20 = *(v18 + 24);
          if (v21 >= v20 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
            v18 = v29;
          }

          ++v17;
          *(v18 + 16) = v21 + 1;
          outlined init with take of DOCOperationItem(v7, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21);
        }

        while (v16 != v17);

        goto LABEL_30;
      }
    }

    else
    {
      v16 = *(v15 + 16);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    v22 = v25;
    goto LABEL_37;
  }
}

void closure #2 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v21 = a2;
    v14 = [*(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) hostIdentifier];
    if (!v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = MEMORY[0x24C1FAD20](v15);
    }

    swift_beginAccess();
    v16 = *(a4 + 16);
    Date.init()();
    v17 = objc_allocWithZone(MEMORY[0x277D05ED0]);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v19 = [v17 initWithAppBundleIdentifier:v14 folderItem:v16 type:1 lastUsedDate:isa frecency:1.0];

    (*(v8 + 8))(v11, v7);
    if (one-time initialization token for sharedManager != -1)
    {
      swift_once();
    }

    DOCSmartFolderManager.register(event:)(v19);
    swift_beginAccess();
    v20 = *(a4 + 16);
    _sSo6FPItemC26DocumentManagerExecutablesE11performDrop_9underItem15alertPresenting10completionySaySo7DOCNode_pG_SoAH_pSo16UIViewControllerCyAISgcSgtFZTf4nennn_nAB_Tt3g5(a1, v20, v21, 0, 0);
  }
}

void closure #3 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [*(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) hostIdentifier];
    if (!v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = MEMORY[0x24C1FAD20](v13);
    }

    swift_beginAccess();
    v14 = *(a3 + 16);
    Date.init()();
    v15 = objc_allocWithZone(MEMORY[0x277D05ED0]);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v17 = [v15 initWithAppBundleIdentifier:v12 folderItem:v14 type:1 lastUsedDate:isa frecency:1.0];

    (*(v6 + 8))(v9, v5);
    if (one-time initialization token for sharedManager != -1)
    {
      swift_once();
    }

    DOCSmartFolderManager.register(event:)(v17);
    if (a1)
    {
      if (a1 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_9;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_9:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x24C1FC540](0, a1);
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v18 = *(a1 + 32);
          swift_unknownObjectRetain();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_249BA0290;
        *(v19 + 32) = v18;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        v20 = Array._bridgeToObjectiveC()().super.isa;

        aBlock[4] = DOCGridLayout.specIconWidth.modify;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        aBlock[3] = &block_descriptor_49_2;
        v21 = _Block_copy(aBlock);

        [v11 revealWithNodes:v20 selectEvenIfVisible:0 completionBlock:v21];
        _Block_release(v21);
        swift_unknownObjectRelease();

        v17 = v20;
      }
    }
  }
}

uint64_t closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[7] = type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = *((*MEMORY[0x277D85000] & *a4) + 0xA8);
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v6[9] = v10;
  *v10 = v6;
  v10[1] = closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:);

  return v12(a5);
}

uint64_t closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(uint64_t a1)
{
  *(*v1 + 80) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:), v3, v2);
}

uint64_t closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:)()
{
  v1 = v0[10];

  v3 = 0;
  v4 = *(v1 + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = (v1 + 40 + 16 * v3);
  while (v4 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    result = *(v6 - 1);
    v7 = *v6;
    v6 += 2;
    ++v3;
    if (v7 == 1 && result != 0)
    {
      [result size];
      v10 = v9;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v12 + 1;
      *(v5 + 8 * v12 + 32) = v10;
      goto LABEL_2;
    }
  }

  v13 = *(v5 + 16);
  if (v13)
  {
    v14 = *(v5 + 32);
    v15 = v13 - 1;
    if (v15)
    {
      v16 = (v5 + 40);
      do
      {
        v17 = *v16++;
        v18 = v17;
        if (v14 < v17)
        {
          v14 = v18;
        }

        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v14 = 0.0;
  }

  v19 = v0[6];

  swift_beginAccess();
  v20 = [*(v19 + 16) childItemCount];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  v21.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  isa = v21.super.super.isa;
  if (!v20)
  {

    goto LABEL_26;
  }

  v23 = static NSObject.== infix(_:_:)();

  if ((v23 & 1) == 0)
  {
LABEL_26:
    v24 = 2;
    goto LABEL_27;
  }

  v24 = 1;
LABEL_27:
  v25 = v0[10];
  v26 = v0[5];
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v14;
  (*((*MEMORY[0x277D85000] & *v26) + 0xA0))(v24, partial apply for closure #2 in closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:), v27, DOCGridLayout.specIconWidth.modify, 0);

  v28 = v0[1];

  return v28();
}

id closure #2 in closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (a6 + 40);
  v7 = *(a6 + 16) + 1;
  do
  {
    if (!--v7)
    {
      goto LABEL_9;
    }

    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
  }

  while (v9 != a1);
  v10 = *(v8 - 3);
  if (v10)
  {
    v12 = v10;
    [v12 size];
    if (v13 == a3 || a3 <= 0.0)
    {
    }

    else
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      *(v15 + 24) = a3;
      *(v15 + 32) = a3;
      v16 = swift_allocObject();
      *(v16 + 16) = partial apply for closure #1 in closure #3 in closure #1 in DOCMetadataKeyValueRow.menuButton.getter;
      *(v16 + 24) = v15;
      v21[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
      v21[5] = v16;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 1107296256;
      v21[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
      v21[3] = &block_descriptor_31_0;
      v17 = _Block_copy(v21);
      v18 = v12;

      v12 = [v14 imageWithActions_];

      _Block_release(v17);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    return v12;
  }

LABEL_9:
  v19 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v19 init];
}

uint64_t DOCItemCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UTType();
  v124 = *(v8 - 8);
  v125 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v123 = &v111[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v111[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v111[-v17];
  outlined init with copy of DOCGridLayout.Spec?(a3, &v111[-v17], &_s10Foundation9IndexPathVSgMd);
  (*((*MEMORY[0x277D85000] & *v3) + 0x988))(v18);
  v19 = type metadata accessor for IndexPath();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v121 = v20 + 56;
  v122 = v21;
  v21(v14, 1, 1, v19);
  if (!*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationIdentifier))
  {
    goto LABEL_23;
  }

  v115 = v19;
  v116 = a3;
  v22 = a2;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {

    goto LABEL_16;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
LABEL_16:
    v39 = [*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPopoverOrWidget] ^ 1;
    v40 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:v39 intent:0];
    goto LABEL_32;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {

    goto LABEL_18;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
LABEL_18:
    v41 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    swift_getObjectType();
    v42 = v22;
LABEL_19:
    v43 = specialized static FPItem.sessionContainsDOCNode(_:)(v42, v41);
    v44 = objc_allocWithZone(MEMORY[0x277D752E8]);
    if ((v43 & 1) == 0)
    {
      goto LABEL_30;
    }

    v45 = 3;
    goto LABEL_31;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {

    a2 = v22;
LABEL_22:
    v41 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    swift_getObjectType();
    v42 = a2;
    goto LABEL_19;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  a2 = v22;
  v19 = v115;
  a3 = v116;
  if (v46)
  {
    goto LABEL_22;
  }

LABEL_23:
  v114 = a2;
  v47 = DOCItemCollectionViewController.dropTargetNode(at:collectionView:dropSession:)(a3, a1, a2);
  if (!v47)
  {
    goto LABEL_28;
  }

  v48 = v47;
  swift_getObjectType();
  v119 = DOCNode.fpfs_syncFetchFPItem()();
  if (!v119)
  {
    swift_unknownObjectRelease();
LABEL_28:
    if (one-time initialization token for UI != -1)
    {
      goto LABEL_90;
    }

    goto LABEL_29;
  }

  v115 = v19;
  v116 = a3;
  v49 = v114;
  if (fetchParentSync #1 () in DOCItemCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(v114))
  {
    swift_getObjectType();
    DOCNode.identifierKey.getter();
    swift_unknownObjectRelease();
    v142 = v134;
    v143 = v135;
    v144 = v136;
    goto LABEL_46;
  }

  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v53 = [v49 localDragSession];
  if (!v53)
  {
    v140 = 0u;
    v141 = 0u;
LABEL_42:
    outlined destroy of CharacterSet?(&v140, &_sypSgMd);
    goto LABEL_43;
  }

  v54 = [v53 localContext];
  swift_unknownObjectRelease();
  if (v54)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v132 = 0u;
    v133 = 0u;
  }

  v140 = v132;
  v141 = v133;
  if (!*(&v133 + 1))
  {
    goto LABEL_42;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    DOCNode.identifierKey.getter();
    swift_unknownObjectRelease();
    goto LABEL_44;
  }

LABEL_43:
  v142 = 0u;
  v143 = 0u;
  v144 = 0;
LABEL_44:
  if (*(&v135 + 1))
  {
    outlined destroy of CharacterSet?(&v134, &_ss11AnyHashableVSgMd);
  }

LABEL_46:
  DOCNode.identifierKey.getter();
  outlined init with copy of DOCGridLayout.Spec?(&v142, &v134, &_ss11AnyHashableVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(&v140, &v137, &_ss11AnyHashableVSgMd);
  if (!*(&v135 + 1))
  {
    outlined destroy of CharacterSet?(&v140, &_ss11AnyHashableVSgMd);
    if (!*(&v138 + 1))
    {
      goto LABEL_58;
    }

    goto LABEL_53;
  }

  outlined init with copy of DOCGridLayout.Spec?(&v134, &v132, &_ss11AnyHashableVSgMd);
  if (!*(&v138 + 1))
  {
    outlined destroy of CharacterSet?(&v140, &_ss11AnyHashableVSgMd);
    outlined destroy of AnyHashable(&v132);
LABEL_53:
    outlined destroy of CharacterSet?(&v134, &_ss11AnyHashableVSg_ACtMd);
    goto LABEL_54;
  }

  v129 = v137;
  v130 = v138;
  v131 = v139;
  v55 = MEMORY[0x24C1FC430](&v132, &v129);
  outlined destroy of AnyHashable(&v129);
  outlined destroy of CharacterSet?(&v140, &_ss11AnyHashableVSgMd);
  outlined destroy of AnyHashable(&v132);
  outlined destroy of CharacterSet?(&v134, &_ss11AnyHashableVSgMd);
  if (v55)
  {
    goto LABEL_59;
  }

LABEL_54:
  v56 = [v119 identifier];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  outlined init with copy of DOCGridLayout.Spec?(&v142, &v134, &_ss11AnyHashableVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(&v140, &v137, &_ss11AnyHashableVSgMd);
  if (*(&v135 + 1))
  {
    outlined init with copy of DOCGridLayout.Spec?(&v134, &v132, &_ss11AnyHashableVSgMd);
    if (*(&v138 + 1))
    {
      v129 = v137;
      v130 = v138;
      v131 = v139;
      v112 = MEMORY[0x24C1FC430](&v132, &v129);
      outlined destroy of AnyHashable(&v129);
      outlined destroy of CharacterSet?(&v140, &_ss11AnyHashableVSgMd);
      outlined destroy of AnyHashable(&v132);
      outlined destroy of CharacterSet?(&v134, &_ss11AnyHashableVSgMd);
      goto LABEL_62;
    }

    outlined destroy of CharacterSet?(&v140, &_ss11AnyHashableVSgMd);
    outlined destroy of AnyHashable(&v132);
    goto LABEL_61;
  }

  outlined destroy of CharacterSet?(&v140, &_ss11AnyHashableVSgMd);
  if (!*(&v138 + 1))
  {
LABEL_58:
    outlined destroy of CharacterSet?(&v134, &_ss11AnyHashableVSgMd);
LABEL_59:
    v112 = 1;
    goto LABEL_62;
  }

LABEL_61:
  outlined destroy of CharacterSet?(&v134, &_ss11AnyHashableVSg_ACtMd);
  v112 = 0;
LABEL_62:
  v113 = v4;
  v57 = [v114 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v58 >> 62)
  {
    v59 = __CocoaSet.count.getter();
    v120 = v14;
    if (v59)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v120 = v14;
    if (v59)
    {
LABEL_64:
      v4 = 0;
      v127 = v58 & 0xFFFFFFFFFFFFFF8;
      v128 = v58 & 0xC000000000000001;
      v117 = v58;
      v118 = v48;
      v126 = v59;
      do
      {
        if (v128)
        {
          v60 = MEMORY[0x24C1FC540](v4, v58);
        }

        else
        {
          if (v4 >= *(v127 + 16))
          {
            goto LABEL_89;
          }

          v60 = *(v58 + 8 * v4 + 32);
        }

        v61 = v60;
        v62 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          swift_once();
LABEL_29:
          static os_log_type_t.debug.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_249B9A480;
          *(v50 + 56) = MEMORY[0x277D837D0];
          *(v50 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v50 + 32) = 0xD000000000000040;
          *(v50 + 40) = 0x8000000249BECAE0;
          os_log(_:dso:log:type:_:)();

          v44 = objc_allocWithZone(MEMORY[0x277D752E8]);
LABEL_30:
          v45 = 1;
LABEL_31:
          v40 = [v44 initWithDropOperation:v45 intent:0];
LABEL_32:
          v51 = v40;
          goto LABEL_33;
        }

        if ([v60 localObject])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v140 = 0u;
          v141 = 0u;
        }

        v134 = v140;
        v135 = v141;
        outlined init with copy of DOCGridLayout.Spec?(&v134, &v140, &_sypSgMd);
        if (*(&v141 + 1))
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
          if (swift_dynamicCast())
          {
            outlined destroy of CharacterSet?(&v134, &_sypSgMd);
            goto LABEL_80;
          }
        }

        else
        {
          outlined destroy of CharacterSet?(&v140, &_sypSgMd);
        }

        v140 = v134;
        v141 = v135;
        if (!*(&v135 + 1))
        {

          outlined destroy of CharacterSet?(&v140, &_sypSgMd);
          goto LABEL_66;
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_66;
        }

LABEL_80:
        v63 = [v132 itemIdentifier];
        v64 = [v48 itemIdentifier];
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;
        if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
        {

          swift_unknownObjectRelease();

          v14 = v120;
LABEL_87:

LABEL_93:
          v51 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:0 intent:0];

          swift_unknownObjectRelease();
          outlined destroy of CharacterSet?(&v142, &_ss11AnyHashableVSgMd);
          v4 = v113;
LABEL_33:
          $defer #1 () in DOCItemCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(v14, v4);
          outlined destroy of CharacterSet?(v14, &_s10Foundation9IndexPathVSgMd);
          return v51;
        }

        v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

        swift_unknownObjectRelease();

        v14 = v120;
        v58 = v117;
        v48 = v118;
        if (v69)
        {
          goto LABEL_87;
        }

LABEL_66:
        ++v4;
      }

      while (v62 != v126);
    }
  }

  if (v112)
  {
    goto LABEL_93;
  }

  v4 = v113;
  v71 = (*((*MEMORY[0x277D85000] & *v113) + 0xC70))(v70);
  if (v71)
  {
    v72 = [v71 isEqual_];
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v14, &_s10Foundation9IndexPathVSgMd);
    if (v72)
    {
      v122(v14, 1, 1, v115);
      goto LABEL_99;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v14, &_s10Foundation9IndexPathVSgMd);
  }

  outlined init with copy of DOCGridLayout.Spec?(v116, v14, &_s10Foundation9IndexPathVSgMd);
LABEL_99:
  v73 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v74 = v123;
  static UTType.item.getter();
  v128 = v73;
  v75 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v114, v74);
  (*(v124 + 8))(v74, v125);
  if (v75 >> 62)
  {
    goto LABEL_116;
  }

  v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v76)
  {
LABEL_134:

    v51 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:2 intent:2];

LABEL_153:
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(&v142, &_ss11AnyHashableVSgMd);
    goto LABEL_33;
  }

  v118 = v48;
  v77 = v119;
  v127 = v76;
  do
  {
    v14 = 0;
    v48 = (v75 & 0xC000000000000001);
    v78 = v75 & 0xFFFFFFFFFFFFFF8;
    while (v48)
    {
      MEMORY[0x24C1FC540](v14, v75);
      v4 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
LABEL_113:
        __break(1u);
LABEL_114:

        v51 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:0 intent:0];
        swift_unknownObjectRelease();
        outlined destroy of CharacterSet?(&v142, &_ss11AnyHashableVSgMd);
        v4 = v113;
        v14 = v120;
        goto LABEL_33;
      }

LABEL_108:
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v73 = v119;
        swift_unknownObjectRetain();
        v74 = static NSObject.== infix(_:_:)();
        swift_unknownObjectRelease_n();

        if (v74)
        {
          goto LABEL_114;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v14;
      if (v4 == v76)
      {
        goto LABEL_122;
      }
    }

    if (v14 < *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      v4 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_113;
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_116:
    v78 = v75 & 0xFFFFFFFFFFFFFF8;
    if (v75 < 0)
    {
      v74 = v75;
    }

    else
    {
      v74 = v75 & 0xFFFFFFFFFFFFFF8;
    }

    v127 = __CocoaSet.count.getter();
    if (!v127)
    {
      goto LABEL_134;
    }

    v118 = v48;
    v76 = __CocoaSet.count.getter();
    v79 = v119;
  }

  while (v76);
  v48 = (v75 & 0xC000000000000001);
LABEL_122:

  v80 = 0;
  v81 = MEMORY[0x277D84F90];
  *&v134 = MEMORY[0x277D84F90];
  v82 = v127;
  while (v82 != v80)
  {
    if (v48)
    {
      v74 = MEMORY[0x24C1FC540](v80, v75);
      v83 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_155;
      }
    }

    else
    {
      if (v80 >= *(v78 + 16))
      {
        goto LABEL_156;
      }

      v74 = *(v75 + 8 * v80 + 32);
      swift_unknownObjectRetain();
      v83 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }
    }

    swift_getObjectType();
    v84 = DOCNode.fpfs_syncFetchFPItem()();
    v85 = swift_unknownObjectRelease();
    ++v80;
    if (v84)
    {
      v74 = &v134;
      MEMORY[0x24C1FB090](v85);
      if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v81 = v134;
      v80 = v83;
    }
  }

  v86 = [objc_opt_self() defaultManager];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v88 = [v86 eligibleActionsForDroppingItems:isa underItem:v119];

  type metadata accessor for FPAction(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
  v74 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8FPActionaGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA08D0;
  v90 = *MEMORY[0x277CC6058];
  *(inited + 32) = *MEMORY[0x277CC6058];
  v91 = *MEMORY[0x277CC6078];
  v92 = *MEMORY[0x277CC6048];
  *(inited + 40) = *MEMORY[0x277CC6078];
  *(inited + 48) = v92;
  v93 = *MEMORY[0x277CC6050];
  *(inited + 56) = *MEMORY[0x277CC6050];
  v94 = v90;
  v95 = v91;
  v96 = v92;
  v97 = v93;
  v75 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8FPActiona_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v98 = swift_initStackObject();
  *(v98 + 16) = xmmword_249B9A480;
  v99 = *MEMORY[0x277CC5FD8];
  *(v98 + 32) = *MEMORY[0x277CC5FD8];
  v100 = v99;
  v48 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8FPActiona_Tt0g5Tf4g_n(v98);
  swift_setDeallocating();
  outlined destroy of FPAction(v98 + 32, type metadata accessor for FPAction);
  if (!(v81 >> 62))
  {
    result = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_137;
  }

LABEL_157:
  result = __CocoaSet.count.getter();
LABEL_137:
  v4 = v113;
  v14 = v120;
  if (!result)
  {

    v104 = 0;
    goto LABEL_143;
  }

  if ((v81 & 0xC000000000000001) != 0)
  {
    v101 = MEMORY[0x24C1FC540](0, v81);
LABEL_141:
    v102 = v101;

    v103 = [objc_opt_self() defaultPermission];
    v104 = [v103 canNode:v102 performAction:1 node:v119];

LABEL_143:

    v105 = specialized _NativeSet.intersection(_:)(v75, v74);

    v106 = v105[2];

    if (v106)
    {

      if (v104)
      {
        v107 = 3;
      }

      else
      {
        v107 = 1;
      }
    }

    else
    {
      v108 = specialized _NativeSet.intersection(_:)(v48, v74);

      v109 = v108[2];

      if (!v109)
      {
        v110 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:1 intent:2];
        goto LABEL_152;
      }

      if (v104)
      {
        v107 = 2;
      }

      else
      {
        v107 = 1;
      }
    }

    v110 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:v107 intent:2];
LABEL_152:
    v51 = v110;

    goto LABEL_153;
  }

  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v101 = *(v81 + 32);
    goto LABEL_141;
  }

  __break(1u);
  return result;
}

uint64_t $defer #1 () in DOCItemCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(uint64_t a1, void *a2)
{
  v43 = type metadata accessor for IndexPath();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v5);
  v42 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSg_ADtMd);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v40[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v44 = &v40[-v18];
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v40[-v21];
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v40[-v25];
  v45 = a1;
  v27 = outlined init with copy of DOCGridLayout.Spec?(a1, &v40[-v25], &_s10Foundation9IndexPathVSgMd);
  v28 = *((*MEMORY[0x277D85000] & *a2) + 0x980);
  v46 = a2;
  v28(v27);
  v29 = *(v8 + 56);
  outlined init with copy of DOCGridLayout.Spec?(v26, v11, &_s10Foundation9IndexPathVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v22, &v11[v29], &_s10Foundation9IndexPathVSgMd);
  v30 = v4;
  v31 = v4;
  v32 = v43;
  v33 = *(v31 + 48);
  if (v33(v11, 1, v43) != 1)
  {
    outlined init with copy of DOCGridLayout.Spec?(v11, v44, &_s10Foundation9IndexPathVSgMd);
    if (v33(&v11[v29], 1, v32) != 1)
    {
      v37 = v42;
      (*(v30 + 32))(v42, &v11[v29], v32);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v38 = v44;
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v30 + 8);
      v39(v37, v32);
      outlined destroy of CharacterSet?(v22, &_s10Foundation9IndexPathVSgMd);
      outlined destroy of CharacterSet?(v26, &_s10Foundation9IndexPathVSgMd);
      v39(v38, v32);
      outlined destroy of CharacterSet?(v11, &_s10Foundation9IndexPathVSgMd);
      v34 = v45;
      v35 = v46;
      if (v41)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    outlined destroy of CharacterSet?(v22, &_s10Foundation9IndexPathVSgMd);
    outlined destroy of CharacterSet?(v26, &_s10Foundation9IndexPathVSgMd);
    (*(v30 + 8))(v44, v32);
LABEL_6:
    outlined destroy of CharacterSet?(v11, &_s10Foundation9IndexPathVSg_ADtMd);
    v34 = v45;
    v35 = v46;
LABEL_7:
    outlined init with copy of DOCGridLayout.Spec?(v34, v15, &_s10Foundation9IndexPathVSgMd);
    (*((*MEMORY[0x277D85000] & *v35) + 0x988))(v15);
    goto LABEL_8;
  }

  outlined destroy of CharacterSet?(v22, &_s10Foundation9IndexPathVSgMd);
  outlined destroy of CharacterSet?(v26, &_s10Foundation9IndexPathVSgMd);
  if (v33(&v11[v29], 1, v32) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of CharacterSet?(v11, &_s10Foundation9IndexPathVSgMd);
  v34 = v45;
LABEL_8:
  outlined init with copy of DOCGridLayout.Spec?(v34, v15, &_s10Foundation9IndexPathVSgMd);
  DOCItemCollectionViewController.updateDropTargetHighlightedCell(toIndexPath:)(v15);
  return outlined destroy of CharacterSet?(v15, &_s10Foundation9IndexPathVSgMd);
}