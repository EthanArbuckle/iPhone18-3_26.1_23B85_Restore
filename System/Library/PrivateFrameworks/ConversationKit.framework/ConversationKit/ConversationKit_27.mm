unint64_t lazy protocol witness table accessor for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout()
{
  result = lazy protocol witness table cache variable for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout;
  if (!lazy protocol witness table cache variable for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout;
  if (!lazy protocol witness table cache variable for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingToolbarLayout(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingToolbarLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LayoutPosition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined init with copy of LayoutSubview?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized Dictionary.Values.startIndex.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaDictionary.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t View.toolbarPlacement(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t ScreenSharingToolbar.toolbarPlacement.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v0 + 8);
  v7 = *v0;
  v11 = *v0;
  if (v12 != 1)
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v11, &_s7SwiftUI11EnvironmentVyAA4EdgeOGMd);
    (*(v3 + 8))(v6, v1);
    return v10[15];
  }

  return v7;
}

uint64_t ScreenSharingToolbar.leadingActions.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v0);
  return OUTLINED_FUNCTION_46();
}

uint64_t ScreenSharingToolbar.centerActions.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v0);
  return OUTLINED_FUNCTION_46();
}

uint64_t ScreenSharingToolbar.trailingActions.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v0);
  return OUTLINED_FUNCTION_46();
}

uint64_t ScreenSharingToolbar.actionsContainer.getter()
{
  ScreenSharingToolbar.toolbarPlacement.getter();
  v0 = Axis.rawValue.getter();
  if (v0 == Axis.rawValue.getter())
  {
    static VerticalAlignment.center.getter();
    lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout();
  }

  else
  {
    static HorizontalAlignment.center.getter();
    lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout();
  }

  return AnyLayout.init<A>(_:)();
}

uint64_t ScreenSharingToolbar.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVy15ConversationKit020ScreenSharingToolbarC0VGMd);
  v39 = a1[2];
  type metadata accessor for Optional();
  v38 = a1[4];
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_7_2();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for TupleView();
  v41 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F11PositionKey33_CB5716349B733E4BD07C5ACF0D02830DLLVGGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd);
  v34 = a1[3];
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_3_78();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v3, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd);
  type metadata accessor for _VariadicView.Tree();
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for ModifiedContent();
  v32 = a1[5];
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for _VariadicView.Tree();
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8_8();
  v35 = type metadata accessor for TupleView();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<ScreenSharingToolbarLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVy15ConversationKit020ScreenSharingToolbarC0VGMd);
  type metadata accessor for _VariadicView.Tree();
  OUTLINED_FUNCTION_1();
  v36 = v4;
  v37 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v31 - v8;
  v9 = v40;
  v10 = ScreenSharingToolbar.toolbarPlacement.getter();
  v11 = a1[6];
  v12 = a1[7];
  v14 = a1[8];
  v13 = a1[9];
  v16 = v38;
  v15 = v39;
  v17 = v34;
  v18 = v32;
  v19 = implicit closure #1 in ScreenSharingToolbar.body.getter(v10, v39, v34, v38, v32, v11, v12, v14, 15.0, v13);
  *&v20 = v15;
  *(&v20 + 1) = v17;
  *&v21 = v16;
  *(&v21 + 1) = v18;
  v56 = v20;
  v57 = v21;
  v58 = v11;
  v59 = v12;
  v60 = v14;
  v61 = v13;
  v62 = v9;
  v49[1] = v20;
  v49[2] = v21;
  v50 = v11;
  v51 = v12;
  v52 = v14;
  v53 = v13;
  v54 = v9;
  v43[1] = v20;
  v43[2] = v21;
  v44 = v11;
  v45 = v12;
  v46 = v14;
  v47 = v13;
  v48 = v9;
  v22 = v31;
  (v19)(partial apply for closure #1 in ScreenSharingToolbar.body.getter, v55, partial apply for closure #2 in ScreenSharingToolbar.body.getter, v49, partial apply for closure #3 in ScreenSharingToolbar.body.getter, v43);

  OUTLINED_FUNCTION_1_22();
  v24 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v23, &_s7SwiftUI11_LayoutRootVy15ConversationKit020ScreenSharingToolbarC0VGMd);
  WitnessTable = swift_getWitnessTable();
  v63 = v24;
  v64 = WitnessTable;
  OUTLINED_FUNCTION_5_30();
  v26 = v36;
  v27 = swift_getWitnessTable();
  v28 = v33;
  static ViewBuilder.buildExpression<A>(_:)(v22, v26, v27);
  v29 = *(v37 + 8);
  v29(v22, v26);
  static ViewBuilder.buildExpression<A>(_:)(v28, v26, v27);
  return (v29)(v28, v26);
}

uint64_t (*implicit closure #1 in ScreenSharingToolbar.body.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = a8;
  *(v19 + 72) = a10;
  *(v19 + 80) = a9;
  *(v19 + 88) = a1;
  return partial apply for implicit closure #2 in implicit closure #1 in ScreenSharingToolbar.body.getter;
}

uint64_t implicit closure #2 in implicit closure #1 in ScreenSharingToolbar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>)
{
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd);
  type metadata accessor for Optional();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd);
  v12 = type metadata accessor for _VariadicView.Tree();
  type metadata accessor for Optional();
  v13 = type metadata accessor for _VariadicView.Tree();
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd);
  swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  *(&v18 + 1) = v15;
  *&v18 = WitnessTable;
  return ScreenSharingToolbarLayout.callAsFunction<A, B, C>(_:leadingActions:trailingActions:)(a1, a2, a3, a4, a5, a6, a7, v11, a8, a9, v12, v13, v18, v16);
}

uint64_t closure #1 in ScreenSharingToolbar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a7;
  v27 = a8;
  v24 = a1;
  v25 = a6;
  v23 = a5;
  v28 = a9;
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v13 = type metadata accessor for VStack();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = v23;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = a10;
  v37 = v24;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v13, WitnessTable);
  v21 = *(v14 + 8);
  v21(v16, v13);
  static ViewBuilder.buildExpression<A>(_:)(v19, v13, WitnessTable);
  return (v21)(v19, v13);
}

uint64_t closure #1 in closure #1 in ScreenSharingToolbar.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v71 = a5;
  v61 = a3;
  v62 = a1;
  v66 = a9;
  v59 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v58 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v57 - v17;
  v63 = type metadata accessor for Optional();
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v57 - v20;
  v21 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v57 - v26;
  v60 = type metadata accessor for Optional();
  v68 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v69 = &v57 - v31;
  v77 = a2;
  v78 = v61;
  v79 = a4;
  v80 = v71;
  v70 = a8;
  v71 = a6;
  v81 = a6;
  v82 = a7;
  v83 = a8;
  v84 = a10;
  v32 = v62;
  type metadata accessor for ScreenSharingToolbar();
  ScreenSharingToolbar.toolbarPlacement.getter();
  v33 = Axis.rawValue.getter();
  if (v33 == Axis.rawValue.getter())
  {
    (*(v32 + 2))();
    v34 = v71;
    static ViewBuilder.buildExpression<A>(_:)(v24, a2, v71);
    v35 = *(v21 + 8);
    v35(v24, a2);
    static ViewBuilder.buildExpression<A>(_:)(v27, a2, v34);
    v35(v27, a2);
    (*(v21 + 32))(v29, v24, a2);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = 1;
  __swift_storeEnumTagSinglePayload(v29, v36, 1, a2);
  static ViewBuilder.buildIf<A>(_:)(v29, v69);
  v38 = *(v68 + 8);
  v62 = v29;
  v39 = v29;
  v40 = v60;
  v61 = v38;
  v38(v39, v60);
  v41 = *(v32 + 6);
  if (v41)
  {

    v43 = v58;
    v41(v42);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v41);
    v44 = v57;
    v45 = v70;
    static ViewBuilder.buildExpression<A>(_:)(v43, a4, v70);
    v46 = v59;
    v47 = *(v59 + 8);
    v47(v43, a4);
    static ViewBuilder.buildExpression<A>(_:)(v44, a4, v45);
    v47(v44, a4);
    (*(v46 + 32))(v67, v43, a4);
    v37 = 0;
  }

  v48 = v67;
  __swift_storeEnumTagSinglePayload(v67, v37, 1, a4);
  v49 = v65;
  static ViewBuilder.buildIf<A>(_:)(v48, v65);
  v50 = v64;
  v51 = *(v64 + 8);
  v52 = v63;
  v51(v48, v63);
  v53 = v69;
  v54 = v62;
  (*(v68 + 16))(v62, v69, v40);
  v77 = v54;
  (*(v50 + 16))(v48, v49, v52);
  v78 = v48;
  v76[0] = v40;
  v76[1] = v52;
  v73 = v71;
  WitnessTable = swift_getWitnessTable();
  v72 = v70;
  v75 = swift_getWitnessTable();
  static ViewBuilder.buildBlock<each A>(_:)(&v77, 2, v76);
  v51(v49, v52);
  v55 = v61;
  v61(v53, v40);
  v51(v48, v52);
  return v55(v54, v40);
}

uint64_t closure #2 in ScreenSharingToolbar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v40 = a8;
  v38 = a7;
  v43 = a9;
  v36 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd);
  v39 = type metadata accessor for Optional();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd);
  v16 = type metadata accessor for _VariadicView.Tree();
  v42 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v37 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v41 = &v34 - v19;
  v57 = a2;
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = v38;
  v61 = a6;
  v62 = v38;
  v24 = v40;
  v25 = v36;
  v63 = v40;
  v64 = v36;
  type metadata accessor for ScreenSharingToolbar();
  v35 = ScreenSharingToolbar.actionsContainer.getter();
  v57 = v35;
  v45 = a2;
  v46 = a3;
  v47 = v20;
  v48 = v21;
  v49 = v22;
  v50 = v23;
  v51 = v24;
  v52 = v25;
  v53 = a1;
  v26 = lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout();
  v56 = v23;
  v27 = v39;
  WitnessTable = swift_getWitnessTable();
  v29 = v37;
  Layout.callAsFunction<A>(_:)(partial apply for closure #1 in closure #2 in ScreenSharingToolbar.body.getter, v44, MEMORY[0x1E6981D78], v27, v26, WitnessTable, v37);

  v54 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd);
  v55 = WitnessTable;
  v30 = swift_getWitnessTable();
  v31 = v41;
  static ViewBuilder.buildExpression<A>(_:)(v29, v16, v30);
  v32 = *(v42 + 8);
  v32(v29, v16);
  static ViewBuilder.buildExpression<A>(_:)(v31, v16, v30);
  return (v32)(v31, v16);
}

uint64_t closure #1 in closure #2 in ScreenSharingToolbar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v27[1] = a4;
  v28 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  v12 = type metadata accessor for Optional();
  v27[0] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  v18 = *(a1 + 32);
  if (v18)
  {

    v18(v19);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v18);
    v20 = v28;
    static ViewBuilder.buildExpression<A>(_:)(v8, a2, v28);
    v21 = *(v6 + 8);
    v21(v8, a2);
    static ViewBuilder.buildExpression<A>(_:)(v11, a2, v20);
    v21(v11, a2);
    (*(v6 + 32))(v14, v8, a2);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v22, 1, a2);
  v23 = v28;
  static ViewBuilder.buildIf<A>(_:)(v14, v17);
  v24 = *(v27[0] + 8);
  v24(v14, v12);
  v29 = v23;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v17, v12, WitnessTable);
  return (v24)(v17, v12);
}

uint64_t closure #3 in ScreenSharingToolbar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a8;
  v38 = a7;
  v42 = a9;
  v35 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd);
  v37 = type metadata accessor for Optional();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd);
  v16 = type metadata accessor for _VariadicView.Tree();
  v41 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v36 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v33 - v19;
  v20 = a2;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v21 = a6;
  v22 = v38;
  v23 = v39;
  v60 = v38;
  v61 = v39;
  v24 = v35;
  v62 = v35;
  type metadata accessor for ScreenSharingToolbar();
  v34 = ScreenSharingToolbar.actionsContainer.getter();
  v55 = v34;
  v44 = v20;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = v21;
  v49 = v22;
  v50 = v23;
  v51 = v24;
  v52 = a1;
  v25 = lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout();
  v26 = v37;
  WitnessTable = swift_getWitnessTable();
  v28 = v36;
  Layout.callAsFunction<A>(_:)(partial apply for closure #1 in closure #3 in ScreenSharingToolbar.body.getter, v43, MEMORY[0x1E6981D78], v26, v25, WitnessTable, v36);

  v53 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd);
  v54 = WitnessTable;
  v29 = swift_getWitnessTable();
  v30 = v40;
  static ViewBuilder.buildExpression<A>(_:)(v28, v16, v29);
  v31 = *(v41 + 8);
  v31(v28, v16);
  static ViewBuilder.buildExpression<A>(_:)(v30, v16, v29);
  return (v31)(v30, v16);
}

uint64_t closure #1 in closure #3 in ScreenSharingToolbar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>, uint64_t a4)
{
  v27[1] = a3;
  v28 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  v12 = type metadata accessor for Optional();
  v27[0] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  v18 = *(a1 + 64);
  if (v18)
  {

    v18(v19);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v18);
    v20 = v28;
    static ViewBuilder.buildExpression<A>(_:)(v8, a2, v28);
    v21 = *(v6 + 8);
    v21(v8, a2);
    static ViewBuilder.buildExpression<A>(_:)(v11, a2, v20);
    v21(v11, a2);
    (*(v6 + 32))(v14, v8, a2);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v22, 1, a2);
  v23 = v28;
  static ViewBuilder.buildIf<A>(_:)(v14, v17);
  v24 = *(v27[0] + 8);
  v24(v14, v12);
  v29 = v23;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v17, v12, WitnessTable);
  return (v24)(v17, v12);
}

uint64_t ScreenSharingToolbar.init(toolbarPlacement:title:leadingActions:centerActions:trailingActions:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t ScreenSharingToolbar.init(_:leadingActions:centerActions:trailingActions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = swift_getKeyPath();
  *a9 = result;
  *(a9 + 8) = 0;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  return result;
}

uint64_t ScreenSharingToolbar.init<>(_:leadingActions:trailingActions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_getKeyPath();
  *a7 = result;
  *(a7 + 8) = 0;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

double ScreenSharingToolbar.init<>(_:leadingActions:)()
{
  OUTLINED_FUNCTION_8_53();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_38(KeyPath);
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  return result;
}

double ScreenSharingToolbar.init<>(_:trailingActions:)()
{
  OUTLINED_FUNCTION_8_53();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_38(KeyPath);
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = v1;
  *(v2 + 72) = v0;
  return result;
}

double ScreenSharingToolbar.init<>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance ToolbarPlacementKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Edge and conformance Edge();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.toolbarPlacement.getter()
{
  lazy protocol witness table accessor for type ToolbarPlacementKey and conformance ToolbarPlacementKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t key path getter for EnvironmentValues.toolbarPlacement : EnvironmentValues()
{
  OUTLINED_FUNCTION_11_41();
  result = EnvironmentValues.toolbarPlacement.getter();
  *v0 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarPlacementKey and conformance ToolbarPlacementKey()
{
  result = lazy protocol witness table cache variable for type ToolbarPlacementKey and conformance ToolbarPlacementKey;
  if (!lazy protocol witness table cache variable for type ToolbarPlacementKey and conformance ToolbarPlacementKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarPlacementKey and conformance ToolbarPlacementKey);
  }

  return result;
}

uint64_t (*EnvironmentValues.toolbarPlacement.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = lazy protocol witness table accessor for type ToolbarPlacementKey and conformance ToolbarPlacementKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.toolbarPlacement.modify;
}

uint64_t specialized ScreenSharingToolbarButtonStyleModifier.foregroundStyle.getter(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0x100) != 0)
  {
    static Color.black.getter();
  }

  else
  {
    static HierarchicalShapeStyle.primary.getter();
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t specialized ScreenSharingToolbarButtonStyleModifier.foregroundStyle.getter()
{
  if (*(v0 + *(type metadata accessor for ScreenSharingToolbarTitleButton() + 28)) == 1)
  {
    static Color.black.getter();
  }

  else
  {
    static HierarchicalShapeStyle.primary.getter();
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t ScreenSharingToolbarButtonStyleModifier.foregroundStyle.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24))())
  {
    static Color.black.getter();
  }

  else
  {
    static HierarchicalShapeStyle.primary.getter();
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t specialized ScreenSharingToolbarButtonStyleModifier.backgroundStyle.getter(uint64_t a1, char a2, uint64_t a3, __int16 a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  v11 = type metadata accessor for Material();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 0x100) != 0)
  {
    v17[2] = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v19 = a2 & 1;
    v18 = a4 & 1;
    ScreenSharingToolbarIconButton.toolbarPlacement.getter(a1, a2 & 1, a3, a4 & 1);
    v15 = Axis.rawValue.getter();
    if (v15 == Axis.rawValue.getter())
    {
      static Material.thin.getter();
      (*(v12 + 32))(v10, v14, v11);
      *&v10[*(v8 + 36)] = 3;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HierarchicalShapeStyleModifier<Material> and conformance HierarchicalShapeStyleModifier<A>, &_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMd);
    }

    else
    {
      v17[3] = static HierarchicalShapeStyle.quaternary.getter();
    }
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t specialized ScreenSharingToolbarButtonStyleModifier.backgroundStyle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMd);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v10 - v2;
  v4 = type metadata accessor for Material();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for ScreenSharingToolbarTitleButton() + 28)) == 1)
  {
    v10[2] = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    ScreenSharingToolbarTitleButton.toolbarPlacement.getter();
    v8 = Axis.rawValue.getter();
    if (v8 == Axis.rawValue.getter())
    {
      static Material.thin.getter();
      (*(v5 + 32))(v3, v7, v4);
      *&v3[*(v1 + 36)] = 3;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HierarchicalShapeStyleModifier<Material> and conformance HierarchicalShapeStyleModifier<A>, &_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMd);
    }

    else
    {
      v10[3] = static HierarchicalShapeStyle.quaternary.getter();
    }
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t ScreenSharingToolbarButtonStyleModifier.backgroundStyle.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - v6;
  v8 = type metadata accessor for Material();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 24))(a1, a2, v12))
  {
    v17[2] = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    (*(a2 + 16))(a1, a2);
    v15 = Axis.rawValue.getter();
    if (v15 == Axis.rawValue.getter())
    {
      static Material.thin.getter();
      (*(v10 + 32))(v7, v14, v8);
      *&v7[*(v4 + 36)] = 3;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HierarchicalShapeStyleModifier<Material> and conformance HierarchicalShapeStyleModifier<A>, &_s7SwiftUI30HierarchicalShapeStyleModifierVyAA8MaterialVGMd);
    }

    else
    {
      v17[3] = static HierarchicalShapeStyle.quaternary.getter();
    }
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t ScreenSharingToolbarIconButton.isEnabled.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UIInterfaceOrientation>.Content(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v10[15];
  }

  return a1 & 1;
}

uint64_t ScreenSharingToolbarIconButton.toolbarPlacement.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UIInterfaceOrientation>.Content(a3, 0);
    (*(v7 + 8))(v9, v6);
    return v12[15];
  }

  return a3;
}

uint64_t ScreenSharingToolbarIconButton.body(content:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, __int16 a4@<W4>, uint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a5;
  v36 = a1;
  v37 = a2;
  v38 = a4 & 0x100;
  v6 = type metadata accessor for IconOnlyLabelStyle();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGMd);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  IconOnlyLabelStyle.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScreenSharingToolbarIconButton> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, MEMORY[0x1E697C4E8]);
  View.labelStyle<A>(_:)();
  (*(v7 + 8))(v9, v6);
  v14 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGMd) + 36)];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v16 = *MEMORY[0x1E69816E0];
  v17 = type metadata accessor for Image.Scale();
  v18 = v14 + v15;
  v19 = v36;
  (*(*(v17 - 8) + 104))(v18, v16, v17);
  *v14 = swift_getKeyPath();
  v20 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v22 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGMd) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGMd) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd) + 28);
  static SymbolRenderingMode.monochrome.getter();
  v25 = type metadata accessor for SymbolRenderingMode();
  __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v25);
  *v23 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGMd) + 36)];
  v27 = v44;
  *v26 = v43;
  *(v26 + 1) = v27;
  *(v26 + 2) = v45;
  LOWORD(v7) = v38;
  v28 = v37 & 1;
  v42 = v37 & 1;
  v41 = a4 & 1;
  v29 = v39;
  v30 = specialized ScreenSharingToolbarButtonStyleModifier.foregroundStyle.getter(v19, v37 & 1, v39, v38 | a4 & 1u);
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGMd) + 36)] = v30;
  v42 = v28;
  v41 = a4 & 1;
  v31 = specialized ScreenSharingToolbarButtonStyleModifier.backgroundStyle.getter(v19, v28, v29, v7 | a4 & 1u);
  v32 = &v13[*(v11 + 44)];
  *v32 = v31;
  *(v32 + 4) = 256;
  v33 = 1.0;
  if ((a4 & 0x100) == 0)
  {
    v42 = v28;
    v41 = a4 & 1;
    if (ScreenSharingToolbarIconButton.isEnabled.getter(v19, v28))
    {
      v33 = 1.0;
    }

    else
    {
      v33 = 0.3;
    }
  }

  v34 = v40;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v13, v40, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGAA14_OpacityEffectVGMd);
  *(v34 + *(result + 36)) = v33;
  return result;
}

uint64_t ScreenSharingToolbarTitleButton.isEnabled.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UIInterfaceOrientation>.Content(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t ScreenSharingToolbarTitleButton.horizontalSizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ScreenSharingToolbarTitleButton();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v1 + *(v10 + 20), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of UserInterfaceSizeClass?(v9, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ScreenSharingToolbarTitleButton.toolbarPlacement.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ScreenSharingToolbarTitleButton() + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UIInterfaceOrientation>.Content(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ScreenSharingToolbarIconButton@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return ScreenSharingToolbarIconButton.body(content:)(*v1, *(v1 + 8), *(v1 + 16), v2 | *(v1 + 24), a1);
}

double ScreenSharingToolbarTitleButton.horizontalPadding.getter()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  if (static Platform.current.getter() != 1)
  {
    return 12.0;
  }

  ScreenSharingToolbarTitleButton.horizontalSizeClass.getter(v15);
  (*(v1 + 104))(v12, *MEMORY[0x1E697FF40], v0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v0);
  v16 = *(v4 + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v15, v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v12, &v6[v16], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      return 19.0;
    }

    goto LABEL_7;
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v6, v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v1 + 8))(v9, v0);
LABEL_7:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    return 12.0;
  }

  (*(v1 + 32))(v3, &v6[v16], v0);
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v1 + 8);
  v19(v3, v0);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v19(v9, v0);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  result = 19.0;
  if ((v18 & 1) == 0)
  {
    return 12.0;
  }

  return result;
}

uint64_t ScreenSharingToolbarTitleButton.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v49 = type metadata accessor for Font.TextStyle();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TitleOnlyLabelStyle();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGMd) - 8;
  MEMORY[0x1EEE9AC00](v51);
  v13 = &v48 - v12;
  TitleOnlyLabelStyle.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScreenSharingToolbarTitleButton> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, MEMORY[0x1E697C5D0]);
  View.labelStyle<A>(_:)();
  (*(v9 + 8))(v11, v8);
  v14 = v49;
  (*(v5 + 104))(v7, *MEMORY[0x1E6980EF0], v49);
  v15 = type metadata accessor for Font.Design();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v15);
  static Font.Weight.medium.getter();
  v16 = static Font.system(_:design:weight:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v5 + 8))(v7, v14);
  KeyPath = swift_getKeyPath();
  v18 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGMd) + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  LOBYTE(v16) = static Edge.Set.horizontal.getter();
  v19 = v52;
  ScreenSharingToolbarTitleButton.horizontalPadding.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGMd) + 36)];
  *v28 = v16;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGMd) + 36)];
  v30 = v55;
  *v29 = v54;
  *(v29 + 1) = v30;
  *(v29 + 2) = v56;
  v31 = specialized ScreenSharingToolbarButtonStyleModifier.foregroundStyle.getter();
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGMd) + 36)] = v31;
  v32 = v19;
  v33 = specialized ScreenSharingToolbarButtonStyleModifier.backgroundStyle.getter();
  v34 = &v13[*(v51 + 44)];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA03AnyE5StyleVAA16RoundedRectangleVGMd);
  v36 = v34 + *(v35 + 52);
  v37 = *(type metadata accessor for RoundedRectangle() + 20);
  v38 = *MEMORY[0x1E697F468];
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #15.0 }

  *v36 = _Q0;
  *v34 = v33;
  *(v34 + *(v35 + 56)) = 256;
  v45 = 1.0;
  if ((*(v32 + *(type metadata accessor for ScreenSharingToolbarTitleButton() + 28)) & 1) == 0)
  {
    if (ScreenSharingToolbarTitleButton.isEnabled.getter())
    {
      v45 = 1.0;
    }

    else
    {
      v45 = 0.5;
    }
  }

  v46 = v53;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v13, v53, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGAA14_OpacityEffectVGMd);
  *(v46 + *(result + 36)) = v45;
  return result;
}

Swift::Int ScreenSharingToolbarButtonStyle.Style.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScreenSharingToolbarButtonStyle.Style()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ScreenSharingToolbarButtonStyle.Style.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t ScreenSharingToolbarButtonStyle.makeBody(configuration:)@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = HIBYTE(a1) & 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit024ScreenSharingToolbarIconE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleG033_363C2BAB2838433783BB3D55FB7C9D4CLLVGAGyAkL0mno4IconG0ANLLVG_GMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  ButtonStyleConfiguration.label.getter();
  KeyPath = swift_getKeyPath();
  if (v2)
  {
    v17 = swift_getKeyPath();
    v18 = &v8[*(v5 + 36)];
    *v18 = KeyPath;
    v18[8] = 0;
    *(v18 + 2) = v17;
    v18[24] = 0;
    v18[25] = v4;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v8, v11, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit024ScreenSharingToolbarIconE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v19 = v8;
    v20 = &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit024ScreenSharingToolbarIconE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd;
  }

  else
  {
    v21 = swift_getKeyPath();
    v22 = *(v12 + 36);
    v28[1] = a2;
    v23 = &v15[v22];
    v24 = type metadata accessor for ScreenSharingToolbarTitleButton();
    v28[0] = v5;
    *&v23[v24[5]] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
    swift_storeEnumTagMultiPayload();
    v25 = swift_getKeyPath();
    *v23 = KeyPath;
    v23[8] = 0;
    v26 = &v23[v24[6]];
    *v26 = v25;
    v26[8] = 0;
    v23[v24[7]] = v4;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v15, v11, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v19 = v15;
    v20 = &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd;
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, v20);
}

ConversationKit::ScreenSharingToolbarButtonStyle __swiftcall ScreenSharingToolbarButtonStyle.init(style:isSelected:)(ConversationKit::ScreenSharingToolbarButtonStyle::Style style, Swift::Bool isSelected)
{
  if (isSelected)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | style & 1);
}

uint64_t protocol witness for ButtonStyle.makeBody(configuration:) in conformance ScreenSharingToolbarButtonStyle@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return ScreenSharingToolbarButtonStyle.makeBody(configuration:)(v2 | *v1, a1);
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues()
{
  OUTLINED_FUNCTION_11_41();
  result = EnvironmentValues.isEnabled.getter();
  *v0 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x1E697C8D0]);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type ScreenSharingToolbarTitleButton and conformance ScreenSharingToolbarTitleButton, type metadata accessor for ScreenSharingToolbarTitleButton);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for ScreenSharingToolbarTitleButton()
{
  result = type metadata singleton initialization cache for ScreenSharingToolbarTitleButton;
  if (!type metadata singleton initialization cache for ScreenSharingToolbarTitleButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV15ConversationKit024ScreenSharingToolbarIconE033_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x1E697C8D0]);
    lazy protocol witness table accessor for type ScreenSharingToolbarIconButton and conformance ScreenSharingToolbarIconButton();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScreenSharingToolbarIconButton and conformance ScreenSharingToolbarIconButton()
{
  result = lazy protocol witness table cache variable for type ScreenSharingToolbarIconButton and conformance ScreenSharingToolbarIconButton;
  if (!lazy protocol witness table cache variable for type ScreenSharingToolbarIconButton and conformance ScreenSharingToolbarIconButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingToolbarIconButton and conformance ScreenSharingToolbarIconButton);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle.Style and conformance ScreenSharingToolbarButtonStyle.Style()
{
  result = lazy protocol witness table cache variable for type ScreenSharingToolbarButtonStyle.Style and conformance ScreenSharingToolbarButtonStyle.Style;
  if (!lazy protocol witness table cache variable for type ScreenSharingToolbarButtonStyle.Style and conformance ScreenSharingToolbarButtonStyle.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingToolbarButtonStyle.Style and conformance ScreenSharingToolbarButtonStyle.Style);
  }

  return result;
}

uint64_t type metadata instantiation function for ScreenSharingToolbar()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ScreenSharingToolbar(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingToolbar(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingToolbarButtonStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingToolbarButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ScreenSharingToolbarButtonStyle.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton>, ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton>, ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton>, ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA24ButtonStyleConfigurationV5LabelV15ConversationKit025ScreenSharingToolbarTitleF033_363C2BAB2838433783BB3D55FB7C9D4CLLVGAEyAiJ0lmn4IconF0ALLLVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarTitleButton>, ModifiedContent<ButtonStyleConfiguration.Label, ScreenSharingToolbarIconButton>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata completion function for ScreenSharingToolbarTitleButton()
{
  type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<UserInterfaceSizeClass?>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Edge>);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Environment<Bool>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Environment();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingToolbarIconButton(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 26))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingToolbarIconButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ScreenSharingToolbarIconButton(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ScreenSharingToolbarIconButton and conformance ScreenSharingToolbarIconButton();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ScreenSharingToolbarTitleButton(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type ScreenSharingToolbarTitleButton and conformance ScreenSharingToolbarTitleButton, type metadata accessor for ScreenSharingToolbarTitleButton);
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with take of UserInterfaceSizeClass?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Edge and conformance Edge()
{
  result = lazy protocol witness table cache variable for type Edge and conformance Edge;
  if (!lazy protocol witness table cache variable for type Edge and conformance Edge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge and conformance Edge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout()
{
  result = lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout;
  if (!lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout()
{
  result = lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout;
  if (!lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout()
{
  result = lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout;
  if (!lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA6_AA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA03AnyE5StyleVAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
    type metadata accessor for TitleOnlyLabelStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScreenSharingToolbarTitleButton> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit31ScreenSharingToolbarTitleButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, MEMORY[0x1E697C5D0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGAA026_InsettableBackgroundShapeI0VyA14_AA6CircleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA03AnyE5StyleVAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>>, _InsettableBackgroundShapeModifier<AnyShapeStyle, Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGAA011_ForegroundgI0VyAA08AnyShapeG0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGASyAA19SymbolRenderingModeVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SymbolRenderingMode?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGASyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA01_e9Modifier_D0Vy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVG_AA0o4OnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA5ImageV5ScaleOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
    type metadata accessor for IconOnlyLabelStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScreenSharingToolbarIconButton> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit30ScreenSharingToolbarIconButton33_363C2BAB2838433783BB3D55FB7C9D4CLLVGMd);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t PreCallButtonsView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMd);
  Bindable.wrappedValue.getter();
  return v1;
}

void (*PreCallButtonsView.viewModel.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMd);
  v2[4] = Bindable.wrappedValue.modify();
  return ButtonsStackView.viewModel.modify;
}

uint64_t PreCallButtonsView.$viewModel.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMd);

  return MEMORY[0x1EEDE4B98](v0);
}

uint64_t PreCallButtonsView.init(service:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PreCallButtonsViewModel();
  lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel(&lazy protocol witness table cache variable for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel, type metadata accessor for PreCallButtonsViewModel);

  v20 = a2;
  Bindable<A>.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit015CallControlsPreF15ButtonViewModel_pGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  v5 = type metadata accessor for CancelConfirmationViewModel();
  swift_allocObject();
  *(inited + 32) = CancelConfirmationViewModel.init()();
  v6 = inited + 32;
  *(inited + 56) = v5;
  *(inited + 64) = &protocol witness table for CancelConfirmationViewModel;
  v19 = a1;
  outlined init with copy of IDSLookupManager(a1, &v24);
  v7 = type metadata accessor for DialButtonViewModel();
  swift_allocObject();
  v8 = DialButtonViewModel.init(service:)(&v24);
  *(inited + 96) = v7;
  *(inited + 104) = &protocol witness table for DialButtonViewModel;
  *(inited + 72) = v8;
  v27 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v9 = 0;
  v10 = v27;
  do
  {
    outlined init with copy of IDSLookupManager(v6, v23);
    v21 = v9;
    outlined init with take of TapInteractionHandler(v23, v22);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v11);

    outlined init with copy of IDSLookupManager(v22, v25);
    *&v24 = 761623152;
    *(&v24 + 1) = 0xE400000000000000;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v21, &_sSi6offset_15ConversationKit015CallControlsPreD15ButtonViewModel_p7elementtMd);
    v27 = v10;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
      v10 = v27;
    }

    *(v10 + 16) = v13 + 1;
    v14 = v10 + 56 * v13;
    v15 = v24;
    v16 = v25[0];
    v17 = v25[1];
    *(v14 + 80) = v26;
    *(v14 + 48) = v16;
    *(v14 + 64) = v17;
    *(v14 + 32) = v15;
    ++v9;
    v6 += 40;
  }

  while (v9 != 2);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();

  __swift_destroy_boxed_opaque_existential_1(v19);
  result = type metadata accessor for PreCallButtonsView();
  *(v20 + *(result + 20)) = v10;
  return result;
}

uint64_t PreCallButtonsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = v1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSAEyAEyAA012_ConditionalE0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGAEyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  *v10 = static VerticalAlignment.top.getter();
  *(v10 + 1) = 0x402C000000000000;
  v10[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA15ModifiedContentVyAA7ForEachVySay15ConversationKit07PreCallD11ModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSAIyAIyAA012_ConditionalI0VyARyAA03AnyD0V014CommunicationsB010IconButtonVyytGGARyAWySbGAIyAL0O17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA7_GSgGAA20_TransactionModifierVGSgGMd);
  closure #1 in PreCallButtonsView.body.getter(v6, &v10[*(v15 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  v27 = xmmword_1BC4BAA20;
  *(inited + 16) = xmmword_1BC4BAA20;
  v17 = static Edge.Set.top.getter();
  *(inited + 32) = v17;
  v18 = static Edge.Set.bottom.getter();
  *(inited + 33) = v18;
  v19 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v19 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v18)
  {
    v19 = Edge.Set.init(rawValue:)();
  }

  static CallControlsMenuView.Constants.verticalPadding.getter();
  EdgeInsets.init(_all:)();
  OUTLINED_FUNCTION_40_1();
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v10, v14, &_s7SwiftUI6HStackVyAA15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSAEyAEyAA012_ConditionalE0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGAEyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGMd);
  v20 = &v14[*(v11 + 36)];
  *v20 = v19;
  *(v20 + 1) = v2;
  *(v20 + 2) = v3;
  *(v20 + 3) = v4;
  *(v20 + 4) = v5;
  v20[40] = 0;
  v21 = swift_initStackObject();
  *(v21 + 16) = v27;
  v22 = static Edge.Set.leading.getter();
  *(v21 + 32) = v22;
  v23 = static Edge.Set.trailing.getter();
  *(v21 + 33) = v23;
  v24 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    v24 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v23)
  {
    v24 = Edge.Set.init(rawValue:)();
  }

  static CallControlsMenuView.Constants.horizontalPadding.getter();
  EdgeInsets.init(_all:)();
  OUTLINED_FUNCTION_40_1();
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v14, a1, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGA14_GMd);
  v26 = a1 + *(result + 36);
  *v26 = v24;
  *(v26 + 8) = v2;
  *(v26 + 16) = v3;
  *(v26 + 24) = v4;
  *(v26 + 32) = v5;
  *(v26 + 40) = 0;
  return result;
}

uint64_t closure #1 in PreCallButtonsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PreCallButtonsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyALyAA03AnyK0V014CommunicationsB010IconButtonVyytGGALyAQySbGACyAF0J17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA1_GSgGAA20_TransactionModifierVGMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMd);
  Bindable.wrappedValue.getter();
  PreCallButtonsViewModel.contextSubject.getter();
  CurrentValueSubject.value.getter();

  v10 = v20;
  if (v20 == 255)
  {
    v17 = 1;
  }

  else
  {
    v11 = v5;
    v12 = a2;
    v13 = v19;
    v19 = *(a1 + *(v4 + 20));
    outlined init with copy of PreCallButtonsView(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v11 + 80) + 25) & ~*(v11 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    a2 = v12;
    *(v15 + 24) = v10 & 1;
    outlined init with take of PreCallButtonsView(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGSgMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [PreCallViewModelHolder] and conformance [A], &_sSay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?();
    lazy protocol witness table accessor for type PreCallViewModelHolder and conformance PreCallViewModelHolder();
    ForEach<>.init(_:content:)();
    v16 = &v9[*(v7 + 36)];
    *v16 = closure #2 in closure #1 in PreCallButtonsView.body.getter;
    v16[1] = 0;
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v9, v12, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyALyAA03AnyK0V014CommunicationsB010IconButtonVyytGGALyAQySbGACyAF0J17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA1_GSgGAA20_TransactionModifierVGMd);
    v17 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v17, 1, v7);
}

uint64_t closure #1 in closure #1 in PreCallButtonsView.body.getter@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v9 = a1;
  v10 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit23PreCallButtonsViewModelCGMd);
  Bindable.wrappedValue.getter();
  v4 = PreCallButtonsViewModel.preCallDelegate.getter();
  v6 = v5;

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  PreCallViewModelHolder.build(_:preCallDelegate:)(&v9, v4, v7, a3);
  return swift_unknownObjectRelease();
}

uint64_t PreCallViewModelHolder.build(_:preCallDelegate:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = swift_allocObject();
  outlined init with copy of IDSLookupManager(v4 + 16, (v13 + 2));
  outlined init with copy of IDSLookupManager((v13 + 2), v41);
  v14 = v42;
  v15 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v39 = v11;
  v40 = v12;
  v16 = (*(v15 + 40))(&v39, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v41);
  if (v16)
  {
    v18 = v13[5];
    v17 = v13[6];
    v19 = __swift_project_boxed_opaque_existential_1(v13 + 2, v18);
    v36 = &v36;
    v37 = a2;
    v20 = *(v18 - 8);
    v21 = MEMORY[0x1EEE9AC00](v19);
    v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    v24 = (*(*(v17 + 8) + 8))(v18);
    v25 = a4;
    v27 = v26;
    v29 = v28;
    (*(v20 + 8))(v23, v18);
    CallControlsType.controlView()(v24, v27, v29, v10);
    outlined consume of CallControlsType(v24, v27, v29);
    v30 = swift_allocObject();
    v32 = v37;
    v31 = v38;
    *(v30 + 2) = v13;
    *(v30 + 3) = v32;
    *(v30 + 4) = v31;
    v33 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGMd) + 36)];
    *v33 = partial apply for closure #1 in PreCallViewModelHolder.build(_:preCallDelegate:);
    v33[1] = v30;
    v33[2] = 0;
    v33[3] = 0;
    v34 = &v10[*(v8 + 36)];
    *v34 = 0;
    *(v34 + 1) = 0;
    *(v34 + 2) = partial apply for closure #2 in PreCallViewModelHolder.build(_:preCallDelegate:);
    *(v34 + 3) = v13;
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v10, v25, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGMd);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v8);
    swift_unknownObjectRetain();
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v8);
  }
}

uint64_t closure #1 in PreCallViewModelHolder.build(_:preCallDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(a1 + 16, v5);
  v7 = *(v6 + 24);
  v8 = swift_unknownObjectRetain();
  v7(v8, a3, v5, v6);
  swift_endAccess();
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(a1 + 16, v12);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(*(v10 + 8) + 16))(v9);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t closure #2 in PreCallViewModelHolder.build(_:preCallDelegate:)(uint64_t a1)
{
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(a1 + 16, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(*(v3 + 8) + 24))(v2);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t type metadata accessor for PreCallButtonsView()
{
  result = type metadata singleton initialization cache for PreCallButtonsView;
  if (!type metadata singleton initialization cache for PreCallButtonsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PreCallButtonsView()
{
  type metadata accessor for Bindable<PreCallButtonsViewModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [PreCallViewModelHolder]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Bindable<PreCallButtonsViewModel>()
{
  if (!lazy cache variable for type metadata for Bindable<PreCallButtonsViewModel>)
  {
    type metadata accessor for PreCallButtonsViewModel();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Bindable<PreCallButtonsViewModel>);
    }
  }
}

void type metadata accessor for [PreCallViewModelHolder]()
{
  if (!lazy cache variable for type metadata for [PreCallViewModelHolder])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [PreCallViewModelHolder]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGA14_GMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSACyACyAA012_ConditionalD0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGACyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA15ModifiedContentVyAA7ForEachVySay15ConversationKit22PreCallViewModelHolder33_801AF6C8C7AF9F90D2770D7757FA6A2ELLVGSSAEyAEyAA012_ConditionalE0VyANyAA03AnyL0V014CommunicationsB010IconButtonVyytGGANyASySbGAEyAH0K17ControlTextButtonVAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGA3_GSgGAA20_TransactionModifierVGSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<ForEach<[PreCallViewModelHolder], String, ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>?>, _TransactionModifier>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of PreCallButtonsView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreCallButtonsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PreCallButtonsView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreCallButtonsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in PreCallButtonsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PreCallButtonsView();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return closure #1 in closure #1 in PreCallButtonsView.body.getter(v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGGGAA25_AppearanceActionModifierVGAWGMR, lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA7AnyViewV014CommunicationsB010IconButtonVyytGGACyAHySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextI0VAA13_OffsetEffectVGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA13_OffsetEffectVGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<Bool> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVySbGMd);
    lazy protocol witness table accessor for type ModifiedContent<CallControlTextButton, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CallControlTextButton, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CallControlTextButton, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CallControlTextButton, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit21CallControlTextButtonVAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel(&lazy protocol witness table cache variable for type CallControlTextButton and conformance CallControlTextButton, type metadata accessor for CallControlTextButton);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CallControlTextButton, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreCallViewModelHolder and conformance PreCallViewModelHolder()
{
  result = lazy protocol witness table cache variable for type PreCallViewModelHolder and conformance PreCallViewModelHolder;
  if (!lazy protocol witness table cache variable for type PreCallViewModelHolder and conformance PreCallViewModelHolder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreCallViewModelHolder and conformance PreCallViewModelHolder);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ScreeningRequest.callUUID.getter(void *a1)
{
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = [a1 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = UUID.uuidString.getter();
  (*(v4 + 8))(v8, v2);
  return v10;
}

uint64_t TelephonyUtilitiesServices.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TelephonyUtilitiesServices() + 24);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TelephonyUtilitiesServices.isAnsweringMachineAvailable.getter()
{
  v1 = *(v0 + *(type metadata accessor for TelephonyUtilitiesServices() + 28));

  return v1;
}

uint64_t TelephonyUtilitiesServices.timeToWaitForCall.getter()
{
  v1 = *(v0 + *(type metadata accessor for TelephonyUtilitiesServices() + 32));

  return v1;
}

void TelephonyUtilitiesServices.init(callCenter:logger:featureFlags:isAnsweringMachineAvailable:timeToWaitForCall:)()
{
  OUTLINED_FUNCTION_36_15();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *v12 = v14;
  v15 = type metadata accessor for TelephonyUtilitiesServices();
  v16 = v15[6];
  v17 = type metadata accessor for Logger();
  (*(*(v17 - 8) + 32))(&v13[v16], v11, v17);
  *(v13 + 1) = v9;
  v18 = &v13[v15[7]];
  *v18 = v7;
  *(v18 + 1) = v5;
  v19 = &v13[v15[8]];
  *v19 = v3;
  *(v19 + 1) = v1;
  OUTLINED_FUNCTION_30_0();
}

id TelephonyUtilitiesServices.getCallFor(callUUID:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1BFB209B0]();
  v7 = [v5 callWithCallUUID_];

  if (!v7)
  {
    v8 = MEMORY[0x1BFB209B0](a1, a2);
    v7 = [v5 callWithUniqueProxyIdentifier_];
  }

  return v7;
}

Swift::Void __swiftcall TelephonyUtilitiesServices.disconnectScreeningCall(callUUID:)(Swift::String callUUID)
{
  object = callUUID._object;
  countAndFlagsBits = callUUID._countAndFlagsBits;
  v4 = TelephonyUtilitiesServices.getCallFor(callUUID:)(callUUID._countAndFlagsBits, callUUID._object);
  if (v4)
  {
    oslog = v4;
    if ([v4 isScreening])
    {
      [*v1 disconnectCall:oslog withReason:36];
    }

    else
    {
      type metadata accessor for TelephonyUtilitiesServices();

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        OUTLINED_FUNCTION_9_44();
        v14 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_15();
        swift_slowAlloc();
        OUTLINED_FUNCTION_23_8();
        *v14 = 136446466;
        OUTLINED_FUNCTION_1_18();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, v15, v16);
        *(v14 + 4) = v17;
        *(v14 + 12) = 2082;
        *(v14 + 14) = OUTLINED_FUNCTION_11_42(v17);
        _os_log_impl(&dword_1BBC58000, v12, v13, "%{public}s: Call %{public}s is not in screening, refusing to disconnect.", v14, 0x16u);
        OUTLINED_FUNCTION_16_35();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();

        goto LABEL_11;
      }
    }
  }

  else
  {
    type metadata accessor for TelephonyUtilitiesServices();

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      OUTLINED_FUNCTION_9_44();
      v6 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      swift_slowAlloc();
      *v6 = 136446466;
      OUTLINED_FUNCTION_1_18();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, v7, v8);
      OUTLINED_FUNCTION_7_53(v9);
      *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v10);
      _os_log_impl(&dword_1BBC58000, oslog, v5, "%{public}s: Call %{public}s no longer exists, cannot disconnect", v6, 0x16u);
      swift_arrayDestroy();
      v11 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v11);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      goto LABEL_11;
    }
  }

LABEL_11:
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TelephonyUtilitiesServices.screen(callUUID:receptionist:screeningDueToUserInteraction:)(Swift::String callUUID, Swift::Bool receptionist, Swift::Bool screeningDueToUserInteraction)
{
  v5 = v3;
  v7 = receptionist;
  object = callUUID._object;
  countAndFlagsBits = callUUID._countAndFlagsBits;
  v10 = TelephonyUtilitiesServices.getCallFor(callUUID:)(callUUID._countAndFlagsBits, callUUID._object);
  if (v10)
  {
    v11 = v10;
    type metadata accessor for TelephonyUtilitiesServices();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v34 = screeningDueToUserInteraction;
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v33 = v4;
      v35 = swift_slowAlloc();
      *v14 = 136446978;
      OUTLINED_FUNCTION_11();
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003CLL, v15, &v35);
      *(v14 + 12) = 2082;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v35);
      *(v14 + 22) = 1024;
      *(v14 + 24) = v34;
      *(v14 + 28) = 1026;
      *(v14 + 30) = v7;
      _os_log_impl(&dword_1BBC58000, v12, v13, "%{public}s: Tracked call %{public}s is being sent to screening due to user interaction: %{BOOL}d, receptionist: %{BOOL,public}d", v14, 0x22u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      screeningDueToUserInteraction = v34;
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    v16 = [objc_allocWithZone(MEMORY[0x1E69D8A30]) initWithCall_];
    if (([v5[1] receptionistEnabled] & v7) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [v16 setScreeningType_];
    [v16 setScreeningDueToUserInteraction_];
    [*v5 answerWithRequest_];
  }

  else
  {
    type metadata accessor for TelephonyUtilitiesServices();

    v18 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    v19 = OUTLINED_FUNCTION_14_28();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_9_44();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v35 = swift_slowAlloc();
      *v21 = 136446466;
      OUTLINED_FUNCTION_11();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003CLL, v22, &v35);
      OUTLINED_FUNCTION_17_34(v23);
      *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v35);
      OUTLINED_FUNCTION_0_94();
      _os_log_impl(v24, v25, v26, v27, v28, v29);
      OUTLINED_FUNCTION_6_55();
      swift_arrayDestroy();
      v30 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v30);
      v31 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v31);
    }

    lazy protocol witness table accessor for type AnsweringMachineError and conformance AnsweringMachineError();
    swift_allocError();
    *v32 = countAndFlagsBits;
    v32[1] = object;
    swift_willThrow();
  }
}

Swift::Int __swiftcall TelephonyUtilitiesServices.getStreamToken(callUUID:)(Swift::String callUUID)
{
  OUTLINED_FUNCTION_36_15();
  v31 = v1;
  v32 = v2;
  OUTLINED_FUNCTION_15_25();
  v5 = TelephonyUtilitiesServices.getCallFor(callUUID:)(v3, v4);
  if (!v5)
  {
    type metadata accessor for TelephonyUtilitiesServices();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_9_44();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      swift_slowAlloc();
      OUTLINED_FUNCTION_23_8();
      *v9 = 136446466;
      OUTLINED_FUNCTION_1_18();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v10, v11);
      v13 = OUTLINED_FUNCTION_7_53(v12);
      *(v9 + 14) = OUTLINED_FUNCTION_27_18(v13, v14, v15);
      OUTLINED_FUNCTION_15_26(&dword_1BBC58000, v16, v17, "%{public}s: Tracked call %{public}s no longer exists, failing to screen call.");
      OUTLINED_FUNCTION_16_35();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

LABEL_8:

    goto LABEL_9;
  }

  v6 = v5;
  if (![v5 answeringMachineStreamToken])
  {
    type metadata accessor for TelephonyUtilitiesServices();
    v7 = v6;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_9_44();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_15();
    v30[0] = swift_slowAlloc();
    *v20 = 136446466;
    OUTLINED_FUNCTION_1_18();
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v21, v22);
    *(v20 + 12) = 2082;
    v23 = [v7 callUUID];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v30);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_1BBC58000, v18, v19, "%{public}s: Failed to get stream token from call from TUCallCenter %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v28 = OUTLINED_FUNCTION_2_35();
    MEMORY[0x1BFB23DF0](v28);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();

    goto LABEL_8;
  }

  [v6 answeringMachineStreamToken];

LABEL_9:
  OUTLINED_FUNCTION_194_0();
  return result;
}

void TelephonyUtilitiesServices.getReceptionistState(callUUID:)()
{
  OUTLINED_FUNCTION_36_15();
  v25 = v0;
  v26 = v1;
  OUTLINED_FUNCTION_15_25();
  v4 = TelephonyUtilitiesServices.getCallFor(callUUID:)(v2, v3);
  v5 = v4;
  if (v4)
  {
    if ([v4 isScreening])
    {
      [v5 receptionistState];
    }
  }

  else
  {
    type metadata accessor for TelephonyUtilitiesServices();

    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_35_9();
    v7 = OUTLINED_FUNCTION_14_28();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_9_44();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v23 = swift_slowAlloc();
      *v9 = 136446466;
      OUTLINED_FUNCTION_11();
      v12 = OUTLINED_FUNCTION_34_17(v10, v11, &v23);
      v13 = OUTLINED_FUNCTION_17_34(v12);
      *(v9 + 14) = OUTLINED_FUNCTION_27_18(v13, v14, &v23);
      OUTLINED_FUNCTION_0_94();
      _os_log_impl(v15, v16, v17, v18, v19, v20);
      OUTLINED_FUNCTION_6_55();
      swift_arrayDestroy();
      v21 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v21);
      v22 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v22);
    }
  }

  v24 = v5 == 0;
  OUTLINED_FUNCTION_194_0();
}

Swift::String_optional __swiftcall TelephonyUtilitiesServices.getCallerID(callUUID:)(Swift::String callUUID)
{
  OUTLINED_FUNCTION_15_25();
  v3 = TelephonyUtilitiesServices.getCallFor(callUUID:)(v1, v2);
  if (!v3)
  {
    type metadata accessor for TelephonyUtilitiesServices();

    v4 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v8))
    {
      OUTLINED_FUNCTION_9_44();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      swift_slowAlloc();
      OUTLINED_FUNCTION_23_8();
      *v9 = 136446466;
      OUTLINED_FUNCTION_1_18();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, v10, v11);
      v13 = OUTLINED_FUNCTION_7_53(v12);
      *(v9 + 14) = OUTLINED_FUNCTION_27_18(v13, v14, v15);
      OUTLINED_FUNCTION_15_26(&dword_1BBC58000, v16, v17, "%{public}s: Tracked call %{public}s no longer exists, failing to screen call.");
      OUTLINED_FUNCTION_16_35();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    goto LABEL_8;
  }

  v4 = v3;
  v5 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v3);
  if (!v5)
  {
LABEL_8:

    v6 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  if (!v5[2])
  {

    goto LABEL_8;
  }

  v6 = v5[4];
  v7 = v5[5];

LABEL_9:
  v18 = v6;
  v19 = v7;
  result.value._object = v19;
  result.value._countAndFlagsBits = v18;
  return result;
}

Swift::String __swiftcall TelephonyUtilitiesServices.getCallerDisplayName(callUUID:)(Swift::String callUUID)
{
  OUTLINED_FUNCTION_15_25();
  v3 = TelephonyUtilitiesServices.getCallFor(callUUID:)(v1, v2);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 receptionistSession];
    if (v5)
    {
      v6 = outlined bridged method (ob) of @objc TUReceptionistSession.predictedName.getter(v5);
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        OUTLINED_FUNCTION_99();
        if (v10)
        {
          v11 = [objc_opt_self() conversationKit];
          v39._object = 0xE000000000000000;
          v12.value._countAndFlagsBits = 0x61737265766E6F43;
          v12.value._object = 0xEF74694B6E6F6974;
          v13._countAndFlagsBits = 0xD000000000000020;
          v13._object = 0x80000001BC4FDAC0;
          v14._countAndFlagsBits = 0;
          v14._object = 0xE000000000000000;
          v39._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v39);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1BC4BA940;
          *(v15 + 56) = MEMORY[0x1E69E6158];
          *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v15 + 32) = v8;
          *(v15 + 40) = v9;
          v16 = String.init(format:_:)();
          v18 = v17;

LABEL_12:

          goto LABEL_15;
        }
      }
    }

    v31 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v4);
    if (v32)
    {
      v16 = v31;
      v18 = v32;
      OUTLINED_FUNCTION_99();
      if (v33)
      {
        goto LABEL_12;
      }
    }

    v34 = [v4 displayName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v35;

    goto LABEL_15;
  }

  type metadata accessor for TelephonyUtilitiesServices();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_9_44();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_15();
    swift_slowAlloc();
    OUTLINED_FUNCTION_23_8();
    *v21 = 136446466;
    OUTLINED_FUNCTION_1_18();
    v25 = OUTLINED_FUNCTION_34_17(v22, v23, v24);
    v26 = OUTLINED_FUNCTION_7_53(v25);
    *(v21 + 14) = OUTLINED_FUNCTION_27_18(v26, v27, v28);
    OUTLINED_FUNCTION_15_26(&dword_1BBC58000, v29, v30, "%{public}s: Tracked call %{public}s no longer exists, failing to screen call.");
    OUTLINED_FUNCTION_16_35();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  v16 = 0;
  v18 = 0xE000000000000000;
LABEL_15:
  v36 = v16;
  v37 = v18;
  result._object = v37;
  result._countAndFlagsBits = v36;
  return result;
}

void TelephonyUtilitiesServices.getScreenRequestIfAvailable()()
{
  v2 = v0;
  TelephonyUtilitiesServices.preScreeningChecks(callUUID:function:)(0x70556C6C61435843, 0xEC00000065746164);
  if (v3)
  {
    type metadata accessor for TelephonyUtilitiesServices();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23_8();
      *v6 = 136446210;
      *(v6 + 4) = OUTLINED_FUNCTION_12_41(v7);
      _os_log_impl(&dword_1BBC58000, v4, v5, "%{public}s: Getting Screening request if available.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v1);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      v8 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v8);
    }

    v9 = [*v2 fetchCurrentCallUpdates];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallUpdate);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_9_44();
      v13 = swift_slowAlloc();
      v30 = OUTLINED_FUNCTION_23();
      *v13 = 136315394;
      *(v13 + 4) = OUTLINED_FUNCTION_12_41(v30);
      *(v13 + 12) = 2048;
      *(v13 + 14) = specialized Array.count.getter(v10);

      OUTLINED_FUNCTION_0_94();
      _os_log_impl(v14, v15, v16, v17, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v20 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v20);
      v21 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v21);
    }

    else
    {
    }

    v22 = specialized Array.count.getter(v10);
    for (i = 0; v22 != i; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1BFB22010](i, v10);
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v24 = *(v10 + 8 * i + 32);
      }

      v25 = v24;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      if ([v24 isEligibleForScreening])
      {

        [objc_allocWithZone(MEMORY[0x1E69D8CD0]) initWithTUCallUpdate_];

        return;
      }
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v31 = OUTLINED_FUNCTION_23();
      *v28 = 136446210;
      *(v28 + 4) = OUTLINED_FUNCTION_12_41(v31);
      _os_log_impl(&dword_1BBC58000, v26, v27, "%{public}s: No screenable request found for screening request.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v29 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v29);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }
}

void TelephonyUtilitiesServices.statusUpdatesForCall(callUUID:)()
{
  OUTLINED_FUNCTION_36_15();
  v41 = v3;
  v42 = v4;
  v5 = OUTLINED_FUNCTION_32_11();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  type metadata accessor for TelephonyUtilitiesServices();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_9_44();
    v39 = v1;
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_15();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_22_24(v15);
    OUTLINED_FUNCTION_29_17(4.8752e-34);
    v19 = OUTLINED_FUNCTION_34_17(v16, v17, v18);
    *(v14 + 14) = OUTLINED_FUNCTION_20_24(v19);
    OUTLINED_FUNCTION_33_19(&dword_1BBC58000, v20, v21, "%{public}s: Getting Screening state updates for call with UUID %s");
    swift_arrayDestroy();
    v2 = v5;
    v5 = v7;
    v7 = v38;
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    v1 = v39;
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  if (TelephonyUtilitiesServices.getCallFor(callUUID:)(v2, v0))
  {
    v40[4] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    swift_allocObject();
    v40[0] = Defaults.init()();
    CallScreeningService.init(overrides:)();
    v40[3] = &type metadata for CallCenterCall;
    v22 = lazy protocol witness table accessor for type CallCenterCall and conformance CallCenterCall();
    OUTLINED_FUNCTION_21_23(v22);
    CallScreeningService.statusUpdatesForCall(_:)();
    (*(v7 + 8))(v11, v5);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {

    v23 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_35_9();
    v24 = OUTLINED_FUNCTION_14_28();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_9_44();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v40[0] = swift_slowAlloc();
      *v26 = 136446466;
      OUTLINED_FUNCTION_11();
      v29 = OUTLINED_FUNCTION_34_17(v27, v28, v40);
      *(v26 + 14) = OUTLINED_FUNCTION_19_20(v29);
      OUTLINED_FUNCTION_0_94();
      _os_log_impl(v30, v31, v32, v33, v34, v35);
      OUTLINED_FUNCTION_6_55();
      swift_arrayDestroy();
      v36 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v36);
      v37 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v37);
    }

    *(v1 + 32) = 0;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  OUTLINED_FUNCTION_30_0();
}

void TelephonyUtilitiesServices.screeningStatus(for:)()
{
  OUTLINED_FUNCTION_36_15();
  v45 = v3;
  v46 = v4;
  v5 = OUTLINED_FUNCTION_32_11();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  type metadata accessor for TelephonyUtilitiesServices();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_9_44();
    v43 = v1;
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_15();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_22_24(v15);
    OUTLINED_FUNCTION_29_17(4.8752e-34);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, v16, v17);
    *(v14 + 14) = OUTLINED_FUNCTION_20_24(v18);
    OUTLINED_FUNCTION_33_19(&dword_1BBC58000, v19, v20, "%{public}s: Getting Screening state for call with UUID %s");
    swift_arrayDestroy();
    v2 = v5;
    v5 = v7;
    v7 = v42;
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    v1 = v43;
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  if (TelephonyUtilitiesServices.getCallFor(callUUID:)(v2, v0))
  {
    v44[4] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    swift_allocObject();
    v44[0] = Defaults.init()();
    CallScreeningService.init(overrides:)();
    v44[3] = &type metadata for CallCenterCall;
    v21 = lazy protocol witness table accessor for type CallCenterCall and conformance CallCenterCall();
    OUTLINED_FUNCTION_21_23(v21);
    CallScreeningService.screeningStatusForCall(_:)();
    (*(v7 + 8))(v11, v5);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v22 = type metadata accessor for CallScreeningStatus();
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v22);
    OUTLINED_FUNCTION_30_0();
  }

  else
  {

    v23 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_35_9();
    v24 = OUTLINED_FUNCTION_14_28();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_9_44();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v44[0] = swift_slowAlloc();
      *v26 = 136446466;
      OUTLINED_FUNCTION_11();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, v27, v44);
      *(v26 + 14) = OUTLINED_FUNCTION_19_20(v28);
      OUTLINED_FUNCTION_0_94();
      _os_log_impl(v29, v30, v31, v32, v33, v34);
      OUTLINED_FUNCTION_6_55();
      swift_arrayDestroy();
      v35 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v35);
      v36 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v36);
    }

    type metadata accessor for CallScreeningStatus();
    OUTLINED_FUNCTION_30_0();

    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  }
}

void TelephonyUtilitiesServices.timeToWaitForCall(callUUID:)()
{
  OUTLINED_FUNCTION_36_15();
  v30 = v1;
  v31 = v2;
  OUTLINED_FUNCTION_15_25();
  v4 = v3;
  v7 = TelephonyUtilitiesServices.getCallFor(callUUID:)(v5, v6);
  if (v7)
  {
    v28 = v7;
    v8 = (v0 + *(type metadata accessor for TelephonyUtilitiesServices() + 32));
    (*v8)(v28);
    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    type metadata accessor for TelephonyUtilitiesServices();

    v11 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_35_9();
    v12 = OUTLINED_FUNCTION_14_28();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_9_44();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v29[0] = swift_slowAlloc();
      *v14 = 136446466;
      OUTLINED_FUNCTION_1_18();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v15, v16);
      v18 = OUTLINED_FUNCTION_17_34(v17);
      *(v14 + 14) = OUTLINED_FUNCTION_27_18(v18, v19, v29);
      OUTLINED_FUNCTION_0_94();
      _os_log_impl(v20, v21, v22, v23, v24, v25);
      OUTLINED_FUNCTION_6_55();
      swift_arrayDestroy();
      v26 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v26);
      v27 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v27);
    }

    *v4 = xmmword_1BC4C9460;
    *(v4 + 16) = 1;
    OUTLINED_FUNCTION_194_0();
  }
}

unint64_t lazy protocol witness table accessor for type AnsweringMachineError and conformance AnsweringMachineError()
{
  result = lazy protocol witness table cache variable for type AnsweringMachineError and conformance AnsweringMachineError;
  if (!lazy protocol witness table cache variable for type AnsweringMachineError and conformance AnsweringMachineError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnsweringMachineError and conformance AnsweringMachineError);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(void *a1)
{
  v1 = [a1 suggestedDisplayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc TUReceptionistSession.predictedName.getter(void *a1)
{
  v2 = [a1 predictedName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type CallCenterCall and conformance CallCenterCall()
{
  result = lazy protocol witness table cache variable for type CallCenterCall and conformance CallCenterCall;
  if (!lazy protocol witness table cache variable for type CallCenterCall and conformance CallCenterCall)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallCenterCall and conformance CallCenterCall);
  }

  return result;
}

unint64_t type metadata completion function for TelephonyUtilitiesServices()
{
  result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for TUCallCenter);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for TUFeatureFlags);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Logger();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ()();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

id SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);

  return specialized SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:)(v10, a2, a3, a4, v4, v8, v9);
}

void closure #1 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  ReportSpamManager.reportFaceTimeCallSpam<A>(call:)();
  if (a4)
  {
    a4();
  }
}

id SpamAlertBuilder.reportGroupInitiatorAlert(of:reportHandler:cancelHandler:preparationHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  return specialized SpamAlertBuilder.reportGroupInitiatorAlert(of:reportHandler:cancelHandler:preparationHandler:)(v16, a2, a3, a4, a5, a6, a7, v7, v14, v15);
}

uint64_t closure #1 in SpamAlertBuilder.buildBlockUnknownAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_2_79(a1, a2);
  v4 = OUTLINED_FUNCTION_0_95();
  result = v5(v4);
  if (v3)
  {
    OUTLINED_FUNCTION_1_80();
    v7 = OUTLINED_FUNCTION_0_95();
    v8(v7);
    OUTLINED_FUNCTION_3_79();
    UIViewController.presentSafetyCheck(tuHandles:)(v9);
  }

  if (v2)
  {
    return v2(result);
  }

  return result;
}

uint64_t closure #1 in SpamAlertBuilder.buildBlockAllAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_2_79(a1, a2);
  v4 = OUTLINED_FUNCTION_0_95();
  result = v5(v4);
  if (v3)
  {
    OUTLINED_FUNCTION_1_80();
    v7 = OUTLINED_FUNCTION_0_95();
    v8(v7);
    OUTLINED_FUNCTION_3_79();
    UIViewController.presentSafetyCheck(tuHandles:)(v9);
  }

  if (v2)
  {
    return v2(result);
  }

  return result;
}

void closure #2 in SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_61(a1, a2);
  (*(v6 + 88))(v4, v5);
  OUTLINED_FUNCTION_5_58();
  if (v3)
  {
    OUTLINED_FUNCTION_1_80();
    v8 = OUTLINED_FUNCTION_0_95();
    v9(v8);
    OUTLINED_FUNCTION_3_79();
    UIViewController.presentSafetyCheck(tuHandles:)(v10);
  }

  if (v2)
  {
    v2(v7);
  }
}

uint64_t SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);

  return a6(v13, a2, a3, a4, a5, v6, v11, v12);
}

void closure #1 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_2_79(a1, a2);
  v5 = OUTLINED_FUNCTION_0_95();
  v7 = v6(v5);
  if (v3)
  {
    OUTLINED_FUNCTION_1_80();
    v8 = OUTLINED_FUNCTION_0_95();
    v9(v8);
    OUTLINED_FUNCTION_3_79();
    UIViewController.presentSafetyCheck(initiator:)(v10);
  }

  if (v2)
  {
    v2(v7);
  }
}

void closure #2 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_61(a1, a2);
  (*(v7 + 96))(v5, v6);
  OUTLINED_FUNCTION_5_58();
  if (v3)
  {
    OUTLINED_FUNCTION_1_80();
    v8 = OUTLINED_FUNCTION_0_95();
    v9(v8);
    OUTLINED_FUNCTION_3_79();
    UIViewController.presentSafetyCheck(initiator:)(v10);
  }

  if (v2)
  {
    v2();
  }
}

void SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = a1[3];
  v16 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  specialized SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(v18, a2, a3, a4, a5, a6, a7, a8, a9, v9, v17, v16);
}

uint64_t specialized SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[3] = a7;
  v28[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  outlined init with copy of IDSLookupManager(v28, v27);
  v15 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v27, (v15 + 2));
  v15[7] = a3;
  v15[8] = a4;
  v15[9] = a5;
  outlined init with copy of IDSLookupManager(v28, v26);
  v16 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v26, (v16 + 2));
  v16[7] = a2;
  v16[8] = a3;
  v16[9] = a4;
  v16[10] = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  v19 = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  v20 = v19;

  specialized SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, partial apply for closure #1 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:), v15, _s15ConversationKit16SpamAlertBuilderC033buildReportAndBlockGroupInitiatorD03for4with24presentingViewController10didDismissSo07UIAlertP0CAA0C9Modelable_p_AA0gC7ManagerCSo06UIViewP0CSgyycSgtFySbcfU0_TA_0, v16, partial apply for closure #3 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v17, partial apply for closure #3 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v18, a6, a7, a8);
  v22 = v21;

  [v20 fetchSharing];
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v22;
}

void specialized SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v81 = a6;
  v82 = a7;
  v86 = a5;
  v84 = a3;
  *&v85 = a4;
  v83 = a2;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v15;
  (*(v15 + 16))(v14, v12);
  v16 = *(a12 + 56);
  v76 = v14;
  v78 = a11;
  v17 = v16(a11, a12);
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v18)
  {
    v20 = v18;
  }

  v79 = v20;
  v80 = v19;
  v21 = objc_opt_self();
  v22 = [v21 conversationKit];
  v87._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD00000000000002ALL;
  v23._object = 0x80000001BC4F9DA0;
  v24.value._countAndFlagsBits = 0x61737265766E6F43;
  v24.value._object = 0xEF74694B6E6F6974;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v87);

  v27 = [v21 &off_1E7FE9588];
  v88._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000038;
  v28._object = 0x80000001BC4F9DD0;
  v29.value._countAndFlagsBits = 0x61737265766E6F43;
  v29.value._object = 0xEF74694B6E6F6974;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v88._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC4BA940;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v32 = v79;
  *(v31 + 32) = v80;
  *(v31 + 40) = v32;
  v33 = String.init(format:_:)();
  v35 = v34;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v36 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v26._countAndFlagsBits, v26._object, v33, v35, 0);
  v80 = objc_opt_self();
  v37 = [v80 currentDevice];
  [v37 userInterfaceIdiom];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v38 = [v21 conversationKit];
  v89._object = 0xE000000000000000;
  v39._object = 0x80000001BC4F9CC0;
  v39._countAndFlagsBits = 0xD00000000000001BLL;
  v40.value._countAndFlagsBits = 0x61737265766E6F43;
  v40.value._object = 0xEF74694B6E6F6974;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v89._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v89);

  v42 = swift_allocObject();
  v43 = v81;
  v44 = v82;
  *(v42 + 16) = v81;
  *(v42 + 24) = v44;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v43);
  v45 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v46 = [v21 conversationKit];
  v90._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0xD000000000000026;
  v47._object = 0x80000001BC4F9E10;
  v48.value._countAndFlagsBits = 0x61737265766E6F43;
  v48.value._object = 0xEF74694B6E6F6974;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v90._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v46, v49, v90);

  v50 = swift_allocObject();
  v51 = v83;
  v52 = v84;
  *(v50 + 16) = v83;
  *(v50 + 24) = v52;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v51);
  v53 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v54 = [v21 conversationKit];
  v91._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0xD000000000000027;
  v55._object = 0x80000001BC4F9D70;
  v56.value._countAndFlagsBits = 0x61737265766E6F43;
  v56.value._object = 0xEF74694B6E6F6974;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v91._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v54, v57, v91);

  v58 = swift_allocObject();
  v59 = v85;
  v60 = v86;
  *(v58 + 16) = v85;
  *(v58 + 24) = v60;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v59);
  v61 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  v85 = xmmword_1BC4BC370;
  *(inited + 16) = xmmword_1BC4BC370;
  *(inited + 32) = v45;
  *(inited + 40) = v53;
  *(inited + 48) = v61;
  v63 = v45;
  v64 = v53;
  v65 = v61;
  v66 = [v80 currentDevice];
  v67 = [v66 userInterfaceIdiom];

  v86 = v63;
  if (v67 == 1)
  {

    inited = swift_allocObject();
    *(inited + 16) = v85;
    *(inited + 32) = v64;
    *(inited + 40) = v65;
    *(inited + 48) = v63;
    v68 = v63;
    v69 = v64;
    v70 = v65;
  }

  v71 = specialized Array.count.getter(inited);
  for (i = 0; ; ++i)
  {
    if (v71 == i)
    {

      (*(v77 + 8))(v76, v78);
      return;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x1BFB22010](i, inited);
    }

    else
    {
      if (i >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v73 = *(inited + 8 * i + 32);
    }

    v74 = v73;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v36 addAction_];
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t specialized SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[3] = a7;
  v29[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  outlined init with copy of IDSLookupManager(v29, v28);
  v15 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v28, (v15 + 2));
  v15[7] = a3;
  v15[8] = a4;
  v15[9] = a5;
  outlined init with copy of IDSLookupManager(v29, v27);
  v16 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v27, (v16 + 2));
  v16[7] = a2;
  v16[8] = a3;
  v16[9] = a4;
  v16[10] = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  v19 = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  v20 = v19;

  v24 = a7;
  specialized SpamAlertBuilder.reportAndBlockAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, _s15ConversationKit16SpamAlertBuilderC19buildReportAndBlock3for4with24presentingViewController10didDismissSo07UIAlertN0CAA0C9Modelable_p_AA0gC7ManagerCSo06UIViewN0CSgyycSgtFySbcfU_TA_0, v15, _s15ConversationKit16SpamAlertBuilderC19buildReportAndBlock3for4with24presentingViewController10didDismissSo07UIAlertN0CAA0C9Modelable_p_AA0gC7ManagerCSo06UIViewN0CSgyycSgtFySbcfU0_TA_0, v16, partial apply for closure #3 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v17);
  v22 = v21;

  [v20 fetchSharing];
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v22;
}

uint64_t specialized SpamAlertBuilder.buildBlockAllAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[3] = a7;
  v23[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  outlined init with copy of IDSLookupManager(v23, v22);
  v15 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v22, (v15 + 2));
  v15[7] = a3;
  v15[8] = a4;
  v15[9] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  v18 = a3;
  specialized SpamAlertBuilder.blockAllParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, partial apply for closure #1 in SpamAlertBuilder.buildBlockAllAlert(for:with:presentingViewController:didDismiss:), v15, partial apply for closure #2 in SpamAlertBuilder.buildBlockAllAlert(for:with:presentingViewController:didDismiss:), v16);
  v20 = v19;

  [v18 fetchSharing];
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v20;
}

void specialized SpamAlertBuilder.blockAllParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v7 = objc_opt_self();
  v8 = [v7 conversationKit];
  v34._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000022;
  v9._object = 0x80000001BC4F9C60;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v34);

  v13 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v12._countAndFlagsBits, v12._object, 0, 0, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v14 = [v7 conversationKit];
  v35._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000023;
  v15._object = 0x80000001BC4F9C90;
  v16.value._countAndFlagsBits = 0x61737265766E6F43;
  v16.value._object = 0xEF74694B6E6F6974;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v35);

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2);
  v19 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v20 = [v7 conversationKit];
  v36._object = 0xE000000000000000;
  v21._object = 0x80000001BC4F9CC0;
  v21._countAndFlagsBits = 0xD00000000000001BLL;
  v22.value._countAndFlagsBits = 0x61737265766E6F43;
  v22.value._object = 0xEF74694B6E6F6974;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v36);

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  v25 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  *(inited + 32) = v19;
  *(inited + 40) = v25;
  v27 = v19;
  v28 = v25;
  for (i = 0; ; ++i)
  {
    if (i == 2)
    {

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      return;
    }

    if ((inited & 0xC000000000000001) == 0)
    {
      break;
    }

    v30 = MEMORY[0x1BFB22010](i, inited);
LABEL_6:
    v31 = v30;
    [v13 addAction_];
  }

  if (i < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(inited + 8 * i + 32);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t specialized SpamAlertBuilder.buildBlockUnknownAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[3] = a7;
  v23[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  outlined init with copy of IDSLookupManager(v23, v22);
  v15 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v22, (v15 + 2));
  v15[7] = a3;
  v15[8] = a4;
  v15[9] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  v18 = a3;
  specialized SpamAlertBuilder.blockUnknownParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, partial apply for closure #1 in SpamAlertBuilder.buildBlockUnknownAlert(for:with:presentingViewController:didDismiss:), v15, partial apply for closure #3 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v16);
  v20 = v19;

  [v18 fetchSharing];
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v20;
}

void specialized SpamAlertBuilder.blockUnknownParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v7 = objc_opt_self();
  v8 = [v7 conversationKit];
  v34._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000022;
  v9._object = 0x80000001BC4F9C60;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v34);

  v13 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v12._countAndFlagsBits, v12._object, 0, 0, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v14 = [v7 conversationKit];
  v35._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000027;
  v15._object = 0x80000001BC4F9CE0;
  v16.value._countAndFlagsBits = 0x61737265766E6F43;
  v16.value._object = 0xEF74694B6E6F6974;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v35);

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2);
  v19 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v20 = [v7 conversationKit];
  v36._object = 0xE000000000000000;
  v21._object = 0x80000001BC4F9CC0;
  v21._countAndFlagsBits = 0xD00000000000001BLL;
  v22.value._countAndFlagsBits = 0x61737265766E6F43;
  v22.value._object = 0xEF74694B6E6F6974;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v36);

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  v25 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  *(inited + 32) = v19;
  *(inited + 40) = v25;
  v27 = v19;
  v28 = v25;
  for (i = 0; ; ++i)
  {
    if (i == 2)
    {

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      return;
    }

    if ((inited & 0xC000000000000001) == 0)
    {
      break;
    }

    v30 = MEMORY[0x1BFB22010](i, inited);
LABEL_6:
    v31 = v30;
    [v13 addAction_];
  }

  if (i < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(inited + 8 * i + 32);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t specialized SpamAlertBuilder.buildBlockAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v16);
  if ((*(a8 + 8))(a7, a8))
  {
    v19 = specialized SpamAlertBuilder.buildBlockAllAlert(for:with:presentingViewController:didDismiss:)(v18, a2, a3, a4, a5, a6, a7, a8);
  }

  else if ((*(a8 + 16))(a7, a8))
  {
    v19 = specialized SpamAlertBuilder.buildBlockUnknownAlert(for:with:presentingViewController:didDismiss:)(v18, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v19 = specialized SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:)(v18, a2, a3, a4, a5, a6, a7, a8);
  }

  v20 = v19;
  (*(v15 + 8))(v18, a7);
  return v20;
}

id specialized SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[3] = a6;
  v21[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
  outlined init with copy of IDSLookupManager(v21, v20);
  v15 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v20, (v15 + 2));
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3);

  v18 = specialized SpamAlertBuilder.reportGroupInitiatorAlert(of:reportHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, partial apply for closure #1 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v15, partial apply for closure #3 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v16, partial apply for closure #3 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v17, a5, a6, a7);

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

id specialized SpamAlertBuilder.reportGroupInitiatorAlert(of:reportHandler:cancelHandler:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a4;
  v50 = a5;
  v52 = a2;
  v53 = a3;
  v48 = *(a9 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v13 = *(v12 + 16);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a9;
  v13(v10);
  v14 = objc_opt_self();
  v15 = [v14 conversationKit];
  v54._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0x61737265766E6F43;
  v16.value._object = 0xEF74694B6E6F6974;
  v17._countAndFlagsBits = 0xD00000000000002DLL;
  v17._object = 0x80000001BC4FF820;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v54);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4BA940;
  v20 = (*(a10 + 56))(a9, a10);
  v22 = v21;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  *(v19 + 32) = v23;
  *(v19 + 40) = v24;
  v25 = String.init(format:_:)();
  v27 = v26;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v28 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v25, v27, 0, 0, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v29 = [v14 conversationKit];
  v55._object = 0xE000000000000000;
  v30._object = 0x80000001BC4F9CC0;
  v30._countAndFlagsBits = 0xD00000000000001BLL;
  v31.value._countAndFlagsBits = 0x61737265766E6F43;
  v31.value._object = 0xEF74694B6E6F6974;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v55);

  v33 = swift_allocObject();
  v34 = v49;
  v35 = v50;
  *(v33 + 16) = v49;
  *(v33 + 24) = v35;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v34);
  v36 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v37 = [v14 conversationKit];
  v56._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0xD000000000000034;
  v38._object = 0x80000001BC4FF850;
  v39.value._countAndFlagsBits = 0x61737265766E6F43;
  v39.value._object = 0xEF74694B6E6F6974;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v56);

  v41 = swift_allocObject();
  v42 = v52;
  v43 = v53;
  *(v41 + 16) = v52;
  *(v41 + 24) = v43;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v42);
  v44 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v28 addAction_];
  [v28 addAction_];

  (*(v48 + 8))(v47, v51);
  return v28;
}

uint64_t partial apply for closure #1 in SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t CNAutocompleteSearchController.messagesGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CNAutocompleteSearchController.messagesGroupUUID.getter(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of UUID?(v4);
LABEL_6:
    v14 = type metadata accessor for MessagesGroup();
    v16 = a1;
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v14);
  }

  v9 = *(v6 + 32);
  v9(v8, v4, v5);
  v10 = CNAutocompleteSearchController.messagesGroupName.getter();
  if (!v11)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_6;
  }

  v12 = v10;
  v13 = v11;
  v9(a1, v8, v5);
  v14 = type metadata accessor for MessagesGroup();
  v15 = (a1 + *(v14 + 20));
  *v15 = v12;
  v15[1] = v13;
  v16 = a1;
  v17 = 0;
  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v14);
}

id CNAutocompleteSearchController.messagesChatGUID.getter()
{
  v0 = OUTLINED_FUNCTION_1_81();
  type metadata accessor for CNComposeRecipient();
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = specialized Array.count.getter(v1);

  v3 = 0;
  if (v2 == 1)
  {
    v4 = OUTLINED_FUNCTION_1_81();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v5))
    {
      OUTLINED_FUNCTION_0_96();
      if (v4)
      {
        v6 = MEMORY[0x1BFB22010](0, v5);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      v7 = v6;

      v3 = CNComposeRecipient.messagesChatGUID.getter();
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

void CNAutocompleteSearchController.messagesGroupUUID.getter(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_1_81();
  type metadata accessor for CNComposeRecipient();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter(v3);

  if (v4 == 1)
  {
    v5 = OUTLINED_FUNCTION_1_81();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v6))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB22010](0, v6);
      }

      else
      {
        v7 = *(v6 + 32);
      }

      v9 = v7;

      CNComposeRecipient.messagesGroupUUID.getter(a1);

      return;
    }
  }

  v8 = type metadata accessor for UUID();

  __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
}

uint64_t CNAutocompleteSearchController.messagesGroupName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  CNAutocompleteSearchController.messagesGroupUUID.getter(&v11 - v2);
  v4 = type metadata accessor for UUID();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  outlined destroy of UUID?(v3);
  result = 0;
  if (EnumTagSinglePayload != 1)
  {
    v7 = [v0 recipients];
    type metadata accessor for CNComposeRecipient();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v8))
    {
      OUTLINED_FUNCTION_0_96();
      if (v7)
      {
        v9 = MEMORY[0x1BFB22010](0, v8);
      }

      else
      {
        v9 = *(v8 + 32);
      }

      v10 = v9;

      return outlined bridged method (ob) of @objc CNComposeRecipient.displayString.getter(v10);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for CNComposeRecipient()
{
  result = lazy cache variable for type metadata for CNComposeRecipient;
  if (!lazy cache variable for type metadata for CNComposeRecipient)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNComposeRecipient);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc CNComposeRecipient.displayString.getter(void *a1)
{
  v2 = [a1 displayString];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::String __swiftcall AttributedString.string()()
{
  v1 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  type metadata accessor for NSAttributedString();
  (*(v3 + 16))(v7, v0, v1);
  v8 = NSAttributedString.init(_:)();
  v9 = [v8 string];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

void AttributedString.init(cnkLocalized:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v16 = v1;
  type metadata accessor for AttributedString.FormattingOptions();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_42();
  v6 = type metadata accessor for String.LocalizationValue();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  (*(v8 + 16))(v11 - v10, v2, v6);
  [objc_opt_self() conversationKit];
  v12 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v12);
  OUTLINED_FUNCTION_4_62();
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v15, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  (*(v8 + 8))(v16, v6);
  OUTLINED_FUNCTION_30_0();
}

void AttributedString.init(conversationControlsLocalized:comment:)()
{
  OUTLINED_FUNCTION_29();
  v23 = v0;
  v25 = v1;
  v26 = v2;
  v4 = v3;
  v22 = v3;
  v24 = v5;
  type metadata accessor for AttributedString.FormattingOptions();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for String.LocalizationValue();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  (*(v13 + 16))(v16 - v15, v4, v11);
  v21[2] = "ConversationKit-SystemAperture";
  v21[1] = [objc_opt_self() conversationKit];
  v17 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
  v27 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_62();
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v20, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  (*(v13 + 8))(v22, v11);
  OUTLINED_FUNCTION_30_0();
}

void AttributedString.init<A>(conversationControlsLocalized:including:)()
{
  OUTLINED_FUNCTION_29();
  v17[1] = v0;
  v17[2] = v1;
  v3 = v2;
  v4 = type metadata accessor for AttributedString.FormattingOptions();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for String.LocalizationValue();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  (*(v12 + 16))(v15 - v14, v3, v10);
  [objc_opt_self() conversationKit];
  v16 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
  default argument 1 of AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
  AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
  (*(v12 + 8))(v3, v10);
  OUTLINED_FUNCTION_30_0();
}

uint64_t default argument 1 of AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)()
{
  type metadata accessor for AttributedString.FormattingOptions();
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, MEMORY[0x1E69686B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A], &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void AttributedString.replaceLinks(with:)()
{
  OUTLINED_FUNCTION_29();
  v50 = v2;
  v3 = &_sSny10Foundation16AttributedStringV5IndexVGMR;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_SnyAA16AttributedStringV5IndexVGtSgMd);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V04LinkH0O_GMd);
  OUTLINED_FUNCTION_1();
  v45 = v16;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12_42();
  type metadata accessor for AttributedString.Runs();
  OUTLINED_FUNCTION_1();
  v42 = v19;
  v43 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V04LinkG0OGMd);
  OUTLINED_FUNCTION_1();
  v44 = v23;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  v46 = &v42 - v25;
  v51 = v0;
  AttributedString.runs.getter();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
  AttributedString.Runs.subscript.getter();
  v26 = &_s10Foundation3URLVSgMd;

  v27 = v22;
  v28 = &_s10Foundation3URLVSgMR;
  (*(v42 + 8))(v27, v43);
  v29 = &_sSny10Foundation16AttributedStringV5IndexVGMd;
  AttributedString.Runs.AttributesSlice1.makeIterator()();
  v48 = v14;
  while (1)
  {
    AttributedString.Runs.AttributesSlice1.Iterator.next()();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_SnyAA16AttributedStringV5IndexVGtMd);
    if (__swift_getEnumTagSinglePayload(v14, 1, v30) == 1)
    {
      break;
    }

    v31 = *(v30 + 48);
    _s10Foundation3URLVSgWObTm_0(v14, v10, v26);
    _s10Foundation3URLVSgWObTm_0(&v14[v31], v6, v29);
    v32 = type metadata accessor for URL();
    if (__swift_getEnumTagSinglePayload(v10, 1, v32) != 1)
    {
      OUTLINED_FUNCTION_5_59();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, v29);
      v33 = v10;
      v34 = v6;
      v35 = v1;
      v36 = v15;
      v37 = v28;
      v38 = v26;
      v39 = v3;
      v40 = v29;
      v41 = AttributedString.subscript.modify();
      AttributedSubstring.setAttributes(_:)();
      v41(&v53, 0);
      v29 = v40;
      v3 = v39;
      v26 = v38;
      v28 = v37;
      v15 = v36;
      v1 = v35;
      v6 = v34;
      v10 = v33;
      v14 = v48;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, v29);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, v26);
  }

  (*(v45 + 8))(v1, v15);
  (*(v44 + 8))(v46, v47);
  OUTLINED_FUNCTION_30_0();
}

void key path getter for AttributeDynamicLookup.subscript<A>(dynamicMember:) : AttributeDynamicLookupAttributeScopes.FoundationAttributes.LinkAttribute()
{
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute);
  }

  return result;
}

uint64_t _s10Foundation3URLVSgWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void *one-time initialization function for containers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit18ContainerAttributeO5ValueO_10Foundation0gF0VtGMd);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18ContainerAttributeO5ValueO_10Foundation0dC0VtMd) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA940;
  if (one-time initialization token for subjectContainer != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for AttributeContainer();
  v4 = __swift_project_value_buffer(v3, static AttributedStrings.Notices.subjectContainer);
  (*(*(v3 - 8) + 16))(v2 + v1, v4, v3);
  lazy protocol witness table accessor for type ContainerAttribute.Value and conformance ContainerAttribute.Value();
  result = Dictionary.init(dictionaryLiteral:)();
  static AttributedString.containers = result;
  return result;
}

void AttributedString.applyContainer()()
{
  OUTLINED_FUNCTION_29();
  v67 = v1;
  v83 = type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v91 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v82 = v5 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v66 - v7;
  v86 = type metadata accessor for AttributeContainer();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v78 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v66 - v13;
  v14 = type metadata accessor for AttributedString.Runs.Index();
  OUTLINED_FUNCTION_1();
  v95 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  v90 = type metadata accessor for AttributedString.Runs.Run();
  OUTLINED_FUNCTION_1();
  v88 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  v89 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v94 = &v66 - v24;
  v25 = type metadata accessor for AttributedString.Runs();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v66 - v34;
  v85 = v0;
  AttributedString.runs.getter();
  (*(v27 + 16))(v35, v31, v25);
  v36 = *(v32 + 44);
  v37 = lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
  dispatch thunk of Collection.startIndex.getter();
  v38 = (*(v27 + 8))(v31, v25);
  v39 = v90;
  ++v95;
  v92 = (v88 + 32);
  v93 = (v88 + 16);
  v74 = v9 + 16;
  v73 = v9 + 32;
  v72 = *MEMORY[0x1E69686E0];
  v71 = (v91 + 13);
  v70 = v91 + 1;
  v79 = v9;
  v69 = v9 + 8;
  v40 = v89;
  v91 = (v88 + 8);
  v38.n128_u64[0] = 136315138;
  v84 = v38;
  v87 = v19;
  v88 = v14;
  v76 = v25;
  v75 = v36;
  v68 = v37;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0]);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v95)(v19, v14);
    if (v41)
    {
      break;
    }

    v42 = dispatch thunk of Collection.subscript.read();
    v43 = v94;
    (*v93)(v94);
    v42(v96, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v92)(v40, v43, v39);
    lazy protocol witness table accessor for type ContainerAttribute and conformance ContainerAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if ((v96[0] & 1) == 0)
    {
      if (one-time initialization token for containers != -1)
      {
        swift_once();
      }

      v44 = static AttributedString.containers;
      if (*(static AttributedString.containers + 2) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(), (v46 & 1) != 0))
      {
        v47 = v79;
        (*(v79 + 16))(v78, v44[7] + *(v79 + 72) * v45, v86);
        v48 = v77;
        (*(v47 + 32))();
        v49 = v80;
        AttributedString.Runs.Run.range.getter();
        v51 = v82;
        v50 = v83;
        (*v71)(v82, v72, v83);
        OUTLINED_FUNCTION_5_59();
        lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd);
        v52 = AttributedString.subscript.modify();
        AttributedSubstring.mergeAttributes(_:mergePolicy:)();
        v53 = v51;
        v54 = v50;
        v40 = v89;
        v39 = v90;
        (*v70)(v53, v54);
        v52(v96, 0);
        v19 = v87;
        v14 = v88;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_sSny10Foundation16AttributedStringV5IndexVGMd);
        (*(v47 + 8))(v48, v86);
      }

      else
      {
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        __swift_project_value_buffer(v55, static Logger.conversationKit);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v96[0] = v59;
          *v58 = v84.n128_u32[0];
          v60 = String.init<A>(reflecting:)();
          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v96);
          v40 = v89;

          *(v58 + 4) = v62;
          v39 = v90;
          _os_log_impl(&dword_1BBC58000, v56, v57, "Invalid container attribute value %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v59);
          v63 = v59;
          v19 = v87;
          MEMORY[0x1BFB23DF0](v63, -1, -1);
          v64 = v58;
          v14 = v88;
          MEMORY[0x1BFB23DF0](v64, -1, -1);
        }
      }
    }

    (*v91)(v40, v39);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_7_0();
  (*(v65 + 16))(v67, v85);
  OUTLINED_FUNCTION_30_0();
}

uint64_t lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ContainerAttribute and conformance ContainerAttribute()
{
  result = lazy protocol witness table cache variable for type ContainerAttribute and conformance ContainerAttribute;
  if (!lazy protocol witness table cache variable for type ContainerAttribute and conformance ContainerAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute and conformance ContainerAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainerAttribute and conformance ContainerAttribute;
  if (!lazy protocol witness table cache variable for type ContainerAttribute and conformance ContainerAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute and conformance ContainerAttribute);
  }

  return result;
}

BOOL ContainerAttribute.Value.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContainerAttribute.Value.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ContainerAttribute.Value@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContainerAttribute.Value.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t static ContainerAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *static ContainerAttribute.name;

  return v0;
}

uint64_t static ContainerAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static ContainerAttribute.name = a1;
  *&static ContainerAttribute.name[8] = a2;
}

uint64_t key path getter for static ContainerAttribute.name : ContainerAttribute.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&static ContainerAttribute.name[8];
  *a1 = *static ContainerAttribute.name;
  a1[1] = v2;
}

uint64_t key path setter for static ContainerAttribute.name : ContainerAttribute.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *static ContainerAttribute.name = v2;
  *&static ContainerAttribute.name[8] = v1;
}

uint64_t protocol witness for static AttributedStringKey.name.getter in conformance ContainerAttribute()
{
  swift_beginAccess();
  v0 = *static ContainerAttribute.name;

  return v0;
}

uint64_t protocol witness for static DecodingConfigurationProviding.decodingConfiguration.getter in conformance AttributeScopes.ConversationKitAttributes(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes();

  return MEMORY[0x1EEDC2A28](a1, v2);
}

uint64_t protocol witness for static EncodingConfigurationProviding.encodingConfiguration.getter in conformance AttributeScopes.ConversationKitAttributes(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes();

  return MEMORY[0x1EEDC2A28](a1, v2);
}

unint64_t lazy protocol witness table accessor for type ContainerAttribute.Value and conformance ContainerAttribute.Value()
{
  result = lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value;
  if (!lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value;
  if (!lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value;
  if (!lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value;
  if (!lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value;
  if (!lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes;
  if (!lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes;
  if (!lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes;
  if (!lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContainerAttribute.Value(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id PassthroughView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PassthroughView.init()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  [v3 setBackgroundColor_];

  return v3;
}

id PassthroughView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void __swiftcall PassthroughView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v7 = [(UIView_optional *)&v11 hitTest:isa withEvent:x, y];
  if (v7)
  {
    type metadata accessor for UIView();
    v8 = v7;
    v9 = v3;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
    }
  }
}

id PassthroughView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PassthroughView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CallDetailsCoordinator.isPresentingDetails.getter()
{
  v1 = *(v0 + OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController);
  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = [result superview];

    if (v4)
    {

      result = [v1 presentingViewController];
      if (result)
      {

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CallDetailsCoordinator.isCaptioningEnabled.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if ([Strong respondsToSelector_])
  {
    v1 = [Strong isCaptioningEnabled];
  }

  else
  {
    v1 = 0;
  }

  swift_unknownObjectRelease();
  return v1;
}

uint64_t CallDetailsCoordinator.shouldHideViewsFromScreenSharing.getter()
{
  v1 = OBJC_IVAR___CNKCallDetailsCoordinatorInternal_shouldHideViewsFromScreenSharing;
  swift_beginAccess();
  return *(v0 + v1);
}

void CallDetailsCoordinator.shouldHideViewsFromScreenSharing.setter(char a1)
{
  v3 = OBJC_IVAR___CNKCallDetailsCoordinatorInternal_shouldHideViewsFromScreenSharing;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  CallDetailsCoordinator.shouldHideViewsFromScreenSharing.didset(v4);
}

uint64_t key path getter for CallDetailsCoordinator.shouldHideViewsFromScreenSharing : CallDetailsCoordinator@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

void CallDetailsCoordinator.shouldHideViewsFromScreenSharing.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR___CNKCallDetailsCoordinatorInternal_shouldHideViewsFromScreenSharing;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    CallDetailsCoordinator.updateViewVisibilityForScreenSharing()();
  }
}

void (*CallDetailsCoordinator.shouldHideViewsFromScreenSharing.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR___CNKCallDetailsCoordinatorInternal_shouldHideViewsFromScreenSharing;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return CallDetailsCoordinator.shouldHideViewsFromScreenSharing.modify;
}

void CallDetailsCoordinator.shouldHideViewsFromScreenSharing.modify(uint64_t a1)
{
  v1 = *a1;
  CallDetailsCoordinator.shouldHideViewsFromScreenSharing.setter(*(*a1 + 32));

  free(v1);
}

char *CallDetailsCoordinator.__allocating_init(hostViewController:controlsManager:deferredPresentationManager:)()
{
  v1 = objc_allocWithZone(v0);
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_2_80();

  return specialized CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)(v2, v3, v4, v5);
}

char *CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_2_80();

  return specialized CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)(v0, v1, v2, v3);
}

id static CallDetailsCoordinator.makeDetailsNavigationController(using:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ConversationHUDDetailsNavigationController());
  v3 = a1;
  v4 = ConversationHUDDetailsNavigationController.init(controlsManager:shouldHaveBackgroundMaterial:)(v3, 1);
  [v4 setOverrideUserInterfaceStyle_];
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x508);
  v6 = v4;
  v5(v4, &protocol witness table for ConversationHUDDetailsNavigationController);
  return v6;
}

void CallDetailsCoordinator.start(withReason:from:)(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_1_82();
  if ((*(v9 + 120))())
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Logger.conversationControls);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_28;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Ignoring request to start CallDetailsCoordinator because call details are already being presented";
    goto LABEL_23;
  }

  v14 = [swift_unknownObjectUnownedLoadStrong() isReadyToShowCallDetails];
  swift_unknownObjectRelease();
  if (!v14)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, &static Logger.conversationControls);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_28;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Ignoring request to start CallDetailsCoordinator because the host view controller isn't ready";
LABEL_23:
    _os_log_impl(&dword_1BBC58000, oslog, v11, v13, v12, 2u);
    OUTLINED_FUNCTION_27();
    goto LABEL_28;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, &static Logger.conversationControls);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v42);
    OUTLINED_FUNCTION_4_63(&dword_1BBC58000, v20, v21, "Presenting call details with reason: “%s”");
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  (*((*v8 & *Strong) + 0x398))(0);

  v23 = *(v4 + OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController);
  (*((*v8 & *v23) + 0x90))(1);
  CallDetailsCoordinator.updateViewVisibilityForScreenSharing()();
  if (a3)
  {
    v24 = objc_opt_self();
    v25 = a3;
    v26 = [v24 currentDevice];
    v27 = [v26 userInterfaceIdiom];

    if (v27)
    {
      v28 = 1;
    }

    else
    {
      v28 = 5;
    }

    [v23 setModalPresentationStyle_];
    type metadata accessor for UIViewControllerTransition();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v29 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

    [v23 setPreferredTransition_];

    v30 = [v23 sheetPresentationController];
    if (v30)
    {
      v31 = v30;
      [v30 _setHorizontalAlignment_];
    }

    v32 = [v23 sheetPresentationController];
    [v32 setPrefersPageSizing_];

    v33 = [v23 sheetPresentationController];
    [v33 setWidthFollowsPreferredContentSizeWhenEdgeAttached_];

    v34 = [objc_opt_self() contentViewSizeForFaceTime];
    if (v34 > 2)
    {
      v35 = 320.0;
    }

    else
    {
      v35 = dbl_1BC4C9938[v34];
    }

    v37 = swift_unknownObjectUnownedLoadStrong();
    v38 = [v37 view];

    if (!v38)
    {
      __break(1u);
      return;
    }

    [v38 frame];
    v40 = v39;

    [v23 setPreferredContentSize_];
  }

  oslog = swift_unknownObjectUnownedLoadStrong();
  [oslog presentViewController:v23 animated:1 completion:0];
LABEL_28:
}

Swift::Void __swiftcall CallDetailsCoordinator.stop(withReason:forStartingPip:)(Swift::String withReason, Swift::Bool forStartingPip)
{
  v3 = v2;
  object = withReason._object;
  countAndFlagsBits = withReason._countAndFlagsBits;
  OUTLINED_FUNCTION_1_82();
  if ((*(v7 + 120))())
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, &static Logger.conversationControls);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v19);
      OUTLINED_FUNCTION_4_63(&dword_1BBC58000, v13, v14, "Dismissing call details with reason: “%s”");
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v15 = *(v3 + OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController);
    OUTLINED_FUNCTION_1_82();
    (*(v16 + 144))(0);
    if (forStartingPip)
    {
      [v15 setPreferredTransition_];
    }

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19[4] = partial apply for closure #1 in CallDetailsCoordinator.stop(withReason:forStartingPip:);
    v19[5] = v17;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed () -> ();
    v19[3] = &block_descriptor_32;
    v18 = _Block_copy(v19);

    [v15 dismissViewControllerAnimated:1 completion:v18];
    _Block_release(v18);
  }
}

void closure #1 in CallDetailsCoordinator.stop(withReason:forStartingPip:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CallDetailsCoordinator.updateViewVisibilityForScreenSharing()();
  }
}

void CallDetailsCoordinator.updateViewVisibilityForScreenSharing()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))() & 1) == 0 || (v3 = *(v0 + OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController), ((*((*v2 & *v3) + 0x88))() & 1) == 0))
  {
    v7 = [*(v1 + OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController) view];
    if (v7)
    {
      v5 = v7;
      v6 = 0;
      goto LABEL_7;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v4 = [v3 view];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = 16;
LABEL_7:
  v8 = [v5 layer];

  [v8 setDisableUpdateMask_];
}

id CallDetailsCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallDetailsCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallDetailsCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  swift_getObjectType();
  a4[OBJC_IVAR___CNKCallDetailsCoordinatorInternal_shouldHideViewsFromScreenSharing] = 0;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  *&a4[OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController] = static CallDetailsCoordinator.makeDetailsNavigationController(using:)(a2);
  v13.receiver = a4;
  v13.super_class = type metadata accessor for CallDetailsCoordinator();
  v7 = objc_msgSendSuper2(&v13, sel_init);
  v8 = *&v7[OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController];
  v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x78);
  v10 = v7;
  v11 = v8;
  v9(v7);

  swift_unknownObjectRelease();
  return v10;
}

unint64_t type metadata accessor for UIViewControllerTransition()
{
  result = lazy cache variable for type metadata for UIViewControllerTransition;
  if (!lazy cache variable for type metadata for UIViewControllerTransition)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIViewControllerTransition);
  }

  return result;
}

__n128 BezelMetrics.aspectRatio.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 BezelMetrics.aspectRatio.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

void BezelMetrics.init(aspectRatio:cornerRadius:)(_OWORD *a1@<X8>, double a2@<D0>, _OWORD *a3@<X0>)
{
  v3 = a3[1];
  *a1 = *a3;
  a1[1] = v3;
  OUTLINED_FUNCTION_2_81(a1, a2);
}

double BezelMetrics.scaledBounds(in:orientation:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_80(a1);
  if (!v5)
  {
    v6 = 0;
  }

  v7 = 24;
  if (!v5)
  {
    v7 = 8;
  }

  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  if (*(v1 + 32))
  {
    v8 = 1.0;
    v9 = 1.0;
  }

  CGSize.scaledToFit(_:)(v3, 0, v2, 0, v8, v9);
  return v4;
}

double BezelMetrics.scaledCornerRadius(in:orientation:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_80(a1);
  if (!v4)
  {
    v3 = 0;
  }

  if (*(v1 + 32))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = *(v1 + v3);
  }

  BezelMetrics.scaledBounds(in:orientation:)(a1);
  return *(v1 + 40) * (v6 / v5);
}

double one-time initialization function for forCurrentDisplay()
{
  closure #1 in variable initialization expression of static BezelMetrics.forCurrentDisplay(v1);
  static BezelMetrics.forCurrentDisplay = v1[0];
  *algn_1EBCDAF50 = v1[1];
  result = *&v2;
  xmmword_1EBCDAF60 = v2;
  return result;
}

void closure #1 in variable initialization expression of static BezelMetrics.forCurrentDisplay(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  v3 = [v2 fixedCoordinateSpace];

  [v3 bounds];
  v5 = v4;
  v7 = v6;
  swift_unknownObjectRelease();
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v7 >= v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v5 >= v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v5 < v7)
  {
    v7 = v5;
  }

  v11 = [objc_opt_self() currentTraitCollection];
  [v11 displayCornerRadius];
  v13 = v12;

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = v13;
}

__int128 *BezelMetrics.forCurrentDisplay.unsafeMutableAddressor()
{
  if (one-time initialization token for forCurrentDisplay != -1)
  {
    OUTLINED_FUNCTION_1_83();
  }

  return &static BezelMetrics.forCurrentDisplay;
}

double static BezelMetrics.forCurrentDisplay.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for forCurrentDisplay != -1)
  {
    OUTLINED_FUNCTION_1_83();
  }

  v2 = xmmword_1EBCDAF60;
  result = *(&xmmword_1EBCDAF60 + 1);
  v4 = *algn_1EBCDAF50;
  *a1 = static BezelMetrics.forCurrentDisplay;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = result;
  return result;
}

void BezelMetrics.init(size:cornerRadius:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = a4;
}

Swift::Int BezelEffect.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BezelEffect()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  BezelEffect.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int BezelShieldMaterial.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BezelShieldMaterial()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  BezelShieldMaterial.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance BezelShieldMaterialKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type BezelShieldMaterial and conformance BezelShieldMaterial();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.bezelShieldMaterial.getter()
{
  lazy protocol witness table accessor for type BezelShieldMaterialKey and conformance BezelShieldMaterialKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type BezelShieldMaterialKey and conformance BezelShieldMaterialKey()
{
  result = lazy protocol witness table cache variable for type BezelShieldMaterialKey and conformance BezelShieldMaterialKey;
  if (!lazy protocol witness table cache variable for type BezelShieldMaterialKey and conformance BezelShieldMaterialKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelShieldMaterialKey and conformance BezelShieldMaterialKey);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.bezelShieldMaterial : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.bezelShieldMaterial.getter();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.bezelShieldMaterial.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = lazy protocol witness table accessor for type BezelShieldMaterialKey and conformance BezelShieldMaterialKey();
  EnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return EnvironmentValues.bezelShieldMaterial.modify;
}

uint64_t View.bezelShieldMaterial(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t one-time initialization function for defaultValue()
{
  result = static Color.blue.getter();
  static BezelOutlineColorKey.defaultValue = result;
  return result;
}

{
  result = static Platform.current.getter();
  static LayoutIdiomEnvironmentKey.defaultValue = (result - 4) < 0xFDu;
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance BezelOutlineColorKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  *a1 = static BezelOutlineColorKey.defaultValue;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance BezelOutlineColorKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Color and conformance Color();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.bezelOutlineColor.getter()
{
  lazy protocol witness table accessor for type BezelOutlineColorKey and conformance BezelOutlineColorKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type BezelOutlineColorKey and conformance BezelOutlineColorKey()
{
  result = lazy protocol witness table cache variable for type BezelOutlineColorKey and conformance BezelOutlineColorKey;
  if (!lazy protocol witness table cache variable for type BezelOutlineColorKey and conformance BezelOutlineColorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelOutlineColorKey and conformance BezelOutlineColorKey);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.bezelOutlineColor : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.bezelOutlineColor.getter();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.bezelOutlineColor.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = lazy protocol witness table accessor for type BezelOutlineColorKey and conformance BezelOutlineColorKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.bezelOutlineColor.modify;
}

uint64_t EnvironmentValues.bezelOutlineColor.modify(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return EnvironmentValues.subscript.setter();
  }

  EnvironmentValues.subscript.setter();
}

uint64_t View.bezelOutlineColor(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

id HitTestPassthroughLayer.init()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HitTestPassthroughLayer();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [v1 setAllowsHitTesting_];
  return v1;
}

id HitTestPassthroughLayer.init(layer:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HitTestPassthroughLayer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithLayer_, v3);
  swift_unknownObjectRelease();
  [v4 setAllowsHitTesting_];
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id HitTestPassthroughView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for HitTestPassthroughView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setUserInteractionEnabled_];
  return v9;
}

uint64_t @objc static HitTestPassthroughView.layerClass.getter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();

  return swift_getObjCClassFromMetadata();
}

uint64_t BackdropView.backdropLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id BackdropView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v12.receiver = v4;
  v12.super_class = type metadata accessor for BackdropView();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = BackdropView.backdropLayer.getter();
  [v10 setScale_];

  return v9;
}

id BackdropView.init(coder:)(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BackdropView();
  v3 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = BackdropView.backdropLayer.getter();
    [v6 setScale_];

    a1 = v6;
  }

  return v4;
}

id BezelShieldMaterial.shieldEffect.getter(char a1)
{
  result = objc_opt_self();
  v3 = sel_effectWithBlurRadius_;
  if (a1)
  {
    result = [result effectWithBlurRadius_];
    if (!result)
    {
      __break(1u);
      goto LABEL_10;
    }

    v4 = result;
    v5 = [objc_opt_self() whiteColor];
    v6 = [v5 colorWithAlphaComponent_];

    v7 = [objc_opt_self() colorEffectSubtract_];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVisualEffect);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BC4BA930;
    *(v8 + 32) = v4;
    *(v8 + 40) = v7;
    v9 = v7;
    v10 = v4;
    result = @nonobjc UIVisualEffect.init(combiningEffects:)(v8);
    if (result)
    {
LABEL_8:
      v14 = result;

      return v14;
    }

    __break(1u);
  }

  result = [result v3];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  v15[0] = xmmword_1BC4C9950;
  v15[1] = xmmword_1BC4C9960;
  v15[2] = xmmword_1BC4C9970;
  v15[3] = xmmword_1BC4C9980;
  v15[4] = xmmword_1BC4C0360;
  result = [objc_opt_self() _colorEffectCAMatrix_];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVisualEffect);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BC4BA930;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  v9 = v12;
  v10 = v11;
  result = @nonobjc UIVisualEffect.init(combiningEffects:)(v13);
  if (result)
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id BezelShieldEffectView.effectView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView____lazy_storage___effectView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView____lazy_storage___effectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView____lazy_storage___effectView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id BezelShieldEffectView.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView____lazy_storage___effectView] = 0;
  v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_material] = 0;
  v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_isActive] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_customCornerRadius] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BezelShieldEffectView();
  v1 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = BezelShieldEffectView.effectView.getter();
  [v1 addSubview_];

  return v1;
}

void BezelShieldEffectView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView____lazy_storage___effectView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_material) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_isActive) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_customCornerRadius) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void BezelShieldEffectView.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for BezelShieldEffectView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = BezelShieldEffectView.effectView.getter();
  [v0 bounds];
  Width = CGRectGetWidth(v6);
  [v0 bounds];
  [v1 setBounds_];

  v3 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView____lazy_storage___effectView];
  [v0 bounds];
  MidX = CGRectGetMidX(v8);
  [v0 bounds];
  [v3 setCenter_];
}

void BezelShieldEffectView.updateVisualEffectView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_isActive);
  v4 = BezelShieldEffectView.effectView.getter();
  if (v1 == 1)
  {
    v2 = BezelShieldMaterial.shieldEffect.getter(*(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_material));
    [v4 setEffect_];

    v3 = v2;
  }

  else
  {
    [v4 setEffect_];
    v3 = v4;
  }
}

id closure #1 in BezelGlowEffectView.glowMaskBaseView.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = CAFilter.__allocating_init(type:)(v4, v5);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v8 = MEMORY[0x1BFB209B0](0xD000000000000013, 0x80000001BC4F6B30);
  [v6 setValue:isa forKey:v8];

  v9 = static Platform.current.getter();
  v10 = 100.0;
  if (v9 == 1)
  {
    v10 = 200.0;
  }

  *&v19.d = MEMORY[0x1E69E63B0];
  v19.a = v10;
  __swift_project_boxed_opaque_existential_1(&v19, MEMORY[0x1E69E63B0]);
  v11 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v19);
  v12 = MEMORY[0x1BFB209B0](0x6461527475706E69, 0xEB00000000737569);
  [v6 setValue:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = [v2 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC4BA940;
  *(v14 + 56) = v3;
  *(v14 + 32) = v6;
  v15 = v6;
  outlined bridged method (mbnn) of @objc CALayer.filters.setter(v14, v13);

  v16 = [v2 layer];
  [v16 setCornerCurve_];

  v17 = [objc_opt_self() blackColor];
  [v2 setBackgroundColor_];

  CGAffineTransformMakeScale(&v19, *(a1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_glowMaskBaseViewScale), *(a1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_glowMaskBaseViewScale + 8));
  [v2 setTransform_];

  return v2;
}

id closure #1 in BezelGlowEffectView.glowMaskCutoutView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = [v0 layer];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = CAFilter.__allocating_init(type:)(v2, v3);
  [v1 setCompositingFilter_];

  v5 = [v0 layer];
  [v5 setCornerCurve_];

  v6 = [objc_opt_self() blackColor];
  [v0 setBackgroundColor_];

  return v0;
}

id closure #1 in BezelGlowEffectView.glowMaskView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = BezelGlowEffectView.glowMaskBaseView.getter();
  [v0 addSubview_];

  v2 = BezelGlowEffectView.glowMaskCutoutView.getter();
  [v0 addSubview_];

  return v0;
}

id closure #1 in BezelGlowEffectView.backdropView.getter()
{
  type metadata accessor for BackdropView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = CAFilter.__allocating_init(type:)(v2, v3);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v6 = MEMORY[0x1BFB209B0](0xD000000000000013, 0x80000001BC4F6B30);
  [v4 setValue:isa forKey:v6];

  v7 = Bool._bridgeToObjectiveC()().super.super.isa;
  v8 = MEMORY[0x1BFB209B0](0x7261487475706E69, 0xEE00736567644564);
  [v4 setValue:v7 forKey:v8];

  v9 = Int._bridgeToObjectiveC()().super.super.isa;
  v10 = MEMORY[0x1BFB209B0](0x6461527475706E69, 0xEB00000000737569);
  [v4 setValue:v9 forKey:v10];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = CAFilter.__allocating_init(type:)(v11, v12);
  v25[0] = xmmword_1BC4C9990;
  v25[1] = xmmword_1BC4C99A0;
  v25[2] = xmmword_1BC4C99B0;
  v25[3] = xmmword_1BC4C99C0;
  v25[4] = xmmword_1BC4C0360;
  v14 = [objc_opt_self() valueWithCAColorMatrix_];
  v15 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC4F6B50);
  [v13 setValue:v14 forKey:v15];

  v16 = v0;
  v17 = [v16 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BC4BAA20;
  *(v18 + 32) = v4;
  *(v18 + 88) = v1;
  *(v18 + 56) = v1;
  *(v18 + 64) = v13;
  v19 = v4;
  v20 = v13;
  outlined bridged method (mbnn) of @objc CALayer.filters.setter(v18, v17);

  v21 = [v16 layer];
  [v21 setAllowsHitTesting_];

  v22 = BackdropView.backdropLayer.getter();
  outlined bridged method (mbnn) of @objc CABackdropLayer.groupName.setter(0xD000000000000036, 0x80000001BC4FFF50, v22);

  v23 = BezelGlowEffectView.glowMaskView.getter();
  [v16 setMaskView_];

  return v16;
}

void BezelShieldEffectView.customCornerRadius.didset(uint64_t (*a1)(void), void *a2, SEL *a3)
{
  v6 = a1();
  [v6 *a3];
}

void BezelGlowEffectView.customCornerRadius.didset()
{
  v1 = BezelGlowEffectView.glowMaskBaseView.getter();
  v2 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customCornerRadius;
  [v1 _setContinuousCornerRadius_];

  v3 = BezelGlowEffectView.glowMaskCutoutView.getter();
  [v3 _setContinuousCornerRadius_];
}

id BezelGlowEffectView.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_glowMaskBaseViewScale] = xmmword_1BC4C99D0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskBaseView] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskCutoutView] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskView] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___backdropView] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customAlpha] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customCornerRadius] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BezelGlowEffectView();
  v1 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = BezelGlowEffectView.backdropView.getter();
  [v1 addSubview_];

  return v1;
}

void BezelGlowEffectView.layoutSubviews()()
{
  v32.receiver = v0;
  v32.super_class = type metadata accessor for BezelGlowEffectView();
  objc_msgSendSuper2(&v32, sel_layoutSubviews);
  v1 = BezelGlowEffectView.backdropView.getter();
  [v0 bounds];
  v2 = CGRectGetWidth(v33) + 200.0;
  [v0 bounds];
  [v1 setBounds_];

  v3 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___backdropView;
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___backdropView];
  [v0 bounds];
  MidX = CGRectGetMidX(v35);
  [v0 bounds];
  [v4 setCenter_];

  v6 = BezelGlowEffectView.glowMaskView.getter();
  [*&v0[v3] bounds];
  [v6 setBounds_];

  v7 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskView;
  v8 = *&v0[v3];
  v9 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskView];
  [v8 bounds];
  v10 = CGRectGetMidX(v37);
  [*&v0[v3] bounds];
  [v9 setCenter_];

  [v0 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_glowMaskBaseViewScale];
  v20 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_glowMaskBaseViewScale + 8];
  static UnitPoint.center.getter();
  v23 = v14 + v18 * v22 - v18 * v20 * v22 - (v12 + v16 * v21 - v16 * v19 * v21);
  v24 = BezelGlowEffectView.glowMaskBaseView.getter();
  [v0 bounds];
  [v24 setBounds_];

  v25 = *&v0[v7];
  v26 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskBaseView];
  [v25 bounds];
  v27 = CGRectGetMidX(v39);
  [*&v0[v7] bounds];
  [v26 setCenter_];

  v28 = BezelGlowEffectView.glowMaskCutoutView.getter();
  [v0 bounds];
  [v28 setBounds_];

  v29 = *&v0[v7];
  v30 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskCutoutView];
  [v29 bounds];
  v31 = CGRectGetMidX(v41);
  [*&v0[v7] bounds];
  [v30 setCenter_];
}

void BezelGlowEffectView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___backdropView);
}

id BezelGlowEffectView.glowMaskCutoutView.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in BezelHighlightEffectView.highlightMaskView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = [v0 layer];
  [v1 setBorderWidth_];

  v2 = [v0 layer];
  GenericGray = CGColorCreateGenericGray(1.0, 1.0);
  [v2 setBorderColor_];

  [v0 setBackgroundColor_];
  return v0;
}

id BezelGlowEffectView.glowMaskBaseView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in BezelHighlightEffectView.backdropView.getter()
{
  type metadata accessor for BackdropView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = CAFilter.__allocating_init(type:)(v2, v3);
  v15[0] = xmmword_1BC4C99E0;
  v15[1] = xmmword_1BC4C99F0;
  v15[2] = xmmword_1BC4C9A00;
  v15[3] = xmmword_1BC4C9A10;
  v15[4] = xmmword_1BC4C0360;
  v5 = [objc_opt_self() valueWithCAColorMatrix_];
  v6 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC4F6B50);
  [v4 setValue:v5 forKey:v6];

  v7 = v0;
  v8 = [v7 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA940;
  *(v9 + 56) = v1;
  *(v9 + 32) = v4;
  v10 = v4;
  outlined bridged method (mbnn) of @objc CALayer.filters.setter(v9, v8);

  v11 = [v7 layer];
  [v11 setAllowsHitTesting_];

  v12 = BackdropView.backdropLayer.getter();
  outlined bridged method (mbnn) of @objc CABackdropLayer.groupName.setter(0xD000000000000036, 0x80000001BC4FFF50, v12);

  v13 = BezelHighlightEffectView.highlightMaskView.getter();
  [v7 setMaskView_];

  return v7;
}

id BezelHighlightEffectView.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView____lazy_storage___highlightMaskView] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView____lazy_storage___backdropView] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customAlpha] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customCornerRadius] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BezelHighlightEffectView();
  v1 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = BezelHighlightEffectView.backdropView.getter();
  [v1 addSubview_];

  return v1;
}

void BezelHighlightEffectView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for BezelHighlightEffectView();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = BezelHighlightEffectView.backdropView.getter();
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  [v0 bounds];
  [v1 setBounds_];

  v3 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView____lazy_storage___backdropView;
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView____lazy_storage___backdropView];
  [v0 bounds];
  MidX = CGRectGetMidX(v13);
  [v0 bounds];
  [v4 setCenter_];

  v6 = BezelHighlightEffectView.highlightMaskView.getter();
  [*&v0[v3] bounds];
  [v6 setBounds_];

  v7 = *&v0[v3];
  v8 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView____lazy_storage___highlightMaskView];
  [v7 bounds];
  v9 = CGRectGetMidX(v15);
  [*&v0[v3] bounds];
  [v8 setCenter_];
}

void BezelHighlightEffectView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView____lazy_storage___backdropView);
}

void BezelOutlineEffectView.outlineColor.setter(void *a1)
{
  v3 = [v1 layer];
  [v3 setBorderColor_];
}

id BezelOutlineEffectView.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35122BezelOutlineEffectView_customCornerRadius] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BezelOutlineEffectView();
  v1 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = [v1 layer];
  [v2 setBorderWidth_];

  v3 = [v1 layer];
  [v3 setBorderOffset_];

  v4 = [objc_opt_self() systemBlueColor];
  v5 = [v4 CGColor];

  BezelOutlineEffectView.outlineColor.setter(v5);
  [v1 setBackgroundColor_];

  return v1;
}

void BezelEffectView.effects.didset(uint64_t a1)
{
  _sSh2eeoiySbShyxG_ABtFZ15ConversationKit11BezelEffectO_Tt1g5(*(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects), a1);
  if ((v2 & 1) == 0)
  {

    BezelEffectView.updateEffectViews(animated:)(1);
  }
}

uint64_t BezelEffectView.effects.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects);
  *(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects) = a1;
  BezelEffectView.effects.didset(v2);
}

id BezelEffectView.metrics.setter(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics];
  v3 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v3;
  *(v2 + 2) = a1[2];
  return [v1 setNeedsLayout];
}

char *BezelEffectView.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects] = MEMORY[0x1E69E7CD0];
  v1 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics;
  if (one-time initialization token for forCurrentDisplay != -1)
  {
    swift_once();
  }

  v2 = &v0[v1];
  v3 = xmmword_1EBCDAF60;
  v4 = *(&xmmword_1EBCDAF60 + 1);
  v5 = *algn_1EBCDAF50;
  *v2 = static BezelMetrics.forCurrentDisplay;
  *(v2 + 1) = v5;
  v2[32] = v3;
  *(v2 + 5) = v4;
  v6 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_shieldEffectView;
  *&v0[v6] = [objc_allocWithZone(type metadata accessor for BezelShieldEffectView()) init];
  v7 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_glowEffectView;
  *&v0[v7] = [objc_allocWithZone(type metadata accessor for BezelGlowEffectView()) init];
  v8 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_highlightEffectView;
  *&v0[v8] = [objc_allocWithZone(type metadata accessor for BezelHighlightEffectView()) init];
  v9 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_outlineEffectView;
  *&v0[v9] = [objc_allocWithZone(type metadata accessor for BezelOutlineEffectView()) init];
  v14.receiver = v0;
  v14.super_class = type metadata accessor for BezelEffectView();
  v10 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = *&v10[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_shieldEffectView];
  v12 = v10;
  [v12 addSubview_];
  [v12 addSubview_];
  [v12 addSubview_];
  [v12 addSubview_];
  BezelEffectView.updateEffectViews(animated:)(0);

  return v12;
}

id BezelEffectView.layoutSubviews()()
{
  v1 = v0;
  v27[0].receiver = v0;
  v27[0].super_class = type metadata accessor for BezelEffectView();
  [(objc_super *)v27 layoutSubviews];
  v2 = [v0 window];
  if (v2 && (v3 = v2, v4 = [v2 windowScene], v3, v4))
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v6 = [v1 traitCollection];
    lazy protocol witness table accessor for type InterfaceOrientationTrait and conformance InterfaceOrientationTrait();
    lazy protocol witness table accessor for type UIInterfaceOrientation and conformance UIInterfaceOrientation();
    UITraitCollection.subscript.getter();

    v5 = v28;
  }

  v7 = &v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics];
  v8 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics + 16];
  v28 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics];
  v29 = v8;
  v30 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics + 32];
  [v1 bounds];
  v9 = BezelMetrics.scaledBounds(in:orientation:)(v5);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v7[1];
  v27[1] = *v7;
  v27[2] = v16;
  v27[3] = v7[2];
  [v1 bounds];
  v17 = BezelMetrics.scaledCornerRadius(in:orientation:)(v5);
  v18 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_shieldEffectView];
  *&v18[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_customCornerRadius] = v17;
  BezelShieldEffectView.customCornerRadius.didset(BezelShieldEffectView.effectView.getter, &OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_customCornerRadius, &selRef__setContinuousCornerRadius_);
  v19 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_glowEffectView];
  *&v19[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customCornerRadius] = v17;
  BezelGlowEffectView.customCornerRadius.didset();
  v20 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_highlightEffectView];
  *&v20[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customCornerRadius] = v17;
  BezelShieldEffectView.customCornerRadius.didset(BezelHighlightEffectView.highlightMaskView.getter, &OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customCornerRadius, &selRef__setContinuousCornerRadius_);
  v21 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_outlineEffectView];
  *&v21[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35122BezelOutlineEffectView_customCornerRadius] = v17;
  [v21 _setContinuousCornerRadius_];
  [v18 setBounds_];
  [v1 bounds];
  MidX = CGRectGetMidX(v31);
  [v1 bounds];
  [v18 setCenter_];
  [v19 setBounds_];
  [v1 bounds];
  v23 = CGRectGetMidX(v33);
  [v1 bounds];
  [v19 setCenter_];
  [v20 setBounds_];
  [v1 bounds];
  v24 = CGRectGetMidX(v35);
  [v1 bounds];
  [v20 setCenter_];
  [v21 setBounds_];
  [v1 bounds];
  v25 = CGRectGetMidX(v37);
  [v1 bounds];
  return [v21 setCenter_];
}

id BezelEffectView._updateEffectViewVisibility()()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects;
  [*(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_shieldEffectView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_glowEffectView) setHidden_];
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_highlightEffectView);
  v3 = specialized Set.contains(_:)(1u, *(v0 + v1));
  v4 = 1;
  if (v3)
  {
    v4 = specialized Set.contains(_:)(2u, *(v0 + v1));
  }

  [v2 setHidden_];
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_outlineEffectView);
  v6 = (specialized Set.contains(_:)(2u, *(v0 + v1)) & 1) == 0;

  return [v5 setHidden_];
}

void BezelEffectView._updateEffectViews()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects;
  v3 = specialized Set.contains(_:)(0, *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects));
  v4 = 0;
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_shieldEffectView);
  if (v3)
  {
    [v5 setHidden_];
    v4 = 1;
  }

  *(v5 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_isActive) = v4;
  BezelShieldEffectView.updateVisualEffectView()();
  v6 = specialized Set.contains(_:)(1u, *(v1 + v2));
  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_glowEffectView);
  if (v6)
  {
    [*(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_glowEffectView) setHidden_];
    *(v7 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customAlpha) = 0x3FF0000000000000;
    BezelShieldEffectView.customCornerRadius.didset(BezelGlowEffectView.glowMaskBaseView.getter, &OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customAlpha, &selRef_setAlpha_);
    v8 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_highlightEffectView);
    [v8 setHidden_];
    v9 = 1.0;
  }

  else
  {
    *(v7 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customAlpha) = 0;
    BezelShieldEffectView.customCornerRadius.didset(BezelGlowEffectView.glowMaskBaseView.getter, &OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customAlpha, &selRef_setAlpha_);
    v8 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_highlightEffectView);
    v9 = 0.0;
  }

  *&v8[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customAlpha] = v9;
  BezelShieldEffectView.customCornerRadius.didset(BezelHighlightEffectView.highlightMaskView.getter, &OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customAlpha, &selRef_setAlpha_);
  v10 = specialized Set.contains(_:)(2u, *(v1 + v2));
  v11 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_outlineEffectView);
  if (v10)
  {
    [v11 setHidden_];
    [v11 setAlpha_];
    *&v8[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customAlpha] = 0;
    BezelShieldEffectView.customCornerRadius.didset(BezelHighlightEffectView.highlightMaskView.getter, &OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customAlpha, &selRef_setAlpha_);
  }

  else
  {

    [v11 setAlpha_];
  }
}

uint64_t BezelEffectView.updateEffectViews(animated:)(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    *(swift_allocObject() + 16) = v1;
    v2 = v1;
    static Animation.default.getter();
    withBridgedAnimation<A>(_:_:completion:)();
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = swift_allocObject();
    *(v6 + 16) = partial apply for closure #3 in BezelEffectView.updateEffectViews(animated:);
    *(v6 + 24) = v5;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_33;
    v7 = _Block_copy(aBlock);
    v8 = v1;

    [v4 performWithoutAnimation_];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void BezelEffectView.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_outlineEffectView);
}

id HitTestPassthroughLayer.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t BezelEffectViewRepresentable.bezelShieldMaterial.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 8);
  v5 = *v0;
  v9 = *v0;
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of TapInteractionHandler?(&v9, &_s7SwiftUI11EnvironmentVy15ConversationKit19BezelShieldMaterialOGMd);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t BezelEffectViewRepresentable.bezelOutlineColor.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 24);
  v5 = *(v0 + 16);
  v10 = v5;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of TapInteractionHandler?(&v10, &_s7SwiftUI11EnvironmentVyAA5ColorVGMd);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

id BezelEffectViewRepresentable.makeUIView(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for BezelEffectView());

  return [v0 init];
}

id BezelEffectViewRepresentable.updateUIView(_:context:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  v9 = specialized Set.contains(_:)(0, v8);

  if (v9)
  {
    v10 = BezelEffectViewRepresentable.bezelShieldMaterial.getter();
    BezelEffectView.bezelShieldMaterial.setter(v10 & 1);
  }

  if (specialized Set.contains(_:)(2u, v8))
  {
    BezelEffectViewRepresentable.bezelOutlineColor.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI26UIViewRepresentableContextVy15ConversationKit015BezelEffectViewD033_4D20B3E5E64D3E09186739EFFCDDD351LLVGMd);
    UIViewRepresentableContext.environment.getter();
    Color.resolve(in:)();

    (*(v5 + 8))(v7, v4);
    v11 = Color.Resolved.cgColor.getter();
    BezelOutlineEffectView.outlineColor.setter(v11);
  }

  BezelEffectView.effects.setter(v8);
  v12 = &a1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics];
  v13 = *(v2 + 56);
  *v12 = *(v2 + 40);
  *(v12 + 1) = v13;
  *(v12 + 2) = *(v2 + 72);
  return [a1 setNeedsLayout];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance BezelEffectViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BezelEffectViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance BezelEffectViewRepresentable()
{
  lazy protocol witness table accessor for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void BezelEffectModifier.metrics.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  a1[1] = v3;
  OUTLINED_FUNCTION_2_81(a1, v2);
}

uint64_t BezelEffectModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = static Alignment.center.getter();
  v5 = v4;
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v20[120] = 0;
  v20[112] = 0;
  v20[104] = v11;
  __src[0] = KeyPath;
  LOBYTE(__src[1]) = 0;
  __src[2] = v16;
  LOBYTE(__src[3]) = 0;
  __src[4] = v6;
  __src[5] = v7;
  __src[6] = v8;
  __src[7] = v9;
  __src[8] = v10;
  LOBYTE(__src[9]) = v11;
  __src[10] = v12;
  __src[11] = v3;
  __src[12] = v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit011BezelEffectD0VGMd);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit011BezelEffectF0VGAA08_OverlayF0VyAF0ijE13Representable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGGMd);
  memcpy((a2 + *(v14 + 36)), __src, 0x68uLL);
  v22 = KeyPath;
  v23 = 0;
  v24 = v16;
  v25 = 0;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = v3;
  v34 = v5;
  outlined init with copy of BezelEffectModifier(v2, v20);
  outlined init with copy of _OverlayModifier<BezelEffectViewRepresentable>(__src, v20);
  return outlined destroy of TapInteractionHandler?(&v22, &_s7SwiftUI16_OverlayModifierVy15ConversationKit28BezelEffectViewRepresentable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGMd);
}

uint64_t outlined init with copy of _OverlayModifier<BezelEffectViewRepresentable>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVy15ConversationKit28BezelEffectViewRepresentable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double BezelEffectModifier.init(effects:metrics:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  result = *(a2 + 40);
  *a3 = a1;
  v5 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = v3 & 1;
  *(a3 + 48) = result;
  return result;
}

uint64_t View.bezelEffect(_:metrics:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = *(a2 + 32);
  v4 = a2[1];
  v8 = *a2;
  v9 = v4;
  v5 = *(a2 + 5);
  v7 = a1;
  v10 = v3 & 1;
  v11 = v5;
  return MEMORY[0x1BFB1FAD0](&v7, a3, &type metadata for BezelEffectModifier);
}

uint64_t View.bezelEffect(_:metrics:)(char a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 32);
  v9 = *(a2 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11BezelEffectOGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  *(inited + 32) = a1;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15ConversationKit11BezelEffectO_Tt0g5();
  v14 = v11;
  v12 = *a2;
  v16 = a2[1];
  v15 = v12;
  v17 = v8 & 1;
  v18 = v9;
  MEMORY[0x1BFB1FAD0](&v14, a3, &type metadata for BezelEffectModifier, a4);
}

unint64_t lazy protocol witness table accessor for type BezelEffect and conformance BezelEffect()
{
  result = lazy protocol witness table cache variable for type BezelEffect and conformance BezelEffect;
  if (!lazy protocol witness table cache variable for type BezelEffect and conformance BezelEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelEffect and conformance BezelEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BezelShieldMaterial and conformance BezelShieldMaterial()
{
  result = lazy protocol witness table cache variable for type BezelShieldMaterial and conformance BezelShieldMaterial;
  if (!lazy protocol witness table cache variable for type BezelShieldMaterial and conformance BezelShieldMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelShieldMaterial and conformance BezelShieldMaterial);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BezelEffect(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BezelShieldMaterial(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(a4, a2);
  OUTLINED_FUNCTION_0_97();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<BezelEffectModifier>, _OverlayModifier<BezelEffectViewRepresentable>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BezelEffectModifier>, _OverlayModifier<BezelEffectViewRepresentable>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BezelEffectModifier>, _OverlayModifier<BezelEffectViewRepresentable>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit011BezelEffectF0VGAA08_OverlayF0VyAF0ijE13Representable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<BezelEffectModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit011BezelEffectD0VGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<BezelEffectViewRepresentable> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVy15ConversationKit28BezelEffectViewRepresentable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BezelEffectModifier>, _OverlayModifier<BezelEffectViewRepresentable>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BezelEffectModifier and conformance BezelEffectModifier()
{
  result = lazy protocol witness table cache variable for type BezelEffectModifier and conformance BezelEffectModifier;
  if (!lazy protocol witness table cache variable for type BezelEffectModifier and conformance BezelEffectModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelEffectModifier and conformance BezelEffectModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BezelEffectViewRepresentable(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BezelEffectViewRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable()
{
  result = lazy protocol witness table cache variable for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable;
  if (!lazy protocol witness table cache variable for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable;
  if (!lazy protocol witness table cache variable for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color and conformance Color()
{
  result = lazy protocol witness table cache variable for type Color and conformance Color;
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color and conformance Color);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIInterfaceOrientation and conformance UIInterfaceOrientation()
{
  result = lazy protocol witness table cache variable for type UIInterfaceOrientation and conformance UIInterfaceOrientation;
  if (!lazy protocol witness table cache variable for type UIInterfaceOrientation and conformance UIInterfaceOrientation)
  {
    type metadata accessor for UIInterfaceOrientation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIInterfaceOrientation and conformance UIInterfaceOrientation);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc CABackdropLayer.groupName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();

  [a3 setGroupName_];
}

uint64_t key path getter for PushToTalkSessionDetailsView.avatarView : PushToTalkSessionDetailsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PushToTalkSessionDetailsView.avatarView : PushToTalkSessionDetailsView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);
  v4 = *a1;
  return v3(v2);
}

void PushToTalkSessionDetailsView.avatarView.willset(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  if (a1)
  {
    v5 = a1;
    [v1 addSubview_];
    PushToTalkSessionDetailsView.setupAvatarViewConstraints(avatarView:)(v5);
  }
}

void *PushToTalkSessionDetailsView.avatarView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PushToTalkSessionDetailsView.avatarView.setter(void *a1)
{
  PushToTalkSessionDetailsView.avatarView.willset(a1);
  v3 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*PushToTalkSessionDetailsView.avatarView.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarView;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return PushToTalkSessionDetailsView.avatarView.modify;
}

void PushToTalkSessionDetailsView.avatarView.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    v7 = v3;
    PushToTalkSessionDetailsView.avatarView.willset(v3);
    v8 = *(v5 + v6);
    *(v5 + v6) = v3;

    v9 = *v4;
  }

  else
  {
    PushToTalkSessionDetailsView.avatarView.willset(*(*a1 + 24));
    v9 = *(v5 + v6);
    *(v5 + v6) = v3;
  }

  free(v2);
}

uint64_t key path getter for PushToTalkSessionDetailsView.avatarViewHash : PushToTalkSessionDetailsView@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PushToTalkSessionDetailsView.avatarViewHash.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarViewHash;
  swift_beginAccess();
  return *v1;
}

uint64_t PushToTalkSessionDetailsView.avatarViewHash.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarViewHash;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t key path getter for PushToTalkSessionDetailsView.titleLabel : PushToTalkSessionDetailsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

id PushToTalkSessionDetailsView.titleLabel.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = closure #1 in PushToTalkSessionDetailsView.titleLabel.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in PushToTalkSessionDetailsView.titleLabel.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  if (one-time initialization token for channelNameLabel != -1)
  {
    swift_once();
  }

  [v0 setFont_];
  if (one-time initialization token for channelNameLabel != -1)
  {
    swift_once();
  }

  [v0 setTextColor_];
  [v0 setNumberOfLines_];
  v1 = v0;
  [v1 setClipsToBounds_];
  [v1 setLineBreakMode_];
  [v1 setAdjustsFontForContentSizeCategory_];
  LODWORD(v2) = 1132068864;
  [v1 setContentCompressionResistancePriority:0 forAxis:v2];
  [v1 setAdjustsFontSizeToFitWidth_];
  [v1 setMinimumScaleFactor_];
  [v1 setMaximumContentSizeCategory_];
  [v1 setMinimumContentSizeCategory_];

  [v1 setMarqueeEnabled_];
  [v1 setMarqueeRunning_];
  return v1;
}

void PushToTalkSessionDetailsView.titleLabel.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel);
  *(v1 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel) = a1;
}

void (*PushToTalkSessionDetailsView.titleLabel.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PushToTalkSessionDetailsView.titleLabel.getter();
  return PushToTalkSessionDetailsView.titleLabel.modify;
}

void PushToTalkSessionDetailsView.titleLabel.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel);
  *(v1 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel) = v2;
}

id PushToTalkSessionDetailsView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

void *PushToTalkSessionDetailsView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarView) = 0;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarViewHash;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButton;
  type metadata accessor for PushToTalkDisclosureButton();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLayoutGuide;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v4 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButtonLayoutGuide;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLeadingAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaCenterYAnchorConstraint) = 0;
  v13 = type metadata accessor for PushToTalkSessionDetailsView();
  v5 = OUTLINED_FUNCTION_18_1();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, v13);
  v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xC0);
  v10 = v8;
  v11 = v9();
  [v10 addSubview_];

  [v10 addSubview_];
  [v10 addLayoutGuide_];
  [v10 addLayoutGuide_];
  PushToTalkSessionDetailsView.setupConstraints()();

  return v10;
}

id PushToTalkSessionDetailsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PushToTalkSessionDetailsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarView) = 0;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarViewHash;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButton;
  type metadata accessor for PushToTalkDisclosureButton();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLayoutGuide;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v4 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButtonLayoutGuide;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLeadingAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaCenterYAnchorConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall PushToTalkSessionDetailsView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for PushToTalkSessionDetailsView();
  objc_msgSendSuper2(&v15, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    v3 = [(objc_class *)isa _backlightLuminance];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 _backlightLuminance];

  if (!isa || v3 != v5)
  {
    v6 = [v1 traitCollection];
    v7 = [v6 _backlightLuminance];

    v8 = MEMORY[0x1E69E7D40];
    v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
    v10 = v9();
    [v10 setMarqueeRunning_];

    v11 = v9();
    [v11 setMarqueeEnabled_];

    v12 = (*((*v8 & *v1) + 0x90))();
    if (v12)
    {
      v13 = v12;
      v14 = 0.2;
      if (v7 != 1)
      {
        v14 = 1.0;
      }

      [v12 setAlpha_];
    }
  }
}

void PushToTalkSessionDetailsView.setupAvatarViewConstraints(avatarView:)(id a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLeadingAnchorConstraint;
  v4 = *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLeadingAnchorConstraint];
  if (v4)
  {
    [v4 setActive_];
  }

  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [a1 bottomAnchor];
  v6 = [v1 bottomAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  LODWORD(v8) = 1132068864;
  [v7 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA920;
  v10 = [a1 topAnchor];
  v11 = [v1 topAnchor];
  v12 = OUTLINED_FUNCTION_79();
  v14 = [v12 v13];

  *(v9 + 32) = v14;
  v15 = [a1 leadingAnchor];
  v16 = [v1 leadingAnchor];
  v17 = OUTLINED_FUNCTION_79();
  v19 = [v17 v18];

  *(v9 + 40) = v19;
  v20 = [a1 widthAnchor];
  v21 = [v20 constraintEqualToConstant_];

  *(v9 + 48) = v21;
  v22 = [a1 heightAnchor];
  v23 = [v22 constraintEqualToConstant_];

  *(v9 + 56) = v23;
  *(v9 + 64) = v7;
  objc_opt_self();
  type metadata accessor for NSLayoutConstraint();
  v24 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = OUTLINED_FUNCTION_79();
  [v26 v27];

  v28 = PushToTalkSessionDetailsView.setupTextAreaLeadingAnchorConstraint(avatarView:)(a1);
  v29 = *&v1[v3];
  *&v1[v3] = v28;

  v30 = PushToTalkSessionDetailsView.setupTextAreaCenterYAnchorConstraint(avatarView:)(a1);
  v31 = *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaCenterYAnchorConstraint];
  *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaCenterYAnchorConstraint] = v30;
}

void PushToTalkSessionDetailsView.setupConstraints()()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  v3 = v2();
  v4 = *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButton];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BAC30;
  v6 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLayoutGuide;
  v7 = [*&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLayoutGuide] trailingAnchor];
  v8 = [v1 trailingAnchor];
  v9 = OUTLINED_FUNCTION_79();
  v11 = [v9 v10];

  *(v5 + 32) = v11;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BC370;
  v13 = v2();
  v14 = [v13 topAnchor];

  v15 = [*&v1[v6] &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v16 = [v14 constraintEqualToAnchor_];

  *(inited + 32) = v16;
  v17 = v2();
  v18 = [v17 leadingAnchor];

  v19 = [*&v1[v6] leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(inited + 40) = v20;
  v21 = v2();
  v22 = [v21 trailingAnchor];

  v23 = [*&v1[v6] trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(inited + 48) = v24;
  specialized Array.append<A>(contentsOf:)(inited);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1BC4BA920;
  v26 = [v4 topAnchor];
  v27 = v2();
  v28 = [v27 bottomAnchor];

  v29 = OUTLINED_FUNCTION_79();
  v31 = [v29 v30];

  *(v25 + 32) = v31;
  v32 = [v4 leadingAnchor];
  v33 = [*&v1[v6] leadingAnchor];
  v34 = OUTLINED_FUNCTION_2_82();
  v36 = [v34 v35];

  *(v25 + 40) = v36;
  v37 = [v4 trailingAnchor];
  v38 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButtonLayoutGuide;
  v39 = [*&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButtonLayoutGuide] leadingAnchor];
  v40 = OUTLINED_FUNCTION_2_82();
  v42 = [v40 v41];

  *(v25 + 48) = v42;
  v43 = [v4 bottomAnchor];
  v44 = [*&v1[v6] bottomAnchor];
  v45 = OUTLINED_FUNCTION_2_82();
  v47 = [v45 v46];

  *(v25 + 56) = v47;
  v48 = [*&v1[v38] trailingAnchor];
  v49 = [*&v1[v6] trailingAnchor];
  v50 = OUTLINED_FUNCTION_2_82();
  v52 = [v50 v51];

  *(v25 + 64) = v52;
  specialized Array.append<A>(contentsOf:)(v25);
  v53 = objc_opt_self();
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v53 activateConstraints_];

  v55 = PushToTalkSessionDetailsView.setupTextAreaLeadingAnchorConstraint(avatarView:)(0);
  v56 = *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLeadingAnchorConstraint];
  *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLeadingAnchorConstraint] = v55;

  v57 = PushToTalkSessionDetailsView.setupTextAreaCenterYAnchorConstraint(avatarView:)(0);
  v58 = *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaCenterYAnchorConstraint];
  *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaCenterYAnchorConstraint] = v57;
}

id PushToTalkSessionDetailsView.setupTextAreaLeadingAnchorConstraint(avatarView:)(void *a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLayoutGuide] leadingAnchor];
  if (!a1 || (v4 = [a1 trailingAnchor]) == 0)
  {
    v4 = [v1 leadingAnchor];
  }

  v5 = 12.0;
  if (!a1)
  {
    v5 = 0.0;
  }

  v6 = [v3 constraintEqualToAnchor:v4 constant:v5];

  [v6 setActive_];
  return v6;
}

id PushToTalkSessionDetailsView.setupTextAreaCenterYAnchorConstraint(avatarView:)(void *a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLayoutGuide] centerYAnchor];
  if (!a1 || (v4 = [a1 centerYAnchor]) == 0)
  {
    v4 = [v1 centerYAnchor];
  }

  v5 = [v3 constraintEqualToAnchor_];

  [v5 setActive_];
  return v5;
}

id PushToTalkSessionDetailsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushToTalkSessionDetailsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SensitiveContentRecentsTipViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  SensitiveContentRecentsTipViewModel.init()();
  return v0;
}

uint64_t key path getter for SensitiveContentRecentsTipViewModel.participants : SensitiveContentRecentsTipViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentRecentsTipViewModel.participants.getter();
  *a1 = result;
  return result;
}

uint64_t SensitiveContentRecentsTipViewModel.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_0_98();
  lazy protocol witness table accessor for type SensitiveContentRecentsTipViewModel and conformance SensitiveContentRecentsTipViewModel(v0, v1);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t SensitiveContentRecentsTipViewModel.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_98();
  lazy protocol witness table accessor for type SensitiveContentRecentsTipViewModel and conformance SensitiveContentRecentsTipViewModel(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*SensitiveContentRecentsTipViewModel.participants.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_getKeyPath();
  v3[4] = OBJC_IVAR____TtC15ConversationKit35SensitiveContentRecentsTipViewModel___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_98();
  v3[5] = lazy protocol witness table accessor for type SensitiveContentRecentsTipViewModel and conformance SensitiveContentRecentsTipViewModel(v4, v5);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v3 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_30_2();
  return SensitiveContentRecentsTipViewModel.participants.modify;
}

void SensitiveContentRecentsTipViewModel.participants.modify(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

void SensitiveContentRecentsTipViewModel.block(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Participant();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Participant.handles.getter();
  v11 = specialized Collection.first.getter(v10);
  v13 = v12;

  if (v13)
  {
    swift_beginAccess();
    v14 = specialized Dictionary.subscript.getter(v11, v13, *(v2 + 32));
    if (v14)
    {
      v15 = v14;
      swift_endAccess();

      [v15 block];
LABEL_9:

      return;
    }

    swift_endAccess();
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.conversationKit);
  (*(v6 + 16))(v9, a1, v4);
  v15 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25[0] = v19;
    *v18 = 136315138;
    Participant.handles.getter();
    v20 = Set.description.getter();
    v22 = v21;

    (*(v6 + 8))(v9, v4);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v25);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1BBC58000, v15, v17, "Not able to block participant: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1BFB23DF0](v19, -1, -1);
    MEMORY[0x1BFB23DF0](v18, -1, -1);
    goto LABEL_9;
  }

  (*(v6 + 8))(v9, v4);
}

uint64_t SensitiveContentRecentsTipViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit35SensitiveContentRecentsTipViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SensitiveContentRecentsTipViewModel.__deallocating_deinit()
{
  SensitiveContentRecentsTipViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t *RestrictedConversationChecker.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_56();
  }

  return &static RestrictedConversationChecker.shared;
}

id static RestrictedConversationChecker.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_56();
  }

  v1 = static RestrictedConversationChecker.shared;

  return v1;
}

id RestrictedConversationChecker.init(callCenter:)(void *a1)
{
  v3 = [a1 callFilterController];
  *&v1[OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_callFilterController] = v3;
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd);
  OUTLINED_FUNCTION_0_99();
  _s10Foundation4UUIDVACSHAAWlTm_2(v4, v5);
  *(OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_unrestrictedAddressesForConversation + v1) = Dictionary.init(dictionaryLiteral:)();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RestrictedConversationChecker();
  v6 = objc_msgSendSuper2(&v10, sel_init);
  v7 = [a1 conversationManager];
  v8 = [a1 queue];
  [v7 addDelegate:v6 queue:v8];

  return v6;
}

void RestrictedConversationChecker.shouldRestrict(conversation:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v82 = (&v79 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v79 - v16;
  v18 = [v2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_callFilterController);
  v20 = [v19 addressesToCheckForRestrictionsInConversation_];
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v21 + 16))
  {
    goto LABEL_5;
  }

  v83 = v3;
  v22 = OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_unrestrictedAddressesForConversation;
  swift_beginAccess();
  v81 = v0;

  v23 = OUTLINED_FUNCTION_14_29();
  v24 = specialized Dictionary.subscript.getter(v23);

  if (v24)
  {

    v26 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v25, v24);

    if (v26)
    {

      v3 = v83;
LABEL_5:

      if (one-time initialization token for screenTime != -1)
      {
        OUTLINED_FUNCTION_1_84();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, &static Log.screenTime);
      OUTLINED_FUNCTION_9_45();
      v28(v8, v17, v3);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_42();
        v32 = OUTLINED_FUNCTION_23();
        v85[0] = v32;
        *v31 = 136315138;
        OUTLINED_FUNCTION_0_99();
        _s10Foundation4UUIDVACSHAAWlTm_2(v33, v34);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        v83 = v17;
        v38 = *(v5 + 8);
        v38(v8, v3);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v85);

        *(v31 + 4) = v39;
        _os_log_impl(&dword_1BBC58000, v29, v30, "Conversation %s not restricted: addresses are known to be unrestricted.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();

        v38(v83, v3);
      }

      else
      {

        v55 = *(v5 + 8);
        v55(v8, v3);
        v56 = OUTLINED_FUNCTION_14_29();
        (v55)(v56);
      }

      goto LABEL_23;
    }
  }

  isa = Set._bridgeToObjectiveC()().super.isa;

  v41 = [v19 shouldRestrictAddresses:isa performSynchronously:0];

  if (v41)
  {

    v42 = v83;
    if (one-time initialization token for screenTime != -1)
    {
      OUTLINED_FUNCTION_1_84();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, &static Log.screenTime);
    OUTLINED_FUNCTION_9_45();
    v44(v13, v17, v42);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_42();
      v82 = OUTLINED_FUNCTION_23();
      v85[0] = v82;
      *v47 = 136315138;
      OUTLINED_FUNCTION_0_99();
      _s10Foundation4UUIDVACSHAAWlTm_2(v48, v49);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v53 = OUTLINED_FUNCTION_17_35();
      v22(v53, v83);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v85);

      *(v47 + 4) = v54;
      _os_log_impl(&dword_1BBC58000, v45, v46, "Conversation %s is restricted.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v73 = OUTLINED_FUNCTION_17_35();
      v22(v73, v42);
    }

    RestrictedConversationChecker.removeUnrestrictedAddresses(for:)();

    v74 = OUTLINED_FUNCTION_14_29();
    (v22)(v74);
  }

  else
  {
    v57 = v83;
    if (one-time initialization token for screenTime != -1)
    {
      OUTLINED_FUNCTION_1_84();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, &static Log.screenTime);
    OUTLINED_FUNCTION_9_45();
    v59 = v82;
    v60(v82, v17, v57);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = OUTLINED_FUNCTION_42();
      v79 = v63;
      v80 = OUTLINED_FUNCTION_23();
      v85[0] = v80;
      *v63 = 136315138;
      OUTLINED_FUNCTION_0_99();
      _s10Foundation4UUIDVACSHAAWlTm_2(v64, v65);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v69 = OUTLINED_FUNCTION_11_43();
      v70(v69, v83);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, v85);

      v72 = v79;
      *(v79 + 1) = v71;
      _os_log_impl(&dword_1BBC58000, v61, v62, "Conversation %s not restricted. Caching addresses.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v75 = OUTLINED_FUNCTION_11_43();
      v76(v75, v57);
    }

    v77 = v81;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v84 = *(v22 + v77);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *(v22 + v77) = v84;
    swift_endAccess();
    v78 = OUTLINED_FUNCTION_14_29();
    v59(v78);
  }

LABEL_23:
  OUTLINED_FUNCTION_30_0();
}

void RestrictedConversationChecker.removeUnrestrictedAddresses(for:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_unrestrictedAddressesForConversation;
  swift_beginAccess();
  v11 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v12)
  {
    v13 = v11;
    v32 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *&v10[v0];
    v15 = *(v33 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVShySSGGMd);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15);
    v16 = v33;
    v17 = *(v33 + 48) + *(v6 + 72) * v13;
    v31 = *(v6 + 8);
    v31(v17, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd);
    OUTLINED_FUNCTION_0_99();
    _s10Foundation4UUIDVACSHAAWlTm_2(v18, v19);
    _NativeDictionary._delete(at:)();
    *&v10[v1] = v16;
    swift_endAccess();
    if (one-time initialization token for screenTime != -1)
    {
      OUTLINED_FUNCTION_1_84();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, &static Log.screenTime);
    (*(v6 + 16))(v9, v32, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_42();
      v24 = OUTLINED_FUNCTION_23();
      v34 = v24;
      *v23 = 136315138;
      OUTLINED_FUNCTION_0_99();
      _s10Foundation4UUIDVACSHAAWlTm_2(v25, v26);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v31(v9, v4);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v34);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_1BBC58000, v21, v22, "Removed cached addresses for conversation %s.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v31(v9, v4);
    }
  }

  else
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_30_0();
}

id RestrictedConversationChecker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RestrictedConversationChecker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RestrictedConversationChecker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void RestrictedConversationChecker.conversationManager(_:migratingFrom:to:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v39 - v12;
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v39 - v15;
  v17 = [v6 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  RestrictedConversationChecker.removeUnrestrictedAddresses(for:)();
  v19 = v18;
  v41 = *(v9 + 8);
  v41(v16, v7);
  if (v19)
  {
    v20 = [*(v2 + OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_callFilterController) addressesToCheckForRestrictionsInConversation_];
    v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v20) = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v19, v21);

    if (v20)
    {
      v22 = [v4 UUID];
      v23 = v42;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (one-time initialization token for screenTime != -1)
      {
        OUTLINED_FUNCTION_1_84();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, &static Log.screenTime);
      (*(v9 + 16))(v1, v23, v7);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_42();
        v40 = OUTLINED_FUNCTION_23();
        v44 = v40;
        *v27 = 136315138;
        OUTLINED_FUNCTION_0_99();
        _s10Foundation4UUIDVACSHAAWlTm_2(v28, v29);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        v33 = v1;
        v34 = v41;
        v41(v33, v7);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v44);

        *(v27 + 4) = v35;
        _os_log_impl(&dword_1BBC58000, v25, v26, "Migrating cached addresses to conversation %s.", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      else
      {

        v36 = v1;
        v34 = v41;
        v41(v36, v7);
      }

      v37 = OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_unrestrictedAddressesForConversation;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v43 = *&v37[v2];
      v38 = v42;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
      *&v37[v2] = v43;
      swift_endAccess();
      v34(v38, v7);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void _sSh2eeoiySbShyxG_ABtFZ15ConversationKit17RecentsCallHandleV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  OUTLINED_FUNCTION_10_39();
  if (!v26)
  {
    return;
  }

  v4 = 0;
  v5 = v3 + 56;
  v6 = 1 << *(v3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v3 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = v2 + 56;
  v28 = v3;
  v29 = v2;
  v27 = v9;
  if (!v8)
  {
    goto LABEL_9;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v30 = (v8 - 1) & v8;
LABEL_14:
    v15 = (*(v3 + 48) + 24 * (v11 | (v4 << 6)));
    v16 = *v15;
    v18 = *(v15 + 1);
    v17 = *(v15 + 2);
    Hasher.init(_seed:)();
    MEMORY[0x1BFB22640](v16);
    if (v17)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v19 = Hasher._finalize()();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v10 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_34:

      return;
    }

    v22 = ~v20;
    v23 = *(v2 + 48);
    while (1)
    {
      v24 = (v23 + 24 * v21);
      if (*v24 != v16)
      {
        goto LABEL_29;
      }

      v25 = *(v24 + 2);
      if (v25)
      {
        break;
      }

      if (!v17)
      {
        goto LABEL_31;
      }

LABEL_29:
      v21 = (v21 + 1) & v22;
      if (((*(v10 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    if (!v17)
    {
      goto LABEL_29;
    }

    v26 = *(v24 + 1) == v18 && v25 == v17;
    if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_31:

    v3 = v28;
    v2 = v29;
    v9 = v27;
    v8 = v30;
  }

  while (v30);
LABEL_9:
  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return;
    }

    ++v12;
    if (*(v5 + 8 * v4))
    {
      OUTLINED_FUNCTION_7_1();
      v30 = v14 & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void _sSh2eeoiySbShyxG_ABtFZ10Foundation4UUIDV_Tt1g5()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v36 - v10;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v12;
  if (v4 == v2 || *(v4 + 16) != *(v2 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    v15 = 0;
    v16 = *(v4 + 56);
    v37 = v4 + 56;
    v17 = 1 << *(v4 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v43 = v7 + 32;
    v45 = v2 + 56;
    v46 = v7 + 16;
    v21 = (v7 + 8);
    v38 = v20;
    v39 = &v36 - v12;
    v40 = v7;
    v41 = v4;
    if (v19)
    {
      while (2)
      {
        v22 = __clz(__rbit64(v19));
        v42 = (v19 - 1) & v19;
LABEL_13:
        v26 = *(v4 + 48);
        v44 = *(v7 + 72);
        v27 = *(v7 + 16);
        v27(v14, v26 + v44 * (v22 | (v15 << 6)), v5, v13);
        (*(v7 + 32))(v47, v14, v5);
        OUTLINED_FUNCTION_0_99();
        _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, v28);
        v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v30 = v2;
        v31 = ~(-1 << *(v2 + 32));
        do
        {
          v32 = v29 & v31;
          if (((*(v45 + (((v29 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v31)) & 1) == 0)
          {
            (*v21)(v47, v5);
            goto LABEL_20;
          }

          (v27)(v0, *(v30 + 48) + v32 * v44, v5);
          OUTLINED_FUNCTION_0_99();
          _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, v33);
          v34 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35 = *v21;
          (*v21)(v0, v5);
          v29 = v32 + 1;
        }

        while ((v34 & 1) == 0);
        v35(v47, v5);
        v2 = v30;
        v7 = v40;
        v4 = v41;
        v20 = v38;
        v14 = v39;
        v19 = v42;
        if (v42)
        {
          continue;
        }

        break;
      }
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_20;
      }

      ++v23;
      if (*(v37 + 8 * v15))
      {
        OUTLINED_FUNCTION_7_1();
        v42 = v25 & v24;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5()
{
  OUTLINED_FUNCTION_16_36();
  if (v3)
  {
    if (!v2)
    {
      if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
      {
LABEL_30:
        OUTLINED_FUNCTION_18_13();
        return;
      }

      v9 = 1 << *(v1 + 32);
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & *(v1 + 56);
      type metadata accessor for AnyCancellable();
      v12 = 0;
      v13 = (v9 + 63) >> 6;
      v4 = &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
      if (v11)
      {
        while (2)
        {
          v24 = (v11 - 1) & v11;
LABEL_23:
          OUTLINED_FUNCTION_4_65();
          _s10Foundation4UUIDVACSHAAWlTm_2(v17, v18);

          v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v20 = ~(-1 << *(v0 + 32));
          do
          {
            v21 = v19 & v20;
            if (((*(v0 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
            {

              goto LABEL_30;
            }

            OUTLINED_FUNCTION_4_65();
            _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, v22);
            v23 = dispatch thunk of static Equatable.== infix(_:_:)();
            v19 = v21 + 1;
          }

          while ((v23 & 1) == 0);

          v13 = (v9 + 63) >> 6;
          v11 = v24;
          v4 = &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v14 = v12;
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v13)
        {
          goto LABEL_30;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v12))
        {
          OUTLINED_FUNCTION_7_1();
          v24 = v16 & v15;
          goto LABEL_23;
        }
      }

      __break(1u);
      goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
    }

    OUTLINED_FUNCTION_5_61();
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_5_61();
    OUTLINED_FUNCTION_18_13();

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
    MEMORY[0x1EEE6A200](v4);
    return;
  }

  OUTLINED_FUNCTION_18_13();

  specialized _NativeSet.isEqual(to:)(v6, v7);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void _sSh2eeoiySbShyxG_ABtFZ15ConversationKit11BezelEffectO_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_10_39();
    if (v4)
    {
      v5 = 0;
      OUTLINED_FUNCTION_15_27();
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & v6;
      v10 = (v7 + 63) >> 6;
LABEL_8:
      if (v9)
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_15:
        v15 = *(*(v3 + 48) + (v11 | (v5 << 6)));
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v15);
        v16 = Hasher._finalize()();
        v17 = ~(-1 << *(v2 + 32));
        while (1)
        {
          v18 = v16 & v17;
          if (((*(v2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
          {
            break;
          }

          v16 = v18 + 1;
          if (*(*(v2 + 48) + v18) == v15)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        v12 = v5;
        while (1)
        {
          v5 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v5 >= v10)
          {
            return;
          }

          ++v12;
          if (*(v3 + 8 * v5))
          {
            OUTLINED_FUNCTION_7_1();
            v9 = v14 & v13;
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t RestrictedConversationChecker.conversationManager(_:removedActiveConversation:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  RestrictedConversationChecker.removeUnrestrictedAddresses(for:)();

  return (*(v5 + 8))(v9, v3);
}

uint64_t specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = __CocoaSet.contains(_:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DelayedAnsweringMachine.currentTrackedCallUUID.getter()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DelayedAnsweringMachine.currentTrackedCallUUID.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t DelayedAnsweringMachine.__allocating_init(isAnsweringMachineAvailable:makeAnsweringMachine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for TaskQueue();
  v4[2] = TaskQueue.__allocating_init()();
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = a1;
  v4[7] = a2;
  OUTLINED_FUNCTION_20();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = *(v9 + 80);
  v11[3] = *(v9 + 88);
  v11[4] = v10;
  v11[5] = a3;
  v11[6] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  dispatch thunk of TaskQueue.async<A>(_:)();

  return v4;
}

uint64_t closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static CallScreeningActor.shared;
  v4[9] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:), v5, 0);
}

uint64_t closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_0();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v5 = (*(v0 + 56) + **(v0 + 56));
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:);

    return v5();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  *(v6 + 96) = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:), v2, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  *(*(v0 + 80) + 24) = *(v0 + 96);

  swift_unknownObjectRelease();
  **(v0 + 40) = *(v0 + 80) == 0;
  OUTLINED_FUNCTION_13();

  return v1();
}